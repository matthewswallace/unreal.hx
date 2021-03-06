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
package unreal.editor;

/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Builders/CubeBuilder.h")
@:uextern @:uclass extern class UCubeBuilder extends unreal.editor.UEditorBrushBuilder {
  
  /**
    Whether extra internal faces should be generated for each cube face
  **/
  @:uproperty public var Tessellated : Bool;
  
  /**
    Whether this is a hollow or solid cube
  **/
  @:uproperty public var Hollow : Bool;
  @:uproperty public var GroupName : unreal.FName;
  
  /**
    The thickness of the cube wall when hollow
  **/
  @:uproperty public var WallThickness : unreal.Float32;
  
  /**
    The size of the cube in the Z dimension
  **/
  @:uproperty public var Z : unreal.Float32;
  
  /**
    The size of the cube in the Y dimension
  **/
  @:uproperty public var Y : unreal.Float32;
  
  /**
    The size of the cube in the X dimension
  **/
  @:uproperty public var X : unreal.Float32;
  
}
