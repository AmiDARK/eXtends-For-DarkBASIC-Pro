; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l BMP_Init()
  Retour.l = CallCFunctionFast( BitmapExtends\BMP_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure BMP_Clear()
  CallCFunctionFast( BitmapExtends\BMP_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_Count()
  Retour.l = CallCFunctionFast( BitmapExtends\BMP_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_Delete( BitmapNumber.l )
  Retour.l = CallCFunctionFast( BitmapExtends\BMP_Delete, BitmapNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_DynamicLoad( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( BitmapExtends\BMP_DynamicLoad, FileNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_DynamicClone()
  Retour.l = CallCFunctionFast( BitmapExtends\BMP_DynamicClone )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_DynamicMake( Width.l, Height.l )
  Retour.l = CallCFunctionFast( BitmapExtends\BMP_DynamicMake, Width, Height )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_MakeBitmapFromMemblock( MemblockNumber.l )
  Retour.l = CallCFunctionFast( BitmapExtends\BMP_MakeBitmapFromMemblock, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
