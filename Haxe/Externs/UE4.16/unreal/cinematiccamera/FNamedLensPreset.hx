/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.cinematiccamera;

/**
  A named bundle of lens settings used to implement lens presets.
**/
@:umodule("CinematicCamera")
@:glueCppIncludes("CineCameraComponent.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FNamedLensPreset {
  @:uproperty public var LensSettings : unreal.cinematiccamera.FCameraLensSettings;
  
  /**
    Name for the preset.
  **/
  @:uproperty public var Name : unreal.FString;
  
}
