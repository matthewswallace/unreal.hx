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
package unreal.moviescenetracks;

/**
  Camera cut track evaluation template
**/
@:umodule("MovieSceneTracks")
@:glueCppIncludes("Private/Evaluation/MovieSceneCameraCutTemplate.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FMovieSceneCameraCutSectionTemplate extends unreal.moviescene.FMovieSceneEvalTemplate {
  @:uproperty public var bHasCutTransform : Bool;
  @:uproperty public var CutTransform : unreal.FTransform;
  
  /**
    GUID of the camera we should cut to in this sequence
  **/
  @:uproperty public var CameraGuid : unreal.FGuid;
  
}
