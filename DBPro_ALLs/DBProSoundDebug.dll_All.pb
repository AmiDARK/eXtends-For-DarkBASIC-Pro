; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_SoundStruct
  CloneSound.l : DeleteSound.l : Load3DSound.l : LoadSound.l
  LoopSound.l : PauseSound.l : PlaySoundA.l : PlaySoundOffset.l
  PositionSound.l : PositionListener.l : RecordSound.l : ResumeSound.l
  RotateListener.l : SaveSound.l : SetSoundPan.l : SetSoundSpeed.l
  SetSoundVolume.l : StopRecordingSound.l : StopSound.l : GetListenerAngleXEx.l
  GetListenerAngleYEx.l : GetListenerAngleZEx.l : GetListenerPositionXEx.l : GetListenerPositionYEx.l
  GetListenerPositionZEx.l : GetSoundExist.l : GetSoundLooping.l : GetSoundPan.l
  GetSoundPaused.l : GetSoundPlaying.l : GetSoundPositionXEx.l : GetSoundPositionYEx.l
  GetSoundPositionZEx.l : GetSoundSpeed.l : GetSoundType.l : GetSoundVolume.l
  LoadSound1.l : LoopSound1.l : LoopSound2.l : LoopSound3.l
  RecordSound1.l : ScaleListener.l : SetEAX.l : Load3DSound1.l
  LoadSound2.l : 
 EndStructure

Procedure.l CheckSound()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProSoundDebug.dll")
    DB_Sound\CloneSound= AIsFunction( 1 , "?CloneSound@@YAXHH@Z" ) ; 1 CLONE SOUND Destination Sound,Source Sound
    DB_Sound\DeleteSound= AIsFunction( 1 , "?DeleteSound@@YAXH@Z" ) ; 2 DELETE SOUND Sound Number
    DB_Sound\Load3DSound= AIsFunction( 1 , "?Load3DSound@@YAXPADH@Z" ) ; 3 LOAD 3DSOUND Filename,Sound Number
    DB_Sound\LoadSound= AIsFunction( 1 , "?LoadSound@@YAXPADH@Z" ) ; 4 LOAD SOUND Filename,Sound Number
    DB_Sound\LoopSound= AIsFunction( 1 , "?LoopSound@@YAXH@Z" ) ; 5 LOOP SOUND Sound Number
    DB_Sound\PauseSound= AIsFunction( 1 , "?PauseSound@@YAXH@Z" ) ; 6 PAUSE SOUND Sound Number
    DB_Sound\PlaySoundA= AIsFunction( 1 , "?PlaySoundA@@YAXH@Z" ) ; 7 PLAY SOUND Sound Number
    DB_Sound\PlaySoundOffset= AIsFunction( 1 , "?PlaySoundOffset@@YAXHH@Z" ) ; 8 PLAY SOUND Sound Number,Start Position
    DB_Sound\PositionSound= AIsFunction( 1 , "?PositionSound@@YAXHMMM@Z" ) ; 9 POSITION SOUND Sound Number,X,Y,Z
    DB_Sound\PositionListener= AIsFunction( 1 , "?PositionListener@@YAXMMM@Z" ) ; 10 POSITION LISTENER X,Y,Z
    DB_Sound\RecordSound= AIsFunction( 1 , "?RecordSound@@YAXH@Z" ) ; 11 RECORD SOUND Sound Number
    DB_Sound\ResumeSound= AIsFunction( 1 , "?ResumeSound@@YAXH@Z" ) ; 12 RESUME SOUND Sound Number
    DB_Sound\RotateListener= AIsFunction( 1 , "?RotateListener@@YAXMMM@Z" ) ; 13 ROTATE LISTENER X,Y,Z
    DB_Sound\SaveSound= AIsFunction( 1 , "?SaveSound@@YAXPADH@Z" ) ; 14 SAVE SOUND Filename,Sound Number
    DB_Sound\SetSoundPan= AIsFunction( 1 , "?SetSoundPan@@YAXHH@Z" ) ; 15 SET SOUND PAN Sound Number,Pan Value
    DB_Sound\SetSoundSpeed= AIsFunction( 1 , "?SetSoundSpeed@@YAXHH@Z" ) ; 16 SET SOUND SPEED Sound Number,Frequency Value
    DB_Sound\SetSoundVolume= AIsFunction( 1 , "?SetSoundVolume@@YAXHH@Z" ) ; 17 SET SOUND VOLUME Sound Number,Volume Number
    DB_Sound\StopRecordingSound= AIsFunction( 1 , "?StopRecordingSound@@YAXXZ" ) ; 18 STOP RECORDING SOUND Sound Number
    DB_Sound\StopSound= AIsFunction( 1 , "?StopSound@@YAXH@Z" ) ; 19 STOP SOUND Sound Number
    DB_Sound\GetListenerAngleXEx= AIsFunction( 1 , "?GetListenerAngleXEx@@YAKXZ" ) ; 20 LISTENER ANGLE X 
    DB_Sound\GetListenerAngleYEx= AIsFunction( 1 , "?GetListenerAngleYEx@@YAKXZ" ) ; 21 LISTENER ANGLE Y 
    DB_Sound\GetListenerAngleZEx= AIsFunction( 1 , "?GetListenerAngleZEx@@YAKXZ" ) ; 22 LISTENER ANGLE Z 
    DB_Sound\GetListenerPositionXEx= AIsFunction( 1 , "?GetListenerPositionXEx@@YAKXZ" ) ; 23 LISTENER POSITION X 
    DB_Sound\GetListenerPositionYEx= AIsFunction( 1 , "?GetListenerPositionYEx@@YAKXZ" ) ; 24 LISTENER POSITION Y 
    DB_Sound\GetListenerPositionZEx= AIsFunction( 1 , "?GetListenerPositionZEx@@YAKXZ" ) ; 25 LISTENER POSITION Z 
    DB_Sound\GetSoundExist= AIsFunction( 1 , "?GetSoundExist@@YAHH@Z" ) ; 26 SOUND EXIST Sound Number
    DB_Sound\GetSoundLooping= AIsFunction( 1 , "?GetSoundLooping@@YAHH@Z" ) ; 27 SOUND LOOPING Sound Number
    DB_Sound\GetSoundPan= AIsFunction( 1 , "?GetSoundPan@@YAHH@Z" ) ; 28 SOUND PAN Sound Number
    DB_Sound\GetSoundPaused= AIsFunction( 1 , "?GetSoundPaused@@YAHH@Z" ) ; 29 SOUND PAUSED Sound Number
    DB_Sound\GetSoundPlaying= AIsFunction( 1 , "?GetSoundPlaying@@YAHH@Z" ) ; 30 SOUND PLAYING Sound Number
    DB_Sound\GetSoundPositionXEx= AIsFunction( 1 , "?GetSoundPositionXEx@@YAKH@Z" ) ; 31 SOUND POSITION X Sound Number
    DB_Sound\GetSoundPositionYEx= AIsFunction( 1 , "?GetSoundPositionYEx@@YAKH@Z" ) ; 32 SOUND POSITION Y Sound Number
    DB_Sound\GetSoundPositionZEx= AIsFunction( 1 , "?GetSoundPositionZEx@@YAKH@Z" ) ; 33 SOUND POSITION Z Sound Number
    DB_Sound\GetSoundSpeed= AIsFunction( 1 , "?GetSoundSpeed@@YAHH@Z" ) ; 34 SOUND SPEED Sound Number
    DB_Sound\GetSoundType= AIsFunction( 1 , "?GetSoundType@@YAHH@Z" ) ; 35 SOUND TYPE Sound Number
    DB_Sound\GetSoundVolume= AIsFunction( 1 , "?GetSoundVolume@@YAHH@Z" ) ; 36 SOUND VOLUME Sound Number
    DB_Sound\LoadSound1= AIsFunction( 1 , "?LoadSound@@YAXPADHH@Z" ) ; 37 LOAD SOUND Filename, Sound Number, Flag
    DB_Sound\LoopSound1= AIsFunction( 1 , "?LoopSound@@YAXHH@Z" ) ; 38 LOOP SOUND Sound Number,Start Position
    DB_Sound\LoopSound2= AIsFunction( 1 , "?LoopSound@@YAXHHH@Z" ) ; 39 LOOP SOUND Sound Number,Start Position,End Position
    DB_Sound\LoopSound3= AIsFunction( 1 , "?LoopSound@@YAXHHHH@Z" ) ; 40 LOOP SOUND Sound Number,Start Position,End Position,Initial Position
    DB_Sound\RecordSound1= AIsFunction( 1 , "?RecordSound@@YAXHH@Z" ) ; 41 RECORD SOUND Sound Number, Duration
    DB_Sound\ScaleListener= AIsFunction( 1 , "?ScaleListener@@YAXM@Z" ) ; 42 SCALE LISTENER Scaling Factor
    DB_Sound\SetEAX= AIsFunction( 1 , "?SetEAX@@YAXH@Z" ) ; 43 SET EAX Preset Effect Value
    DB_Sound\Load3DSound1= AIsFunction( 1 , "?Load3DSound@@YAXPADHH@Z" ) ; 44 LOAD 3DSOUND Filename,Sound Number,Silent Fail
    DB_Sound\LoadSound2= AIsFunction( 1 , "?LoadSound@@YAXPADHHH@Z" ) ; 45 LOAD SOUND Filename,Sound Number,Flag,Silent Fail
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBCloneSound( DestinationSound.l, SourceSound.l )
  CallCFunctionFast( *DB_Sound\CloneSound, DestinationSound, SourceSound )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteSound( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\DeleteSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoad3DSound( Filename.s, SoundNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sound\Load3DSound, FilenamePTR, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadSound( Filename.s, SoundNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sound\LoadSound, FilenamePTR, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopSound( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\LoopSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPauseSound( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\PauseSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPlaySoundA( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\PlaySoundA, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPlaySoundOffset( SoundNumber.l, StartPosition.l )
  CallCFunctionFast( *DB_Sound\PlaySoundOffset, SoundNumber, StartPosition )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionSound( SoundNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Sound\PositionSound, SoundNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionListener( X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Sound\PositionListener, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBRecordSound( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\RecordSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBResumeSound( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\ResumeSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateListener( X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Sound\RotateListener, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveSound( Filename.s, SoundNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sound\SaveSound, FilenamePTR, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSoundPan( SoundNumber.l, PanValue.l )
  CallCFunctionFast( *DB_Sound\SetSoundPan, SoundNumber, PanValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSoundSpeed( SoundNumber.l, FrequencyValue.l )
  CallCFunctionFast( *DB_Sound\SetSoundSpeed, SoundNumber, FrequencyValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSoundVolume( SoundNumber.l, VolumeNumber.l )
  CallCFunctionFast( *DB_Sound\SetSoundVolume, SoundNumber, VolumeNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBStopRecordingSound()
  CallCFunctionFast( *DB_Sound\StopRecordingSound )
 EndProcedure
;
; *********************************************************************
Procedure DBStopSound( SoundNumber.l )
  CallCFunctionFast( *DB_Sound\StopSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetListenerAngleX()
  Retour.l = CallCFunctionFast( *DB_Sound\GetListenerAngleXEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetListenerAngleY()
  Retour.l = CallCFunctionFast( *DB_Sound\GetListenerAngleYEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetListenerAngleZ()
  Retour.l = CallCFunctionFast( *DB_Sound\GetListenerAngleZEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetListenerPositionX()
  Retour.l = CallCFunctionFast( *DB_Sound\GetListenerPositionXEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetListenerPositionY()
  Retour.l = CallCFunctionFast( *DB_Sound\GetListenerPositionYEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetListenerPositionZ()
  Retour.l = CallCFunctionFast( *DB_Sound\GetListenerPositionZEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundExist( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundExist, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundLooping( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundLooping, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundPan( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundPan, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundPaused( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundPaused, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundPlaying( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundPlaying, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetSoundPositionX( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundPositionXEx, SoundNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetSoundPositionY( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundPositionYEx, SoundNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetSoundPositionZ( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundPositionZEx, SoundNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundSpeed( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundSpeed, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundType( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundType, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSoundVolume( SoundNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sound\GetSoundVolume, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBLoadSound1( Filename.s, SoundNumber.l, Flag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sound\LoadSound1, FilenamePTR, SoundNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopSound1( SoundNumber.l, StartPosition.l )
  CallCFunctionFast( *DB_Sound\LoopSound1, SoundNumber, StartPosition )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopSound2( SoundNumber.l, StartPosition.l, EndPosition.l )
  CallCFunctionFast( *DB_Sound\LoopSound2, SoundNumber, StartPosition, EndPosition )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopSound3( SoundNumber.l, StartPosition.l, EndPosition.l, InitialPosition.l )
  CallCFunctionFast( *DB_Sound\LoopSound3, SoundNumber, StartPosition, EndPosition, InitialPosition )
 EndProcedure
;
; *********************************************************************
Procedure DBRecordSound1( SoundNumber.l, Duration.l )
  CallCFunctionFast( *DB_Sound\RecordSound1, SoundNumber, Duration )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleListener( ScalingFactor.f )
  CallCFunctionFast( *DB_Sound\ScaleListener, ScalingFactor )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEAX( PresetEffectValue.l )
  CallCFunctionFast( *DB_Sound\SetEAX, PresetEffectValue )
 EndProcedure
;
; *********************************************************************
Procedure DBLoad3DSound1( Filename.s, SoundNumber.l, SilentFail.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sound\Load3DSound1, FilenamePTR, SoundNumber, SilentFail )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadSound2( Filename.s, SoundNumber.l, Flag.l, SilentFail.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sound\LoadSound2, FilenamePTR, SoundNumber, Flag, SilentFail )
 EndProcedure
;

