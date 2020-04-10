; DarkBasic Professional RC2PBIncludes Ver 1.0 File - STRUCTURES SETUP
; By Frederic Cordier - 07.02.13
;
Structure Light3DExtendsStruct
  L3D_Init.l : L3D_SetDisplayCamera.l : L3D_GetDisplayCamera.l : L3D_LockLight.l
  L3D_UnLockLight.l : L3D_GetLocked.l : L3D_GetTotalFreeLight.l : L3D_AddVirtualLight.l
  L3D_DeleteVirtualLight.l : L3D_GetVirtualLightsCount.l : L3D_ClearVirtualLights.l : L3D_RefreshLights.l
  L3D_SetVisibilityDistance.l : L3D_GetVisibilityDistance.l : L3D_SetVLightRange.l : L3D_SetVLightColor.l
  L3D_HideVLight.l : L3D_ShowVLight.l : L3D_PositionVLight.l : L3D_SetVLightHalo.l
  L3D_SetVLightAsFixed.l : L3D_SetVLightAsFlame.l : L3D_SetVLightAsPulse.l : L3D_SetVLightAsFlashs.l
  L3D_GetTrueLightColor.l : L3D_GetTrueLightRange.l : 
 EndStructure
Global Light3DExtends.Light3DExtendsStruct
