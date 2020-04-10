; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure Vector2ExtendsStruct
  Vector4_Init.l : V3D2_Delete.l : V3D2_DynamicMakeVector2.l
 EndStructure
Global Vector2Extends.Vector2ExtendsStruct

Procedure.l CheckVector2Extends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Vectors2_3D.dll")
    Vector2Extends\Vector4_Init= AIsFunction( 1 , "Vector2_Init" ) ; 1 V3D Initialized 
    Vector2Extends\V3D2_Delete= AIsFunction( 1 , "V3D2_Delete" ) ; 3 V3D Delete Vector2 Vector2 Number
    Vector2Extends\V3D2_DynamicMakeVector2= AIsFunction( 1 , "V3D2_DynamicMakeVector2" ) ; 4 V3D Make Vector2 
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l Vector2_Init1()
  Retour.l = CallCFunctionFast( Vector2Extends\Vector4_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D2_Delete( Vector2Number.l )
  Retour.l = CallCFunctionFast( Vector2Extends\V3D2_Delete, Vector2Number )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D2_DynamicMakeVector2()
  Retour.l = CallCFunctionFast( Vector2Extends\V3D2_DynamicMakeVector2 )
  ProcedureReturn Retour
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 4
; Folding = -