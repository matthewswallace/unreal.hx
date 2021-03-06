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

@:glueCppIncludes("Kismet/DataTableFunctionLibrary.h")
@:uextern @:uclass extern class UDataTableFunctionLibrary extends unreal.UBlueprintFunctionLibrary {
  @:ufunction(BlueprintCallable) static public function EvaluateCurveTableRow(CurveTable : unreal.UCurveTable, RowName : unreal.FName, InXY : unreal.Float32, OutResult : unreal.PRef<unreal.EEvaluateCurveTableResult>, OutXY : unreal.Float32, ContextString : unreal.FString) : Void;
  @:ufunction(BlueprintCallable) static public function GetDataTableRowNames(Table : unreal.UDataTable, OutRowNames : unreal.PRef<unreal.TArray<unreal.FName>>) : Void;
  
  /**
    Get a Row from a DataTable given a RowName
  **/
  @:ufunction(BlueprintCallable) static public function GetDataTableRowFromName(Table : unreal.UDataTable, RowName : unreal.FName, OutRow : unreal.PRef<unreal.FTableRowBase>) : Bool;
  
}
