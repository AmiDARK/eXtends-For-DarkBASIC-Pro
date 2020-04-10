; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure Vector4ExtendsStruct
  Vector4_Init.l : V3D4_Delete.l : V3D4_DynamicMakeVector4.l
 EndStructure
Global Vector4Extends.Vector4ExtendsStruct

Procedure.l CheckVector4Extends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Vectors4_3D.dll")
    Vector4Extends\Vector4_Init= AIsFunction( 1 , "Vector4_Init" ) ; 1 V3D Initialized 
    Vector4Extends\V3D4_Delete= AIsFunction( 1 , "V3D4_Delete" ) ; 3 V3D Delete Vector4 Vector4 Number
    Vector4Extends\V3D4_DynamicMakeVector4= AIsFunction( 1 , "V3D4_DynamicMakeVector4" ) ; 4 V3D Make Vector4 
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l Vector4_Init()
  Retour.l = CallCFunctionFast( Vector4Extends\Vector4_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D4_Delete( Vector4Number.l )
  Retour.l = CallCFunctionFast( Vector4Extends\V3D4_Delete, Vector4Number )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D4_DynamicMakeVector4()
  Retour.l = CallCFunctionFast( Vector4Extends\V3D4_DynamicMakeVector4 )
  ProcedureReturn Retour
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 4
; Folding = -