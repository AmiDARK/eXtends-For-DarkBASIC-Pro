; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 13.12.05
;
Procedure.l CheckMusicExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Musics.dll")
    MusicExtends\MSC_Init= AIsFunction( 1 , "MSC_Init" ) ; 1 MSC Initialized 
    MusicExtends\MSC_Clear= AIsFunction( 1 , "MSC_Clear" ) ; 2 MSC Clear 
    MusicExtends\MSC_Count= AIsFunction( 1 , "MSC_Count" ) ; 3 MSC Get Count 
    MusicExtends\MSC_Delete= AIsFunction( 1 , "MSC_Delete" ) ; 4 MSC Delete Music Music  Number
    MusicExtends\MSC_DynamicLoad= AIsFunction( 1 , "MSC_DynamicLoad" ) ; 5 MSC Load Music Filename$
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -