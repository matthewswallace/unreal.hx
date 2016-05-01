package unreal.slatecore;

@:umodule("SlateCore")

@:glueCppIncludes("Layout/Geometry.h")
@:uextern extern class FGeometry_Extra {

  @:uname('new')
  static public function create() : POwnedPtr<FGeometry>;

  @:thisConst
  public function ToString() : FString;
}
