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
package unreal.slatecore;

/**
  Represents the appearance of an SExpandableArea
**/
@:umodule("SlateCore")
@:glueCppIncludes("Styling/SlateTypes.h")
@:uextern @:ustruct extern class FExpandableAreaStyle extends unreal.slatecore.FSlateWidgetStyle {
  
  /**
    How long the rollout animation lasts
  **/
  @:uproperty public var RolloutAnimationSeconds : unreal.Float32;
  
  /**
    Image to use when the area is expanded
  **/
  @:uproperty public var ExpandedImage : unreal.slatecore.FSlateBrush;
  
  /**
    Image to use when the area is collapsed
  **/
  @:uproperty public var CollapsedImage : unreal.slatecore.FSlateBrush;
  
}
