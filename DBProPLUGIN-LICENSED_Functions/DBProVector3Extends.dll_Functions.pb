; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckVector3Extends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Vectors3_3D.dll")
    Vector3Extends\Vector3_Init= AIsFunction( 1 , "Vector3_Init" ) ; 1 V3D Initialized 
    Vector3Extends\V3D3_Delete= AIsFunction( 1 , "V3D3_Delete" ) ; 3 V3D Delete Vector3 Vector3 Number
    Vector3Extends\V3D3_DynamicMakeVector3= AIsFunction( 1 , "V3D3_DynamicMakeVector3" ) ; 4 V3D Make Vector3 
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -