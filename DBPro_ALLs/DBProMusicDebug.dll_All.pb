; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_MusicStruct
  LoadMusic.l : LoopMusic.l : DeleteMusic.l : LoadCDMusic.l
  PauseMusic.l : PlayMusic.l : ResumeMusic.l : SetMusicVolume.l
  StopMusic.l : GetMusicExist.l : GetMusicLooping.l : GetMusicPaused.l
  GetMusicPlaying.l : GetNumberOfCDTracks.l : GetMusicSpeed.l : GetMusicVolume.l
  SetMusicSpeed.l : 
 EndStructure

Procedure.l CheckMusic()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProMusicDebug.dll")
    DB_Music\LoadMusic= AIsFunction( 1 , "?LoadMusic@@YAXPADH@Z" ) ; 1 LOAD MUSIC Filename,Music Number
    DB_Music\LoopMusic= AIsFunction( 1 , "?LoopMusic@@YAXH@Z" ) ; 2 LOOP MUSIC Music Number
    DB_Music\DeleteMusic= AIsFunction( 1 , "?DeleteMusic@@YAXH@Z" ) ; 3 DELETE MUSIC Music Number
    DB_Music\LoadCDMusic= AIsFunction( 1 , "?LoadCDMusic@@YAXHH@Z" ) ; 4 LOAD CDMUSIC Track Number,Music Number
    DB_Music\PauseMusic= AIsFunction( 1 , "?PauseMusic@@YAXH@Z" ) ; 5 PAUSE MUSIC Music Number
    DB_Music\PlayMusic= AIsFunction( 1 , "?PlayMusic@@YAXH@Z" ) ; 6 PLAY MUSIC Music Number
    DB_Music\ResumeMusic= AIsFunction( 1 , "?ResumeMusic@@YAXH@Z" ) ; 7 RESUME MUSIC Music Number
    DB_Music\SetMusicVolume= AIsFunction( 1 , "?SetMusicVolume@@YAXHH@Z" ) ; 8 SET MUSIC VOLUME Music Number,Volume
    DB_Music\StopMusic= AIsFunction( 1 , "?StopMusic@@YAXH@Z" ) ; 9 STOP MUSIC Music Number
    DB_Music\GetMusicExist= AIsFunction( 1 , "?GetMusicExist@@YAHH@Z" ) ; 10 MUSIC EXIST Music Number
    DB_Music\GetMusicLooping= AIsFunction( 1 , "?GetMusicLooping@@YAHH@Z" ) ; 11 MUSIC LOOPING Music Number
    DB_Music\GetMusicPaused= AIsFunction( 1 , "?GetMusicPaused@@YAHH@Z" ) ; 12 MUSIC PAUSED Music Number
    DB_Music\GetMusicPlaying= AIsFunction( 1 , "?GetMusicPlaying@@YAHH@Z" ) ; 13 MUSIC PLAYING Music Number
    DB_Music\GetNumberOfCDTracks= AIsFunction( 1 , "?GetNumberOfCDTracks@@YAHXZ" ) ; 14 GET NUMBER OF CD TRACKS 
    DB_Music\GetMusicSpeed= AIsFunction( 1 , "?GetMusicSpeed@@YAHH@Z" ) ; 15 MUSIC SPEED Music Number
    DB_Music\GetMusicVolume= AIsFunction( 1 , "?GetMusicVolume@@YAHH@Z" ) ; 16 MUSIC VOLUME Music Number
    DB_Music\SetMusicSpeed= AIsFunction( 1 , "?SetMusicSpeed@@YAXHH@Z" ) ; 17 SET MUSIC SPEED Music Number,Speed
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBLoadMusic( Filename.s, MusicNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Music\LoadMusic, FilenamePTR, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopMusic( MusicNumber.l )
  CallCFunctionFast( *DB_Music\LoopMusic, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteMusic( MusicNumber.l )
  CallCFunctionFast( *DB_Music\DeleteMusic, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadCDMusic( TrackNumber.l, MusicNumber.l )
  CallCFunctionFast( *DB_Music\LoadCDMusic, TrackNumber, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPauseMusic( MusicNumber.l )
  CallCFunctionFast( *DB_Music\PauseMusic, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayMusic( MusicNumber.l )
  CallCFunctionFast( *DB_Music\PlayMusic, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBResumeMusic( MusicNumber.l )
  CallCFunctionFast( *DB_Music\ResumeMusic, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMusicVolume( MusicNumber.l, Volume.l )
  CallCFunctionFast( *DB_Music\SetMusicVolume, MusicNumber, Volume )
 EndProcedure
;
; *********************************************************************
Procedure DBStopMusic( MusicNumber.l )
  CallCFunctionFast( *DB_Music\StopMusic, MusicNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMusicExist( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_Music\GetMusicExist, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMusicLooping( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_Music\GetMusicLooping, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMusicPaused( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_Music\GetMusicPaused, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMusicPlaying( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_Music\GetMusicPlaying, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetNumberOfCDTracks()
  Retour.l = CallCFunctionFast( *DB_Music\GetNumberOfCDTracks )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMusicSpeed( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_Music\GetMusicSpeed, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMusicVolume( MusicNumber.l )
  Retour.l = CallCFunctionFast( *DB_Music\GetMusicVolume, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetMusicSpeed( MusicNumber.l, Speed.l )
  CallCFunctionFast( *DB_Music\SetMusicSpeed, MusicNumber, Speed )
 EndProcedure
;

