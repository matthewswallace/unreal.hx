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
  Flags indicating what to do with the particle when MaxCollisions is reached
**/
@:glueCppIncludes("Classes/Particles/Collision/ParticleModuleCollisionBase.h")
@:uname("EParticleCollisionComplete")
@:uextern @:uenum extern enum EParticleCollisionComplete {
  
  /**
    Kill the particle when MaxCollisions is reached
    @DisplayName Kill
  **/
  @DisplayName("Kill")
  EPCC_Kill;
  
  /**
    Freeze the particle in place
    @DisplayName Freeze
  **/
  @DisplayName("Freeze")
  EPCC_Freeze;
  
  /**
    Stop collision checks, but keep updating
    @DisplayName Halt Collisions
  **/
  @DisplayName("Halt Collisions")
  EPCC_HaltCollisions;
  
  /**
    Stop translations of the particle
    @DisplayName Freeze Translation
  **/
  @DisplayName("Freeze Translation")
  EPCC_FreezeTranslation;
  
  /**
    Stop rotations of the particle
    @DisplayName Freeze Rotation
  **/
  @DisplayName("Freeze Rotation")
  EPCC_FreezeRotation;
  
  /**
    Stop all movement of the particle
    @DisplayName Freeze Movement
  **/
  @DisplayName("Freeze Movement")
  EPCC_FreezeMovement;
  
}
