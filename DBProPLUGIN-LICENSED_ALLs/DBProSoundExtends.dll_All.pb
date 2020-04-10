; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 13.12.05
;
Structure SoundExtendsStruct
  SND_Init.l : SND_Clear.l : SND_Count.l : SND_Delete.l
  SND_DynamicLoad.l : SND_MakeSoundFromMemblock.l : SND_DynamicLoad3D.l
 EndStructure
Global SoundExtends.SoundExtendsStruct

Procedure.l CheckSoundExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Sounds.dll")
    SoundExtends\SND_Init= AIsFunction( 1 , "SND_Init" ) ; 1 SND Initialized 
    SoundExtends\SND_Clear= AIsFunction( 1 , "SND_Clear" ) ; 2 SND Clear 
    SoundExtends\SND_Count= AIsFunction( 1 , "SND_Count" ) ; 3 SND Get Count 
    SoundExtends\SND_Delete= AIsFunction( 1 , "SND_Delete" ) ; 4 SND Delete Sound Sound Number
    SoundExtends\SND_DynamicLoad= AIsFunction( 1 , "SND_DynamicLoad" ) ; 5 SND Load Sound Filename$
    SoundExtends\SND_MakeSoundFromMemblock= AIsFunction( 1 , "SND_MakeSoundFromMemblock" ) ; 6 SND Make Sound From Memblock Memblock Number
    SoundExtends\SND_DynamicLoad3D = AIsFunction( 1 , "SND_DynamicLoad3D" ) ; 7 SND Load Sound3D Filename$
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l SND_Init()
  Retour.l = CallCFunctionFast( SoundExtends\SND_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SND_Clear()
  CallCFunctionFast( SoundExtends\SND_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l SND_Count()
  Retour.l = CallCFunctionFast( SoundExtends\SND_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SND_Delete( SoundNumber.l )
  Retour.l = CallCFunctionFast( SoundExtends\SND_Delete, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SND_DynamicLoad( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( SoundExtends\SND_DynamicLoad, FilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SND_DynamicLoad3D( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( SoundExtends\SND_DynamicLoad3D, FilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SND_MakeSoundFromMemblock( MemblockNumber.l )
  Retour.l = CallCFunctionFast( SoundExtends\SND_MakeSoundFromMemblock, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 11
; Folding = --