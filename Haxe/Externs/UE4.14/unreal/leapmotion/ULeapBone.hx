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
package unreal.leapmotion;


/**
  The Bone class represents a tracked bone.
  All fingers contain 4 bones that make up the anatomy of the finger.
  Get valid Bone objects from a Finger object.
  
  Leap API reference: https://developer.leapmotion.com/documentation/cpp/api/Leap.Bone.html
**/
@:glueCppIncludes("LeapBone.h")
@:uextern extern class ULeapBone extends unreal.UObject {
  
  /**
    The average width of the flesh around the bone in centimeters.
  **/
  public var Width : unreal.Float32;
  
  /**
    The name of this bone.
  **/
  public var Type : unreal.leapmotion.LeapBoneType;
  
  /**
    The base of the bone, closest to the wrist.
    In anatomical terms, this is the proximal end of the bone.
  **/
  public var PrevJoint : unreal.FVector;
  
  /**
    The end of the bone, closest to the finger tip.
    In anatomical terms, this is the distal end of the bone.
  **/
  public var NextJoint : unreal.FVector;
  
  /**
    The estimated length of the bone in centimeters.
  **/
  public var Length : unreal.Float32;
  
  /**
    Reports whether this is a valid Bone object.
    @return True, if this Bone object contains valid tracking data.
  **/
  public var IsValid : Bool;
  
  /**
    The normalized direction of the bone from base to tip.
  **/
  public var Direction : unreal.FVector;
  
  /**
    The midpoint of the bone.
  **/
  public var Center : unreal.FVector;
  
  /**
    The orthonormal basis vectors for this Bone as a Matrix.
  **/
  public var Basis : unreal.FMatrix;
  
  /**
    Convenience method, requires knowledge of the hand this bone belongs to in order to
    give a correct orientation (left hand basis is different from right).
    
    @param HandType left or right
  **/
  @:final public function GetOrientation(handType : unreal.leapmotion.LeapHandType) : unreal.FRotator;
  
  /**
    Compare Bone object inequality.
    
    @return False if and only if both Bone objects represent the exact same physical bone in the same frame and both Bone objects are valid.
  **/
  @:thisConst @:final public function Different(other : unreal.Const<unreal.leapmotion.ULeapBone>) : Bool;
  
  /**
    Compare Bone object equality.
    
    @return True if and only if both Bone objects represent the exact same physical bone in the same frame and both Bone objects are valid.
  **/
  @:thisConst @:final public function Equal(other : unreal.Const<unreal.leapmotion.ULeapBone>) : Bool;
  
}
