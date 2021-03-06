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
package unreal;

/**
  The world size for each texcoord mapping. Used by the texture streaming.
**/
@:glueCppIncludes("Components.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FMeshUVChannelInfo {
  
  /**
    Whether this values was set manually or is auto generated.
  **/
  @:uproperty public var bOverrideDensities : Bool;
  @:uproperty public var bInitialized : Bool;
  
}
