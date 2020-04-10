; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 13.12.05
;
; *********************************************************************
Procedure.l RTSkybox_Init()
  Retour.l = CallCFunctionFast( RTSkyBoxExtends\RTSkybox_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure RTS_RealTime_SetClock( Hour.l, Minutes.l, TimeExpansionf.f )
  CallCFunctionFast( RTSkyBoxExtends\RTS_RealTime_SetClock, Hour, Minutes, TimeExpansionf )
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetDay()
  Retour.l = CallCFunctionFast( RTSkyBoxExtends\RTS_GetDay )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetHour()
  Retour.l = CallCFunctionFast( RTSkyBoxExtends\RTS_GetHour )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetMinutes()
  Retour.l = CallCFunctionFast( RTSkyBoxExtends\RTS_GetMinutes )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetSecunds()
  Retour.l = CallCFunctionFast( RTSkyBoxExtends\RTS_GetSecunds )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetWind( XSpeedf.f, ZSpeedf.f )
  CallCFunctionFast( RTSkyBoxExtends\RTS_SetWind, XSpeedf, ZSpeedf )
 EndProcedure
;
; *********************************************************************
Procedure RTS_ClearRTSkybox()
  CallCFunctionFast( RTSkyBoxExtends\RTS_ClearRTSkybox )
 EndProcedure
;
; *********************************************************************
Procedure RTS_RealTimeSky_Setup( SkyBoxFile.s, CameraMode.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @SkyBoxFilePTR.l, Len( SkyBoxFile ) + 1 ) ; CreateString
  PokeS( SkyBoxFilePTR, SkyBoxFile )
  CallCFunctionFast( RTSkyBoxExtends\RTS_RealTimeSky_Setup, SkyBoxFilePTR, CameraMode )
 EndProcedure
;
; *********************************************************************
Procedure RTS_RealTimeSky()
  CallCFunctionFast( RTSkyBoxExtends\RTS_RealTimeSky )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogControlOn()
  CallCFunctionFast( RTSkyBoxExtends\RTS_SetFogControlOn )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogControlOff()
  CallCFunctionFast( RTSkyBoxExtends\RTS_SetFogControlOff )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogDistance( Distancef.f )
  CallCFunctionFast( RTSkyBoxExtends\RTS_SetFogDistance, Distancef )
 EndProcedure
;
; *********************************************************************
Procedure RTS_SetFogColor( Red.l, Green.l, Blue.l )
  CallCFunctionFast( RTSkyBoxExtends\RTS_SetFogColor, Red, Green, Blue )
 EndProcedure
;
; *********************************************************************
Procedure.l RTS_GetObjectLoaded( ObjectID010.l )
  Retour.l = CallCFunctionFast( RTSkyBoxExtends\RTS_GetObjectLoaded, ObjectID010 )
  ProcedureReturn Retour
 EndProcedure
;
