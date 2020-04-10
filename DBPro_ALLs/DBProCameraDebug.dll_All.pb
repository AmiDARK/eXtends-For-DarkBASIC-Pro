; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_CameraStruct
  ClearView.l : SetAutoCamOn.l : SetAutoCamOff.l : Move.l
  PitchUp.l : PitchDown.l : TurnLeft.l : TurnRight.l
  RollLeft.l : RollRight.l : Point.l : Position.l
  SetRotate.l : SetFOV.l : SetRange.l : SetView.l
  SetRotationXYZ.l : SetRotationZYX.l : Follow.l : SetToObjectOrientation.l
  SetXRotate.l : SetYRotate.l : SetZRotate.l : GetXPositionEx.l
  GetYPositionEx.l : GetZPositionEx.l : GetXAngleEx.l : GetYAngleEx.l
  GetZAngleEx.l : ClearViewEx.l : Move1.l : PitchUp1.l
  BackdropOn.l : BackdropOff.l : BackdropColor.l : BackdropTexture.l
  BackdropScroll.l : CreateEx.l : DestroyEx.l : SetCurrentCamera.l
  PitchDown1.l : TurnLeft1.l : TurnRight1.l : RollLeft1.l
  RollRight1.l : Point1.l : Position1.l : SetRotate1.l
  SetFOV1.l : SetRange1.l : SetView1.l : SetRotationXYZ1.l
  SetRotationZYX1.l : Follow1.l : SetToObjectOrientation1.l : SetXRotate1.l
  SetYRotate1.l : SetZRotate1.l : GetXPositionEx1.l : GetYPositionEx1.l
  GetZPositionEx1.l : GetXAngleEx1.l : GetYAngleEx1.l : GetZAngleEx1.l
  BackdropOn1.l : BackdropOff1.l : BackdropColor1.l : BackdropTexture1.l
  BackdropScroll1.l : SetCameraToImage.l : ControlWithArrowKeys.l : SetPositionVector3.l
  SetRotationVector3.l : GetPositionVector3.l : GetRotationVector3.l : SetAspect.l
  SetAspect1.l : SetCameraToImageEx.l : GetExistEx.l : SetClip.l
 EndStructure

Procedure.l CheckCamera()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProCameraDebug.dll")
    DB_Camera\ClearView= AIsFunction( 1 , "?ClearView@@YAXK@Z" ) ; 1 CLEAR CAMERA VIEW Color Value
    DB_Camera\SetAutoCamOn= AIsFunction( 1 , "?SetAutoCamOn@@YAXXZ" ) ; 2 AUTOCAM ON 
    DB_Camera\SetAutoCamOff= AIsFunction( 1 , "?SetAutoCamOff@@YAXXZ" ) ; 3 AUTOCAM OFF 
    DB_Camera\Move= AIsFunction( 1 , "?Move@@YAXM@Z" ) ; 4 MOVE CAMERA Distance Value
    DB_Camera\PitchUp= AIsFunction( 1 , "?PitchUp@@YAXM@Z" ) ; 5 PITCH CAMERA UP Angle Value
    DB_Camera\PitchDown= AIsFunction( 1 , "?PitchDown@@YAXM@Z" ) ; 6 PITCH CAMERA DOWN Angle Value
    DB_Camera\TurnLeft= AIsFunction( 1 , "?TurnLeft@@YAXM@Z" ) ; 7 TURN CAMERA LEFT Angle Value
    DB_Camera\TurnRight= AIsFunction( 1 , "?TurnRight@@YAXM@Z" ) ; 8 TURN CAMERA RIGHT Angle Value
    DB_Camera\RollLeft= AIsFunction( 1 , "?RollLeft@@YAXM@Z" ) ; 9 ROLL CAMERA LEFT Angle Value
    DB_Camera\RollRight= AIsFunction( 1 , "?RollRight@@YAXM@Z" ) ; 10 ROLL CAMERA RIGHT Angle Value
    DB_Camera\Point= AIsFunction( 1 , "?Point@@YAXMMM@Z" ) ; 11 POINT CAMERA X, Y, Z
    DB_Camera\Position= AIsFunction( 1 , "?Position@@YAXMMM@Z" ) ; 12 POSITION CAMERA X, Y, Z
    DB_Camera\SetRotate= AIsFunction( 1 , "?SetRotate@@YAXMMM@Z" ) ; 13 ROTATE CAMERA XAngle, YAngle, ZAngle
    DB_Camera\SetFOV= AIsFunction( 1 , "?SetFOV@@YAXM@Z" ) ; 14 SET CAMERA FOV Field-Of-View Angle
    DB_Camera\SetRange= AIsFunction( 1 , "?SetRange@@YAXMM@Z" ) ; 15 SET CAMERA RANGE Near Value, Far Value
    DB_Camera\SetView= AIsFunction( 1 , "?SetView@@YAXHHHH@Z" ) ; 16 SET CAMERA VIEW Left, Top, Right, Bottom
    DB_Camera\SetRotationXYZ= AIsFunction( 1 , "?SetRotationXYZ@@YAXXZ" ) ; 17 SET CAMERA ROTATION XYZ 
    DB_Camera\SetRotationZYX= AIsFunction( 1 , "?SetRotationZYX@@YAXXZ" ) ; 18 SET CAMERA ROTATION ZYX 
    DB_Camera\Follow= AIsFunction( 1 , "?Follow@@YAXMMMMMMMH@Z" ) ; 19 SET CAMERA TO FOLLOW X, Y, Z, Angle, Distance, Height, Smooth, Collision
    DB_Camera\SetToObjectOrientation= AIsFunction( 1 , "?SetToObjectOrientation@@YAXH@Z" ) ; 20 SET CAMERA TO OBJECT ORIENTATION Object Number
    DB_Camera\SetXRotate= AIsFunction( 1 , "?SetXRotate@@YAXM@Z" ) ; 21 XROTATE CAMERA XAngle
    DB_Camera\SetYRotate= AIsFunction( 1 , "?SetYRotate@@YAXM@Z" ) ; 22 YROTATE CAMERA YAngle
    DB_Camera\SetZRotate= AIsFunction( 1 , "?SetZRotate@@YAXM@Z" ) ; 23 ZROTATE CAMERA ZAngle
    DB_Camera\GetXPositionEx= AIsFunction( 1 , "?GetXPositionEx@@YAKXZ" ) ; 24 CAMERA POSITION X 
    DB_Camera\GetYPositionEx= AIsFunction( 1 , "?GetYPositionEx@@YAKXZ" ) ; 25 CAMERA POSITION Y 
    DB_Camera\GetZPositionEx= AIsFunction( 1 , "?GetZPositionEx@@YAKXZ" ) ; 26 CAMERA POSITION Z 
    DB_Camera\GetXAngleEx= AIsFunction( 1 , "?GetXAngleEx@@YAKXZ" ) ; 27 CAMERA ANGLE X 
    DB_Camera\GetYAngleEx= AIsFunction( 1 , "?GetYAngleEx@@YAKXZ" ) ; 28 CAMERA ANGLE Y 
    DB_Camera\GetZAngleEx= AIsFunction( 1 , "?GetZAngleEx@@YAKXZ" ) ; 29 CAMERA ANGLE Z 
    DB_Camera\ClearViewEx= AIsFunction( 1 , "?ClearViewEx@@YAXHK@Z" ) ; 30 CLEAR CAMERA VIEW Camera Number, Color Value
    DB_Camera\Move1= AIsFunction( 1 , "?Move@@YAXHM@Z" ) ; 31 MOVE CAMERA Camera Number, Distance Value
    DB_Camera\PitchUp1= AIsFunction( 1 , "?PitchUp@@YAXHM@Z" ) ; 32 PITCH CAMERA UP Camera Number, Angle Value
    DB_Camera\BackdropOn= AIsFunction( 1 , "?BackdropOn@@YAXXZ" ) ; 33 BACKDROP ON 
    DB_Camera\BackdropOff= AIsFunction( 1 , "?BackdropOff@@YAXXZ" ) ; 34 BACKDROP OFF 
    DB_Camera\BackdropColor= AIsFunction( 1 , "?BackdropColor@@YAXK@Z" ) ; 35 COLOR BACKDROP Color Value
    DB_Camera\BackdropTexture= AIsFunction( 1 , "?BackdropTexture@@YAXH@Z" ) ; 36 TEXTURE BACKDROP Image Number
    DB_Camera\BackdropScroll= AIsFunction( 1 , "?BackdropScroll@@YAXHH@Z" ) ; 37 SCROLL BACKDROP U, V
    DB_Camera\CreateEx= AIsFunction( 1 , "?CreateEx@@YAXH@Z" ) ; 38 MAKE CAMERA Camera Number
    DB_Camera\DestroyEx= AIsFunction( 1 , "?DestroyEx@@YAXH@Z" ) ; 39 DELETE CAMERA Camera Number
    DB_Camera\SetCurrentCamera= AIsFunction( 1 , "?SetCurrentCamera@@YAXH@Z" ) ; 40 SET CURRENT CAMERA Camera Number
    DB_Camera\PitchDown1= AIsFunction( 1 , "?PitchDown@@YAXHM@Z" ) ; 41 PITCH CAMERA DOWN Camera Number, Angle Value
    DB_Camera\TurnLeft1= AIsFunction( 1 , "?TurnLeft@@YAXHM@Z" ) ; 42 TURN CAMERA LEFT Camera Number, Angle Value
    DB_Camera\TurnRight1= AIsFunction( 1 , "?TurnRight@@YAXHM@Z" ) ; 43 TURN CAMERA RIGHT Camera Number, Angle Value
    DB_Camera\RollLeft1= AIsFunction( 1 , "?RollLeft@@YAXHM@Z" ) ; 44 ROLL CAMERA LEFT Camera Number, Angle Value
    DB_Camera\RollRight1= AIsFunction( 1 , "?RollRight@@YAXHM@Z" ) ; 45 ROLL CAMERA RIGHT Camera Number, Angle Value
    DB_Camera\Point1= AIsFunction( 1 , "?Point@@YAXHMMM@Z" ) ; 46 POINT CAMERA Camera Number, X, Y, Z
    DB_Camera\Position1= AIsFunction( 1 , "?Position@@YAXHMMM@Z" ) ; 47 POSITION CAMERA Camera Number, X, Y, Z
    DB_Camera\SetRotate1= AIsFunction( 1 , "?SetRotate@@YAXHMMM@Z" ) ; 48 ROTATE CAMERA Camera Number, XAngle, YAngle, ZAngle
    DB_Camera\SetFOV1= AIsFunction( 1 , "?SetFOV@@YAXHM@Z" ) ; 49 SET CAMERA FOV Camera Number, Field-Of-View Angle
    DB_Camera\SetRange1= AIsFunction( 1 , "?SetRange@@YAXHMM@Z" ) ; 50 SET CAMERA RANGE Camera Number, Near Value, Far Value
    DB_Camera\SetView1= AIsFunction( 1 , "?SetView@@YAXHHHHH@Z" ) ; 51 SET CAMERA VIEW Camera Number, Left, Top, Right, Bottom
    DB_Camera\SetRotationXYZ1= AIsFunction( 1 , "?SetRotationXYZ@@YAXH@Z" ) ; 52 SET CAMERA ROTATION XYZ Camera Number
    DB_Camera\SetRotationZYX1= AIsFunction( 1 , "?SetRotationZYX@@YAXH@Z" ) ; 53 SET CAMERA ROTATION ZYX Camera Number
    DB_Camera\Follow1= AIsFunction( 1 , "?Follow@@YAXHMMMMMMMH@Z" ) ; 54 SET CAMERA TO FOLLOW Camera Number, X, Y, Z, Angle, Distance, Height, Smooth, Collision
    DB_Camera\SetToObjectOrientation1= AIsFunction( 1 , "?SetToObjectOrientation@@YAXHH@Z" ) ; 55 SET CAMERA TO OBJECT ORIENTATION Camera Number, Object Number
    DB_Camera\SetXRotate1= AIsFunction( 1 , "?SetXRotate@@YAXHM@Z" ) ; 56 XROTATE CAMERA Camera Number, XAngle
    DB_Camera\SetYRotate1= AIsFunction( 1 , "?SetYRotate@@YAXHM@Z" ) ; 57 YROTATE CAMERA Camera Number, YAngle
    DB_Camera\SetZRotate1= AIsFunction( 1 , "?SetZRotate@@YAXHM@Z" ) ; 58 ZROTATE CAMERA Camera Number, ZAngle
    DB_Camera\GetXPositionEx1= AIsFunction( 1 , "?GetXPositionEx@@YAKH@Z" ) ; 59 CAMERA POSITION X Camera Number
    DB_Camera\GetYPositionEx1= AIsFunction( 1 , "?GetYPositionEx@@YAKH@Z" ) ; 60 CAMERA POSITION Y Camera Number
    DB_Camera\GetZPositionEx1= AIsFunction( 1 , "?GetZPositionEx@@YAKH@Z" ) ; 61 CAMERA POSITION Z Camera Number
    DB_Camera\GetXAngleEx1= AIsFunction( 1 , "?GetXAngleEx@@YAKH@Z" ) ; 62 CAMERA ANGLE X Camera Number
    DB_Camera\GetYAngleEx1= AIsFunction( 1 , "?GetYAngleEx@@YAKH@Z" ) ; 63 CAMERA ANGLE Y Camera Number
    DB_Camera\GetZAngleEx1= AIsFunction( 1 , "?GetZAngleEx@@YAKH@Z" ) ; 64 CAMERA ANGLE Z Camera Number
    DB_Camera\BackdropOn1= AIsFunction( 1 , "?BackdropOn@@YAXH@Z" ) ; 65 BACKDROP ON Camera Number
    DB_Camera\BackdropOff1= AIsFunction( 1 , "?BackdropOff@@YAXH@Z" ) ; 66 BACKDROP OFF Camera Number
    DB_Camera\BackdropColor1= AIsFunction( 1 , "?BackdropColor@@YAXHK@Z" ) ; 67 COLOR BACKDROP Camera Number, Color Value
    DB_Camera\BackdropTexture1= AIsFunction( 1 , "?BackdropTexture@@YAXHH@Z" ) ; 68 TEXTURE BACKDROP Camera Number, Image Number
    DB_Camera\BackdropScroll1= AIsFunction( 1 , "?BackdropScroll@@YAXHHH@Z" ) ; 69 SCROLL BACKDROP Camera Number, U, V
    DB_Camera\SetCameraToImage= AIsFunction( 1 , "?SetCameraToImage@@YAXHHHH@Z" ) ; 70 SET CAMERA TO IMAGE Camera Number, Image Number, Width, Height
    DB_Camera\ControlWithArrowKeys= AIsFunction( 1 , "?ControlWithArrowKeys@@YAXHMM@Z" ) ; 71 CONTROL CAMERA USING ARROWKEYS Camera Number, MoveSpeed, TurnSpeed
    DB_Camera\SetPositionVector3= AIsFunction( 1 , "?SetPositionVector3@@YAXHH@Z" ) ; 72 POSITION CAMERA Camera Number, Vector
    DB_Camera\SetRotationVector3= AIsFunction( 1 , "?SetRotationVector3@@YAXHH@Z" ) ; 73 ROTATE CAMERA Camera Number, Vector
    DB_Camera\GetPositionVector3= AIsFunction( 1 , "?GetPositionVector3@@YAXHH@Z" ) ; 74 SET VECTOR3 TO CAMERA POSITION Vector, Camera Number
    DB_Camera\GetRotationVector3= AIsFunction( 1 , "?GetRotationVector3@@YAXHH@Z" ) ; 75 SET VECTOR3 TO CAMERA ROTATION Vector, Camera Number
    DB_Camera\SetAspect= AIsFunction( 1 , "?SetAspect@@YAXM@Z" ) ; 76 SET CAMERA ASPECT  Aspect Ratio
    DB_Camera\SetAspect1= AIsFunction( 1 , "?SetAspect@@YAXHM@Z" ) ; 77 SET CAMERA ASPECT Camera Number, Aspect Ratio
    DB_Camera\SetCameraToImageEx= AIsFunction( 1 , "?SetCameraToImageEx@@YAXHHHHH@Z" ) ; 78 SET CAMERA TO IMAGE Camera Number, Image Number, Width, Height, Generate Alpha
    DB_Camera\GetExistEx= AIsFunction( 1 , "?GetExistEx@@YAHH@Z" ) ; 79 CAMERA EXIST Camera Number
    DB_Camera\SetClip= AIsFunction( 1 , "?SetClip@@YAXHHMMMMMM@Z" ) ; 80 SET CAMERA CLIP Camera Number, ClipOnOff, X, Y, Z, NX, NY, NZ
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

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
  CallCFunctionFast( *DB_Camera\Move, DistanceValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchCameraUp( AngleValue.f )
  CallCFunctionFast( *DB_Camera\PitchUp, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchCameraDown( AngleValue.f )
  CallCFunctionFast( *DB_Camera\PitchDown, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnCameraLeft( AngleValue.f )
  CallCFunctionFast( *DB_Camera\TurnLeft, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnCameraRight( AngleValue.f )
  CallCFunctionFast( *DB_Camera\TurnRight, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBRollCameraLeft( AngleValue.f )
  CallCFunctionFast( *DB_Camera\RollLeft, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBRollCameraRight( AngleValue.f )
  CallCFunctionFast( *DB_Camera\RollRight, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPointCamera( X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Camera\Point, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionCamera( X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Camera\Position, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotation( XAngle.f, YAngle.f, ZAngle.f )
  CallCFunctionFast( *DB_Camera\SetRotate, XAngle, YAngle, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraFOV( FieldOfViewAngle.f )
  CallCFunctionFast( *DB_Camera\SetFOV, FieldOfViewAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRange( NearValue.f, FarValue.f )
  CallCFunctionFast( *DB_Camera\SetRange, NearValue, FarValue )
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
  CallCFunctionFast( *DB_Camera\Follow, X, Y, Z, Angle, Distance, Height, Smooth, Collision )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraToObjectOrientation( ObjectNumber.l )
  CallCFunctionFast( *DB_Camera\SetToObjectOrientation, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetXRotate( XAngle.f )
  CallCFunctionFast( *DB_Camera\SetXRotate, XAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetYRotate( YAngle.f )
  CallCFunctionFast( *DB_Camera\SetYRotate, YAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetZRotate( ZAngle.f )
  CallCFunctionFast( *DB_Camera\SetZRotate, ZAngle )
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
  CallCFunctionFast( *DB_Camera\Move1, CameraNumber, DistanceValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchCameraUp1( CameraNumber.l, AngleValue.f )
  CallCFunctionFast( *DB_Camera\PitchUp1, CameraNumber, AngleValue )
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
  CallCFunctionFast( *DB_Camera\PitchDown1, CameraNumber, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnCameraLeft1( CameraNumber.l, AngleValue.f )
  CallCFunctionFast( *DB_Camera\TurnLeft1, CameraNumber, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnCameraRight1( CameraNumber.l, AngleValue.f )
  CallCFunctionFast( *DB_Camera\TurnRight1, CameraNumber, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBRollCameraLeft1( CameraNumber.l, AngleValue.f )
  CallCFunctionFast( *DB_Camera\RollLeft1, CameraNumber, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBRollCameraRight1( CameraNumber.l, AngleValue.f )
  CallCFunctionFast( *DB_Camera\RollRight1, CameraNumber, AngleValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPointCamera1( CameraNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Camera\Point1, CameraNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionCamera1( CameraNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Camera\Position1, CameraNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRotation1( CameraNumber.l, XAngle.f, YAngle.f, ZAngle.f )
  CallCFunctionFast( *DB_Camera\SetRotate1, CameraNumber, XAngle, YAngle, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraFOV1( CameraNumber.l, FieldOfViewAngle.f )
  CallCFunctionFast( *DB_Camera\SetFOV1, CameraNumber, FieldOfViewAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraRange1( CameraNumber.l, NearValue.f, FarValue.f )
  CallCFunctionFast( *DB_Camera\SetRange1, CameraNumber, NearValue, FarValue )
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
  CallCFunctionFast( *DB_Camera\Follow1, CameraNumber, X, Y, Z, Angle, Distance, Height, Smooth, Collision )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCameraToObjectOrientation1( CameraNumber.l, ObjectNumber.l )
  CallCFunctionFast( *DB_Camera\SetToObjectOrientation1, CameraNumber, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetXRotate1( CameraNumber.l, XAngle.f )
  CallCFunctionFast( *DB_Camera\SetXRotate1, CameraNumber, XAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetYRotate1( CameraNumber.l, YAngle.f )
  CallCFunctionFast( *DB_Camera\SetYRotate1, CameraNumber, YAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetZRotate1( CameraNumber.l, ZAngle.f )
  CallCFunctionFast( *DB_Camera\SetZRotate1, CameraNumber, ZAngle )
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
  CallCFunctionFast( *DB_Camera\ControlWithArrowKeys, CameraNumber, MoveSpeed, TurnSpeed )
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
  CallCFunctionFast( *DB_Camera\SetAspect, AspectRatio )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAspect1( CameraNumber.l, AspectRatio.f )
  CallCFunctionFast( *DB_Camera\SetAspect1, CameraNumber, AspectRatio )
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
  CallCFunctionFast( *DB_Camera\SetClip, CameraNumber, ClipOnOff, X, Y, Z, NX, NY, NZ )
 EndProcedure
;

