import unrealbuildtool.*;
import cs.system.io.Path;

@:nativeGen
class HaxeProgramRules extends HaxeModuleRules {
  //
  // override private function getConfig():HaxeModuleConfig {
  //   var ret = super.getConfig();
  //   ret.disableCppia = true;
  //   return ret;
  // }

  public function new(target) {
    super(target);
    this.Definitions.Add('UE_PROGRAM=1');
  }

  override private function getHaxeDir() {
    return Path.GetFullPath('$modulePath/../Haxe');
  }
}
