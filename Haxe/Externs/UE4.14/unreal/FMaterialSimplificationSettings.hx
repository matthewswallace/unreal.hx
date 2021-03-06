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
package unreal;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Use FMaterialProxySettings instead
**/
@:glueCppIncludes("Engine/MaterialMerging.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FMaterialSimplificationSettings {
  
  /**
    Size of generated specular map
  **/
  @:uproperty public var SpecularMapSize : unreal.FIntPoint;
  
  /**
    Whether to generate specular map
  **/
  @:uproperty public var bSpecularMap : Bool;
  
  /**
    Specular constant
  **/
  @:uproperty public var SpecularConstant : unreal.Float32;
  
  /**
    Size of generated roughness map
  **/
  @:uproperty public var RoughnessMapSize : unreal.FIntPoint;
  
  /**
    Whether to generate roughness map
  **/
  @:uproperty public var bRoughnessMap : Bool;
  
  /**
    Roughness constant
  **/
  @:uproperty public var RoughnessConstant : unreal.Float32;
  
  /**
    Size of generated metallic map
  **/
  @:uproperty public var MetallicMapSize : unreal.FIntPoint;
  
  /**
    Whether to generate metallic map
  **/
  @:uproperty public var bMetallicMap : Bool;
  
  /**
    Metallic constant
  **/
  @:uproperty public var MetallicConstant : unreal.Float32;
  
  /**
    Size of generated specular map
  **/
  @:uproperty public var NormalMapSize : unreal.FIntPoint;
  
  /**
    Whether to generate normal map
  **/
  @:uproperty public var bNormalMap : Bool;
  
  /**
    Size of generated BaseColor map
  **/
  @:uproperty public var BaseColorMapSize : unreal.FIntPoint;
  
}
