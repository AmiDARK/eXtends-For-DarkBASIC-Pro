; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
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

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 6
; Folding = -