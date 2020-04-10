; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
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
