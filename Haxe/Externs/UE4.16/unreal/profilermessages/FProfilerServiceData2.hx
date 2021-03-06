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
package unreal.profilermessages;

/**
  Profiler Service data.
**/
@:umodule("ProfilerMessages")
@:glueCppIncludes("ProfilerServiceMessages.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FProfilerServiceData2 {
  
  /**
    Profiler data encoded as string of hexes, cannot use TArray<uint8> because of the Message Bus limitation.
  **/
  @:uproperty public var HexData : unreal.FString;
  
  /**
    Size of the uncompressed data.
  **/
  @:uproperty public var UncompressedSize : unreal.Int32;
  
  /**
    Size of the compressed data.
  **/
  @:uproperty public var CompressedSize : unreal.Int32;
  
  /**
    Stats frame.
  **/
  @:uproperty public var Frame : unreal.Int64;
  
  /**
    Instance ID.
  **/
  @:uproperty public var InstanceId : unreal.FGuid;
  
}
