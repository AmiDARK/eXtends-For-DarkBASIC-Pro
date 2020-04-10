; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure Light3DExtendsStruct
  L3D_Init.l : L3D_SetDisplayCamera.l : L3D_GetDisplayCamera.l : L3D_LockLight.l
  L3D_UnLockLight.l : L3D_GetLocked.l : L3D_GetTotalFreeLight.l : L3D_AddVirtualLight.l
  L3D_DeleteVirtualLight.l : L3D_GetVirtualLightsCount.l : L3D_ClearVirtualLights.l : L3D_RefreshLights.l
  L3D_SetVisibilityDistance.l : L3D_GetVisibilityDistance.l : L3D_SetVLightRange.l : L3D_SetVLightColor.l
  L3D_HideVLight.l : L3D_ShowVLight.l : L3D_PositionVLight.l : L3D_SetVLightHalo.l
  L3D_SetVLightAsFixed.l : L3D_SetVLightAsFlame.l : L3D_SetVLightAsPulse.l : L3D_SetVLightAsFlashs.l
  L3D_GetTrueLightColor.l : L3D_GetTrueLightRange.l
 EndStructure
Global Light3DExtends.Light3DExtendsStruct

Procedure.l CheckLight3DExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_VirtualsLights3D.dll" )
    Light3DExtends\L3D_Init= AIsFunction( 1 , "L3D_Init" ) ; 1 L3D Initialized 
    Light3DExtends\L3D_SetDisplayCamera= AIsFunction( 1 , "L3D_SetDisplayCamera" ) ; 2 L3D Set Control Camera CameraNumber
    Light3DExtends\L3D_GetDisplayCamera= AIsFunction( 1 , "L3D_GetDisplayCamera" ) ; 3 L3D Get Control Camera 
    Light3DExtends\L3D_LockLight= AIsFunction( 1 , "L3D_LockLight" ) ; 4 L3D Lock Light LightNumber
    Light3DExtends\L3D_UnLockLight= AIsFunction( 1 , "L3D_UnLockLight" ) ; 5 L3D Unlock Light LightNumber
    Light3DExtends\L3D_GetLocked= AIsFunction( 1 , "L3D_GetLocked" ) ; 6 L3D Get Locked LightNumber
    Light3DExtends\L3D_GetTotalFreeLight= AIsFunction( 1 , "L3D_GetTotalFreeLight" ) ; 7 L3D Get Allocated Light 
    Light3DExtends\L3D_AddVirtualLight= AIsFunction( 1 , "L3D_AddVirtualLight" ) ; 8 L3D Add Virtual Light Xpos, YPos, ZPos, Range, RedColor, GreenColor, BlueColor, Style
    Light3DExtends\L3D_DeleteVirtualLight= AIsFunction( 1 , "L3D_DeleteVirtualLight" ) ; 9 L3D Delete Virtual Light LightNumber
    Light3DExtends\L3D_GetVirtualLightsCount= AIsFunction( 1 , "L3D_GetVirtualLightsCount" ) ; 10 L3D Get Virtual Light Count 
    Light3DExtends\L3D_ClearVirtualLights= AIsFunction( 1 , "L3D_ClearVirtualLights" ) ; 11 L3D Clear Virtual Lights 
    Light3DExtends\L3D_RefreshLights= AIsFunction( 1 , "L3D_RefreshLights" ) ; 12 L3D Display Lights 
    Light3DExtends\L3D_SetVisibilityDistance= AIsFunction( 1 , "L3D_SetVisibilityDistance" ) ; 13 L3D Set Visibility Range Range
    Light3DExtends\L3D_GetVisibilityDistance= AIsFunction( 1 , "L3D_GetVisibilityDistance" ) ; 14 L3D Get Visibility Range 
    Light3DExtends\L3D_SetVLightRange= AIsFunction( 1 , "L3D_SetVLightRange" ) ; 15 L3D Set Virtual Light Range LightNumber, Range(f)
    Light3DExtends\L3D_SetVLightColor= AIsFunction( 1 , "L3D_SetVLightColor" ) ; 16 L3D Set Virtual Light Color LightNumber, Red, Green, Blue
    Light3DExtends\L3D_HideVLight= AIsFunction( 1 , "L3D_HideVLight" ) ; 17 L3D Hide Virtual Light LightNumber
    Light3DExtends\L3D_ShowVLight= AIsFunction( 1 , "L3D_ShowVLight" ) ; 18 L3D Show Virtual Light LightNumber
    Light3DExtends\L3D_PositionVLight= AIsFunction( 1 , "L3D_PositionVLight" ) ; 19 L3D Position Virtual Light LightNumber, XPos(f), YPos(f), ZPos(f)
    Light3DExtends\L3D_SetVLightHalo= AIsFunction( 1 , "L3D_SetVLightHalo" ) ; 20 L3D Set Virtual Light Halo LightNumber, HaloImage
    Light3DExtends\L3D_SetVLightAsFixed= AIsFunction( 1 , "L3D_SetVLightAsFixed" ) ; 21 L3D Set Virtual Fixed Light LightNumber
    Light3DExtends\L3D_SetVLightAsFlame= AIsFunction( 1 , "L3D_SetVLightAsFlame" ) ; 22 L3D Set Virtual Flame Light LightNumber
    Light3DExtends\L3D_SetVLightAsPulse= AIsFunction( 1 , "L3D_SetVLightAsPulse" ) ; 23 L3D Set Virtual Pulse Light LightNumber
    Light3DExtends\L3D_SetVLightAsFlashs= AIsFunction( 1 , "L3D_SetVLightAsFlashs" ) ; 24 L3D Set Virtual Flash Light LightNumber
    Light3DExtends\L3D_GetTrueLightColor= AIsFunction( 1 , "L3D_GetTrueLightColor" ) ; 25 L3D Get True Light Color LightID
    Light3DExtends\L3D_GetTrueLightRange= AIsFunction( 1 , "L3D_GetTrueLightRange" ) ; 26 L3D Get True Light Range LightID
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l L3D_Init()
  Retour.l = CallCFunctionFast( Light3DExtends\L3D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetDisplayCamera( CameraNumber.l )
  CallCFunctionFast( Light3DExtends\L3D_SetDisplayCamera, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_GetDisplayCamera()
  Retour.l = CallCFunctionFast( Light3DExtends\L3D_GetDisplayCamera )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure L3D_LockLight( LightNumber.l )
  CallCFunctionFast( Light3DExtends\L3D_LockLight, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure L3D_UnLockLight( LightNumber.l )
  CallCFunctionFast( Light3DExtends\L3D_UnLockLight, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_GetLocked( LightNumber.l )
  Retour.l = CallCFunctionFast( Light3DExtends\L3D_GetLocked, LightNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_GetTotalFreeLight()
  Retour.l = CallCFunctionFast( Light3DExtends\L3D_GetTotalFreeLight )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_AddVirtualLight( Xpos.f, YPos.f, ZPos.f, Range.f, RedColor.l, GreenColor.l, BlueColor.l, Style.l )
  Retour.l = CallCFunctionFast( Light3DExtends\L3D_AddVirtualLight, Xpos, YPos, ZPos, Range, RedColor, GreenColor, BlueColor, Style )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_DeleteVirtualLight( LightNumber.l )
  Retour.l = CallCFunctionFast( Light3DExtends\L3D_DeleteVirtualLight, LightNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_GetVirtualLightsCount()
  Retour.l = CallCFunctionFast( Light3DExtends\L3D_GetVirtualLightsCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure L3D_ClearVirtualLights()
  CallCFunctionFast( Light3DExtends\L3D_ClearVirtualLights )
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_RefreshLights()
  Retour.l = CallCFunctionFast( Light3DExtends\L3D_RefreshLights )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVisibilityDistance( Range.f )
  CallCFunctionFast( Light3DExtends\L3D_SetVisibilityDistance, Range )
 EndProcedure
;
; *********************************************************************
Procedure.f L3D_GetVisibilityDistance()
  Retour.l = CallCFunctionFast( Light3DExtends\L3D_GetVisibilityDistance )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightRange( LightNumber.l, Rangef.f )
  CallCFunctionFast( Light3DExtends\L3D_SetVLightRange, LightNumber, Rangef )
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightColor( LightNumber.l, Red.l, Green.l, Blue.l )
  CallCFunctionFast( Light3DExtends\L3D_SetVLightColor, LightNumber, Red, Green, Blue )
 EndProcedure
;
; *********************************************************************
Procedure L3D_HideVLight( LightNumber.l )
  CallCFunctionFast( Light3DExtends\L3D_HideVLight, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure L3D_ShowVLight( LightNumber.l )
  CallCFunctionFast( Light3DExtends\L3D_ShowVLight, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure L3D_PositionVLight( LightNumber.l, XPosf.f, YPosf.f, ZPosf.f )
  CallCFunctionFast( Light3DExtends\L3D_PositionVLight, LightNumber, XPosf, YPosf, ZPosf )
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightHalo( LightNumber.l, HaloImage.l )
  CallCFunctionFast( Light3DExtends\L3D_SetVLightHalo, LightNumber, HaloImage )
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightAsFixed( LightNumber.l )
  CallCFunctionFast( Light3DExtends\L3D_SetVLightAsFixed, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightAsFlame( LightNumber.l )
  CallCFunctionFast( Light3DExtends\L3D_SetVLightAsFlame, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightAsPulse( LightNumber.l )
  CallCFunctionFast( Light3DExtends\L3D_SetVLightAsPulse, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure L3D_SetVLightAsFlashs( LightNumber.l )
  CallCFunctionFast( Light3DExtends\L3D_SetVLightAsFlashs, LightNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_GetTrueLightColor( LightID.l )
  Retour.l = CallCFunctionFast( Light3DExtends\L3D_GetTrueLightColor, LightID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l L3D_GetTrueLightRange( LightID.l )
  Retour.l = CallCFunctionFast( Light3DExtends\L3D_GetTrueLightRange, LightID )
  ProcedureReturn Retour
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 16
; Folding = -----