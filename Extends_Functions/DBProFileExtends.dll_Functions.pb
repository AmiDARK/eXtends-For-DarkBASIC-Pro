; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 13.12.05
;
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

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -