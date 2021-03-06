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
package unreal.vreditor;

/**
  Asset container for VREditor.
**/
@:umodule("VREditor")
@:glueCppIncludes("VREditorAssetContainer.h")
@:uextern @:uclass extern class UVREditorAssetContainer extends unreal.UDataAsset {
  
  /**
    Fonts
  **/
  @:uproperty public var TextFont : unreal.UFont;
  @:uproperty public var WindowTranslucentMaterial : unreal.UMaterialInterface;
  @:uproperty public var WindowMaterial : unreal.UMaterialInterface;
  @:uproperty public var TeleportMaterial : unreal.UMaterialInterface;
  @:uproperty public var OculusControllerMaterial : unreal.UMaterialInterface;
  @:uproperty public var VivePreControllerMaterial : unreal.UMaterialInterface;
  @:uproperty public var TextMaterial : unreal.UMaterialInterface;
  @:uproperty public var WorldMovementPostProcessMaterial : unreal.UMaterial;
  @:uproperty public var LaserPointerTranslucentMaterial : unreal.UMaterialInterface;
  @:uproperty public var LaserPointerMaterial : unreal.UMaterialInterface;
  
  /**
    Materials
  **/
  @:uproperty public var GridMaterial : unreal.UMaterialInterface;
  @:uproperty public var RadialMenuPointerMesh : unreal.UStaticMesh;
  @:uproperty public var RadialMenuMainMesh : unreal.UStaticMesh;
  @:uproperty public var WindowCloseButtonMesh : unreal.UStaticMesh;
  @:uproperty public var WindowSelectionBarMesh : unreal.UStaticMesh;
  @:uproperty public var WindowMesh : unreal.UStaticMesh;
  @:uproperty public var TeleportRootMesh : unreal.UStaticMesh;
  @:uproperty public var GenericControllerMesh : unreal.UStaticMesh;
  @:uproperty public var OculusControllerMesh : unreal.UStaticMesh;
  @:uproperty public var VivePreControllerMesh : unreal.UStaticMesh;
  @:uproperty public var LaserPointerHoverMesh : unreal.UStaticMesh;
  @:uproperty public var LaserPointerEndMesh : unreal.UStaticMesh;
  @:uproperty public var LaserPointerMesh : unreal.UStaticMesh;
  @:uproperty public var LaserPointerStartMesh : unreal.UStaticMesh;
  @:uproperty public var CylinderMesh : unreal.UStaticMesh;
  @:uproperty public var PlaneMesh : unreal.UStaticMesh;
  
  /**
    Meshes
  **/
  @:uproperty public var GenericHMDMesh : unreal.UStaticMesh;
  @:uproperty public var ButtonPressSound : unreal.USoundCue;
  @:uproperty public var TeleportSound : unreal.USoundBase;
  @:uproperty public var RadialMenuCloseSound : unreal.USoundBase;
  @:uproperty public var RadialMenuOpenSound : unreal.USoundBase;
  @:uproperty public var DropFromContentBrowserSound : unreal.USoundBase;
  @:uproperty public var DockableWindowDragSound : unreal.USoundBase;
  @:uproperty public var DockableWindowDropSound : unreal.USoundBase;
  @:uproperty public var DockableWindowOpenSound : unreal.USoundBase;
  
  /**
    Sounds
  **/
  @:uproperty public var DockableWindowCloseSound : unreal.USoundBase;
  
}
