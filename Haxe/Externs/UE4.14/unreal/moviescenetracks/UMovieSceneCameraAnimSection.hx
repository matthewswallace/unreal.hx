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
package unreal.moviescenetracks;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("MovieSceneTracks")
@:glueCppIncludes("Sections/MovieSceneCameraAnimSection.h")
@:uextern @:uclass extern class UMovieSceneCameraAnimSection extends unreal.moviescene.UMovieSceneSection {
  @:uproperty public var UserDefinedPlaySpace : unreal.FRotator;
  
  /**
    UPROPERTY(EditAnywhere, Category = "Camera Anim")
    float Duration;
  **/
  @:uproperty public var PlaySpace : unreal.ECameraAnimPlaySpace;
  @:uproperty public var bLooping : Bool;
  @:uproperty public var BlendOutTime : unreal.Float32;
  @:uproperty public var BlendInTime : unreal.Float32;
  
  /**
    Scalar to control intensity of the animation.
  **/
  @:uproperty public var PlayScale : unreal.Float32;
  
  /**
    How fast to play back the animation.
  **/
  @:uproperty public var PlayRate : unreal.Float32;
  
}
