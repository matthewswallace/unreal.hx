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
package unreal.gameplayabilities;

@:umodule("GameplayAbilities")
@:glueCppIncludes("Abilities/GameplayAbilityTypes.h")
@:uextern @:ustruct extern class FGameplayEventData {
  
  /**
    The magnitude of the triggering event
  **/
  @:uproperty public var EventMagnitude : unreal.Float32;
  
  /**
    Tags that the target has
  **/
  @:uproperty public var TargetTags : unreal.gameplaytags.FGameplayTagContainer;
  
  /**
    Tags that the instigator has
  **/
  @:uproperty public var InstigatorTags : unreal.gameplaytags.FGameplayTagContainer;
  
  /**
    Polymorphic context information
  **/
  @:uproperty public var ContextHandle : unreal.gameplayabilities.FGameplayEffectContextHandle;
  
  /**
    A second optional ability-specific object to be passed though the event
  **/
  @:uproperty public var OptionalObject2 : unreal.UObject;
  
  /**
    An optional ability-specific object to be passed though the event
  **/
  @:uproperty public var OptionalObject : unreal.UObject;
  
  /**
    The target of the event
  **/
  @:uproperty public var Target : unreal.AActor;
  
  /**
    The instigator of the event
  **/
  @:uproperty public var Instigator : unreal.AActor;
  
  /**
    Tag of the event that triggered this
  **/
  @:uproperty public var EventTag : unreal.gameplaytags.FGameplayTag;
  
}
