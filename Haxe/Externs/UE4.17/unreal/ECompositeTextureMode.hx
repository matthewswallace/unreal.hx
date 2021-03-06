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
package unreal;

@:glueCppIncludes("Classes/Engine/Texture.h")
@:uname("ECompositeTextureMode")
@:uextern @:uenum extern enum ECompositeTextureMode {
  
  /**
    Disabled
  **/
  @DisplayName("Disabled")
  CTM_Disabled;
  
  /**
    CompositingTexture needs to be a normal map with the same or larger size.
    @DisplayName Add Normal Roughness To Red
  **/
  @DisplayName("Add Normal Roughness To Red")
  CTM_NormalRoughnessToRed;
  
  /**
    CompositingTexture needs to be a normal map with the same or larger size.
    @DisplayName Add Normal Roughness To Green
  **/
  @DisplayName("Add Normal Roughness To Green")
  CTM_NormalRoughnessToGreen;
  
  /**
    CompositingTexture needs to be a normal map with the same or larger size.
    @DisplayName Add Normal Roughness To Blue
  **/
  @DisplayName("Add Normal Roughness To Blue")
  CTM_NormalRoughnessToBlue;
  
  /**
    CompositingTexture needs to be a normal map with the same or larger size.
    @DisplayName Add Normal Roughness To Alpha
  **/
  @DisplayName("Add Normal Roughness To Alpha")
  CTM_NormalRoughnessToAlpha;
  
}
