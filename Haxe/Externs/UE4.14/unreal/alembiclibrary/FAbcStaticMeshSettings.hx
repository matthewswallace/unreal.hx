/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.alembiclibrary;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:umodule("AlembicLibrary")
@:glueCppIncludes("AbcImportSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FAbcStaticMeshSettings {
  
  /**
    This will, if applicable, apply matrix transformations to the meshes before merging
  **/
  @:uproperty public var bPropagateMatrixTransformations : Bool;
  
  /**
    Whether or not to merge the static meshes on import (remember this can cause problems with overlapping UV-sets)
  **/
  @:uproperty public var bMergeMeshes : Bool;
  
}
