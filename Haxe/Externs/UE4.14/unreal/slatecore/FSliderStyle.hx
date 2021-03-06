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
  Represents the appearance of an SSlider
**/
@:umodule("SlateCore")
@:glueCppIncludes("Styling/SlateTypes.h")
@:uextern @:ustruct extern class FSliderStyle extends unreal.slatecore.FSlateWidgetStyle {
  @:uproperty public var BarThickness : unreal.Float32;
  
  /**
    Image to use when the slider thumb is in its disabled state
  **/
  @:uproperty public var DisabledThumbImage : unreal.slatecore.FSlateBrush;
  
  /**
    Image to use when the slider thumb is in its normal state
  **/
  @:uproperty public var NormalThumbImage : unreal.slatecore.FSlateBrush;
  
  /**
    Image to use when the slider bar is in its disabled state
  **/
  @:uproperty public var DisabledBarImage : unreal.slatecore.FSlateBrush;
  
  /**
    Image to use when the slider bar is in its normal state
  **/
  @:uproperty public var NormalBarImage : unreal.slatecore.FSlateBrush;
  
}
