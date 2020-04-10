; DarkBasic Professional RC2PBIncludes Ver 1.0 File - STRUCTURES SETUP
; By Frederic Cordier - 13.12.05
;
Structure FileExtendsStruct
  DSK_Init.l : DSK_CloseAllFiles.l : DSK_Count.l : DSK_CloseFile.l
  DSK_DynamicOpenToRead.l : DSK_DynamicOpenToWrite.l : DSK_AddHighScore.l : DSK_GetHighScore.l
  DSK_GetHighScoreName.l : DSK_GetHighScoreLevel.l : DSK_SaveHighScore.l : DSK_LoadHighScore.l
  DSK_ClearHighScore.l : 
 EndStructure
Global FileExtends.FileExtendsStruct
