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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Animation/AnimSequenceBase.h")
@:uextern @:uclass extern class UAnimSequenceBase extends unreal.UAnimationAsset {
  #if WITH_EDITORONLY_DATA
  
  /**
    if you change Notifies array, this will need to be rebuilt
  **/
  @:uproperty public var AnimNotifyTracks : unreal.TArray<unreal.FAnimNotifyTrack>;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Raw uncompressed float curve data
  **/
  @:uproperty public var RawCurveData : unreal.FRawCurveTracks;
  
  /**
    Number for tweaking playback rate of this animation globally.
  **/
  @:uproperty public var RateScale : unreal.Float32;
  
  /**
    Length (in seconds) of this AnimSequence if played back with a speed of 1.0.
  **/
  @:uproperty public var SequenceLength : unreal.Float32;
  
  /**
    Animation notifies, sorted by time (earliest notification first).
  **/
  @:uproperty public var Notifies : unreal.TArray<unreal.FAnimNotifyEvent>;
  
  /**
    Returns the total play length of the montage, if played back with a speed of 1.0.
  **/
  @:ufunction public function GetPlayLength() : unreal.Float32;
  
}
