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


/**
  FGameplayAbilityActorInfo
  
  Cached data associated with an Actor using an Ability.
          -Initialized from an AActor* in InitFromActor
          -Abilities use this to know what to actor upon. E.g., instead of being coupled to a specific actor class.
          -These are generally passed around as pointers to support polymorphism.
          -Projects can override UAbilitySystemGlobals::AllocAbilityActorInfo to override the default struct type that is created.
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("Abilities/GameplayAbilityTypes.h")
@:uextern @:ustruct extern class FGameplayAbilityActorInfo {
  
  /**
    Movement component of the avatar actor. Often null
  **/
  @:uproperty public var MovementComponent : unreal.TWeakObjectPtr<unreal.UMovementComponent>;
  
  /**
    Anim instance of the avatar actor. Often null
  **/
  @:uproperty public var AnimInstance : unreal.TWeakObjectPtr<unreal.UAnimInstance>;
  
  /**
    Skeletal mesh of the avatar actor. Often null
  **/
  @:uproperty public var SkeletalMeshComponent : unreal.TWeakObjectPtr<unreal.USkeletalMeshComponent>;
  
  /**
    Ability System component associated with the owner actor, shouldn't be null
  **/
  @:uproperty public var AbilitySystemComponent : unreal.TWeakObjectPtr<unreal.gameplayabilities.UAbilitySystemComponent>;
  
  /**
    PlayerController associated with the owning actor. This will often be null!
  **/
  @:uproperty public var PlayerController : unreal.TWeakObjectPtr<unreal.APlayerController>;
  
  /**
    The physical representation of the owner, used for targeting and animation. This will often be null!
  **/
  @:uproperty public var AvatarActor : unreal.TWeakObjectPtr<unreal.AActor>;
  
  /**
    The actor that owns the abilities, shouldn't be null
  **/
  @:uproperty public var OwnerActor : unreal.TWeakObjectPtr<unreal.AActor>;
  
}
