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
package unreal.analyticsmulticasteditor;


/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("AnalyticsMulticastSettings.h")
@:noClass @:uextern extern class UAnalyticsMulticastSettings extends unreal.analyticsvisualediting.UAnalyticsSettingsBase {
  
  /**
    The list of analytics providers to forward analytics events to
  **/
  public var DevelopmentMulticastProviders : unreal.TArray<unreal.FString>;
  
  /**
    The list of analytics providers to forward analytics events to
  **/
  public var TestMulticastProviders : unreal.TArray<unreal.FString>;
  
  /**
    The list of analytics providers to forward analytics events to
  **/
  public var DebugMulticastProviders : unreal.TArray<unreal.FString>;
  
  /**
    The list of analytics providers to forward analytics events to
  **/
  public var ReleaseMulticastProviders : unreal.TArray<unreal.FString>;
  
}
