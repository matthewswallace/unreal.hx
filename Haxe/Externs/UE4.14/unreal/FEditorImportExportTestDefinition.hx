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
  
  Holds settings for the asset import / export automation test
**/
@:glueCppIncludes("Tests/AutomationTestSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FEditorImportExportTestDefinition {
  
  /**
    Settings for the import factory
  **/
  @:uproperty public var FactorySettings : unreal.TArray<unreal.FImportFactorySettingValues>;
  
  /**
    If true, the export step will be skipped
  **/
  @:uproperty public var bSkipExport : Bool;
  
  /**
    The file extension to use when exporting this asset.  Used to find a supporting exporter
  **/
  @:uproperty public var ExportFileExtension : unreal.FString;
  
  /**
    The file to import
  **/
  @:uproperty public var ImportFilePath : unreal.FFilePath;
  
}
