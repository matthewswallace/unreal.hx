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
  Settings for the Asset Management framework, which can be used to discover, load, and audit game-specific asset types
**/
@:glueCppIncludes("Engine/AssetManagerSettings.h")
@:uextern @:uclass extern class UAssetManagerSettings extends unreal.UDeveloperSettings {
  
  /**
    Redirect from /game/assetpath to /game/assetpathnew
  **/
  @:uproperty public var AssetPathRedirects : unreal.TArray<unreal.FAssetManagerRedirect>;
  
  /**
    Redirect from Type to TypeNew
  **/
  @:uproperty public var PrimaryAssetTypeRedirects : unreal.TArray<unreal.FAssetManagerRedirect>;
  
  /**
    Redirect from Type:Name to Type:NameNew
  **/
  @:uproperty public var PrimaryAssetIdRedirects : unreal.TArray<unreal.FAssetManagerRedirect>;
  
  /**
    If true, DevelopmentCook assets will error when they are cooked
  **/
  @:uproperty public var bOnlyCookProductionAssets : Bool;
  
  /**
    List of specific asset rule overrides
  **/
  @:uproperty public var PrimaryAssetRules : unreal.TArray<unreal.FPrimaryAssetRulesOverride>;
  
  /**
    List of directories to exclude from scanning for Primary Assets, useful to exclude test assets
  **/
  @:uproperty public var DirectoriesToExclude : unreal.TArray<unreal.FDirectoryPath>;
  
  /**
    List of asset types to scan at startup
  **/
  @:uproperty public var PrimaryAssetTypesToScan : unreal.TArray<unreal.FPrimaryAssetTypeInfo>;
  
}
