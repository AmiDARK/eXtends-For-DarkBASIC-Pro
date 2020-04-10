; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBAddMatrix( Matrix4Result.l, Matrix4A.l, Matrix4B.l )
  CallCFunctionFast( *DB_Vectors\AddMatrix, Matrix4Result, Matrix4A, Matrix4B )
 EndProcedure
;
; *********************************************************************
Procedure DBAddVector2( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\AddVector2, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure DBAddVector3( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\AddVector3, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure DBAddVector4( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\AddVector4, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildLookAtLHMatrix( Matrix4Result.l, Vector3Eye.l, Vector3At.l, Vector3Up.l )
  CallCFunctionFast( *DB_Vectors\BuildLookAtLHMatrix, Matrix4Result, Vector3Eye, Vector3At, Vector3Up )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildLookAtRHMatrix( Matrix4Result.l, Vector3Eye.l, Vector3At.l, Vector3Up.l )
  CallCFunctionFast( *DB_Vectors\BuildLookAtRHMatrix, Matrix4Result, Vector3Eye, Vector3At, Vector3Up )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildOrthoLHMatrix( Matrix4Result.l, Width.f, Height.f, Near.f, Far.f )
  W.l = 0 : H.l = 0 : N.l = 0 : F.l = 0
  PokeF( @W, Width ) : PokeF( @H, Height ) : PokeF( @N, Near ) : PokeF( @F, Far )
  CallCFunctionFast( *DB_Vectors\BuildOrthoLHMatrix, Matrix4Result, W, H, N, F )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildOrthoRHMatrix( Matrix4Result.l, Width.f, Height.f, Near.f, Far.f )
  W.l = 0 : H.l = 0 : N.l = 0 : F.l = 0
  PokeF( @W, Width ) : PokeF( @H, Height ) : PokeF( @N, Near ) : PokeF( @F, Far )
  CallCFunctionFast( *DB_Vectors\BuildOrthoRHMatrix, Matrix4Result, W, H, N, F )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildPerspectiveFovLHMatrix( Matrix4Result.l, FOV.f, Aspect.f, Near.f, Far.f )
  FO.l = 0 : A.l = 0 : N.l = 0 : F.l = 0
  PokeF( @FO, FOV ) : PokeF( @A, Aspect ) : PokeF( @N, Near ) : PokeF( @F, Far )
  CallCFunctionFast( *DB_Vectors\BuildPerspectiveFovLHMatrix, Matrix4Result, FO, A, N, F )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildPerspectiveFovRHMatrix( Matrix4Result.l, FOV.f, Aspect.f, Near.f, Far.f )
  FO.l = 0 : A.l = 0 : N.l = 0 : F.l = 0
  PokeF( @FO, FOV ) : PokeF( @A, Aspect ) : PokeF( @N, Near ) : PokeF( @F, Far )
  CallCFunctionFast( *DB_Vectors\BuildPerspectiveFovRHMatrix, Matrix4Result, FO, A, N, F )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildPerspectiveLHMatrix( Matrix4Result.l, Width.f, Height.f, Near.f, Far.f )
  W.l = 0 : H.l = 0 : N.l = 0 : F.l = 0
  PokeF( @W, Width ) : PokeF( @H, Height ) : PokeF( @N, Near ) : PokeF( @F, Far )
  CallCFunctionFast( *DB_Vectors\BuildPerspectiveLHMatrix, Matrix4Result, W, H, N, F )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildPerspectiveRHMatrix( Matrix4Result.l, Width.f, Height.f, Near.f, Far.f )
  W.l = 0 : H.l = 0 : N.l = 0 : F.l = 0
  PokeF( @W, Width ) : PokeF( @H, Height ) : PokeF( @N, Near ) : PokeF( @F, Far )
  CallCFunctionFast( *DB_Vectors\BuildPerspectiveRHMatrix, Matrix4Result, W, H, N, F )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildReflectionMatrix( Matrix4Result.l, PlaneA.f, PlaneB.f, PlaneC.f, PlaneD.f )
  PA.l = 0 : PB.l = 0 : PC.l = 0 : PD.l = 0
  PokeF( @PA, PlaneA ) : PokeF( @PB, PlaneB ) : PokeF( @PC, PlaneC ) : PokeF( @PD, PlaneD )
  CallCFunctionFast( *DB_Vectors\BuildReflectionMatrix, Matrix4Result, PA, PB, PC, PD )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildRotationAxisMatrix( Matrix4Result.l, Vector3Axis.l, Angle.f )
  A.l = 0 : PokeF( @A, Angle )
  CallCFunctionFast( *DB_Vectors\BuildRotationAxisMatrix, Matrix4Result, Vector3Axis, A )
 EndProcedure
;
; *********************************************************************
Procedure DBCatmullRomVector2( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, VectorD.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\CatmullRomVector2, VectorResult, VectorA, VectorB, VectorC, VectorD, V )
 EndProcedure
;
; *********************************************************************
Procedure DBCatmullRomVector3( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, VectorD.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\CatmullRomVector3, VectorResult, VectorA, VectorB, VectorC, VectorD, V )
 EndProcedure
;
; *********************************************************************
Procedure DBCatmullRomVector4( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, VectorD.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\CatmullRomVector4, VectorResult, VectorA, VectorB, VectorC, VectorD, V )
 EndProcedure
;
; *********************************************************************
Procedure DBCopyMatrix( Matrix4Result.l, Matrix4Source.l )
  CallCFunctionFast( *DB_Vectors\CopyMatrix, Matrix4Result, Matrix4Source )
 EndProcedure
;
; *********************************************************************
Procedure DBCopyVector2( VectorResult.l, VectorSource.l )
  CallCFunctionFast( *DB_Vectors\CopyVector2, VectorResult, VectorSource )
 EndProcedure
;
; *********************************************************************
Procedure DBCopyVector3( VectorResult.l, VectorSource.l )
  CallCFunctionFast( *DB_Vectors\CopyVector3, VectorResult, VectorSource )
 EndProcedure
;
; *********************************************************************
Procedure DBCopyVector4( VectorResult.l, VectorSource.l )
  CallCFunctionFast( *DB_Vectors\CopyVector4, VectorResult, VectorSource )
 EndProcedure
;
; *********************************************************************
Procedure DBCrossProductVector3( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\CrossProductVector3, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure.l DBDeleteMatrix( Matrix4Result.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\DeleteMatrix, Matrix4Result )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBDeleteVector2( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\DeleteVector2, Vector )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBDeleteVector3( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\DeleteVector3, Vector )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBDeleteVector4( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\DeleteVector4, Vector )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBDivideMatrix( Matrix4Result.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\DivideMatrix, Matrix4Result, V )
 EndProcedure
;
; *********************************************************************
Procedure DBDivideVector2( VectorResult.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\DivideVector2, VectorResult, V )
 EndProcedure
;
; *********************************************************************
Procedure DBDivideVector3( VectorResult.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\DivideVector3, VectorResult, V )
 EndProcedure
;
; *********************************************************************
Procedure DBDivideVector4( VectorResult.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\DivideVector4, VectorResult, V )
 EndProcedure
;
; *********************************************************************
Procedure.f DBDotProductVector2( VectorA.l, VectorB.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\DotProductVector2, VectorA, VectorB )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBDotProductVector3( VectorA.l, VectorB.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\DotProductVector3, VectorA, VectorB )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBGetBaryCentricCoordinatesVector2( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, FValue.f, GBValue.f )
  FV.l = 0 : GBV.l = 0
  PokeF( @FV, FValue ) : PokeF( @GBV, GBValue )
  CallCFunctionFast( *DB_Vectors\GetBaryCentricCoordinatesVector2, VectorResult, VectorA, VectorB, VectorC, FV, GBV )
 EndProcedure
;
; *********************************************************************
Procedure DBGetBaryCentricCoordinatesVector3( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, FValue.f, GBValue.f )
  FV.l = 0 : GBV.l = 0
  PokeF( @FV, FValue ) : PokeF( @GBV, GBValue )
  CallCFunctionFast( *DB_Vectors\GetBaryCentricCoordinatesVector3, VectorResult, VectorA, VectorB, VectorC, FV, GBV )
 EndProcedure
;
; *********************************************************************
Procedure DBGetBaryCentricCoordinatesVector4( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, FValue.f, GBValue.f )
  FV.l = 0 : GBV.l = 0
  PokeF( @FV, FValue ) : PokeF( @GBV, GBValue )
  CallCFunctionFast( *DB_Vectors\GetBaryCentricCoordinatesVector4, VectorResult, VectorA, VectorB, VectorC, FV, GBV )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetCCWVector2( VectorA.l, VectorB.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetCCWVector2, VectorA, VectorB )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLengthSquaredVector2( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetLengthSquaredVector2, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLengthSquaredVector3( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetLengthSquaredVector3, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLengthSquaredVector4( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetLengthSquaredVector4, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLengthVector2( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetLengthVector2, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLengthVector3( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetLengthVector3, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLengthVector4( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetLengthVector4, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBGetProjectionMatrix( Matrix4Result.l )
  CallCFunctionFast( *DB_Vectors\GetProjectionMatrix, Matrix4Result )
 EndProcedure
;
; *********************************************************************
Procedure DBGetViewMatrix( Matrix4Result.l )
  CallCFunctionFast( *DB_Vectors\GetViewMatrix, Matrix4Result )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetWVector4( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetWVector4, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBGetWorldMatrix( Matrix4Result.l )
  CallCFunctionFast( *DB_Vectors\GetWorldMatrix, Matrix4Result )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetXVector2( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetXVector2, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetXVector3( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetXVector3, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetXVector4( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetXVector4, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetYVector2( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetYVector2, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetYVector3( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetYVector3, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetYVector4( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetYVector4, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetZVector3( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetZVector3, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetZVector4( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\GetZVector4, Vector )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBHermiteVector2( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, VectorD.l, SValue.f )
  SV.l = 0 : PokeF( @SV, SValue )
  CallCFunctionFast( *DB_Vectors\HermiteVector2, VectorResult, VectorA, VectorB, VectorC, VectorD, SV )
 EndProcedure
;
; *********************************************************************
Procedure DBHermiteVector3( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, VectorD.l, SValue.f )
  SV.l = 0 : PokeF( @SV, SValue )
  CallCFunctionFast( *DB_Vectors\HermiteVector3, VectorResult, VectorA, VectorB, VectorC, VectorD, SV )
 EndProcedure
;
; *********************************************************************
Procedure DBHermiteVector4( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, VectorD.l, SValue.f )
  SV.l = 0 : PokeF( @SV, SValue )
  CallCFunctionFast( *DB_Vectors\HermiteVector4, VectorResult, VectorA, VectorB, VectorC, VectorD, SV )
 EndProcedure
;
; *********************************************************************
Procedure.f DBInverseMatrix( Matrix4Result.l, Matrix4Source.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\InverseMatrix, Matrix4Result, Matrix4Source )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBIsEqualMatrix( Matrix4A.l, Matrix4B.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\IsEqualMatrix, Matrix4A, Matrix4B )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBIsEqualVector2( VectorA.l, VectorB.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\IsEqualVector2, VectorA, VectorB )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBIsEqualVector3( VectorA.l, VectorB.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\IsEqualVector3, VectorA, VectorB )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBIsEqualVector4( VectorA.l, VectorB.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\IsEqualVector4, VectorA, VectorB )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBIsIdentityMatrix( Matrix4Result.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\IsIdentityMatrix, Matrix4Result )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBLinearInterpolationVector2( VectorResult.l, VectorA.l, VectorB.l, SValue.f )
  SV.l = 0 : PokeF( @SV, SValue )
  CallCFunctionFast( *DB_Vectors\LinearInterpolationVector2, VectorResult, VectorA, VectorB, SV )
 EndProcedure
;
; *********************************************************************
Procedure DBLinearInterpolationVector3( VectorResult.l, VectorA.l, VectorB.l, SValue.f )
  SV.l = 0 : PokeF( @SV, SValue )
  CallCFunctionFast( *DB_Vectors\LinearInterpolationVector3, VectorResult, VectorA, VectorB, SV )
 EndProcedure
;
; *********************************************************************
Procedure DBLinearInterpolationVector4( VectorResult.l, VectorA.l, VectorB.l, SValue.f )
  SV.l = 0 : PokeF( @SV, SValue )
  CallCFunctionFast( *DB_Vectors\LinearInterpolationVector4, VectorResult, VectorA, VectorB, SV )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMakeVectorMatrix( Matrix4.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\MakeMatrix, Matrix4 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMakeVector2( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\MakeVector2, Vector )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMakeVector3( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\MakeVector3, Vector )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMakeVector4( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\MakeVector4, Vector )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMaximizeVector2( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\MaximizeVector2, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure DBMaximizeVector3( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\MaximizeVector3, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure DBMaximizeVector4( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\MaximizeVector4, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure DBMinimizeVector2( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\MinimizeVector2, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure DBMinimizeVector3( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\MinimizeVector3, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure DBMinimizeVector4( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\MinimizeVector4, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplyMatrix( Matrix4Result.l, Matrix4A.l, Matrix4B.l )
  CallCFunctionFast( *DB_Vectors\MultiplyMatrix, Matrix4Result, Matrix4A, Matrix4B )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplyMatrix1( Matrix4Result.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\MultiplyMatrix1, Matrix4Result, V )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplyVector2( VectorResult.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\MultiplyVector2, VectorResult, V )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplyVector3( VectorResult.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\MultiplyVector3, VectorResult, V )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplyVector4( VectorResult.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\MultiplyVector4, VectorResult, V )
 EndProcedure
;
; *********************************************************************
Procedure DBNormalizeVector2( VectorResult.l, VectorSource.l )
  CallCFunctionFast( *DB_Vectors\NormalizeVector2, VectorResult, VectorSource )
 EndProcedure
;
; *********************************************************************
Procedure DBNormalizeVector3( VectorResult.l, VectorSource.l )
  CallCFunctionFast( *DB_Vectors\NormalizeVector3, VectorResult, VectorSource )
 EndProcedure
;
; *********************************************************************
Procedure DBNormalizeVector4( VectorResult.l, VectorSource.l )
  CallCFunctionFast( *DB_Vectors\NormalizeVector4, VectorResult, VectorSource )
 EndProcedure
;
; *********************************************************************
Procedure DBProjectVector3( VectorResult.l, VectorSource.l, Matrix4Projection.l, Matrix4View.l, Matrix4World.l )
  CallCFunctionFast( *DB_Vectors\ProjectVector3, VectorResult, VectorSource, Matrix4Projection, Matrix4View, Matrix4World )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateXMatrix( Matrix4Result.l, Angle.f )
  A.l = 0 : PokeF( @A, Angle )
  CallCFunctionFast( *DB_Vectors\RotateXMatrix, Matrix4Result, A )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateYMatrix( Matrix4Result.l, Angle.f )
  A.l = 0 : PokeF( @A, Angle )
  CallCFunctionFast( *DB_Vectors\RotateYMatrix, Matrix4Result, A )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateYawPitchRollMatrix( Matrix4Result.l, Yaw.f, Pitch.f, Roll.f )
  Y.l = 0 : P.l = 0 : R.l = 0
  PokeF( @Y, Yaw ) : PokeF( @P, Pitch ) : PokeF( @R, Roll )
  CallCFunctionFast( *DB_Vectors\RotateYawPitchRollMatrix, Matrix4Result, Y, P, R )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateZMatrix( Matrix4Result.l, Angle.f )
  A.l = 0 : PokeF( @A, Angle )
  CallCFunctionFast( *DB_Vectors\RotateZMatrix, Matrix4Result, A )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleMatrix( Matrix4Result.l, X.f, Y.f, Z.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  CallCFunctionFast( *DB_Vectors\ScaleMatrix, Matrix4Result, X1, Y1, Z1 )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleVector2( VectorResult.l, VectorSource.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\ScaleVector2, VectorResult, VectorSource, V )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleVector3( VectorResult.l, VectorSource.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\ScaleVector3, VectorResult, VectorSource, V )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleVector4( VectorResult.l, VectorSource.l, Value.f )
  V.l = 0 : PokeF( @V, Value )
  CallCFunctionFast( *DB_Vectors\ScaleVector4, VectorResult, VectorSource, V )
 EndProcedure
;
; *********************************************************************
Procedure DBSetIdentityMatrix( Matrix4Result.l )
  CallCFunctionFast( *DB_Vectors\SetIdentityMatrix, Matrix4Result )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVector2( VectorResult.l, X.f, Y.f )
  X1.l = 0 : Y1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y )
  CallCFunctionFast( *DB_Vectors\SetVector2, VectorResult, X1, Y1 )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVector3( VectorResult.l, X.f, Y.f, Z.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  CallCFunctionFast( *DB_Vectors\SetVector3, VectorResult, X1, Y1, Z1 )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVector4( VectorResult.l, X.f, Y.f, Z.f, W.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0 : W1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z ) : PokeF( @W1, W )
  CallCFunctionFast( *DB_Vectors\SetVector4, VectorResult, X1, Y1, Z1, W1 )
 EndProcedure
;
; *********************************************************************
Procedure DBSubtractMatrix( Matrix4Result.l, Matrix4A.l, Matrix4B.l )
  CallCFunctionFast( *DB_Vectors\SubtractMatrix, Matrix4Result, Matrix4A, Matrix4B )
 EndProcedure
;
; *********************************************************************
Procedure DBSubtractVector2( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\SubtractVector2, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure DBSubtractVector3( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\SubtractVector3, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure DBSubtractVector4( VectorResult.l, VectorA.l, VectorB.l )
  CallCFunctionFast( *DB_Vectors\SubtractVector4, VectorResult, VectorA, VectorB )
 EndProcedure
;
; *********************************************************************
Procedure DBTransformVector4( VectorResult.l, VectorSource.l, Matrix4Source.l )
  CallCFunctionFast( *DB_Vectors\TransformVector4, VectorResult, VectorSource, Matrix4Source )
 EndProcedure
;
; *********************************************************************
Procedure DBTransformVectorCoordinates2( VectorResult.l, VectorSource.l, Matrix4Source.l )
  CallCFunctionFast( *DB_Vectors\TransformVectorCoordinates2, VectorResult, VectorSource, Matrix4Source )
 EndProcedure
;
; *********************************************************************
Procedure DBTransformVectorCoordinates3( VectorResult.l, VectorSource.l, Matrix4Source.l )
  CallCFunctionFast( *DB_Vectors\TransformVectorCoordinates3, VectorResult, VectorSource, Matrix4Source )
 EndProcedure
;
; *********************************************************************
Procedure DBTransformVectorNormalCoordinates3( VectorResult.l, VectorSource.l, Matrix4Source.l )
  CallCFunctionFast( *DB_Vectors\TransformVectorNormalCoordinates3, VectorResult, VectorSource, Matrix4Source )
 EndProcedure
;
; *********************************************************************
Procedure DBTranslateMatrix( Matrix4Result.l, X.f, Y.f, Z.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  CallCFunctionFast( *DB_Vectors\TranslateMatrix, Matrix4Result, X1, Y1, Z1 )
 EndProcedure
;
; *********************************************************************
Procedure DBTransposeMatrix( Matrix4Result.l, Matrix4Source.l )
  CallCFunctionFast( *DB_Vectors\TransposeMatrix, Matrix4Result, Matrix4Source )
 EndProcedure
;

; IDE Options = PureBasic 4.61 (Windows - x86)
; CursorPosition = 637
; FirstLine = 589
; Folding = ------------------