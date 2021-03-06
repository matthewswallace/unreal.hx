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
package unreal.umg;


/**
  A panel that evenly divides up available space between all of its children.
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UUniformGridPanel extends unreal.umg.UPanelWidget {
  
  /**
    The minimum desired height of the slots
  **/
  @:uproperty public var MinDesiredSlotHeight : unreal.Float32;
  
  /**
    The minimum desired width of the slots
  **/
  @:uproperty public var MinDesiredSlotWidth : unreal.Float32;
  
  /**
    Padding given to each slot
  **/
  @:uproperty public var SlotPadding : unreal.slatecore.FMargin;
  @:ufunction @:final public function SetSlotPadding(InSlotPadding : unreal.slatecore.FMargin) : Void;
  @:ufunction @:final public function SetMinDesiredSlotWidth(InMinDesiredSlotWidth : unreal.Float32) : Void;
  @:ufunction @:final public function SetMinDesiredSlotHeight(InMinDesiredSlotHeight : unreal.Float32) : Void;
  @:ufunction @:final public function AddChildToUniformGrid(Content : unreal.umg.UWidget) : unreal.umg.UUniformGridSlot;
  
}
