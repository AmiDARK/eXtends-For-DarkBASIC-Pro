; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBCreateSnowEffect( ParticleNumber.l, ImageNumber.l, Frequency.l, X.f, Y.f, Z.f, Width.f, Height.f, Depth.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0 : W.l = 0 : H.l = 0 : D.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  PokeF( @W, Width ) : PokeF( @H, Height ) : PokeF( @D, Depth )
  CallCFunctionFast( *DB_Particles\CreateSnowEffect, ParticleNumber, ImageNumber, Frequency, X1, Y1, Z1, W, H, D )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeParticle( ParticleNumber.l, ImageNumber.l, Frequency.l, Radius.f )
  R.l = 0 : PokeF( @R, Radius )
  CallCFunctionFast( *DB_Particles\CreateEx, ParticleNumber, ImageNumber, Frequency, R )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateFireEffect( ParticleNumber.l, ImageNumber.l, Frequency.l, X.f, Y.f, Z.f, Width.f, Height.f, Depth.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0 : W.l = 0 : H.l = 0 : D.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  PokeF( @W, Width ) : PokeF( @H, Height ) : PokeF( @D, Depth )
  CallCFunctionFast( *DB_Particles\CreateFireEffect, ParticleNumber, ImageNumber, Frequency, X1, Y1, Z1, W, H, D )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteParticle( ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\DeleteEx, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetParticleExist( ParticleNumber.l )
  Retour.l = CallCFunctionFast( *DB_Particles\GetExist, ParticleNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionX( ParticleNumber.l )
  Retour.l = CallCFunctionFast( *DB_Particles\GetPositionXEx, ParticleNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionY( ParticleNumber.l )
  Retour.l = CallCFunctionFast( *DB_Particles\GetPositionYEx, ParticleNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionZ( ParticleNumber.l )
  Retour.l = CallCFunctionFast( *DB_Particles\GetPositionZEx, ParticleNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBHideParticle( ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\Hide, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticletPosition( ParticleNumber.l, X.f, Y.f, Z.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  CallCFunctionFast( *DB_Particles\SetPosition, ParticleNumber, X1, Y1, Z1 )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleColor( ParticleNumber.l, Red.l, Green.l, Blue.l )
  CallCFunctionFast( *DB_Particles\SetColorEx, ParticleNumber, Red, Green, Blue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNumberOfParticleEmmissions( ParticleNumber.l, Frequency.l )
  CallCFunctionFast( *DB_Particles\SetNumberOfEmmissions, ParticleNumber, Frequency )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSecondsPerFrame( ParticleNumber.l, SecondsPerFrame.f )
  SPF.l = 0 : PokeF( @SPF, SecondsPerFrame )
  CallCFunctionFast( *DB_Particles\SetSecondsPerFrame, ParticleNumber, SPF )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleVelocity( ParticleNumber.l, VelocityValue.f )
  VV.l = 0 : PokeF( @VV, VelocityValue )
  CallCFunctionFast( *DB_Particles\SetVelocity, ParticleNumber, VV )
 EndProcedure
;
; *********************************************************************
Procedure DBShowParticle( ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\Show, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetRotation( ParticleNumber.l, X.f, Y.f, Z.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  CallCFunctionFast( *DB_Particles\SetRotation, ParticleNumber, X1, Y1, Z1 )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleGravity( ParticleNumber.l, GravityValue.f )
  GV.l = 0 : PokeF( @GV, GravityValue )
  CallCFunctionFast( *DB_Particles\SetGravity, ParticleNumber, GV )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleChaos( ParticleNumber.l, ChaosValue.f )
  CV = 0 : PokeF( @CV, ChaosValue )
  CallCFunctionFast( *DB_Particles\SetChaos, ParticleNumber, CV )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleLife( ParticleNumber.l, LifePercentage.l )
  CallCFunctionFast( *DB_Particles\SetLife, ParticleNumber, LifePercentage )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleFloor( ParticleNumber.l, FloorFlag.l )
  CallCFunctionFast( *DB_Particles\SetFloor, ParticleNumber, FloorFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticletPosition1( ParticleNumber.l, X.f, Y.f, Z.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  CallCFunctionFast( *DB_Particles\SetEmitPosition, ParticleNumber, X1, Y1, Z1 )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticlePositionVector3( ParticleNumber.l, Vector.l )
  CallCFunctionFast( *DB_Particles\SetPositionVector3, ParticleNumber, Vector )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleRotationVector3( ParticleNumber.l, Vector.l )
  CallCFunctionFast( *DB_Particles\SetRotationVector3, ParticleNumber, Vector )
 EndProcedure
;
; *********************************************************************
Procedure DBGetPositionVector3( Vector.l, ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\GetPositionVector3, Vector, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGetRotationVector3( Vector.l, ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\GetRotationVector3, Vector, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGhostParticleOn( ParticleNumber.l, GhostMode.l )
  CallCFunctionFast( *DB_Particles\GhostOn, ParticleNumber, GhostMode )
 EndProcedure
;
; *********************************************************************
Procedure DBGhostParticleOff( ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\GhostOff, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGhostParticle( ParticleNumber.l, GhostMode.l, Percentage.f )
  P.l = 0 : PokeF( @P, Percentage )
  CallCFunctionFast( *DB_Particles\Ghost, ParticleNumber, GhostMode, P )
 EndProcedure
;

; IDE Options = PureBasic 4.61 (Windows - x86)
; CursorPosition = 168
; FirstLine = 112
; Folding = -----
; EnableXP