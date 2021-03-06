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
package unreal.qos;


/**
  A beacon client used for quality timings to a specified session
**/
@:glueCppIncludes("QosBeaconClient.h")
@:uextern extern class AQosBeaconClient extends unreal.onlinesubsystemutils.AOnlineBeaconClient {
  
  /**
    Contact the server with a Qos request and begin timing
    
    @param InSessionId reference session id to make sure the session is the correct one
  **/
  private function ServerQosRequest(InSessionId : unreal.FString) : Void;
  
  /**
    Response from the host session after making a Qos request
  **/
  private function ClientQosResponse(Response : unreal.qos.EQosResponseType) : Void;
  
}
