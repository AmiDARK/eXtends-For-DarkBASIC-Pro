; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure Particles3DExtendsStruct
  Particles3D_Init.l : P3D_AddParticles.l : P3D_PositionParticles.l : P3D_SetEmitterRange.l
  P3D_SetParticlePath.l : P3D_SetAsFlames.l : P3D_SetAsSmoke.l : P3D_SetAsRain.l
  P3D_SetAsSnow.l : P3D_SetAsPrimitive.l : P3D_UpdateParticles.l : P3D_GetParticleExist.l
  P3D_Clear.l : P3D_DeleteParticle.l : P3D_GetParticleCount.l : P3D_GetParticleXRange.l
  P3D_GetParticleYRange.l : P3D_GetParticleZRange.l : P3D_GetParticleXPosition.l : P3D_GetParticleYPosition.l
  P3D_GetParticleZPosition.l : P3D_GetParticleType.l : P3D_GetParticleSize.l : P3D_GetParticleXPath.l
  P3D_GetParticleYPath.l : P3D_GetParticleZPath.l : P3D_HideParticle.l : P3D_ShowParticle.l
  P3D_SetAsSparkle.l
 EndStructure
Global Particles3DExtends.Particles3DExtendsStruct

Procedure.l CheckParticles3DExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Particles3D.dll")
    Particles3DExtends\Particles3D_Init= AIsFunction( 1 , "Particles3D_Init" ) ; 1 P3D Initialized 
    Particles3DExtends\P3D_AddParticles= AIsFunction( 1 , "P3D_AddParticles" ) ; 2 P3D Add Particle Count, Texture, ParticleSize
    Particles3DExtends\P3D_PositionParticles= AIsFunction( 1 , "P3D_PositionParticles" ) ; 3 P3D Position Emitter ParticleID, XPos, YPos, ZPos
    Particles3DExtends\P3D_SetEmitterRange= AIsFunction( 1 , "P3D_SetEmitterRange" ) ; 4 P3D Set Particle Area ParticleID, XSize, YSize, ZSize
    Particles3DExtends\P3D_SetParticlePath= AIsFunction( 1 , "P3D_SetParticlePath" ) ; 5 P3D Set Primitive Mode ParticleID, XAdd, YAdd, ZAdd
    Particles3DExtends\P3D_SetAsFlames= AIsFunction( 1 , "P3D_SetAsFlames" ) ; 6 P3D Set As Flames Particle ParticleID
    Particles3DExtends\P3D_SetAsSmoke= AIsFunction( 1 , "P3D_SetAsSmoke" ) ; 7 P3D Set As Smoke Particle ParticleID
    Particles3DExtends\P3D_SetAsRain= AIsFunction( 1 , "P3D_SetAsRain" ) ; 8 P3D Set As Rain Particle ParticleID
    Particles3DExtends\P3D_SetAsSnow= AIsFunction( 1 , "P3D_SetAsSnow" ) ; 9 P3D Set As Snow Particle ParticleID
    Particles3DExtends\P3D_SetAsPrimitive= AIsFunction( 1 , "P3D_SetAsPrimitive" ) ; 10 P3D Set As Primitive Particle ParticleID
    Particles3DExtends\P3D_UpdateParticles= AIsFunction( 1 , "P3D_UpdateParticles" ) ; 11 P3D Update Particles 
    Particles3DExtends\P3D_GetParticleExist= AIsFunction( 1 , "P3D_GetParticleExist" ) ; 12 P3D Get Particle Exist ParticleID
    Particles3DExtends\P3D_Clear= AIsFunction( 1 , "P3D_Clear" ) ; 13 P3D Clear Particles 
    Particles3DExtends\P3D_DeleteParticle= AIsFunction( 1 , "P3D_DeleteParticle" ) ; 14 P3D Delete Particle ParticleID
    Particles3DExtends\P3D_GetParticleCount= AIsFunction( 1 , "P3D_GetParticleCount" ) ; 15 P3D Get Particle Count ParticleID
    Particles3DExtends\P3D_GetParticleXRange= AIsFunction( 1 , "P3D_GetParticleXRange" ) ; 16 P3D Get Particle XRange ParticleID
    Particles3DExtends\P3D_GetParticleYRange= AIsFunction( 1 , "P3D_GetParticleYRange" ) ; 17 P3D Get Particle YRange ParticleID
    Particles3DExtends\P3D_GetParticleZRange= AIsFunction( 1 , "P3D_GetParticleZRange" ) ; 18 P3D Get Particle ZRange ParticleID
    Particles3DExtends\P3D_GetParticleXPosition= AIsFunction( 1 , "P3D_GetParticleXPosition" ) ; 19 P3D Get Particle XPos ParticleID
    Particles3DExtends\P3D_GetParticleYPosition= AIsFunction( 1 , "P3D_GetParticleYPosition" ) ; 20 P3D Get Particle YPos ParticleID
    Particles3DExtends\P3D_GetParticleZPosition= AIsFunction( 1 , "P3D_GetParticleZPosition" ) ; 21 P3D Get Particle ZPos ParticleID
    Particles3DExtends\P3D_GetParticleType= AIsFunction( 1 , "P3D_GetParticleType" ) ; 22 P3D Get Particle Type ParticleID
    Particles3DExtends\P3D_GetParticleSize= AIsFunction( 1 , "P3D_GetParticleSize" ) ; 23 P3D Get Particle Size ParticleID
    Particles3DExtends\P3D_GetParticleXPath= AIsFunction( 1 , "P3D_GetParticleXPath" ) ; 24 P3D Get Particle XSpeed ParticleID
    Particles3DExtends\P3D_GetParticleYPath= AIsFunction( 1 , "P3D_GetParticleYPath" ) ; 25 P3D Get Particle YSpeed ParticleID
    Particles3DExtends\P3D_GetParticleZPath= AIsFunction( 1 , "P3D_GetParticleZPath" ) ; 26 P3D Get Particle ZSpeed ParticleID
    Particles3DExtends\P3D_HideParticle= AIsFunction( 1 , "P3D_HideParticle" ) ; 27 P3D Hide Particle ParticleID
    Particles3DExtends\P3D_ShowParticle= AIsFunction( 1 , "P3D_ShowParticle" ) ; 28 P3D Show Particle ParticleID
    Particles3DExtends\P3D_SetAsSparkle= AIsFunction( 1 , "P3D_SetAsSparkle" ) ; 29 P3D Set As Sparkle Particle ParticleID
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l Particles3D_Init()
  Retour.l = CallCFunctionFast( Particles3DExtends\Particles3D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_AddParticles( Count.l, Texture.l, ParticleSize.f )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_AddParticles, Count, Texture, ParticleSize )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure P3D_PositionParticles( ParticleID.l, XPos.l, YPos.l, ZPos.l )
  CallCFunctionFast( Particles3DExtends\P3D_PositionParticles, ParticleID, XPos, YPos, ZPos )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetEmitterRange( ParticleID.l, XSize.l, YSize.l, ZSize.l )
  CallCFunctionFast( Particles3DExtends\P3D_SetEmitterRange, ParticleID, XSize, YSize, ZSize )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetParticlePath( ParticleID.l, XAdd.f, YAdd.f, ZAdd.f )
  CallCFunctionFast( Particles3DExtends\P3D_SetParticlePath, ParticleID, XAdd, YAdd, ZAdd )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsFlames( ParticleID.l )
  CallCFunctionFast( Particles3DExtends\P3D_SetAsFlames, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsSmoke( ParticleID.l )
  CallCFunctionFast( Particles3DExtends\P3D_SetAsSmoke, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsRain( ParticleID.l )
  CallCFunctionFast( Particles3DExtends\P3D_SetAsRain, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsSnow( ParticleID.l )
  CallCFunctionFast( Particles3DExtends\P3D_SetAsSnow, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsPrimitive( ParticleID.l )
  CallCFunctionFast( Particles3DExtends\P3D_SetAsPrimitive, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_UpdateParticles()
  CallCFunctionFast( Particles3DExtends\P3D_UpdateParticles )
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleExist( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleExist, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure P3D_Clear()
  CallCFunctionFast( Particles3DExtends\P3D_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_DeleteParticle( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_DeleteParticle, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleCount( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleCount, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleXRange( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleXRange, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleYRange( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleYRange, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleZRange( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleZRange, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleXPosition( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleXPosition, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleYPosition( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleYPosition, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleZPosition( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleZPosition, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleType( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleType, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l P3D_GetParticleSize( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleSize, ParticleID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f P3D_GetParticleXPath( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleXPath, ParticleID )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f P3D_GetParticleYPath( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleYPath, ParticleID )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f P3D_GetParticleZPath( ParticleID.l )
  Retour.l = CallCFunctionFast( Particles3DExtends\P3D_GetParticleZPath, ParticleID )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure P3D_HideParticle( ParticleID.l )
  CallCFunctionFast( Particles3DExtends\P3D_HideParticle, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_ShowParticle( ParticleID.l )
  CallCFunctionFast( Particles3DExtends\P3D_ShowParticle, ParticleID )
 EndProcedure
;
; *********************************************************************
Procedure P3D_SetAsSparkle( ParticleID.l )
  CallCFunctionFast( Particles3DExtends\P3D_SetAsSparkle, ParticleID )
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 11
; Folding = ------