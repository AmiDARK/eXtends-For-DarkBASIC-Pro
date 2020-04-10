; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBLoadWorld3D( PK3Filename.s, BSPFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PK3FilenamePTR.l, Len( PK3Filename ) + 1 ) ; CreateString
  PokeS( PK3FilenamePTR, PK3Filename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @BSPFilenamePTR.l, Len( BSPFilename ) + 1 ) ; CreateString
  PokeS( BSPFilenamePTR, BSPFilename )
  CallCFunctionFast( *DB_World3D\LoadEx, PK3FilenamePTR, BSPFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetupCameraCollision( CollisionIndex.l, CameraNumber.l, Radius.f, Response.l )
  R.l = 0 : PokeF( @R, Radius )
  CallCFunctionFast( *DB_World3D\SetupCameraCollisionEx, CollisionIndex, CameraNumber, R, Response )
 EndProcedure
;
; *********************************************************************
Procedure DBSetupObjectCollision( CollisionIndex.l, ObjectNumber.l, Radius.f, Response.l )
  R.l = 0 : PokeF( @R, Radius )
  CallCFunctionFast( *DB_World3D\SetupObjectCollisionEx, CollisionIndex, ObjectNumber, R, Response )
 EndProcedure
;
; *********************************************************************
Procedure DBSetupCullingCamera( CameraNumber.l )
  CallCFunctionFast( *DB_World3D\SetupCullingCameraEx, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetupCollisionOff( CollisionIndex.l )
  CallCFunctionFast( *DB_World3D\SetupCollisionOffEx, CollisionIndex )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteWorld3D()
  CallCFunctionFast( *DB_World3D\DeleteEx )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetWorld3DCollisionResponse( CollisionIndex.l )
  Retour.l = CallCFunctionFast( *DB_World3D\GetCollisionResponseEx, CollisionIndex )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetWorld3DCollisionX( CollisionIndex.l )
  Retour.l = CallCFunctionFast( *DB_World3D\GetCollisionXEx, CollisionIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetWorld3DCollisionY( CollisionIndex.l )
  Retour.l = CallCFunctionFast( *DB_World3D\GetCollisionYEx, CollisionIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetWorld3DCollisionZ( CollisionIndex.l )
  Retour.l = CallCFunctionFast( *DB_World3D\GetCollisionZEx, CollisionIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBSetCollisionWorld3DThreshhold( CollisionIndex.l, Sensitivity.f )
  S.l = 0 : PokeF( @S, Sensitivity )
  CallCFunctionFast( *DB_World3D\SetCollisionThreshholdEx, CollisionIndex, S )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraCollisionRadius( CollisionIndex.l, CameraNumber.l, X.f, Y.f, Z.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  CallCFunctionFast( *DB_World3D\SetCameraCollisionRadiusEx, CollisionIndex, CameraNumber, X1, Y1, Z1 )
 EndProcedure
;
; *********************************************************************
Procedure DBSetHardwareMultiTexturingOn()
  CallCFunctionFast( *DB_World3D\SetHardwareMultiTexturingOnEx )
 EndProcedure
;
; *********************************************************************
Procedure DBSetHardwareMultiTexturingOff()
  CallCFunctionFast( *DB_World3D\SetHardwareMultiTexturingOffEx )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectCollisionRadius( CollisionIndex.l, ObjectNumber.l, X.f, Y.f, Z.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  CallCFunctionFast( *DB_World3D\SetObjectCollisionRadiusEx, CollisionIndex, ObjectNumber, X1, Y1, Z1 )
 EndProcedure
;
; *********************************************************************
Procedure DBProcessWorld3DCollision( CollisionIndex.l )
  CallCFunctionFast( *DB_World3D\ProcessCollisionEx, CollisionIndex )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCollisionWorld3DHeightAdjustment( CollisionIndex.l, Height.f )
  H.l = 0 : PokeF( @H, Height )
  CallCFunctionFast( *DB_World3D\SetCollisionHeightAdjustmentEx, CollisionIndex, H )
 EndProcedure
;

; IDE Options = PureBasic 4.61 (Windows - x86)
; CursorPosition = 104
; FirstLine = 50
; Folding = ---
; EnableXP