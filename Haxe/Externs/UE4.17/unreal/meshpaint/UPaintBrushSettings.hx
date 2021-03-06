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
package unreal.meshpaint;

@:umodule("MeshPaint")
@:glueCppIncludes("MeshPaintSettings.h")
@:uextern @:uclass extern class UPaintBrushSettings extends unreal.UObject {
  
  /**
    Color view mode used to display Vertex Colors
  **/
  @:uproperty public var ColorViewMode : unreal.meshpaint.EMeshPaintColorViewMode;
  
  /**
    Whether back-facing triangles should be ignored
  **/
  @:uproperty public var bOnlyFrontFacingTriangles : Bool;
  
  /**
    Enables "Flow" painting where paint is continually applied from the brush every tick
  **/
  @:uproperty public var bEnableFlow : Bool;
  
  /**
    Amount of falloff to apply (0.0 - 1.0)
  **/
  @:uproperty public var BrushFalloffAmount : unreal.Float32;
  
  /**
    Strength of the brush (0.0 - 1.0)
  **/
  @:uproperty public var BrushStrength : unreal.Float32;
  
  /**
    Radius of the Brush used for Painting
  **/
  @:uproperty private var BrushRadius : unreal.Float32;
  
}
