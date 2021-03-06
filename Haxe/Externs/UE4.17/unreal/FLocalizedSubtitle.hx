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
  A subtitle localized to a specific language.
**/
@:glueCppIncludes("Classes/Engine/EngineTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FLocalizedSubtitle {
  
  /**
    true if the subtitles should be displayed one line at a time.
  **/
  @:uproperty public var bSingleLine : Bool;
  
  /**
    true if the subtitles have been split manually.
  **/
  @:uproperty public var bManualWordWrap : Bool;
  
  /**
    true if this sound is considered to contain mature content.
  **/
  @:uproperty public var bMature : Bool;
  
  /**
    Subtitle cues.  If empty, use SoundNodeWave's SpokenText as the subtitle.  Will often be empty,
    as the contents of the subtitle is commonly identical to what is spoken.
  **/
  @:uproperty public var Subtitles : unreal.TArray<unreal.FSubtitleCue>;
  
  /**
    The 3-letter language for this subtitle
  **/
  @:uproperty public var LanguageExt : unreal.FString;
  
}
