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
package unreal.mediaassets;


/**
  Implements a playable sound asset for audio streams from UMediaPlayer assets.
**/
@:umodule("MediaAssets")
@:glueCppIncludes("MediaSoundWave.h")
@:uextern @:uclass extern class UMediaSoundWave extends unreal.USoundWave {
  @:uproperty private var MediaPlayer : unreal.mediaassets.UMediaPlayer;
  @:uproperty private var AudioTrackIndex : unreal.Int32;
  
}
