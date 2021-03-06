package uhx.compiletime.main;
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Compiler;
import haxe.macro.Type;
import uhx.compiletime.types.TypeRef;
import sys.FileSystem;

using StringTools;
using Lambda;

class CreateCppia {
  static var firstCompilation = true;
  static var hasRun = false;
  static var compiledModules:{ stamp:Float, modules:Map<String, Bool> };
  static var externsDir:String;

  public static function run(staticPaths:Array<String>, scriptPaths:Array<String>, ?excludeModules:Array<String>) {
    Globals.cur.checkBuildVersionLevel();
    externsDir = Context.definedValue('UHX_BAKE_DIR');
    var target = Globals.cur.staticBaseDir;
    compiledModules = getCompiled(target);
    var compiled = compiledModules.modules;

    registerMacroCalls(target);
    Globals.cur.compiledScriptGlues = readScriptGlues('$target/Data/scriptGlues.txt');

    var statics = [];
    for (path in staticPaths) {
      getModules(path,statics);
    }

    Globals.cur.inScriptPass = true;
    var scripts = [],
        scriptFullPaths = [];
    for (path in scriptPaths) {
      getModules(path,scripts,scriptFullPaths);
    }
    Globals.cur.staticModules = [ for (module in statics) module => true ];
    var modules = [ for (module in scripts) Context.getModule(module) ];
    if (target != null && sys.FileSystem.exists('$target/Data/livereload.txt')) {
      var arr = [];
      for (type in sys.io.File.getContent('$target/Data/livereload.txt').split('\n')) {
        try {
          arr.push(Context.getType(type));
        }
        catch(e:Dynamic) {
          if (!Std.string(e).startsWith("Type not found '" + type)) {
            throw new Error(Std.string(e), Context.currentPos());
          }
        }
      }
      modules.push(arr);
    }
    // var scriptFiles = ensureCompiled(modules);
    // Globals.cur.inScriptPass = false;

    var blacklist = [
      'unreal.Wrapper',
      'haxe.Int64',
      'cpp.Int64',
      'Date',
      'unreal.Struct',
      'unreal.TemplateStruct',
      'unreal.POwnedPtr',
      'unreal.AnyPtr',
      'unreal.TArray',
      'unreal.ReflectAPI',
      'unreal.ByteArray',
      'unreal.AnyPtr',
      'unreal.ConstAnyPtr',
      'unreal.Int64Helpers'
    ];

    addTimestamp();

    try {
      Context.getType('uhx.meta.CppiaMetaData');
    }
    catch(e:Dynamic) {
      var clsDef = macro class CppiaMetaData {};
      clsDef.pack = ['uhx','meta'];
      clsDef.meta = [{ name:':keep', pos:clsDef.pos }];
      Context.defineType(clsDef);
      Context.getType('uhx.meta.CppiaMetaData');
    }

    try{
      Context.getType('uhx.meta.MetaDataHelper');
    }
    catch(e:Dynamic) {
      var clsDef = macro class MetaDataHelper {};
      clsDef.pack = ['uhx','meta'];
      clsDef.meta = [{ name:':keep', pos:clsDef.pos }];
      Context.defineType(clsDef);
      Context.getType('uhx.meta.MetaDataHelper');
    }

    var compiledGenerics = new Map(),
        finalized = false;
    Context.onAfterTyping(function(types) {
      if (types.exists(function(t) return Std.string(t) == 'TClassDecl(uhx.compiletime.main.CreateCppia)')) {
        return; // macro context
      }
      Globals.cur.hasUnprocessedTypes = false;
      for (t in types) {
        switch(t) {
        case TClassDecl(cl):
          var c = cl.get();
          if (c.meta.has(':ueHasGenerics')) {
            var name = cl.toString();
            var glueGeneric = TypeRef.fromBaseType(c, c.pos).getGlueHelperType().getClassPath();
            glueGeneric += 'Generic';
            var ret = new Map();
            try {
              switch(Context.getType(glueGeneric)) {
              case TInst(c,_):
                for (field in c.get().statics.get()) {
                  ret[field.name] = true;
                }
              case e:
                throw 'Unexpected type $e';
              }

            }
            catch(e:Dynamic) {
            }

            compiledGenerics[cl.toString()] = ret;
          }
        case _:
        }
      }

      if (!finalized && !Globals.cur.hasUnprocessedTypes) {
        finalized = true;
        // create hot reload helper
        LiveReloadBuild.bindFunctions('LiveReloadScript');

        var metaDefs = Globals.cur.classesToAddMetaDef;
        var cur = null;
        while ( (cur = metaDefs.pop()) != null ) {
          var type = Context.getType(cur);
          switch(type) {
          case TInst(c,_):
            MetaDefBuild.addUClassMetaDef(c.get());
          case _:
          }
        }

        var metaDefs = Globals.cur.delegatesToAddMetaDef;
        var cur = null;
        while ( (cur = metaDefs.pop()) != null ) {
          MetaDefBuild.addUDelegateMetaDef(cur);
        }

        MetaDefBuild.writeClassDefs();

        Globals.cur.classesToAddMetaDef = [];
        Globals.cur.delegatesToAddMetaDef = [];
      }
    });

    var fileDeps = new Map();
    for (path in scriptFullPaths) {
      fileDeps[path] = true;
    }
    inline function addFileDep(file:String) {
      if (file != null && file.endsWith('.hx')) {
        fileDeps.set(file, true);
      }
    }
    Context.onGenerate(function(types) {
      var metaDefs = Globals.cur.classesToAddMetaDef;
      if (metaDefs.length != 0) {
        throw 'assert: sanity check failed. there are still classesToAddMetaDef';
      }

      var metaDefs = Globals.cur.delegatesToAddMetaDef;
      if (metaDefs.length != 0) {
        throw 'assert: sanity check failed. there are still classesToAddMetaDef';
      }

      var allStatics = [ for (s in statics.concat(blacklist)) s => true ],
          incompleteExcludes = null;
      if (excludeModules != null) {
        for (m in excludeModules) {
          if (m.endsWith('.*')) {
            if (incompleteExcludes == null) incompleteExcludes = [];
            incompleteExcludes.push(m.substr(0,-1));
          } else {
            allStatics[m] = true;
          }
        }
      }

      var regModules = new Map(),
          compiledPath = '$target/Data/compiled.txt';
      inline function hasExclude(module:String) {
        if (allStatics[module]) {
          return true;
        } else if (incompleteExcludes != null) {
          var ret = false;
          for (exc in incompleteExcludes) {
            if (module.startsWith(exc)) {
              ret = true;
              break;
            }
          }
          return ret;
        } else {
          return module.startsWith('cpp.');
        }
      }
      for (type in types) {
        switch(type) {
          case TInst(c,_):
            var name = c.toString();
            var c = c.get();
            var isExtern = c.meta.has(':uextern');
            addFileDep(Context.getPosInfos(c.pos).file);
            var genericFields = compiledGenerics[name];
            if (genericFields != null && !Context.defined('display')) {
              for (field in c.fields.get().concat(c.statics.get())) {
                if (field.meta.has(':genericInstance')) {
                  if (!genericFields.exists(field.name)) {
                    Context.warning('UHXERR: The generic field implementation ${field.name} was not ' +
                        'compiled into the latest C++ compilation. Please perform a full C++ compilation - ' +
                        'otherwise this call will fail', field.pos);
                  }
                }
              }
            }
            if (isExtern) {
              var name = TypeRef.fastClassPath(c);
              if (c.isInterface || compiled.exists(name)) {
                c.exclude();
                var mod = c.module;
                if (!regModules.exists(mod)) {
                  regModules[mod] = true;
                  Context.registerModuleDependency(mod, compiledPath);
                }
              }
            } else if (hasExclude(c.module) || c.meta.has(':coreApi')) {
              if (c.name != 'UnrealCppia') {
                c.exclude();
              }
            } else {
              switch(c.pack) {
              case ['uhx','internal'] | ['uhx','expose']:
                c.exclude();
              case _:
              }
            }
          case TEnum(eRef,_):
            var e = eRef.get();
            addFileDep(Context.getPosInfos(e.pos).file);
            if (!e.meta.has(':uextern')) {
              var sig = UEnumBuild.getSignature(e);
              if (sig != null) {
                if (!Globals.cur.compiledScriptGlues.exists(eRef.toString() + ':' + sig) && !Context.defined('display')) {
                  Context.warning('UHXERR: The enum $eRef was not compiled into static, or it was compiled with a different signature. A full C++ compilation is required', e.pos);
                }
              }
            }
            if (hasExclude(e.module)) {
              e.exclude();
            }
          case TAbstract(a,_):
            var a = a.get();
            var isExtern = a.meta.has(':uextern');
            addFileDep(Context.getPosInfos(a.pos).file);
            if (isExtern && !a.meta.has(':uscript')) {
              var name = TypeRef.fastClassPath(a);
              if (compiled.exists(name)) {
                var impl = a.impl;
                if (impl != null) {
                  impl.get().exclude();
                }
                var mod = a.module;
                if (!regModules.exists(mod)) {
                  regModules[mod] = true;
                  Context.registerModuleDependency(mod, compiledPath);
                }
              }
            } else if (hasExclude(a.module) || a.meta.has(':coreApi')) {
              var impl = a.impl;
              if (impl != null) {
                impl.get().exclude();
              }
            }
          case TType(t,_):
            var t = t.get();
            if (!Globals.cur.staticModules.exists(t.module)) {
              addFileDep(Context.getPosInfos(t.pos).file);
            }
          case _:
        }
      }
    });
    Context.onAfterGenerate( function() {
      writeFileDeps(fileDeps, '$target/Data/cppiaDeps.txt');
      sys.io.File.saveContent('$target/Data/cppiaModules.txt', scripts.join('\n'));
    });
  }

  private static function writeFileDeps(fileDeps:Map<String, Bool>, target:String) {
    var ret = sys.io.File.write(target);
    for (dep in fileDeps.keys()) {
      if (dep.startsWith(externsDir)) {
        ret.writeByte('E'.code);
        dep = dep.substr(externsDir.length);
      } else {
        ret.writeByte('C'.code);
      }
      ret.writeString(dep);
      ret.writeByte('\n'.code);
    }
    ret.close();
  }

  private static function addTimestamp() {
    // adds a class that returns the timestamp of when it was built.
    // this works around HaxeFoundation/hxcpp#358 by adding logic that determines
    // whether the newly loaded script has the same timestamp as the older one
    var stamp = Date.now().getTime();
    var cls = macro class CppiaCompilation {
      @:keep public static var timestamp(default,null):Float = $v{stamp};
    };
    cls.pack = ['uhx','meta'];
    Globals.cur.hasUnprocessedTypes = true;
    Context.defineType(cls);
  }

  private static function getModules(path:String, modules:Array<String>, ?paths:Array<String>)
  {
    function recurse(path:String, pack:String)
    {
      for (file in FileSystem.readDirectory(path))
      {
        if (file.endsWith('.hx')) {
          modules.push(pack + file.substr(0,-3));
          if (paths != null) {
            paths.push('$path/$file');
          }
        } else if (FileSystem.isDirectory('$path/$file')) {
          recurse('$path/$file', pack + file + '.');
        }
      }
    }

    if (FileSystem.exists(path)) recurse(path, '');
  }

  private static function readScriptGlues(path:String):Map<String, Bool> {
    var ret = new Map();
    var curBase = null;
    var file = sys.io.File.read(path);
    try {
      while(true) {
        var ln = file.readLine();
        if (ln == '') continue;
        switch (ln.charCodeAt(0)) {
        case ':'.code:
          curBase = ln.substr(1) + ':';
          ret[curBase] = true;
        case '+'.code:
          ret[curBase + ln.substr(1)] = true;
        case _:
          throw '$path: Unknown script glue part $ln';
        }
      }
    }
    catch(e:haxe.io.Eof) {
    }

    file.close();
    return ret;
  }

  private static function ensureCompiled(modules:Array<Array<Type>>) {
    var ret = new Map();
    var ustruct = Context.getType('unreal.Struct');
    for (module in modules) {
      for (type in module) {
        switch(Context.follow(type)) {
        case TInst(c,_):
          var cl = c.get();
          ret.set(Context.getPosInfos(cl.pos).file, true);
          for (field in cl.fields.get())
            Context.follow(field.type);
          for (field in cl.statics.get())
            Context.follow(field.type);
          var ctor = cl.constructor;
          if (ctor != null)
            Context.follow(ctor.get().type);
        case TAbstract(a,_):
          var a = a.get();
          ret.set(Context.getPosInfos(a.pos).file, true);
          if (Context.unify(type, ustruct) && !a.meta.has(':uscript')) {
            a.impl.get().exclude();
            continue;
          }
        case TEnum(e,_):
          var e = e.get();
          ret.set(Context.getPosInfos(e.pos).file, true);
        case _:
        }
      }
    }
    return ret;
  }

  private static function registerMacroCalls(target:String) {
    if (hasRun) return;
    hasRun = true;
    if (firstCompilation) {
      firstCompilation = false;
      Globals.checkRegisteredMacro('script', function() {
        hasRun = false;

        trace('macro context reused');
        Globals.reset();
        return true;
      });
    }
    Globals.cur.setHaxeRuntimeDir();
  }

  private static function getCompiled(target:String):{ stamp:Null<Float>, modules:Map<String, Bool> } {
    var ret = new Map(),
        path = '$target/Data/compiled.txt';
    if (!FileSystem.exists(path)) {
      return { stamp:null, modules:ret };
    }
    var stamp = FileSystem.stat(path).mtime.getTime(),
        file = sys.io.File.read(path);
    try {
      while(true) {
        var cur = file.readLine();
        ret[cur] = true;
        Compiler.define('UHX_COMPILED_${cur.replace('.','_')}');
      }
    }
    catch(e:haxe.io.Eof) {
    }
    file.close();

    if (compiledModules != null) {
      var old = compiledModules.modules;
      for (key in old.keys()) {
        if (!ret.exists(key)) {
          Compiler.define('UHX_COMPILED_${key.replace('.','_')}', '0');
        }
      }
    }

    return { stamp:stamp, modules:ret };
  }
}
