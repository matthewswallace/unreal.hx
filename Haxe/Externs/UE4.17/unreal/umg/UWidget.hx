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
package unreal.umg;

/**
  This is the base class for all wrapped Slate controls that are exposed to UObjects.
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UWidget extends unreal.umg.UVisual {
  
  /**
    Native property bindings.
  **/
  @:uproperty private var NativeBindings : unreal.TArray<unreal.umg.UPropertyBinding>;
  #if WITH_EDITORONLY_DATA
  
  /**
    Stores the design time flag setting if the widget is locked inside the designer
  **/
  @:uproperty public var bLockedInDesigner : Bool;
  
  /**
    Stores the design time flag setting if the widget is expanded inside the designer
  **/
  @:uproperty public var bExpandedInDesigner : Bool;
  
  /**
    Stores the design time flag setting if the widget is hidden inside the designer
  **/
  @:uproperty public var bHiddenInDesigner : Bool;
  #end // WITH_EDITORONLY_DATA
  
  /**
    The navigation object for this widget is optionally created if the user has configured custom
    navigation rules for this widget in the widget designer.  Those rules determine how navigation transitions
    can occur between widgets.
  **/
  @:uproperty public var Navigation : unreal.umg.UWidgetNavigation;
  
  /**
    The render transform pivot controls the location about which transforms are applied.
    This value is a normalized coordinate about which things like rotations will occur.
  **/
  @:uproperty public var RenderTransformPivot : unreal.FVector2D;
  
  /**
    The render transform of the widget allows for arbitrary 2D transforms to be applied to the widget.
  **/
  @:uproperty public var RenderTransform : unreal.umg.FWidgetTransform;
  
  /**
    Controls how the clipping behavior of this widget.  Normally content that overflows the
    bounds of the widget continues rendering.  Enabling clipping prevents that overflowing content
    from being seen.
    
    NOTE: Elements in different clipping spaces can not be batched together, and so there is a
    performance cost to clipping.  Do not enable clipping unless a panel actually needs to prevent
    content from showing up outside its bounds.
  **/
  @:uproperty public var Clipping : unreal.slatecore.EWidgetClipping;
  
  /**
    The cursor to show when the mouse is over the widget
  **/
  @:uproperty public var Cursor : unreal.EMouseCursor;
  @:uproperty public var bOverride_Cursor : Bool;
  
  /**
    A bindable delegate for Visibility
  **/
  @:uproperty public var VisibilityDelegate : unreal.umg.FGetSlateVisibility;
  
  /**
    The visibility of the widget
  **/
  @:uproperty public var Visibility : unreal.umg.ESlateVisibility;
  
  /**
    The visibility of the widget
  **/
  @:deprecated @:uproperty public var Visiblity_DEPRECATED : unreal.umg.ESlateVisibility;
  
  /**
    A bindable delegate for ToolTipWidget
  **/
  @:uproperty public var ToolTipWidgetDelegate : unreal.umg.FGetWidget;
  
  /**
    Tooltip widget to show when the user hovers over the widget with the mouse
  **/
  @:uproperty public var ToolTipWidget : unreal.umg.UWidget;
  
  /**
    A bindable delegate for ToolTipText
  **/
  @:uproperty public var ToolTipTextDelegate : unreal.umg.FGetText;
  
  /**
    Tooltip text to show when the user hovers over the widget with the mouse
  **/
  @:uproperty public var ToolTipText : unreal.FText;
  
  /**
    A bindable delegate for bIsEnabled
  **/
  @:uproperty public var bIsEnabledDelegate : unreal.umg.FGetBool;
  
  /**
    Sets whether this widget can be modified interactively by the user
  **/
  @:uproperty public var bIsEnabled : Bool;
  
  /**
    The parent slot of the UWidget.  Allows us to easily inline edit the layout controlling this widget.
  **/
  @:uproperty public var Slot : unreal.umg.UPanelSlot;
  
  /**
    Allows controls to be exposed as variables in a blueprint.  Not all controls need to be exposed
    as variables, so this allows only the most useful ones to end up being exposed.
  **/
  @:uproperty public var bIsVariable : Bool;
  @:ufunction(BlueprintCallable) @:final public function SetRenderTransform(InTransform : unreal.umg.FWidgetTransform) : Void;
  @:ufunction(BlueprintCallable) @:final public function SetRenderScale(Scale : unreal.FVector2D) : Void;
  @:ufunction(BlueprintCallable) @:final public function SetRenderShear(Shear : unreal.FVector2D) : Void;
  @:ufunction(BlueprintCallable) @:final public function SetRenderAngle(Angle : unreal.Float32) : Void;
  @:ufunction(BlueprintCallable) @:final public function SetRenderTranslation(Translation : unreal.FVector2D) : Void;
  @:ufunction(BlueprintCallable) @:final public function SetRenderTransformPivot(Pivot : unreal.FVector2D) : Void;
  
  /**
    Gets the current enabled status of the widget
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetIsEnabled() : Bool;
  
  /**
    Sets the current enabled status of the widget
  **/
  @:ufunction(BlueprintCallable) public function SetIsEnabled(bInIsEnabled : Bool) : Void;
  
  /**
    Sets the tooltip text for the widget.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetToolTipText(InToolTipText : unreal.Const<unreal.PRef<unreal.FText>>) : Void;
  
  /**
    Sets a custom widget as the tooltip of the widget.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetToolTip(Widget : unreal.umg.UWidget) : Void;
  
  /**
    Sets the cursor to show over the widget.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetCursor(InCursor : unreal.EMouseCursor) : Void;
  
  /**
    Resets the cursor to use on the widget, removing any customization for it.
  **/
  @:ufunction(BlueprintCallable) @:final public function ResetCursor() : Void;
  
  /**
    @return true if the widget is Visible, HitTestInvisible or SelfHitTestInvisible.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function IsVisible() : Bool;
  
  /**
    Gets the current visibility of the widget.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetVisibility() : unreal.umg.ESlateVisibility;
  
  /**
    Sets the visibility of the widget.
  **/
  @:ufunction(BlueprintCallable) public function SetVisibility(InVisibility : unreal.umg.ESlateVisibility) : Void;
  
  /**
    Gets the clipping state of this widget.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetClipping() : unreal.slatecore.EWidgetClipping;
  
  /**
    Sets the clipping state of this widget.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetClipping(InClipping : unreal.slatecore.EWidgetClipping) : Void;
  
  /**
    Sets the forced volatility of the widget.
  **/
  @:ufunction(BlueprintCallable) @:final public function ForceVolatile(bForce : Bool) : Void;
  
  /**
    @return true if the widget is currently being hovered by a pointer device
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function IsHovered() : Bool;
  
  /**
    Checks to see if this widget currently has the keyboard focus
    
    @return  True if this widget has keyboard focus
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function HasKeyboardFocus() : Bool;
  
  /**
    Checks to see if this widget is the current mouse captor
    @return  True if this widget has captured the mouse
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function HasMouseCapture() : Bool;
  
  /**
    Sets the focus to this widget.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetKeyboardFocus() : Void;
  
  /**
    @return true if this widget is focused by a specific user.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function HasUserFocus(PlayerController : unreal.APlayerController) : Bool;
  
  /**
    @return true if this widget is focused by any user.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function HasAnyUserFocus() : Bool;
  
  /**
    @return true if any descendant widget is focused by any user.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function HasFocusedDescendants() : Bool;
  
  /**
    @return true if any descendant widget is focused by a specific user.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function HasUserFocusedDescendants(PlayerController : unreal.APlayerController) : Bool;
  
  /**
    Sets the focus to this widget for a specific user
  **/
  @:ufunction(BlueprintCallable) @:final public function SetUserFocus(PlayerController : unreal.APlayerController) : Void;
  
  /**
    Forces a pre-pass.  A pre-pass caches the desired size of the widget hierarchy owned by this widget.
    One pre-pass is already happens for every widget before Tick occurs.  You only need to perform another
    pre-pass if you are adding child widgets this frame and want them to immediately be visible this frame.
  **/
  @:ufunction(BlueprintCallable) @:final public function ForceLayoutPrepass() : Void;
  
  /**
    Invalidates the widget from the view of a layout caching widget that may own this widget.
    will force the owning widget to redraw and cache children on the next paint pass.
  **/
  @:ufunction(BlueprintCallable) @:final public function InvalidateLayoutAndVolatility() : Void;
  
  /**
    Gets the widgets desired size.
    NOTE: The underlying Slate widget must exist and be valid, also at least one pre-pass must
          have occurred before this value will be of any use.
    
    @return The widget's desired size
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetDesiredSize() : unreal.FVector2D;
  
  /**
    Sets the widget navigation rules for all directions. This can only be called on widgets that are in a widget tree.
    @param Rule The rule to use when navigation is taking place
    @param WidgetToFocus When using the Explicit rule, focus on this widget
  **/
  @:ufunction(BlueprintCallable) @:final public function SetAllNavigationRules(Rule : unreal.slatecore.EUINavigationRule, WidgetToFocus : unreal.FName) : Void;
  
  /**
    Sets the widget navigation rules for a specific direction. This can only be called on widgets that are in a widget tree.
    @param Direction
    @param Rule The rule to use when navigation is taking place
    @param WidgetToFocus When using the Explicit rule, focus on this widget
  **/
  @:ufunction(BlueprintCallable) @:final public function SetNavigationRule(Direction : unreal.slatecore.EUINavigation, Rule : unreal.slatecore.EUINavigationRule, WidgetToFocus : unreal.FName) : Void;
  
  /**
    Gets the parent widget
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetParent() : unreal.umg.UPanelWidget;
  
  /**
    Removes the widget from its parent widget.  If this widget was added to the player's screen or the viewport
    it will also be removed from those containers.
  **/
  @:ufunction(BlueprintCallable) public function RemoveFromParent() : Void;
  
  /**
    Gets the last geometry used to Tick the widget.  This data may not exist yet if this call happens prior to
    the widget having been ticked/painted, or it may be out of date, or a frame behind.
    
    We recommend not to use this data unless there's no other way to solve your problem.  Normally in Slate we
    try and handle these issues by making a dependent widget part of the hierarchy, as to avoid frame behind
    or what are referred to as hysteresis problems, both caused by depending on geometry from the previous frame
    being used to advise how to layout a dependent object the current frame.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetCachedGeometry() : unreal.Const<unreal.PRef<unreal.slatecore.FGeometry>>;
  
  /**
    Gets the player controller associated with this UI.
    @return The player controller that owns the UI.
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetOwningPlayer() : unreal.APlayerController;
  
}
