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
package unreal.slatecore;


/**
  Represents the appearance of an SScrollBar
**/
@:umodule("SlateCore")
@:glueCppIncludes("Styling/SlateTypes.h")
@:uextern @:ustruct extern class FScrollBarStyle extends unreal.slatecore.FSlateWidgetStyle {
  
  /**
    Image to use when the scrollbar thumb is in its dragged state
  **/
  @:uproperty public var DraggedThumbImage : unreal.slatecore.FSlateBrush;
  
  /**
    Image to use when the scrollbar thumb is in its hovered state
  **/
  @:uproperty public var HoveredThumbImage : unreal.slatecore.FSlateBrush;
  
  /**
    Image to use when the scrollbar thumb is in its normal state
  **/
  @:uproperty public var NormalThumbImage : unreal.slatecore.FSlateBrush;
  
  /**
    The image to use to represent the track below the thumb when the scrollbar is oriented horizontally
  **/
  @:uproperty public var HorizontalBottomSlotImage : unreal.slatecore.FSlateBrush;
  
  /**
    The image to use to represent the track below the thumb when the scrollbar is oriented vertically
  **/
  @:uproperty public var VerticalBottomSlotImage : unreal.slatecore.FSlateBrush;
  
  /**
    The image to use to represent the track above the thumb when the scrollbar is oriented horizontally
  **/
  @:uproperty public var HorizontalTopSlotImage : unreal.slatecore.FSlateBrush;
  
  /**
    The image to use to represent the track above the thumb when the scrollbar is oriented vertically
  **/
  @:uproperty public var VerticalTopSlotImage : unreal.slatecore.FSlateBrush;
  
  /**
    Background image to use when the scrollbar is oriented vertically
  **/
  @:uproperty public var VerticalBackgroundImage : unreal.slatecore.FSlateBrush;
  
  /**
    Background image to use when the scrollbar is oriented horizontally
  **/
  @:uproperty public var HorizontalBackgroundImage : unreal.slatecore.FSlateBrush;
  
}
