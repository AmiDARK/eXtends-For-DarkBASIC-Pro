; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure cementsOVStruct
  LoadOggVorbis.l : DeleteOggVorbis.l : PlayOggVorbis.l : LoopOggVorbis.l
  StopOggVorbis.l : PauseOggVorbis.l : ResumeOggVorbis.l : SetOggVorbisVolume.l
  EncodeToOggVorbis.l : EncodeToOggVorbis1.l : GetOggVorbisExists.l : GetOggVorbisState.l
  GetOggVorbisVolume.l : 
 EndStructure
Global cementsOV.cementsOVStruct

Procedure.l CheckcementsOV()
  SUCCESS.l = 1
  If OpenLibrary( 1, "EnhancementsOV.dll")
    cementsOV\LoadOggVorbis= AIsFunction( 1 , "?LoadOggVorbis@@YAXKH@Z" ) ; 1 LOAD OGG VORBIS Filename, ID
    cementsOV\DeleteOggVorbis= AIsFunction( 1 , "?DeleteOggVorbis@@YAXH@Z" ) ; 2 DELETE OGG VORBIS ID
    cementsOV\PlayOggVorbis= AIsFunction( 1 , "?PlayOggVorbis@@YAXH@Z" ) ; 3 PLAY OGG VORBIS ID
    cementsOV\LoopOggVorbis= AIsFunction( 1 , "?LoopOggVorbis@@YAXH@Z" ) ; 4 LOOP OGG VORBIS ID
    cementsOV\StopOggVorbis= AIsFunction( 1 , "?StopOggVorbis@@YAXH@Z" ) ; 5 STOP OGG VORBIS ID
    cementsOV\PauseOggVorbis= AIsFunction( 1 , "?PauseOggVorbis@@YAXH@Z" ) ; 6 PAUSE OGG VORBIS ID
    cementsOV\ResumeOggVorbis= AIsFunction( 1 , "?ResumeOggVorbis@@YAXH@Z" ) ; 7 RESUME OGG VORBIS ID
    cementsOV\SetOggVorbisVolume= AIsFunction( 1 , "?SetOggVorbisVolume@@YAXHH@Z" ) ; 8 SET OGG VORBIS VOLUME ID, Volume
    cementsOV\EncodeToOggVorbis= AIsFunction( 1 , "?EncodeToOggVorbis@@YAXKK@Z" ) ; 9 ENCODE TO OGG VORBIS Input File, Output File
    cementsOV\EncodeToOggVorbis1= AIsFunction( 1 , "?EncodeToOggVorbis@@YAXKKM@Z" ) ; 10 ENCODE TO OGG VORBIS Input File, Output File, Quality
    cementsOV\GetOggVorbisExists= AIsFunction( 1 , "?GetOggVorbisExists@@YAHH@Z" ) ; 11 GET OGG VORBIS EXISTS ID
    cementsOV\GetOggVorbisState= AIsFunction( 1 , "?GetOggVorbisState@@YAHH@Z" ) ; 12 GET OGG VORBIS STATE ID
    cementsOV\GetOggVorbisVolume= AIsFunction( 1 , "?GetOggVorbisVolume@@YAHH@Z" ) ; 13 GET OGG VORBIS VOLUME ID
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure LoadOggVorbis( Filename.s, ID.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( cementsOV\LoadOggVorbis, FilenamePTR, ID )
 EndProcedure
;
; *********************************************************************
Procedure DeleteOggVorbis( ID.l )
  CallCFunctionFast( cementsOV\DeleteOggVorbis, ID )
 EndProcedure
;
; *********************************************************************
Procedure PlayOggVorbis( ID.l )
  CallCFunctionFast( cementsOV\PlayOggVorbis, ID )
 EndProcedure
;
; *********************************************************************
Procedure LoopOggVorbis( ID.l )
  CallCFunctionFast( cementsOV\LoopOggVorbis, ID )
 EndProcedure
;
; *********************************************************************
Procedure StopOggVorbis( ID.l )
  CallCFunctionFast( cementsOV\StopOggVorbis, ID )
 EndProcedure
;
; *********************************************************************
Procedure PauseOggVorbis( ID.l )
  CallCFunctionFast( cementsOV\PauseOggVorbis, ID )
 EndProcedure
;
; *********************************************************************
Procedure ResumeOggVorbis( ID.l )
  CallCFunctionFast( cementsOV\ResumeOggVorbis, ID )
 EndProcedure
;
; *********************************************************************
Procedure SetOggVorbisVolume( ID.l, Volume.l )
  CallCFunctionFast( cementsOV\SetOggVorbisVolume, ID, Volume )
 EndProcedure
;
; *********************************************************************
Procedure EncodeToOggVorbis( InputFile.s, OutputFile.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @InputFilePTR.l, Len( InputFile ) + 1 ) ; CreateString
  PokeS( InputFilePTR, InputFile )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @OutputFilePTR.l, Len( OutputFile ) + 1 ) ; CreateString
  PokeS( OutputFilePTR, OutputFile )
  CallCFunctionFast( cementsOV\EncodeToOggVorbis, InputFilePTR, OutputFilePTR )
 EndProcedure
;
; *********************************************************************
Procedure EncodeToOggVorbis1( InputFile.s, OutputFile.s, Quality.f )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @InputFilePTR.l, Len( InputFile ) + 1 ) ; CreateString
  PokeS( InputFilePTR, InputFile )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @OutputFilePTR.l, Len( OutputFile ) + 1 ) ; CreateString
  PokeS( OutputFilePTR, OutputFile )
  CallCFunctionFast( cementsOV\EncodeToOggVorbis1, InputFilePTR, OutputFilePTR, Quality )
 EndProcedure
;
; *********************************************************************
Procedure.l GetOggVorbisExists( ID.l )
  Retour.l = CallCFunctionFast( cementsOV\GetOggVorbisExists, ID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetOggVorbisState( ID.l )
  Retour.l = CallCFunctionFast( cementsOV\GetOggVorbisState, ID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetOggVorbisVolume( ID.l )
  Retour.l = CallCFunctionFast( cementsOV\GetOggVorbisVolume, ID )
  ProcedureReturn Retour
 EndProcedure
;

