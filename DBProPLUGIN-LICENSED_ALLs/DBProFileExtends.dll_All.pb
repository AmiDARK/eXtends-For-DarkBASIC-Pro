; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 13.12.05
;
Structure FileExtendsStruct
  DSK_Init.l : DSK_CloseAllFiles.l : DSK_Count.l : DSK_CloseFile.l
  DSK_DynamicOpenToRead.l : DSK_DynamicOpenToWrite.l : DSK_AddHighScore.l : DSK_GetHighScore.l
  DSK_GetHighScoreName.l : DSK_GetHighScoreLevel.l : DSK_SaveHighScore.l : DSK_LoadHighScore.l
  DSK_ClearHighScore.l
 EndStructure
Global FileExtends.FileExtendsStruct

Procedure.l CheckFileExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_FilesIO.dll")
    FileExtends\DSK_Init= AIsFunction( 1 , "DSK_Init" ) ; 1 DSK Initialized 
    FileExtends\DSK_CloseAllFiles= AIsFunction( 1 , "DSK_CloseAllFiles" ) ; 2 DSK Clear 
    FileExtends\DSK_Count= AIsFunction( 1 , "DSK_Count" ) ; 3 DSK Get Count 
    FileExtends\DSK_CloseFile= AIsFunction( 1 , "DSK_CloseFile" ) ; 4 DSK Close File 
    FileExtends\DSK_DynamicOpenToRead= AIsFunction( 1 , "DSK_DynamicOpenToRead" ) ; 5 DSK Open To Read FileName$
    FileExtends\DSK_DynamicOpenToWrite= AIsFunction( 1 , "DSK_DynamicOpenToWrite" ) ; 6 DSK Open To Write FileName$
    FileExtends\DSK_AddHighScore= AIsFunction( 1 , "DSK_AddHighScore" ) ; 7 DSK Add Highscore 
    FileExtends\DSK_GetHighScore= AIsFunction( 1 , "DSK_GetHighScore" ) ; 8 DSK Get Highscore 
    FileExtends\DSK_GetHighScoreName= AIsFunction( 1 , "DSK_GetHighScoreName" ) ; 9 DSK Get HighScore Name$ 
    FileExtends\DSK_GetHighScoreLevel= AIsFunction( 1 , "DSK_GetHighScoreLevel" ) ; 10 DSK Get HighScore Level 
    FileExtends\DSK_SaveHighScore= AIsFunction( 1 , "DSK_SaveHighScore" ) ; 11 DSK Save HighScore FileName$
    FileExtends\DSK_LoadHighScore= AIsFunction( 1 , "DSK_LoadHighScore" ) ; 12 DSK Load HighScore FileName$
    FileExtends\DSK_ClearHighScore= AIsFunction( 1 , "DSK_ClearHighScore" ) ; 13 DSK Clear HighScore 
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

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
  Retour.l = CallCFunctionFast( FileExtends\DSK_GetHighScoreName, Param1 )
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


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 7
; Folding = ---