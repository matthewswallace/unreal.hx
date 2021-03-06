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

@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UWidgetLayoutLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Gets the projected world to screen position for a player, then converts it into a widget
    position, which takes into account any quality scaling.
    @param PlayerController The player controller to project the position in the world to their screen.
    @param WorldLocation The world location to project from.
    @param ScreenPosition The position in the viewport with quality scale removed and DPI scale remove.
    @return true if the position projects onto the screen.
  **/
  @:ufunction static public function ProjectWorldLocationToWidgetPosition(PlayerController : unreal.APlayerController, WorldLocation : unreal.FVector, ScreenPosition : unreal.PRef<unreal.FVector2D>) : Bool;
  
  /**
    Gets the current DPI Scale being applied to the viewport and all the Widgets.
  **/
  @:ufunction static public function GetViewportScale(WorldContextObject : unreal.UObject) : unreal.Float32;
  
  /**
    Gets the size of the game viewport.
  **/
  @:ufunction static public function GetViewportSize(WorldContextObject : unreal.UObject) : unreal.FVector2D;
  
  /**
    Gets the mouse position of the player controller, scaled by the DPI.  If you're trying to go from raw mouse screenspace coordinates
    to fullscreen widget space, you'll need to transform the mouse into DPI Scaled space.  This function performs that scaling.
    
    MousePositionScaledByDPI = MousePosition * (1 / ViewportScale).
  **/
  @:ufunction static public function GetMousePositionScaledByDPI(Player : unreal.APlayerController, LocationX : unreal.Float32, LocationY : unreal.Float32) : Bool;
  
  /**
    Gets the slot object on the child widget as a Border Slot, allowing you to manipulate layout information.
    @param Widget The child widget of a border panel.
  **/
  @:ufunction static public function SlotAsBorderSlot(Widget : unreal.umg.UWidget) : unreal.umg.UBorderSlot;
  
  /**
    Gets the slot object on the child widget as a Canvas Slot, allowing you to manipulate layout information.
    @param Widget The child widget of a canvas panel.
  **/
  @:ufunction static public function SlotAsCanvasSlot(Widget : unreal.umg.UWidget) : unreal.umg.UCanvasPanelSlot;
  
  /**
    Gets the slot object on the child widget as a Grid Slot, allowing you to manipulate layout information.
    @param Widget The child widget of a grid panel.
  **/
  @:ufunction static public function SlotAsGridSlot(Widget : unreal.umg.UWidget) : unreal.umg.UGridSlot;
  
  /**
    Gets the slot object on the child widget as a Horizontal Box Slot, allowing you to manipulate its information.
    @param Widget The child widget of a Horizontal Box.
  **/
  @:ufunction static public function SlotAsHorizontalBoxSlot(Widget : unreal.umg.UWidget) : unreal.umg.UHorizontalBoxSlot;
  
  /**
    Gets the slot object on the child widget as a Overlay Slot, allowing you to manipulate layout information.
    @param Widget The child widget of a overlay panel.
  **/
  @:ufunction static public function SlotAsOverlaySlot(Widget : unreal.umg.UWidget) : unreal.umg.UOverlaySlot;
  
  /**
    Gets the slot object on the child widget as a Uniform Grid Slot, allowing you to manipulate layout information.
    @param Widget The child widget of a uniform grid panel.
  **/
  @:ufunction static public function SlotAsUniformGridSlot(Widget : unreal.umg.UWidget) : unreal.umg.UUniformGridSlot;
  
  /**
    Gets the slot object on the child widget as a Vertical Box Slot, allowing you to manipulate its information.
    @param Widget The child widget of a Vertical Box.
  **/
  @:ufunction static public function SlotAsVerticalBoxSlot(Widget : unreal.umg.UWidget) : unreal.umg.UVerticalBoxSlot;
  
  /**
    Removes all widgets from the viewport.
  **/
  @:ufunction static public function RemoveAllWidgets(WorldContextObject : unreal.UObject) : Void;
  
}
