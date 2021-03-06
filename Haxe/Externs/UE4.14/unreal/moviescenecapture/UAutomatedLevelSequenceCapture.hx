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
package unreal.moviescenecapture;

@:umodule("MovieSceneCapture")
@:glueCppIncludes("AutomatedLevelSequenceCapture.h")
@:uextern @:uclass extern class UAutomatedLevelSequenceCapture extends unreal.moviescenecapture.UMovieSceneCapture {
  #if WITH_EDITORONLY_DATA
  
  /**
    Whether to write edit decision lists (EDLs) if the sequence contains shots
  **/
  @:uproperty public var bWriteEditDecisionList : Bool;
  @:uproperty public var BurnInOptions : unreal.levelsequence.ULevelSequenceBurnInOptions;
  
  /**
    The number of seconds to wait (in real-time) before we start playing back the warm up frames.  Useful for allowing post processing effects to settle down before capturing the animation.
  **/
  @:uproperty public var DelayBeforeWarmUp : unreal.Float32;
  
  /**
    The number of extra frames to play before the sequence's start frame, to "warm up" the animation.  This is useful if your
              animation contains particles or other runtime effects that are spawned into the scene earlier than your capture start frame
  **/
  @:uproperty public var WarmUpFrameCount : unreal.Int32;
  
  /**
    Frame number to end capturing.  The frame number range depends on whether the bUseRelativeFrameNumbers option is enabled.
  **/
  @:uproperty public var EndFrame : unreal.Int32;
  
  /**
    When enabled, the EndFrame setting will override the default ending frame number
  **/
  @:uproperty public var bUseCustomEndFrame : Bool;
  
  /**
    Frame number to start capturing.  The frame number range depends on whether the bUseRelativeFrameNumbers option is enabled.
  **/
  @:uproperty public var StartFrame : unreal.Int32;
  
  /**
    When enabled, the StartFrame setting will override the default starting frame number
  **/
  @:uproperty public var bUseCustomStartFrame : Bool;
  #end // WITH_EDITORONLY_DATA
  
}
