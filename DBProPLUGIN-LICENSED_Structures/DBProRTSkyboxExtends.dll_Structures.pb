; DarkBasic Professional RC2PBIncludes Ver 1.0 File - STRUCTURES SETUP
; By Frederic Cordier - 07.02.13
;
Structure RTSkyboxExtendsStruct
  RTSkybox_Init.l : RTS_RealTime_SetClock.l : RTS_GetDay.l : RTS_GetHour.l
  RTS_GetMinutes.l : RTS_GetSecunds.l : RTS_SetWind.l : RTS_ClearRTSkybox.l
  RTS_RealTimeSky_Setup.l : RTS_RealTimeSky.l : RTS_SetFogControlOn.l : RTS_SetFogControlOff.l
  RTS_SetFogDistance.l : RTS_SetFogColor.l : RTS_GetObjectLoaded.l : RTS_SetFogColorEx.l
  RTS_CloudPersistence.l : RTS_SetMistAlpha.l : RTS_SetDay.l : RTS_SetHour.l
  RTS_SetMinutes.l : RTS_SetSecunds.l : RTS_SetTimeExpansion.l : RTS_EnableShadowShadings.l
  RTS_DisableShadowShadings.l : RTS_SetAutoZoom.l : 
 EndStructure
Global RTSkyboxExtends.RTSkyboxExtendsStruct
