; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure MatrixExtendsStruct
  MTX_Init.l : MTX_Clear.l : MTX_Count.l : MTX_Delete.l
  MTX_DynamicMake.l
 EndStructure
Global MatrixExtends.MatrixExtendsStruct

Procedure.l CheckMatrixExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Matrixes3D.dll")
    MatrixExtends\MTX_Init= AIsFunction( 1 , "MTX_Init" ) ; 1 MTX Initialized 
    MatrixExtends\MTX_Clear= AIsFunction( 1 , "MTX_Clear" ) ; 2 MTX Clear All Matrix 
    MatrixExtends\MTX_Count= AIsFunction( 1 , "MTX_Count" ) ; 3 MTX Exist Matrix Count 
    MatrixExtends\MTX_Delete= AIsFunction( 1 , "MTX_Delete" ) ; 4 MTX Delete Matrix Camera Number
    MatrixExtends\MTX_DynamicMake= AIsFunction( 1 , "MTX_DynamicMake" ) ; 5 MTX Make Matrix Width, Height, XTiles, ZTiles
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l MTX_Init()
  Retour.l = CallCFunctionFast( MatrixExtends\MTX_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure MTX_Clear()
  CallCFunctionFast( MatrixExtends\MTX_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l MTX_Count()
  Retour.l = CallCFunctionFast( MatrixExtends\MTX_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MTX_Delete( CameraNumber.l )
  Retour.l = CallCFunctionFast( MatrixExtends\MTX_Delete, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MTX_DynamicMake( Width.f, Height.f, XTiles.l, ZTiles.l )
  Retour.l = CallCFunctionFast( MatrixExtends\MTX_DynamicMake, Width, Height, XTiles, ZTiles )
  ProcedureReturn Retour
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = --