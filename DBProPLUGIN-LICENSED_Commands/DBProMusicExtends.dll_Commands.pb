; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l MSC_Init()
  Retour.l = CallCFunctionFast( MusicExtends\MSC_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure MSC_Clear()
  CallCFunctionFast( MusicExtends\MSC_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l MSC_Count()
  Retour.l = CallCFunctionFast( MusicExtends\MSC_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MSC_Delete( MusicNumber.l )
  Retour.l = CallCFunctionFast( MusicExtends\MSC_Delete, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MSC_DynamicLoad( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( MusicExtends\MSC_DynamicLoad, FilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;
