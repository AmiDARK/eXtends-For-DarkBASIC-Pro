; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure CameraExtendsStruct
  CMR_Init.l : CMR_Clear.l : CMR_Count.l : CMR_Delete.l
  CMR_DynamicMake.l : CMR_DynamicClone.l
 EndStructure
Global CameraExtends.CameraExtendsStruct

Procedure.l CheckCameraExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Cameras3D.dll" )
    CameraExtends\CMR_Init= AIsFunction( 1 , "CMR_Init" ) ; 1 CMR Initialized 
    CameraExtends\CMR_Clear= AIsFunction( 1 , "CMR_Clear" ) ; 2 CMR Clear All Camera 
    CameraExtends\CMR_Count= AIsFunction( 1 , "CMR_Count" ) ; 3 CMR Exist Camera Count 
    CameraExtends\CMR_Delete= AIsFunction( 1 , "CMR_Delete" ) ; 4 CMR Delete Camera Camera Number
    CameraExtends\CMR_DynamicMake= AIsFunction( 1 , "CMR_DynamicMake" ) ; 5 CMR Make Camera 
    CameraExtends\CMR_DynamicClone= AIsFunction( 1 , "CMR_DynamicClone" ) ; 6 CMR Clone Camera Source Camera
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l CMR_Init()
  Retour.l = CallCFunctionFast( CameraExtends\CMR_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure CMR_Clear()
  CallCFunctionFast( CameraExtends\CMR_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l CMR_Count()
  Retour.l = CallCFunctionFast( CameraExtends\CMR_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l CMR_Delete( CameraNumber.l )
  Retour.l = CallCFunctionFast( CameraExtends\CMR_Delete, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l CMR_DynamicMake()
  Retour.l = CallCFunctionFast( CameraExtends\CMR_DynamicMake )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l CMR_DynamicClone()
  Retour.l = CallCFunctionFast( CameraExtends\CMR_DynamicClone )
  ProcedureReturn Retour
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = --