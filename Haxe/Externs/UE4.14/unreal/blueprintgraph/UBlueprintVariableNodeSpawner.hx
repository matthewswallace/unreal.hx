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
package unreal.blueprintgraph;


/**
  Takes care of spawning variable getter/setter nodes. Serves as the "action"
  portion for certain FBlueprintActionMenuItems. Evolved from
  FEdGraphSchemaAction_K2Var, and can spawn nodes for both member-variables and
  local function variables.
**/
@:umodule("BlueprintGraph")
@:glueCppIncludes("BlueprintVariableNodeSpawner.h")
@:uextern @:uclass extern class UBlueprintVariableNodeSpawner extends unreal.blueprintgraph.UBlueprintFieldNodeSpawner {
  
}
