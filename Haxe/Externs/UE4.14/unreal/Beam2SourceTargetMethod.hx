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
package unreal;


/**
  The method to use in determining the source/target.
**/
@:glueCppIncludes("Particles/Beam/ParticleModuleBeamBase.h")
@:uname("Beam2SourceTargetMethod")
@:uextern @:uenum extern enum Beam2SourceTargetMethod {
  
  /**
    Default        - use the distribution.
        This is the fallback for when other modes can't be resolved.
    @DisplayName Default
  **/
  @DisplayName("Default")
  PEB2STM_Default;
  
  /**
    UserSet        - use the user set value.
        Primarily intended for weapon effects.
    @DisplayName User Set
  **/
  @DisplayName("User Set")
  PEB2STM_UserSet;
  
  /**
    Emitter        - use the emitter position as the source/target.
    @DisplayName Emitter
  **/
  @DisplayName("Emitter")
  PEB2STM_Emitter;
  
  /**
    Particle       - use the particles from a given emitter in the system.
        The name of the emitter should be set in <Source/Target>Name.
    @DisplayName Particle
  **/
  @DisplayName("Particle")
  PEB2STM_Particle;
  
  /**
    Actor          - use the actor as the source/target.
        The name of the actor should be set in <Source/Target>Name.
    @DisplayName Actor
  **/
  @DisplayName("Actor")
  PEB2STM_Actor;
  
}
