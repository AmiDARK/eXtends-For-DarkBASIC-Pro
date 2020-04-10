; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 13.12.05
;
; *********************************************************************
Procedure.l SND_Init()
  Retour.l = CallCFunctionFast( *SoundExtends\SND_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SND_Clear()
  CallCFunctionFast( *SoundExtends\SND_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l SND_Count()
  Retour.l = CallCFunctionFast( *SoundExtends\SND_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SND_Delete( SoundNumber.l )
  Retour.l = CallCFunctionFast( *SoundExtends\SND_Delete, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SND_DynamicLoad( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( *SoundExtends\SND_DynamicLoad, FilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SND_MakeSoundFromMemblock( MemblockNumber.l )
  Retour.l = CallCFunctionFast( *SoundExtends\SND_MakeSoundFromMemblock, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
