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
package unreal.androidruntimesettings;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Holds the game-specific leaderboard name and corresponding ID from Google Play services.
**/
@:umodule("AndroidRuntimeSettings")
@:glueCppIncludes("AndroidRuntimeSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FGooglePlayLeaderboardMapping {
  
  /**
    The ID of the corresponding leaderboard, generated by the Google Play developer console.
  **/
  @:uproperty public var LeaderboardID : unreal.FString;
  
  /**
    The game-specific leaderboard name (the one passed in to WriteLeaderboards calls).
  **/
  @:uproperty public var Name : unreal.FString;
  
}
