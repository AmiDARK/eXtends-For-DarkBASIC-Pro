; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 13.12.05
;
Procedure.l CheckRTSkyBoxExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_RealTimeSkySystem.dll")
    RTSkyBoxExtends\RTSkybox_Init= AIsFunction( 1 , "RTSkybox_Init" ) ; 1 RTS Initialized 
    RTSkyBoxExtends\RTS_RealTime_SetClock= AIsFunction( 1 , "RTS_RealTime_SetClock" ) ; 2 RTS Set Clock Hour, Minutes, TimeExpansion(f)
    RTSkyBoxExtends\RTS_GetDay= AIsFunction( 1 , "RTS_GetDay" ) ; 3 RTS Get Day 
    RTSkyBoxExtends\RTS_GetHour= AIsFunction( 1 , "RTS_GetHour" ) ; 4 RTS Get Hour 
    RTSkyBoxExtends\RTS_GetMinutes= AIsFunction( 1 , "RTS_GetMinutes" ) ; 5 RTS Get Minutes 
    RTSkyBoxExtends\RTS_GetSecunds= AIsFunction( 1 , "RTS_GetSecunds" ) ; 6 RTS Get Seconds 
    RTSkyBoxExtends\RTS_SetWind= AIsFunction( 1 , "RTS_SetWind" ) ; 7 RTS Set Wind Speed XSpeed(f), ZSpeed(f)
    RTSkyBoxExtends\RTS_ClearRTSkybox= AIsFunction( 1 , "RTS_ClearRTSkybox" ) ; 8 RTS Clear Skybox 
    RTSkyBoxExtends\RTS_RealTimeSky_Setup= AIsFunction( 1 , "RTS_RealTimeSky_Setup" ) ; 9 RTS Setup Skybox SkyBoxFile$, CameraMode
    RTSkyBoxExtends\RTS_RealTimeSky= AIsFunction( 1 , "RTS_RealTimeSky" ) ; 10 RTS Update Skybox 
    RTSkyBoxExtends\RTS_SetFogControlOn= AIsFunction( 1 , "RTS_SetFogControlOn" ) ; 11 RTS Fog On 
    RTSkyBoxExtends\RTS_SetFogControlOff= AIsFunction( 1 , "RTS_SetFogControlOff" ) ; 12 RTS Fog Off 
    RTSkyBoxExtends\RTS_SetFogDistance= AIsFunction( 1 , "RTS_SetFogDistance" ) ; 13 RTS Fog Distance Distance(f)
    RTSkyBoxExtends\RTS_SetFogColor= AIsFunction( 1 , "RTS_SetFogColor" ) ; 14 RTS Fog Color Red, Green, Blue
    RTSkyBoxExtends\RTS_GetObjectLoaded= AIsFunction( 1 , "RTS_GetObjectLoaded" ) ; 15 RTS Get Loaded Object ObjectID[0-10]
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -