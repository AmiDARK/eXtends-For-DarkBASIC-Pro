; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBClearCameraView( ColorValue.l )
  CallCFunctionFast( *DB_Camera\ClearView, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAutoCamOn()
  CallCFunctionFast( *DB_Camera\SetAutoCamOn )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAutoCamOff()
  CallCFunctionFast( *DB_Camera\SetAutoCamOff )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveCamera( DistanceValue.f )
  DV.l = 0 : PokeF( @DV, DistanceValue )
  CallCFunctionFast( *DB_Camera\Move, DV )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchCameraUp( AngleValue.f )
  AV.l = 0 : PokeF( @AV, AngleValue )
  CallCFunctionFast( *DB_Camera\PitchUp, AV )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchCameraDown( AngleValue.f )
  AV.l = 0 : PokeF( @AV, AngleValue )
  CallCFunctionFast( *DB_Camera\PitchDown, AV )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnCameraLeft( AngleValue.f )
  AV.l = 0 : PokeF( @AV, AngleValue )
  CallCFunctionFast( *DB_Camera\TurnLeft, AV )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnCameraRight( AngleValue.f )
  AV.l = 0 : PokeF( @AV, AngleValue )
  CallCFunctionFast( *DB_Camera\TurnRight, AV )
 EndProcedure
;
; *********************************************************************
Procedure DBRollCameraLeft( AngleValue.f )
  AV.l = 0 : PokeF( @AV, AngleValue )
  CallCFunctionFast( *DB_Camera\RollLeft, AV )
 EndProcedure
;
; *********************************************************************
Procedure DBRollCameraRight( AngleValue.f )
  AV.l = 0 : PokeF( @AV, AngleValue )
  CallCFunctionFast( *DB_Camera\RollRight, AV )
 EndProcedure
;
; *********************************************************************
Procedure DBPointCamera( X.f, Y.f, Z.f )
  XL.l = 0 : YL.l = 0 : ZL.l = 0
  PokeF( @XL, X ) : PokeF( @YL, Y ) : PokeF( @ZL,Z )
  CallCFunctionFast( *DB_Camera\Point, XL, YL, ZL )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionCamera( X.f, Y.f, Z.f )
  XL.l = 0 : YL.l = 0 : ZL.l = 0
  PokeF( @XL, X ) : PokeF( @YL, Y ) : PokeF( @ZL,Z )
  CallCFunctionFast( *DB_Camera\Position, XL, YL, ZL )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotation( XAngle.f, YAngle.f, ZAngle.f )
  XL.l = 0 : YL.l = 0 : ZL.l = 0
  PokeF( @XL, XAngle ) : PokeF( @YL, YAngle ) : PokeF( @ZL,ZAngle )
  CallCFunctionFast( *DB_Camera\SetRotate, XL, YL, ZL )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraFOV( FieldOfViewAngle.f )
  FOVA.l = 0 : PokeF( @FOVA, FieldOfViewAngle )
  CallCFunctionFast( *DB_Camera\SetFOV, FOVA )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRange( NearValue.f, FarValue.f )
  NV.l = 0 : FV.l = 0
  PokeF( @NV, NearValue ) : PokeF( @FV, FarValue )
  CallCFunctionFast( *DB_Camera\SetRange, NV, FV )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraView( Left.l, Top.l, Right.l, Bottom.l )
  CallCFunctionFast( *DB_Camera\SetView, Left, Top, Right, Bottom )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotationXYZ()
  CallCFunctionFast( *DB_Camera\SetRotationXYZ )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotationZYX()
  CallCFunctionFast( *DB_Camera\SetRotationZYX )
 EndProcedure
;
; *********************************************************************
Procedure DBFollowCamera( X.f, Y.f, Z.f, Angle.f, Distance.f, Height.f, Smooth.f, Collision.l )
  D.l = 0 : H.l = 0 : S.l = 0
  PokeF( @D, Distance ) : PokeF( @H, Height ) : PokeF( @S, Smooth )
  CallCFunctionFast( *DB_Camera\Follow, X, Y, Z, Angle, D, H, S, Collision )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraToObjectOrientation( ObjectNumber.l )
  CallCFunctionFast( *DB_Camera\SetToObjectOrientation, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetXRotate( XAngle.f )
  V.l = 0 : PokeF( @V, XAngle )
  CallCFunctionFast( *DB_Camera\SetXRotate, V )
 EndProcedure
;
; *********************************************************************
Procedure DBSetYRotate( YAngle.f )
  V.l = 0 : PokeF( @V, YAngle )
  CallCFunctionFast( *DB_Camera\SetYRotate, V )
 EndProcedure
;
; *********************************************************************
Procedure DBSetZRotate( ZAngle.f )
  V.l = 0 : PokeF( @V, ZAngle )
  CallCFunctionFast( *DB_Camera\SetZRotate, V )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCameraXPosition()
  Retour.l = CallCFunctionFast( *DB_Camera\GetXPositionEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCameraYPosition()
  Retour.l = CallCFunctionFast( *DB_Camera\GetYPositionEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCameraZPosition()
  Retour.l = CallCFunctionFast( *DB_Camera\GetZPositionEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetXAngle()
  Retour.l = CallCFunctionFast( *DB_Camera\GetXAngleEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetYAngle()
  Retour.l = CallCFunctionFast( *DB_Camera\GetYAngleEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetZAngle()
  Retour.l = CallCFunctionFast( *DB_Camera\GetZAngleEx )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBClearCameraView1( CameraNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Camera\ClearViewEx, CameraNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveCamera1( CameraNumber.l, DistanceValue.f )
  DV.l = 0 : PokeF( @DV, DistanceValue )
  CallCFunctionFast( *DB_Camera\Move1, CameraNumber, DV )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchCameraUp1( CameraNumber.l, AngleValue.f )
  AV.l = 0 : PokeF( @AV, AngleValue )
  CallCFunctionFast( *DB_Camera\PitchUp1, CameraNumber, AV )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropOn()
  CallCFunctionFast( *DB_Camera\BackdropOn )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropOff()
  CallCFunctionFast( *DB_Camera\BackdropOff )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropColor( ColorValue.l )
  CallCFunctionFast( *DB_Camera\BackdropColor, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropTexture( ImageNumber.l )
  CallCFunctionFast( *DB_Camera\BackdropTexture, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropScroll( U.l, V.l )
  CallCFunctionFast( *DB_Camera\BackdropScroll, U, V )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeCamera( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\CreateEx, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteCamera( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\DestroyEx, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCurrentCamera( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\SetCurrentCamera, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchCameraDown1( CameraNumber.l, AngleValue.f )
  AV.l = 0 : PokeF( @AV, AngleValue )
  CallCFunctionFast( *DB_Camera\PitchDown1, CameraNumber, AV )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnCameraLeft1( CameraNumber.l, AngleValue.f )
  AV.l = 0 : PokeF( @AV, AngleValue )
  CallCFunctionFast( *DB_Camera\TurnLeft1, CameraNumber, AV )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnCameraRight1( CameraNumber.l, AngleValue.f )
  AV.l = 0 : PokeF( @AV, AngleValue )
  CallCFunctionFast( *DB_Camera\TurnRight1, CameraNumber, AV )
 EndProcedure
;
; *********************************************************************
Procedure DBRollCameraLeft1( CameraNumber.l, AngleValue.f )
  AV.l = 0 : PokeF( @AV, AngleValue )
  CallCFunctionFast( *DB_Camera\RollLeft1, CameraNumber, AV )
 EndProcedure
;
; *********************************************************************
Procedure DBRollCameraRight1( CameraNumber.l, AngleValue.f )
  AV.l = 0 : PokeF( @AV, AngleValue )
  CallCFunctionFast( *DB_Camera\RollRight1, CameraNumber, AV )
 EndProcedure
;
; *********************************************************************
Procedure DBPointCamera1( CameraNumber.l, X.f, Y.f, Z.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  CallCFunctionFast( *DB_Camera\Point1, CameraNumber, X1, Y1, Z1 )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionCamera1( CameraNumber.l, X.f, Y.f, Z.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  CallCFunctionFast( *DB_Camera\Position1, CameraNumber, X1, Y1, Z1 )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotation1( CameraNumber.l, XAngle.f, YAngle.f, ZAngle.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0
  PokeF( @X1, XAngle ) : PokeF( @Y1, YAngle ) : PokeF( @Z1, ZAngle )
  CallCFunctionFast( *DB_Camera\SetRotate1, CameraNumber, X1, Y1, Z1 )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraFOV1( CameraNumber.l, FieldOfViewAngle.f )
  FOVA.l = 0 : PokeF( @FOVA, FieldOfViewAngle )
  CallCFunctionFast( *DB_Camera\SetFOV1, CameraNumber, FOVA )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRange1( CameraNumber.l, NearValue.f, FarValue.f )
  NV.l = 0 : FV.l = 0
  PokeF( @NV, NearValue ) : PokeF( @FV, FarValue )
  CallCFunctionFast( *DB_Camera\SetRange1, CameraNumber, NV, FV )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraView1( CameraNumber.l, Left.l, Top.l, Right.l, Bottom.l )
  CallCFunctionFast( *DB_Camera\SetView1, CameraNumber, Left, Top, Right, Bottom )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotationXYZ1( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\SetRotationXYZ1, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotationZYX1( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\SetRotationZYX1, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBFollowCamera1( CameraNumber.l, X.f, Y.f, Z.f, Angle.f, Distance.f, Height.f, Smooth.f, Collision.l )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0 : A1.l = 0 : D1.l = 0 : H1.l = 0 : S1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  PokeF( @A1, Angle ) : PokeF( @D1, Distance ) : PokeF( @H1, Height ) : PokeF( @S1, Smooth )
  CallCFunctionFast( *DB_Camera\Follow1, CameraNumber, X1, Y1, Z1, A1, D1, H1, S1, Collision )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraToObjectOrientation1( CameraNumber.l, ObjectNumber.l )
  CallCFunctionFast( *DB_Camera\SetToObjectOrientation1, CameraNumber, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetXRotate1( CameraNumber.l, XAngle.f )
  V.l = 0 : PokeF( @V, XAngle )
  CallCFunctionFast( *DB_Camera\SetXRotate1, CameraNumber, V )
 EndProcedure
;
; *********************************************************************
Procedure DBSetYRotate1( CameraNumber.l, YAngle.f )
  V.l = 0 : PokeF( @V, YAngle )
  CallCFunctionFast( *DB_Camera\SetYRotate1, CameraNumber, V )
 EndProcedure
;
; *********************************************************************
Procedure DBSetZRotate1( CameraNumber.l, ZAngle.f )
  V.l = 0 : PokeF( @V, ZAngle )
  CallCFunctionFast( *DB_Camera\SetZRotate1, CameraNumber, V )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCameraXPosition1( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetXPositionEx1, CameraNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCameraYPosition1( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetYPositionEx1, CameraNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCameraZPosition1( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetZPositionEx1, CameraNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetXAngle1( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetXAngleEx1, CameraNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetYAngle1( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetYAngleEx1, CameraNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetZAngle1( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetZAngleEx1, CameraNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropOn1( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\BackdropOn1, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropOff1( CameraNumber.l )
  CallCFunctionFast( *DB_Camera\BackdropOff1, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropColor1( CameraNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Camera\BackdropColor1, CameraNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropTexture1( CameraNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Camera\BackdropTexture1, CameraNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBBackdropScroll1( CameraNumber.l, U.l, V.l )
  CallCFunctionFast( *DB_Camera\BackdropScroll1, CameraNumber, U, V )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraToImage( CameraNumber.l, ImageNumber.l, Width.l, Height.l )
  CallCFunctionFast( *DB_Camera\SetCameraToImage, CameraNumber, ImageNumber, Width, Height )
 EndProcedure
;
; *********************************************************************
Procedure DBControlCameraWithArrowKeys( CameraNumber.l, MoveSpeed.f, TurnSpeed.f )
  MS.l = 0 : TS.l = 0
  PokeF( @MS, MoveSpeed ) : PokeF( @TS, TurnSpeed )
  CallCFunctionFast( *DB_Camera\ControlWithArrowKeys, CameraNumber, MS, TS )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraPositionVector3( CameraNumber.l, Vector.l )
  CallCFunctionFast( *DB_Camera\SetPositionVector3, CameraNumber, Vector )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotationVector3( CameraNumber.l, Vector.l )
  CallCFunctionFast( *DB_Camera\SetRotationVector3, CameraNumber, Vector )
 EndProcedure
;
; *********************************************************************
Procedure DBGetPositionVector33( Vector.l, CameraNumber.l )
  CallCFunctionFast( *DB_Camera\GetPositionVector3, Vector, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGetRotationVector32( Vector.l, CameraNumber.l )
  CallCFunctionFast( *DB_Camera\GetRotationVector3, Vector, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAspect( AspectRatio.f )
  AR.l = 0 : PokeF( @AR, AspectRatio )
  CallCFunctionFast( *DB_Camera\SetAspect, AR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAspect1( CameraNumber.l, AspectRatio.f )
  AR.l = 0 : PokeF( @AR, AspectRatio )
  CallCFunctionFast( *DB_Camera\SetAspect1, CameraNumber, AR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraToImage1( CameraNumber.l, ImageNumber.l, Width.l, Height.l, GenerateAlpha.l )
  CallCFunctionFast( *DB_Camera\SetCameraToImageEx, CameraNumber, ImageNumber, Width, Height, GenerateAlpha )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetCameraExist( CameraNumber.l )
  Retour.l = CallCFunctionFast( *DB_Camera\GetExistEx, CameraNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetClip( CameraNumber.l, ClipOnOff.l, X.f, Y.f, Z.f, NX.f, NY.f, NZ.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0 : NX1.l = 0 : NY1.l = 0 : NZ1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  PokeF( @NX1, NX ) : PokeF( @NY1, NY ) : PokeF( @NZ1, NZ )
  CallCFunctionFast( *DB_Camera\SetClip, CameraNumber, ClipOnOff, X1, Y1, Z1, NX1, NY1, NZ1 )
 EndProcedure
;
; IDE Options = PureBasic 4.61 (Windows - x86)
; CursorPosition = 320
; FirstLine = 300
; Folding = --------------
; EnableXP