; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 13.12.05
;
Procedure.l CheckParticles3DExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Particles3D.dll")
    Particles3DExtends\Particles3D_Init= AIsFunction( 1 , "Particles3D_Init" ) ; 1 P3D Initialized 
    Particles3DExtends\P3D_AddParticles= AIsFunction( 1 , "P3D_AddParticles" ) ; 2 P3D Add Particle ParticleID, Count, Texture, ParticleSize
    Particles3DExtends\P3D_PositionParticles= AIsFunction( 1 , "P3D_PositionParticles" ) ; 3 P3D Position Emitter ParticleID, XPos, YPos, ZPos
    Particles3DExtends\P3D_SetEmitterSize= AIsFunction( 1 , "P3D_SetEmitterSize" ) ; 4 P3D Set Particle Area ParticleID, XSize, YSize, ZSize
    Particles3DExtends\P3D_SetParticlePath= AIsFunction( 1 , "P3D_SetParticlePath" ) ; 5 P3D Set Primitive Mode ParticleID, XAdd, YAdd, ZAdd
    Particles3DExtends\P3D_SetAsFlames= AIsFunction( 1 , "P3D_SetAsFlames" ) ; 6 P3D Set As Flames Particle ParticleID
    Particles3DExtends\P3D_SetAsSmoke= AIsFunction( 1 , "P3D_SetAsSmoke" ) ; 7 P3D Set As Smoke Particle ParticleID
    Particles3DExtends\P3D_SetAsRain= AIsFunction( 1 , "P3D_SetAsRain" ) ; 8 P3D Set As Rain Particle ParticleID
    Particles3DExtends\P3D_SetAsSnow= AIsFunction( 1 , "P3D_SetAsSnow" ) ; 9 P3D Set As Snow Particle ParticleID
    Particles3DExtends\P3D_UpdateParticles= AIsFunction( 1 , "P3D_UpdateParticles" ) ; 10 P3D Update Particles 
    Particles3DExtends\P3D_DeleteParticle= AIsFunction( 1 , "P3D_DeleteParticle" ) ; 11 P3D Delete Particle ParticleID
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -