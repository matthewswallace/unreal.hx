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
package unreal.editor;

/**
  Enumerates the available internationalization data presets for project packaging.
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Settings/ProjectPackagingSettings.h")
@:uname("EProjectPackagingInternationalizationPresets")
@:class @:uextern @:uenum extern enum EProjectPackagingInternationalizationPresets {
  
  /**
    English only.
  **/
  English;
  
  /**
    English, French, Italian, German, Spanish.
  **/
  EFIGS;
  
  /**
    English, French, Italian, German, Spanish, Chinese, Japanese, Korean.
  **/
  EFIGSCJK;
  
  /**
    Chinese, Japanese, Korean.
  **/
  CJK;
  
  /**
    All known cultures.
  **/
  All;
  
}
