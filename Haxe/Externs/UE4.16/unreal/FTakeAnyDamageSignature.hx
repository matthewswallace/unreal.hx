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
  Delegate signatures
  @param DamagedActor
  @param Damage
  @param DamageType
  @param InstigatedBy
  @param DamageCauser
  
**/
@:glueCppIncludes("GameFramework/Actor.h")
@:uParamName("DamagedActor")
@:uParamName("Damage")
@:uParamName("DamageType")
@:uParamName("InstigatedBy")
@:uParamName("DamageCauser")
typedef FTakeAnyDamageSignature = unreal.DynamicMulticastDelegate<FTakeAnyDamageSignature, unreal.AActor->unreal.Float32->unreal.Const<unreal.UDamageType>->unreal.AController->unreal.AActor->Void>;