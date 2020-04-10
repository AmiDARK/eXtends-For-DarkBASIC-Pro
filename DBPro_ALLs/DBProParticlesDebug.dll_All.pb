; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_ParticlesStruct
  CreateSnowEffect.l : CreateEx.l : CreateFireEffect.l : DeleteEx.l
  GetExist.l : GetPositionXEx.l : GetPositionYEx.l : GetPositionZEx.l
  Hide.l : SetPosition.l : SetColorEx.l : SetNumberOfEmmissions.l
  SetSecondsPerFrame.l : SetVelocity.l : Show.l : SetRotation.l
  SetGravity.l : SetChaos.l : SetLife.l : SetFloor.l
  SetEmitPosition.l : SetPositionVector3.l : SetRotationVector3.l : GetPositionVector3.l
  GetRotationVector3.l : GhostOn.l : GhostOff.l : Ghost.l
 EndStructure

Procedure.l CheckParticles()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProParticlesDebug.dll")
    DB_Particles\CreateSnowEffect= AIsFunction( 1 , "?CreateSnowEffect@@YAXHHHMMMMMM@Z" ) ; 1 MAKE SNOW PARTICLES Particle Number, Image Number, Frequency, X, Y, Z, Width, Height, Depth
    DB_Particles\CreateEx= AIsFunction( 1 , "?CreateEx@@YAXHHHM@Z" ) ; 2 MAKE PARTICLES Particle Number, Image Number, Frequency, Radius
    DB_Particles\CreateFireEffect= AIsFunction( 1 , "?CreateFireEffect@@YAXHHHMMMMMM@Z" ) ; 3 MAKE FIRE PARTICLES Particle Number, Image Number, Frequency, X, Y, Z, Width, Height, Depth
    DB_Particles\DeleteEx= AIsFunction( 1 , "?DeleteEx@@YAXH@Z" ) ; 4 DELETE PARTICLES Particle Number
    DB_Particles\GetExist= AIsFunction( 1 , "?GetExist@@YAHH@Z" ) ; 5 PARTICLES EXIST Particle Number
    DB_Particles\GetPositionXEx= AIsFunction( 1 , "?GetPositionXEx@@YAKH@Z" ) ; 6 PARTICLES POSITION X Particle Number
    DB_Particles\GetPositionYEx= AIsFunction( 1 , "?GetPositionYEx@@YAKH@Z" ) ; 7 PARTICLES POSITION Y Particle Number
    DB_Particles\GetPositionZEx= AIsFunction( 1 , "?GetPositionZEx@@YAKH@Z" ) ; 8 PARTICLES POSITION Z Particle Number
    DB_Particles\Hide= AIsFunction( 1 , "?Hide@@YAXH@Z" ) ; 9 HIDE PARTICLES Particle Number
    DB_Particles\SetPosition= AIsFunction( 1 , "?SetPosition@@YAXHMMM@Z" ) ; 10 POSITION PARTICLES Particle Number, X, Y, Z
    DB_Particles\SetColorEx= AIsFunction( 1 , "?SetColorEx@@YAXHHHH@Z" ) ; 11 COLOR PARTICLES Particle Number, Red, Green, Blue
    DB_Particles\SetNumberOfEmmissions= AIsFunction( 1 , "?SetNumberOfEmmissions@@YAXHH@Z" ) ; 12 SET PARTICLE EMISSIONS Particle Number, Frequency
    DB_Particles\SetSecondsPerFrame= AIsFunction( 1 , "?SetSecondsPerFrame@@YAXHM@Z" ) ; 13 SET PARTICLE SPEED Particle Number, Seconds Per Frame
    DB_Particles\SetVelocity= AIsFunction( 1 , "?SetVelocity@@YAXHM@Z" ) ; 15 SET PARTICLE VELOCITY Particle Number, Velocity Value
    DB_Particles\Show= AIsFunction( 1 , "?Show@@YAXH@Z" ) ; 16 SHOW PARTICLES Particle Number
    DB_Particles\SetRotation= AIsFunction( 1 , "?SetRotation@@YAXHMMM@Z" ) ; 17 ROTATE PARTICLES Particle Number, X, Y, Z
    DB_Particles\SetGravity= AIsFunction( 1 , "?SetGravity@@YAXHM@Z" ) ; 18 SET PARTICLE GRAVITY Particle Number, Gravity Value
    DB_Particles\SetChaos= AIsFunction( 1 , "?SetChaos@@YAXHM@Z" ) ; 19 SET PARTICLE CHAOS Particle Number, Chaos Value
    DB_Particles\SetLife= AIsFunction( 1 , "?SetLife@@YAXHH@Z" ) ; 20 SET PARTICLE LIFE Particle Number, Life Percentage
    DB_Particles\SetFloor= AIsFunction( 1 , "?SetFloor@@YAXHH@Z" ) ; 21 SET PARTICLE FLOOR Particle Number, Floor Flag
    DB_Particles\SetEmitPosition= AIsFunction( 1 , "?SetEmitPosition@@YAXHMMM@Z" ) ; 22 POSITION PARTICLE EMISSIONS Particle Number, X, Y, Z
    DB_Particles\SetPositionVector3= AIsFunction( 1 , "?SetPositionVector3@@YAXHH@Z" ) ; 23 POSITION PARTICLES Particle Number, Vector
    DB_Particles\SetRotationVector3= AIsFunction( 1 , "?SetRotationVector3@@YAXHH@Z" ) ; 24 ROTATE PARTICLES Particle Number, Vector
    DB_Particles\GetPositionVector3= AIsFunction( 1 , "?GetPositionVector3@@YAXHH@Z" ) ; 25 SET VECTOR3 TO PARTICLES POSITION Vector, Particle Number
    DB_Particles\GetRotationVector3= AIsFunction( 1 , "?GetRotationVector3@@YAXHH@Z" ) ; 26 SET VECTOR3 TO PARTICLES ROTATION Vector, Particle Number
    DB_Particles\GhostOn= AIsFunction( 1 , "?GhostOn@@YAXHH@Z" ) ; 27 GHOST PARTICLES ON Particle Number, Ghost Mode
    DB_Particles\GhostOff= AIsFunction( 1 , "?GhostOff@@YAXH@Z" ) ; 28 GHOST PARTICLES OFF Particle Number
    DB_Particles\Ghost= AIsFunction( 1 , "?Ghost@@YAXHHM@Z" ) ; 29 GHOST PARTICLES ON Particle Number, Ghost Mode, Percentage
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBCreateSnowEffect( ParticleNumber.l, ImageNumber.l, Frequency.l, X.f, Y.f, Z.f, Width.f, Height.f, Depth.f )
  CallCFunctionFast( *DB_Particles\CreateSnowEffect, ParticleNumber, ImageNumber, Frequency, X, Y, Z, Width, Height, Depth )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeParticle( ParticleNumber.l, ImageNumber.l, Frequency.l, Radius.f )
  CallCFunctionFast( *DB_Particles\CreateEx, ParticleNumber, ImageNumber, Frequency, Radius )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateFireEffect( ParticleNumber.l, ImageNumber.l, Frequency.l, X.f, Y.f, Z.f, Width.f, Height.f, Depth.f )
  CallCFunctionFast( *DB_Particles\CreateFireEffect, ParticleNumber, ImageNumber, Frequency, X, Y, Z, Width, Height, Depth )
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
  CallCFunctionFast( *DB_Particles\SetPosition, ParticleNumber, X, Y, Z )
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
  CallCFunctionFast( *DB_Particles\SetSecondsPerFrame, ParticleNumber, SecondsPerFrame )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleVelocity( ParticleNumber.l, VelocityValue.f )
  CallCFunctionFast( *DB_Particles\SetVelocity, ParticleNumber, VelocityValue )
 EndProcedure
;
; *********************************************************************
Procedure DBShowParticle( ParticleNumber.l )
  CallCFunctionFast( *DB_Particles\Show, ParticleNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetRotation( ParticleNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Particles\SetRotation, ParticleNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleGravity( ParticleNumber.l, GravityValue.f )
  CallCFunctionFast( *DB_Particles\SetGravity, ParticleNumber, GravityValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetParticleChaos( ParticleNumber.l, ChaosValue.f )
  CallCFunctionFast( *DB_Particles\SetChaos, ParticleNumber, ChaosValue )
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
  CallCFunctionFast( *DB_Particles\SetEmitPosition, ParticleNumber, X, Y, Z )
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
  CallCFunctionFast( *DB_Particles\Ghost, ParticleNumber, GhostMode, Percentage )
 EndProcedure
;
