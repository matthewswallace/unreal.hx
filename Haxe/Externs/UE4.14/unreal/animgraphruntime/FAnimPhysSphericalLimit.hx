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
package unreal.animgraphruntime;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:umodule("AnimGraphRuntime")
@:glueCppIncludes("BoneControllers/AnimNode_AnimDynamics.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FAnimPhysSphericalLimit {
  
  /**
    Whether to lock bodies inside or outside of the sphere
  **/
  @:uproperty public var LimitType : unreal.animgraphruntime.ESphericalLimitType;
  
  /**
    Radius of the sphere
  **/
  @:uproperty public var LimitRadius : unreal.Float32;
  
  /**
    Local offset for the sphere, if no driving bone is set this is in node space, otherwise bone space
  **/
  @:uproperty public var SphereLocalOffset : unreal.FVector;
  
  /**
    Bone to attach the sphere to
  **/
  @:uproperty public var DrivingBone : unreal.FBoneReference;
  
}
