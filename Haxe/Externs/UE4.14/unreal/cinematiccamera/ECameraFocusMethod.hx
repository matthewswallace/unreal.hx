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
package unreal.cinematiccamera;


/**
  Supported methods for focusing the camera.
**/
@:umodule("CinematicCamera")
@:glueCppIncludes("CineCameraComponent.h")
@:uname("ECameraFocusMethod")
@:class @:uextern @:uenum extern enum ECameraFocusMethod {
  None;
  
  /**
    Disables DoF entirely.
  **/
  Manual;
  
  /**
    Allows for specifying or animating exact focus distances.
  **/
  Tracking;
  
}
