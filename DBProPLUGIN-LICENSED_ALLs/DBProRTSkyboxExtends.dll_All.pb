; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure RTSkyboxExtendsStruct
  RTSkybox_Init.l : RTS_RealTime_SetClock.l : RTS_GetDay.l : RTS_GetHour.l
  RTS_GetMinutes.l : RTS_GetSecunds.l : RTS_SetWind.l : RTS_ClearRTSkybox.l
  RTS_RealTimeSky_Setup.l : RTS_RealTimeSky.l : RTS_SetFogControlOn.l : RTS_SetFogControlOff.l
  RTS_SetFogDistance.l : RTS_SetFogColor.l : RTS_GetObjectLoaded.l : RTS_SetFogColorEx.l
  RTS_CloudPersistence.l : RTS_SetMistAlpha.l : RTS_SetDay.l : RTS_SetHour.l
  RTS_SetMinutes.l : RTS_SetSecunds.l : RTS_SetTimeExpansion.l : RTS_EnableShadowShadings.l
  RTS_DisableShadowShadings.l : RTS_SetAutoZoom.l
 EndStructure
Global RTSkyboxExtends.RTSkyboxExtendsStruct

Procedure.l CheckRTSkyboxExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_RealTimeSkySystem.dll")
    RTSkyboxExtends\RTSkybox_Init= AIsFunction( 1 , "RTSkybox_Init" ) ; 1 RTS Initialized 
    RTSkyboxExtends\RTS_RealTime_SetClock= AIsFunction( 1 , "RTS_RealTime_SetClock" ) ; 2 RTS Set Clock Hour, Minutes, TimeExpansion(f)
    RTSkyboxExtends\RTS_GetDay= AIsFunction( 1 , "RTS_GetDay" ) ; 3 RTS Get Day 
    RTSkyboxExtends\RTS_GetHour= AIsFunction( 1 , "RTS_GetHour" ) ; 4 RTS Get Hour 
    RTSkyboxExtends\RTS_GetMinutes= AIsFunction( 1 , "RTS_GetMinutes" ) ; 5 RTS Get Minutes 
    RTSkyboxExtends\RTS_GetSecunds= AIsFunction( 1 , "RTS_GetSecunds" ) ; 6 RTS Get Seconds 
    RTSkyboxExtends\RTS_SetWind= AIsFunction( 1 , "RTS_SetWind" ) ; 7 RTS Set Wind Speed XSpeed(f), ZSpeed(f)
    RTSkyboxExtends\RTS_ClearRTSkybox= AIsFunction( 1 , "RTS_ClearRTSkybox" ) ; 8 RTS Clear Skybox 
    RTSkyboxExtends\RTS_RealTimeSky_Setup= AIsFunction( 1 , "RTS_RealTimeSky_Setup" ) ; 9 RTS Setup Skybox SkyBoxFile$, CameraMode
    RTSkyboxExtends\RTS_RealTimeSky= AIsFunction( 1 , "RTS_RealTimeSky" ) ; 10 RTS Update Skybox 
    RTSkyboxExtends\RTS_SetFogControlOn= AIsFunction( 1 , "RTS_SetFogControlOn" ) ; 11 RTS Fog On 
    RTSkyboxExtends\RTS_SetFogControlOff= AIsFunction( 1 , "RTS_SetFogControlOff" ) ; 12 RTS Fog Off 
    RTSkyboxExtends\RTS_SetFogDistance= AIsFunction( 1 , "RTS_SetFogDistance" ) ; 13 RTS Fog Distance Distance(f)
    RTSkyboxExtends\RTS_SetFogColor= AIsFunction( 1 , "RTS_SetFogColor" ) ; 14 RTS Fog Color Red, Green, Blue
    RTSkyboxExtends\RTS_GetObjectLoaded= AIsFunction( 1 , "RTS_GetObjectLoaded" ) ; 15 RTS Get Loaded Object ObjectID[0-10]
    RTSkyboxExtends\RTS_SetFogColorEx= AIsFunction( 1 , "RTS_SetFogColorEx" ) ; 16 RTS Fog Color Red, Green, Blue, NightRed, NightGreen, NightBlue
    RTSkyboxExtends\RTS_CloudPersistence= AIsFunction( 1 , "RTS_CloudPersistence" ) ; 17 RTS Set Cloud Density CloudsDensity#
    RTSkyboxExtends\RTS_SetMistAlpha= AIsFunction( 1 , "RTS_SetMistAlpha" ) ; 18 RTS Set Mist Density MistDensity#
    RTSkyboxExtends\RTS_SetDay= AIsFunction( 1 , "RTS_SetDay" ) ; 19 RTS Set Day ActualDay
    RTSkyboxExtends\RTS_SetHour= AIsFunction( 1 , "RTS_SetHour" ) ; 20 RTS Set Hour ActualHour
    RTSkyboxExtends\RTS_SetMinutes= AIsFunction( 1 , "RTS_SetMinutes" ) ; 21 RTS Set Minutes ActualMinute
    RTSkyboxExtends\RTS_SetSecunds= AIsFunction( 1 , "RTS_SetSecunds" ) ; 22 RTS Set Seconds ActualSecond
    RTSkyboxExtends\RTS_SetTimeExpansion= AIsFunction( 1 , "RTS_SetTimeExpansion" ) ; 23 RTS Set Time Expansion TimeExpansion(f)
    RTSkyboxExtends\RTS_EnableShadowShadings= AIsFunction( 1 , "RTS_EnableShadowShadings" ) ; 24 RTS Shadow Shading On 
    RTSkyboxExtends\RTS_DisableShadowShadings= AIsFunction( 1 , "RTS_DisableShadowShadings" ) ; 25 RTS Shadow Shading Off 
    RTSkyboxExtends\RTS_SetAutoZoom= AIsFunction( 1 , "RTS_SetAutoZoom" ) ; 26 RTS Set Auto Zoom ZoomFactor#
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l RTSkybox_Init()
  Retour.l = CallCFunctionFast( RTSkyboxExtends\RTSkybox_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure RTS_RealTime_SetClock( Hour.l, Minutes.l, TimeExpansionf.f )
  CallCFunctionFast( RTSkyboxExtends\RTS_RealTime_SetClock, Hour, Minutes, TimeExpansionf )
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetDay()
  Retour.l = CallCFunctionFast( RTSkyboxExtends\RTS_GetDay )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetHour()
  Retour.l = CallCFunctionFast( RTSkyboxExtends\RTS_GetHour )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetMinutes()
  Retour.l = CallCFunctionFast( RTSkyboxExtends\RTS_GetMinutes )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetSecunds()
  Retour.l = CallCFunctionFast( RTSkyboxExtends\RTS_GetSecunds )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetWind( XSpeedf.f, ZSpeedf.f )
  CallCFunctionFast( RTSkyboxExtends\RTS_SetWind, XSpeedf, ZSpeedf )
 EndProcedure
;
; *********************************************************************
Procedure RTS_ClearRTSkybox()
  CallCFunctionFast( RTSkyboxExtends\RTS_ClearRTSkybox )
 EndProcedure
;
; *********************************************************************
Procedure RTS_RealTimeSky_Setup( SkyBoxFile.s, CameraMode.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @SkyBoxFilePTR.l, Len( SkyBoxFile ) + 1 ) ; CreateString
  PokeS( SkyBoxFilePTR, SkyBoxFile )
  CallCFunctionFast( RTSkyboxExtends\RTS_RealTimeSky_Setup, SkyBoxFilePTR, CameraMode )
 EndProcedure
;
; *********************************************************************
Procedure RTS_RealTimeSky()
  CallCFunctionFast( RTSkyboxExtends\RTS_RealTimeSky )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogControlOn()
  CallCFunctionFast( RTSkyboxExtends\RTS_SetFogControlOn )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogControlOff()
  CallCFunctionFast( RTSkyboxExtends\RTS_SetFogControlOff )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogDistance( Distancef.f )
  CallCFunctionFast( RTSkyboxExtends\RTS_SetFogDistance, Distancef )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogColor( Red.l, Green.l, Blue.l )
  CallCFunctionFast( RTSkyboxExtends\RTS_SetFogColor, Red, Green, Blue )
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetObjectLoaded( ObjectID010.l )
  Retour.l = CallCFunctionFast( RTSkyboxExtends\RTS_GetObjectLoaded, ObjectID010 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogColor1( Red.l, Green.l, Blue.l, NightRed.l, NightGreen.l, NightBlue.l )
  CallCFunctionFast( RTSkyboxExtends\RTS_SetFogColorEx, Red, Green, Blue, NightRed, NightGreen, NightBlue )
 EndProcedure
;
; *********************************************************************
Procedure RTS_CloudPersistence( CloudsDensity.f )
  CallCFunctionFast( RTSkyboxExtends\RTS_CloudPersistence, CloudsDensity )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetMistAlpha( MistDensity.f )
  CallCFunctionFast( RTSkyboxExtends\RTS_SetMistAlpha, MistDensity )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetDay( ActualDay.l )
  CallCFunctionFast( RTSkyboxExtends\RTS_SetDay, ActualDay )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetHour( ActualHour.l )
  CallCFunctionFast( RTSkyboxExtends\RTS_SetHour, ActualHour )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetMinutes( ActualMinute.l )
  CallCFunctionFast( RTSkyboxExtends\RTS_SetMinutes, ActualMinute )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetSecunds( ActualSecond.l )
  CallCFunctionFast( RTSkyboxExtends\RTS_SetSecunds, ActualSecond )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetTimeExpansion( TimeExpansionf.f )
  CallCFunctionFast( RTSkyboxExtends\RTS_SetTimeExpansion, TimeExpansionf )
 EndProcedure
;
; *********************************************************************
Procedure RTS_EnableShadowShadings()
  CallCFunctionFast( RTSkyboxExtends\RTS_EnableShadowShadings )
 EndProcedure
;
; *********************************************************************
Procedure RTS_DisableShadowShadings()
  CallCFunctionFast( RTSkyboxExtends\RTS_DisableShadowShadings )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetAutoZoom( ZoomFactor.f )
  CallCFunctionFast( RTSkyboxExtends\RTS_SetAutoZoom, ZoomFactor )
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 10
; Folding = -----