; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 13.12.05
;
; *********************************************************************
Procedure.l Particles3D_Init()
  Retour.l = CallCFunctionFast( *Particles3DExtends\Particles3D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure P3D_AddParticles( ParticleID.l, Count.l, Texture.l, ParticleSize.f )
  CallCFunctionFast( *Particles3DExtends\P3D_AddParticles, ParticleID, Count, Texture, ParticleSize )
 EndProcedure
;
; *********************************************************************
Procedure P3D_PositionParticles( ParticleID.l, XPos.l, YPos.l, ZPos.l )
  CallCFunctionFast( *Particles3DExtends\P3D_PositionParticles, ParticleID, XPos, YPos, ZPos )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetEmitterSize( ParticleID.l, XSize.l, YSize.l, ZSize.l )
  CallCFunctionFast( *Particles3DExtends\P3D_SetEmitterSize, ParticleID, XSize, YSize, ZSize )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetParticlePath( ParticleID.l, XAdd.l, YAdd.l, ZAdd.l )
  CallCFunctionFast( *Particles3DExtends\P3D_SetParticlePath, ParticleID, XAdd, YAdd, ZAdd )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsFlames( ParticleID.l )
  CallCFunctionFast( *Particles3DExtends\P3D_SetAsFlames, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsSmoke( ParticleID.l )
  CallCFunctionFast( *Particles3DExtends\P3D_SetAsSmoke, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsRain( ParticleID.l )
  CallCFunctionFast( *Particles3DExtends\P3D_SetAsRain, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsSnow( ParticleID.l )
  CallCFunctionFast( *Particles3DExtends\P3D_SetAsSnow, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_UpdateParticles()
  CallCFunctionFast( *Particles3DExtends\P3D_UpdateParticles )
 EndProcedure
;
; *********************************************************************
Procedure P3D_DeleteParticle( ParticleID.l )
  CallCFunctionFast( *Particles3DExtends\P3D_DeleteParticle, ParticleID )
 EndProcedure
;
