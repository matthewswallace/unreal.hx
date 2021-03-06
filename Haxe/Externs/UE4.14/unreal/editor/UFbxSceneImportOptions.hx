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
package unreal.editor;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  Fbx_AddToBlueprint UMETA(DisplayName = "Add to an existing Blueprint asset"),
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Factories/FbxSceneImportOptions.h")
@:uextern @:uclass extern class UFbxSceneImportOptions extends unreal.UObject {
  
  /**
    If enabled, this option will cause normal map Y (Green) values to be inverted when importing textures
  **/
  @:uproperty public var bInvertNormalMaps : Bool;
  
  /**
    If enabled, creates LOD models for Unreal skeletal meshes from LODs in the import file; If not enabled, only the base skeletal mesh from the LOD group is imported.
  **/
  @:uproperty public var bImportSkeletalMeshLODs : Bool;
  
  /**
    If enabled, creates LOD models for Unreal static meshes from LODs in the import file; If not enabled, only the base static mesh from the LOD group is imported.
  **/
  @:uproperty public var bImportStaticMeshLODs : Bool;
  
  /**
    - Experimental - If this option is true the inverse node pivot will be apply to the mesh vertices. The pivot from the DCC will then be the origin of the mesh. This option only work with static meshes.
  **/
  @:uproperty public var bBakePivotInVertex : Bool;
  
  /**
    If this option is true the node absolute transform (transform, offset and pivot) will be apply to the mesh vertices.
  **/
  @:uproperty public var bTransformVertexToAbsolute : Bool;
  @:uproperty public var ImportUniformScale : unreal.Float32;
  @:uproperty public var ImportRotation : unreal.FRotator;
  @:uproperty public var ImportTranslation : unreal.FVector;
  
  /**
    Choose if you want to generate the scene hierarchy with normal level actors, one actor with multiple components, or one blueprint asset with multiple components.
  **/
  @:uproperty public var HierarchyType : unreal.editor.EFBXSceneOptionsCreateHierarchyType;
  
  /**
    If checked, the mobility of all actors or components will be dynamic. If unchecked, they will be static.
  **/
  @:uproperty public var bImportAsDynamic : Bool;
  
  /**
    If checked, a folder's hierarchy will be created under the import asset path. All the created folders will match the actor hierarchy. In case there is more than one actor that links to an asset, the shared asset will be placed at the first actor's place.
  **/
  @:uproperty public var bCreateContentFolderHierarchy : Bool;
  
}
