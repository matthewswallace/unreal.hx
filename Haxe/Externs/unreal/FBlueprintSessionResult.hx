package unreal;

@:glueCppIncludes('unreal/FixedFindSessionsCallbackProxy.h')
@:uname("FBlueprintSessionResult")
@:ustruct
@:uextern extern class FBlueprintSessionResult {

	@:uname('new')
	static public function create() : POwnedPtr<FBlueprintSessionResult>;	

	public var OnlineResult : FOnlineSessionSearchResult;
}
