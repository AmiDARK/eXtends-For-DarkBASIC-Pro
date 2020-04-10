; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l DSK_Init()
  Retour.l = CallCFunctionFast( FileExtends\DSK_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DSK_CloseAllFiles()
  CallCFunctionFast( FileExtends\DSK_CloseAllFiles )
 EndProcedure
;
; *********************************************************************
Procedure.l DSK_Count()
  Retour.l = CallCFunctionFast( FileExtends\DSK_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DSK_CloseFile( Param1.l )
  Retour.l = CallCFunctionFast( FileExtends\DSK_CloseFile, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DSK_DynamicOpenToRead( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( FileExtends\DSK_DynamicOpenToRead, FileNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DSK_DynamicOpenToWrite( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( FileExtends\DSK_DynamicOpenToWrite, FileNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DSK_AddHighScore( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( FileExtends\DSK_AddHighScore, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure.l DSK_GetHighScore( Param1.l )
  Retour.l = CallCFunctionFast( FileExtends\DSK_GetHighScore, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DSK_GetHighScoreName( Param1.l )
  Retour.l = CallCFunctionFast( FileExtends\DSK_GetHighScoreName, ExtraPARAM.l, Param1 )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DSK_GetHighScoreLevel( Param1.l )
  Retour.l = CallCFunctionFast( FileExtends\DSK_GetHighScoreLevel, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DSK_SaveHighScore( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  CallCFunctionFast( FileExtends\DSK_SaveHighScore, FileNamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DSK_LoadHighScore( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  CallCFunctionFast( FileExtends\DSK_LoadHighScore, FileNamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DSK_ClearHighScore()
  CallCFunctionFast( FileExtends\DSK_ClearHighScore )
 EndProcedure
;
