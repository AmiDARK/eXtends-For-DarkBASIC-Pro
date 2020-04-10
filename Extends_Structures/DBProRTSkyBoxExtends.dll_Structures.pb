; DarkBasic Professional RC2PBIncludes Ver 1.0 File - STRUCTURES SETUP
; By Frederic Cordier - 13.12.05
;
Structure RTSkyBoxExtendsStruct
  RTSkybox_Init.l : RTS_RealTime_SetClock.l : RTS_GetDay.l : RTS_GetHour.l
  RTS_GetMinutes.l : RTS_GetSecunds.l : RTS_SetWind.l : RTS_ClearRTSkybox.l
  RTS_RealTimeSky_Setup.l : RTS_RealTimeSky.l : RTS_SetFogControlOn.l : RTS_SetFogControlOff.l
  RTS_SetFogDistance.l : RTS_SetFogColor.l : RTS_GetObjectLoaded.l : 
 EndStructure
Global RTSkyBoxExtends.RTSkyBoxExtendsStruct
