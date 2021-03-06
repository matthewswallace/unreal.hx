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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("Actions/PawnAction_Repeat.h")
@:uextern @:uclass extern class UPawnAction_Repeat extends unreal.aimodule.UPawnAction {
  @:uproperty public var ChildFailureHandlingMode : unreal.aimodule.EPawnActionFailHandling;
  @:uproperty public var RecentActionCopy : unreal.aimodule.UPawnAction;
  
  /**
    Action to repeat. This instance won't really be run, it's a source for copying actions to be actually performed
  **/
  @:uproperty public var ActionToRepeat : unreal.aimodule.UPawnAction;
  
}
