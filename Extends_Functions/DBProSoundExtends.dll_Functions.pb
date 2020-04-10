; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 13.12.05
;
Procedure.l CheckSoundExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Sounds.dll")
    SoundExtends\SND_Init= AIsFunction( 1 , "SND_Init" ) ; 1 SND Initialized 
    SoundExtends\SND_Clear= AIsFunction( 1 , "SND_Clear" ) ; 2 SND Clear 
    SoundExtends\SND_Count= AIsFunction( 1 , "SND_Count" ) ; 3 SND Get Count 
    SoundExtends\SND_Delete= AIsFunction( 1 , "SND_Delete" ) ; 4 SND Delete Sound Sound Number
    SoundExtends\SND_DynamicLoad= AIsFunction( 1 , "SND_DynamicLoad" ) ; 5 SND Load Sound Filename$
    SoundExtends\SND_MakeSoundFromMemblock= AIsFunction( 1 , "SND_MakeSoundFromMemblock" ) ; 6 SND Make Sound From Memblock Memblock Number
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -