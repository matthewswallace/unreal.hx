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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("EnvironmentQuery/EnvQueryInstanceBlueprintWrapper.h")
@:uextern @:uclass extern class UEnvQueryInstanceBlueprintWrapper extends unreal.UObject implements unreal.aimodule.IEQSQueryResultSourceInterface {
  
  /**
    index of query option, that generated items
  **/
  @:uproperty private var OptionIndex : unreal.Int32;
  @:uproperty private var ItemType : unreal.TSubclassOf<unreal.aimodule.UEnvQueryItemType>;
  @:uproperty private var QueryID : unreal.Int32;
  @:ufunction @:final public function GetItemScore(ItemIndex : unreal.Int32) : unreal.Float32;
  
  /**
    return an array filled with resulting actors. Not that it makes sense only if ItemType is a EnvQueryItemType_ActorBase-derived type
  **/
  @:ufunction @:final public function GetResultsAsActors() : unreal.TArray<unreal.AActor>;
  
  /**
    returns an array of locations generated by the query. If the query generated Actors the the array is filled with their locations
  **/
  @:ufunction @:final public function GetResultsAsLocations() : unreal.TArray<unreal.FVector>;
  @:ufunction @:final public function SetNamedParam(ParamName : unreal.FName, Value : unreal.Float32) : Void;
  // EQSQueryResultSourceInterface interface implementation
  
}
