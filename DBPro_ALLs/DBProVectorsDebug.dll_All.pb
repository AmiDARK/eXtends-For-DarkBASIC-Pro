; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_VectorsStruct
  AddMatrix.l : AddVector2.l : AddVector3.l : AddVector4.l
  BuildLookAtLHMatrix.l : BuildLookAtRHMatrix.l : BuildOrthoLHMatrix.l : BuildOrthoRHMatrix.l
  BuildPerspectiveFovLHMatrix.l : BuildPerspectiveFovRHMatrix.l : BuildPerspectiveLHMatrix.l : BuildPerspectiveRHMatrix.l
  BuildReflectionMatrix.l : BuildRotationAxisMatrix.l : CatmullRomVector2.l : CatmullRomVector3.l
  CatmullRomVector4.l : CopyMatrix.l : CopyVector2.l : CopyVector3.l
  CopyVector4.l : CrossProductVector3.l : DeleteMatrix.l : DeleteVector2.l
  DeleteVector3.l : DeleteVector4.l : DivideMatrix.l : DivideVector2.l
  DivideVector3.l : DivideVector4.l : DotProductVector2.l : DotProductVector3.l
  GetBaryCentricCoordinatesVector2.l : GetBaryCentricCoordinatesVector3.l : GetBaryCentricCoordinatesVector4.l : GetCCWVector2.l
  GetLengthSquaredVector2.l : GetLengthSquaredVector3.l : GetLengthSquaredVector4.l : GetLengthVector2.l
  GetLengthVector3.l : GetLengthVector4.l : GetProjectionMatrix.l : GetViewMatrix.l
  GetWVector4.l : GetWorldMatrix.l : GetXVector2.l : GetXVector3.l
  GetXVector4.l : GetYVector2.l : GetYVector3.l : GetYVector4.l
  GetZVector3.l : GetZVector4.l : HermiteVector2.l : HermiteVector3.l
  HermiteVector4.l : InverseMatrix.l : IsEqualMatrix.l : IsEqualVector2.l
  IsEqualVector3.l : IsEqualVector4.l : IsIdentityMatrix.l : LinearInterpolationVector2.l
  LinearInterpolationVector3.l : LinearInterpolationVector4.l : MakeMatrix.l : MakeVector2.l
  MakeVector3.l : MakeVector4.l : MaximizeVector2.l : MaximizeVector3.l
  MaximizeVector4.l : MinimizeVector2.l : MinimizeVector3.l : MinimizeVector4.l
  MultiplyMatrix.l : MultiplyMatrix1.l : MultiplyVector2.l : MultiplyVector3.l
  MultiplyVector4.l : NormalizeVector2.l : NormalizeVector3.l : NormalizeVector4.l
  ProjectVector3.l : RotateXMatrix.l : RotateYMatrix.l : RotateYawPitchRollMatrix.l
  RotateZMatrix.l : ScaleMatrix.l : ScaleVector2.l : ScaleVector3.l
  ScaleVector4.l : SetIdentityMatrix.l : SetVector2.l : SetVector3.l
  SetVector4.l : SubtractMatrix.l : SubtractVector2.l : SubtractVector3.l
  SubtractVector4.l : TransformVector4.l : TransformVectorCoordinates2.l : TransformVectorCoordinates3.l
  TransformVectorNormalCoordinates3.l : TranslateMatrix.l : TransposeMatrix.l : 
 EndStructure

Procedure.l CheckVectors()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProVectorsDebug.dll")
    DB_Vectors\AddMatrix= AIsFunction( 1 , "?AddMatrix@@YAXHHH@Z" ) ; 1 ADD MATRIX4 Matrix4Result, Matrix4A, Matrix4B
    DB_Vectors\AddVector2= AIsFunction( 1 , "?AddVector2@@YAXHHH@Z" ) ; 2 ADD VECTOR2 VectorResult, VectorA, VectorB
    DB_Vectors\AddVector3= AIsFunction( 1 , "?AddVector3@@YAXHHH@Z" ) ; 3 ADD VECTOR3 VectorResult, VectorA, VectorB
    DB_Vectors\AddVector4= AIsFunction( 1 , "?AddVector4@@YAXHHH@Z" ) ; 4 ADD VECTOR4 VectorResult, VectorA, VectorB
    DB_Vectors\BuildLookAtLHMatrix= AIsFunction( 1 , "?BuildLookAtLHMatrix@@YAXHHHH@Z" ) ; 5 BUILD LOOKAT LHMATRIX4 Matrix4Result, Vector3Eye, Vector3At, Vector3Up
    DB_Vectors\BuildLookAtRHMatrix= AIsFunction( 1 , "?BuildLookAtRHMatrix@@YAXHHHH@Z" ) ; 6 BUILD LOOKAT RHMATRIX4 Matrix4Result, Vector3Eye, Vector3At, Vector3Up
    DB_Vectors\BuildOrthoLHMatrix= AIsFunction( 1 , "?BuildOrthoLHMatrix@@YAXHMMMM@Z" ) ; 7 BUILD ORTHO LHMATRIX4 Matrix4Result, Width, Height, Near, Far
    DB_Vectors\BuildOrthoRHMatrix= AIsFunction( 1 , "?BuildOrthoRHMatrix@@YAXHMMMM@Z" ) ; 8 BUILD ORTHO RHMATRIX4 Matrix4Result, Width, Height, Near, Far
    DB_Vectors\BuildPerspectiveFovLHMatrix= AIsFunction( 1 , "?BuildPerspectiveFovLHMatrix@@YAXHMMMM@Z" ) ; 9 BUILD FOV LHMATRIX4 Matrix4Result, FOV, Aspect, Near, Far
    DB_Vectors\BuildPerspectiveFovRHMatrix= AIsFunction( 1 , "?BuildPerspectiveFovRHMatrix@@YAXHMMMM@Z" ) ; 10 BUILD FOV RHMATRIX4 Matrix4Result, FOV, Aspect, Near, Far
    DB_Vectors\BuildPerspectiveLHMatrix= AIsFunction( 1 , "?BuildPerspectiveLHMatrix@@YAXHMMMM@Z" ) ; 11 BUILD PERSPECTIVE LHMATRIX4 Matrix4Result, Width, Height, Near, Far
    DB_Vectors\BuildPerspectiveRHMatrix= AIsFunction( 1 , "?BuildPerspectiveRHMatrix@@YAXHMMMM@Z" ) ; 12 BUILD PERSPECTIVE RHMATRIX4 Matrix4Result, Width, Height, Near, Far
    DB_Vectors\BuildReflectionMatrix= AIsFunction( 1 , "?BuildReflectionMatrix@@YAXHMMMM@Z" ) ; 13 BUILD REFLECTION MATRIX4 Matrix4Result, PlaneA, PlaneB, PlaneC, PlaneD
    DB_Vectors\BuildRotationAxisMatrix= AIsFunction( 1 , "?BuildRotationAxisMatrix@@YAXHHM@Z" ) ; 14 BUILD ROTATION AXIS MATRIX4 Matrix4Result, Vector3Axis, Angle
    DB_Vectors\CatmullRomVector2= AIsFunction( 1 , "?CatmullRomVector2@@YAXHHHHHM@Z" ) ; 15 CATMULLROM VECTOR2 VectorResult, VectorA, VectorB, VectorC, VectorD, Value
    DB_Vectors\CatmullRomVector3= AIsFunction( 1 , "?CatmullRomVector3@@YAXHHHHHM@Z" ) ; 16 CATMULLROM VECTOR3 VectorResult, VectorA, VectorB, VectorC, VectorD, Value
    DB_Vectors\CatmullRomVector4= AIsFunction( 1 , "?CatmullRomVector4@@YAXHHHHHM@Z" ) ; 17 CATMULLROM VECTOR4 VectorResult, VectorA, VectorB, VectorC, VectorD, Value
    DB_Vectors\CopyMatrix= AIsFunction( 1 , "?CopyMatrix@@YAXHH@Z" ) ; 19 COPY MATRIX4 Matrix4Result, Matrix4Source
    DB_Vectors\CopyVector2= AIsFunction( 1 , "?CopyVector2@@YAXHH@Z" ) ; 20 COPY VECTOR2 VectorResult, VectorSource
    DB_Vectors\CopyVector3= AIsFunction( 1 , "?CopyVector3@@YAXHH@Z" ) ; 21 COPY VECTOR3 VectorResult, VectorSource
    DB_Vectors\CopyVector4= AIsFunction( 1 , "?CopyVector4@@YAXHH@Z" ) ; 22 COPY VECTOR4 VectorResult, VectorSource
    DB_Vectors\CrossProductVector3= AIsFunction( 1 , "?CrossProductVector3@@YAXHHH@Z" ) ; 23 CROSS PRODUCT VECTOR3 VectorResult, VectorA, VectorB
    DB_Vectors\DeleteMatrix= AIsFunction( 1 , "?DeleteMatrix@@YAHH@Z" ) ; 24 DELETE MATRIX4 Matrix4Result
    DB_Vectors\DeleteVector2= AIsFunction( 1 , "?DeleteVector2@@YAHH@Z" ) ; 25 DELETE VECTOR2 Vector
    DB_Vectors\DeleteVector3= AIsFunction( 1 , "?DeleteVector3@@YAHH@Z" ) ; 26 DELETE VECTOR3 Vector
    DB_Vectors\DeleteVector4= AIsFunction( 1 , "?DeleteVector4@@YAHH@Z" ) ; 27 DELETE VECTOR4 Vector
    DB_Vectors\DivideMatrix= AIsFunction( 1 , "?DivideMatrix@@YAXHM@Z" ) ; 29 DIVIDE MATRIX4 Matrix4Result, Value
    DB_Vectors\DivideVector2= AIsFunction( 1 , "?DivideVector2@@YAXHM@Z" ) ; 30 DIVIDE VECTOR2 VectorResult, Value
    DB_Vectors\DivideVector3= AIsFunction( 1 , "?DivideVector3@@YAXHM@Z" ) ; 31 DIVIDE VECTOR3 VectorResult, Value
    DB_Vectors\DivideVector4= AIsFunction( 1 , "?DivideVector4@@YAXHM@Z" ) ; 32 DIVIDE VECTOR4 VectorResult, Value
    DB_Vectors\DotProductVector2= AIsFunction( 1 , "?DotProductVector2@@YAKHH@Z" ) ; 33 DOT PRODUCT VECTOR2 VectorA, VectorB
    DB_Vectors\DotProductVector3= AIsFunction( 1 , "?DotProductVector3@@YAKHH@Z" ) ; 34 DOT PRODUCT VECTOR3 VectorA, VectorB
    DB_Vectors\GetBaryCentricCoordinatesVector2= AIsFunction( 1 , "?GetBaryCentricCoordinatesVector2@@YAXHHHHMM@Z" ) ; 35 BCC VECTOR2 VectorResult, VectorA, VectorB, VectorC, FValue, GBValue
    DB_Vectors\GetBaryCentricCoordinatesVector3= AIsFunction( 1 , "?GetBaryCentricCoordinatesVector3@@YAXHHHHMM@Z" ) ; 36 BCC VECTOR3 VectorResult, VectorA, VectorB, VectorC, FValue, GBValue
    DB_Vectors\GetBaryCentricCoordinatesVector4= AIsFunction( 1 , "?GetBaryCentricCoordinatesVector4@@YAXHHHHMM@Z" ) ; 37 BCC VECTOR4 VectorResult, VectorA, VectorB, VectorC, FValue, GBValue
    DB_Vectors\GetCCWVector2= AIsFunction( 1 , "?GetCCWVector2@@YAKHH@Z" ) ; 38 CCW VECTOR2 VectorA, VectorB
    DB_Vectors\GetLengthSquaredVector2= AIsFunction( 1 , "?GetLengthSquaredVector2@@YAKH@Z" ) ; 39 SQUARED LENGTH VECTOR2 Vector
    DB_Vectors\GetLengthSquaredVector3= AIsFunction( 1 , "?GetLengthSquaredVector3@@YAKH@Z" ) ; 40 SQUARED LENGTH VECTOR3 Vector
    DB_Vectors\GetLengthSquaredVector4= AIsFunction( 1 , "?GetLengthSquaredVector4@@YAKH@Z" ) ; 42 SQUARED LENGTH VECTOR4 Vector
    DB_Vectors\GetLengthVector2= AIsFunction( 1 , "?GetLengthVector2@@YAKH@Z" ) ; 43 LENGTH VECTOR2 Vector
    DB_Vectors\GetLengthVector3= AIsFunction( 1 , "?GetLengthVector3@@YAKH@Z" ) ; 44 LENGTH VECTOR3 Vector
    DB_Vectors\GetLengthVector4= AIsFunction( 1 , "?GetLengthVector4@@YAKH@Z" ) ; 45 LENGTH VECTOR4 Vector
    DB_Vectors\GetProjectionMatrix= AIsFunction( 1 , "?GetProjectionMatrix@@YAXH@Z" ) ; 46 PROJECTION MATRIX4 Matrix4Result
    DB_Vectors\GetViewMatrix= AIsFunction( 1 , "?GetViewMatrix@@YAXH@Z" ) ; 47 VIEW MATRIX4 Matrix4Result
    DB_Vectors\GetWVector4= AIsFunction( 1 , "?GetWVector4@@YAKH@Z" ) ; 48 W VECTOR4 Vector
    DB_Vectors\GetWorldMatrix= AIsFunction( 1 , "?GetWorldMatrix@@YAXH@Z" ) ; 49 WORLD MATRIX4 Matrix4Result
    DB_Vectors\GetXVector2= AIsFunction( 1 , "?GetXVector2@@YAKH@Z" ) ; 50 X VECTOR2 Vector
    DB_Vectors\GetXVector3= AIsFunction( 1 , "?GetXVector3@@YAKH@Z" ) ; 51 X VECTOR3 Vector
    DB_Vectors\GetXVector4= AIsFunction( 1 , "?GetXVector4@@YAKH@Z" ) ; 52 X VECTOR4 Vector
    DB_Vectors\GetYVector2= AIsFunction( 1 , "?GetYVector2@@YAKH@Z" ) ; 53 Y VECTOR2 Vector
    DB_Vectors\GetYVector3= AIsFunction( 1 , "?GetYVector3@@YAKH@Z" ) ; 54 Y VECTOR3 Vector
    DB_Vectors\GetYVector4= AIsFunction( 1 , "?GetYVector4@@YAKH@Z" ) ; 55 Y VECTOR4 Vector
    DB_Vectors\GetZVector3= AIsFunction( 1 , "?GetZVector3@@YAKH@Z" ) ; 56 Z VECTOR3 Vector
    DB_Vectors\GetZVector4= AIsFunction( 1 , "?GetZVector4@@YAKH@Z" ) ; 57 Z VECTOR4 Vector
    DB_Vectors\HermiteVector2= AIsFunction( 1 , "?HermiteVector2@@YAXHHHHHM@Z" ) ; 58 HERMITE VECTOR2 VectorResult, VectorA, VectorB, VectorC, VectorD, SValue
    DB_Vectors\HermiteVector3= AIsFunction( 1 , "?HermiteVector3@@YAXHHHHHM@Z" ) ; 59 HERMITE VECTOR3 VectorResult, VectorA, VectorB, VectorC, VectorD, SValue
    DB_Vectors\HermiteVector4= AIsFunction( 1 , "?HermiteVector4@@YAXHHHHHM@Z" ) ; 60 HERMITE VECTOR4 VectorResult, VectorA, VectorB, VectorC, VectorD, SValue
    DB_Vectors\InverseMatrix= AIsFunction( 1 , "?InverseMatrix@@YAKHH@Z" ) ; 61 INVERSE MATRIX4 Matrix4Result, Matrix4Source
    DB_Vectors\IsEqualMatrix= AIsFunction( 1 , "?IsEqualMatrix@@YAHHH@Z" ) ; 62 IS EQUAL MATRIX4 Matrix4A, Matrix4B
    DB_Vectors\IsEqualVector2= AIsFunction( 1 , "?IsEqualVector2@@YAHHH@Z" ) ; 63 IS EQUAL VECTOR2 VectorA, VectorB
    DB_Vectors\IsEqualVector3= AIsFunction( 1 , "?IsEqualVector3@@YAHHH@Z" ) ; 64 IS EQUAL VECTOR3 VectorA, VectorB
    DB_Vectors\IsEqualVector4= AIsFunction( 1 , "?IsEqualVector4@@YAHHH@Z" ) ; 65 IS EQUAL VECTOR4 VectorA, VectorB
    DB_Vectors\IsIdentityMatrix= AIsFunction( 1 , "?IsIdentityMatrix@@YAHH@Z" ) ; 66 IS IDENTITY MATRIX4 Matrix4Result
    DB_Vectors\LinearInterpolationVector2= AIsFunction( 1 , "?LinearInterpolationVector2@@YAXHHHM@Z" ) ; 71 LINEAR INTERPOLATE VECTOR2 VectorResult, VectorA, VectorB, SValue
    DB_Vectors\LinearInterpolationVector3= AIsFunction( 1 , "?LinearInterpolationVector3@@YAXHHHM@Z" ) ; 72 LINEAR INTERPOLATE VECTOR3 VectorResult, VectorA, VectorB, SValue
    DB_Vectors\LinearInterpolationVector4= AIsFunction( 1 , "?LinearInterpolationVector4@@YAXHHHM@Z" ) ; 73 LINEAR INTERPOLATE VECTOR4 VectorResult, VectorA, VectorB, SValue
    DB_Vectors\MakeMatrix= AIsFunction( 1 , "?MakeMatrix@@YAHH@Z" ) ; 74 MAKE MATRIX4 Matrix4
    DB_Vectors\MakeVector2= AIsFunction( 1 , "?MakeVector2@@YAHH@Z" ) ; 75 MAKE VECTOR2 Vector
    DB_Vectors\MakeVector3= AIsFunction( 1 , "?MakeVector3@@YAHH@Z" ) ; 76 MAKE VECTOR3 Vector
    DB_Vectors\MakeVector4= AIsFunction( 1 , "?MakeVector4@@YAHH@Z" ) ; 77 MAKE VECTOR4 Vector
    DB_Vectors\MaximizeVector2= AIsFunction( 1 , "?MaximizeVector2@@YAXHHH@Z" ) ; 78 MAXIMIZE VECTOR2 VectorResult, VectorA, VectorB
    DB_Vectors\MaximizeVector3= AIsFunction( 1 , "?MaximizeVector3@@YAXHHH@Z" ) ; 79 MAXIMIZE VECTOR3 VectorResult, VectorA, VectorB
    DB_Vectors\MaximizeVector4= AIsFunction( 1 , "?MaximizeVector4@@YAXHHH@Z" ) ; 80 MAXIMIZE VECTOR4 VectorResult, VectorA, VectorB
    DB_Vectors\MinimizeVector2= AIsFunction( 1 , "?MinimizeVector2@@YAXHHH@Z" ) ; 81 MINIMIZE VECTOR2 VectorResult, VectorA, VectorB
    DB_Vectors\MinimizeVector3= AIsFunction( 1 , "?MinimizeVector3@@YAXHHH@Z" ) ; 82 MINIMIZE VECTOR3 VectorResult, VectorA, VectorB
    DB_Vectors\MinimizeVector4= AIsFunction( 1 , "?MinimizeVector4@@YAXHHH@Z" ) ; 83 MINIMIZE VECTOR4 VectorResult, VectorA, VectorB
    DB_Vectors\MultiplyMatrix= AIsFunction( 1 , "?MultiplyMatrix@@YAXHHH@Z" ) ; 84 MULTIPLY MATRIX4 Matrix4Result, Matrix4A, Matrix4B
    DB_Vectors\MultiplyMatrix1= AIsFunction( 1 , "?MultiplyMatrix@@YAXHM@Z" ) ; 85 MULTIPLY MATRIX4 Matrix4Result, Value
    DB_Vectors\MultiplyVector2= AIsFunction( 1 , "?MultiplyVector2@@YAXHM@Z" ) ; 86 MULTIPLY VECTOR2 VectorResult, Value
    DB_Vectors\MultiplyVector3= AIsFunction( 1 , "?MultiplyVector3@@YAXHM@Z" ) ; 87 MULTIPLY VECTOR3 VectorResult, Value
    DB_Vectors\MultiplyVector4= AIsFunction( 1 , "?MultiplyVector4@@YAXHM@Z" ) ; 88 MULTIPLY VECTOR4 VectorResult, Value
    DB_Vectors\NormalizeVector2= AIsFunction( 1 , "?NormalizeVector2@@YAXHH@Z" ) ; 89 NORMALIZE VECTOR2 VectorResult, VectorSource
    DB_Vectors\NormalizeVector3= AIsFunction( 1 , "?NormalizeVector3@@YAXHH@Z" ) ; 90 NORMALIZE VECTOR3 VectorResult, VectorSource
    DB_Vectors\NormalizeVector4= AIsFunction( 1 , "?NormalizeVector4@@YAXHH@Z" ) ; 91 NORMALIZE VECTOR4 VectorResult, VectorSource
    DB_Vectors\ProjectVector3= AIsFunction( 1 , "?ProjectVector3@@YAXHHHHH@Z" ) ; 92 PROJECT VECTOR3 VectorResult, VectorSource, Matrix4Projection, Matrix4View, Matrix4World
    DB_Vectors\RotateXMatrix= AIsFunction( 1 , "?RotateXMatrix@@YAXHM@Z" ) ; 93 ROTATE X MATRIX4 Matrix4Result, Angle
    DB_Vectors\RotateYMatrix= AIsFunction( 1 , "?RotateYMatrix@@YAXHM@Z" ) ; 94 ROTATE Y MATRIX4 Matrix4Result, Angle
    DB_Vectors\RotateYawPitchRollMatrix= AIsFunction( 1 , "?RotateYawPitchRollMatrix@@YAXHMMM@Z" ) ; 95 ROTATE YPR MATRIX4 Matrix4Result, Yaw, Pitch, Roll
    DB_Vectors\RotateZMatrix= AIsFunction( 1 , "?RotateZMatrix@@YAXHM@Z" ) ; 96 ROTATE Z MATRIX4 Matrix4Result, Angle
    DB_Vectors\ScaleMatrix= AIsFunction( 1 , "?ScaleMatrix@@YAXHMMM@Z" ) ; 97 SCALE MATRIX4 Matrix4Result, X, Y, Z
    DB_Vectors\ScaleVector2= AIsFunction( 1 , "?ScaleVector2@@YAXHHM@Z" ) ; 98 SCALE VECTOR2 VectorResult, VectorSource, Value
    DB_Vectors\ScaleVector3= AIsFunction( 1 , "?ScaleVector3@@YAXHHM@Z" ) ; 99 SCALE VECTOR3 VectorResult, VectorSource, Value
    DB_Vectors\ScaleVector4= AIsFunction( 1 , "?ScaleVector4@@YAXHHM@Z" ) ; 100 SCALE VECTOR4 VectorResult, VectorSource, Value
    DB_Vectors\SetIdentityMatrix= AIsFunction( 1 , "?SetIdentityMatrix@@YAXH@Z" ) ; 101 SET IDENTITY MATRIX4 Matrix4Result
    DB_Vectors\SetVector2= AIsFunction( 1 , "?SetVector2@@YAXHMM@Z" ) ; 102 SET VECTOR2 VectorResult, X, Y
    DB_Vectors\SetVector3= AIsFunction( 1 , "?SetVector3@@YAXHMMM@Z" ) ; 103 SET VECTOR3 VectorResult, X, Y, Z
    DB_Vectors\SetVector4= AIsFunction( 1 , "?SetVector4@@YAXHMMMM@Z" ) ; 104 SET VECTOR4 VectorResult, X, Y, Z, W
    DB_Vectors\SubtractMatrix= AIsFunction( 1 , "?SubtractMatrix@@YAXHHH@Z" ) ; 105 SUBTRACT MATRIX4 Matrix4Result, Matrix4A, Matrix4B
    DB_Vectors\SubtractVector2= AIsFunction( 1 , "?SubtractVector2@@YAXHHH@Z" ) ; 106 SUBTRACT VECTOR2 VectorResult, VectorA, VectorB
    DB_Vectors\SubtractVector3= AIsFunction( 1 , "?SubtractVector3@@YAXHHH@Z" ) ; 107 SUBTRACT VECTOR3 VectorResult, VectorA, VectorB
    DB_Vectors\SubtractVector4= AIsFunction( 1 , "?SubtractVector4@@YAXHHH@Z" ) ; 108 SUBTRACT VECTOR4 VectorResult, VectorA, VectorB
    DB_Vectors\TransformVector4= AIsFunction( 1 , "?TransformVector4@@YAXHHH@Z" ) ; 109 TRANSFORM VECTOR4 VectorResult, VectorSource, Matrix4Source
    DB_Vectors\TransformVectorCoordinates2= AIsFunction( 1 , "?TransformVectorCoordinates2@@YAXHHH@Z" ) ; 110 TRANSFORM COORDS VECTOR2 VectorResult, VectorSource, Matrix4Source
    DB_Vectors\TransformVectorCoordinates3= AIsFunction( 1 , "?TransformVectorCoordinates3@@YAXHHH@Z" ) ; 111 TRANSFORM COORDS VECTOR3 VectorResult, VectorSource, Matrix4Source
    DB_Vectors\TransformVectorNormalCoordinates3= AIsFunction( 1 , "?TransformVectorNormalCoordinates3@@YAXHHH@Z" ) ; 112 TRANSFORM NORMALS VECTOR3 VectorResult, VectorSource, Matrix4Source
    DB_Vectors\TranslateMatrix= AIsFunction( 1 , "?TranslateMatrix@@YAXHMMM@Z" ) ; 113 TRANSLATE MATRIX4 Matrix4Result, X, Y, Z
    DB_Vectors\TransposeMatrix= AIsFunction( 1 , "?TransposeMatrix@@YAXHH@Z" ) ; 114 TRANSPOSE MATRIX4 Matrix4Result, Matrix4Source
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

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
  CallCFunctionFast( *DB_Vectors\BuildOrthoLHMatrix, Matrix4Result, Width, Height, Near, Far )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildOrthoRHMatrix( Matrix4Result.l, Width.f, Height.f, Near.f, Far.f )
  CallCFunctionFast( *DB_Vectors\BuildOrthoRHMatrix, Matrix4Result, Width, Height, Near, Far )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildPerspectiveFovLHMatrix( Matrix4Result.l, FOV.f, Aspect.f, Near.f, Far.f )
  CallCFunctionFast( *DB_Vectors\BuildPerspectiveFovLHMatrix, Matrix4Result, FOV, Aspect, Near, Far )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildPerspectiveFovRHMatrix( Matrix4Result.l, FOV.f, Aspect.f, Near.f, Far.f )
  CallCFunctionFast( *DB_Vectors\BuildPerspectiveFovRHMatrix, Matrix4Result, FOV, Aspect, Near, Far )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildPerspectiveLHMatrix( Matrix4Result.l, Width.f, Height.f, Near.f, Far.f )
  CallCFunctionFast( *DB_Vectors\BuildPerspectiveLHMatrix, Matrix4Result, Width, Height, Near, Far )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildPerspectiveRHMatrix( Matrix4Result.l, Width.f, Height.f, Near.f, Far.f )
  CallCFunctionFast( *DB_Vectors\BuildPerspectiveRHMatrix, Matrix4Result, Width, Height, Near, Far )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildReflectionMatrix( Matrix4Result.l, PlaneA.f, PlaneB.f, PlaneC.f, PlaneD.f )
  CallCFunctionFast( *DB_Vectors\BuildReflectionMatrix, Matrix4Result, PlaneA, PlaneB, PlaneC, PlaneD )
 EndProcedure
;
; *********************************************************************
Procedure DBBuildRotationAxisMatrix( Matrix4Result.l, Vector3Axis.l, Angle.f )
  CallCFunctionFast( *DB_Vectors\BuildRotationAxisMatrix, Matrix4Result, Vector3Axis, Angle )
 EndProcedure
;
; *********************************************************************
Procedure DBCatmullRomVector2( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, VectorD.l, Value.f )
  CallCFunctionFast( *DB_Vectors\CatmullRomVector2, VectorResult, VectorA, VectorB, VectorC, VectorD, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBCatmullRomVector3( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, VectorD.l, Value.f )
  CallCFunctionFast( *DB_Vectors\CatmullRomVector3, VectorResult, VectorA, VectorB, VectorC, VectorD, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBCatmullRomVector4( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, VectorD.l, Value.f )
  CallCFunctionFast( *DB_Vectors\CatmullRomVector4, VectorResult, VectorA, VectorB, VectorC, VectorD, Value )
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
  CallCFunctionFast( *DB_Vectors\DivideMatrix, Matrix4Result, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBDivideVector2( VectorResult.l, Value.f )
  CallCFunctionFast( *DB_Vectors\DivideVector2, VectorResult, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBDivideVector3( VectorResult.l, Value.f )
  CallCFunctionFast( *DB_Vectors\DivideVector3, VectorResult, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBDivideVector4( VectorResult.l, Value.f )
  CallCFunctionFast( *DB_Vectors\DivideVector4, VectorResult, Value )
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
  CallCFunctionFast( *DB_Vectors\GetBaryCentricCoordinatesVector2, VectorResult, VectorA, VectorB, VectorC, FValue, GBValue )
 EndProcedure
;
; *********************************************************************
Procedure DBGetBaryCentricCoordinatesVector3( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, FValue.f, GBValue.f )
  CallCFunctionFast( *DB_Vectors\GetBaryCentricCoordinatesVector3, VectorResult, VectorA, VectorB, VectorC, FValue, GBValue )
 EndProcedure
;
; *********************************************************************
Procedure DBGetBaryCentricCoordinatesVector4( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, FValue.f, GBValue.f )
  CallCFunctionFast( *DB_Vectors\GetBaryCentricCoordinatesVector4, VectorResult, VectorA, VectorB, VectorC, FValue, GBValue )
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
  CallCFunctionFast( *DB_Vectors\HermiteVector2, VectorResult, VectorA, VectorB, VectorC, VectorD, SValue )
 EndProcedure
;
; *********************************************************************
Procedure DBHermiteVector3( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, VectorD.l, SValue.f )
  CallCFunctionFast( *DB_Vectors\HermiteVector3, VectorResult, VectorA, VectorB, VectorC, VectorD, SValue )
 EndProcedure
;
; *********************************************************************
Procedure DBHermiteVector4( VectorResult.l, VectorA.l, VectorB.l, VectorC.l, VectorD.l, SValue.f )
  CallCFunctionFast( *DB_Vectors\HermiteVector4, VectorResult, VectorA, VectorB, VectorC, VectorD, SValue )
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
  CallCFunctionFast( *DB_Vectors\LinearInterpolationVector2, VectorResult, VectorA, VectorB, SValue )
 EndProcedure
;
; *********************************************************************
Procedure DBLinearInterpolationVector3( VectorResult.l, VectorA.l, VectorB.l, SValue.f )
  CallCFunctionFast( *DB_Vectors\LinearInterpolationVector3, VectorResult, VectorA, VectorB, SValue )
 EndProcedure
;
; *********************************************************************
Procedure DBLinearInterpolationVector4( VectorResult.l, VectorA.l, VectorB.l, SValue.f )
  CallCFunctionFast( *DB_Vectors\LinearInterpolationVector4, VectorResult, VectorA, VectorB, SValue )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMakeVectorMatrix( Matrix4.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\MakeMatrix, Matrix4 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMakeVectorVector2( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\MakeVector2, Vector )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMakeVectorVector3( Vector.l )
  Retour.l = CallCFunctionFast( *DB_Vectors\MakeVector3, Vector )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMakeVectorVector4( Vector.l )
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
  CallCFunctionFast( *DB_Vectors\MultiplyMatrix1, Matrix4Result, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplyVector2( VectorResult.l, Value.f )
  CallCFunctionFast( *DB_Vectors\MultiplyVector2, VectorResult, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplyVector3( VectorResult.l, Value.f )
  CallCFunctionFast( *DB_Vectors\MultiplyVector3, VectorResult, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplyVector4( VectorResult.l, Value.f )
  CallCFunctionFast( *DB_Vectors\MultiplyVector4, VectorResult, Value )
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
  CallCFunctionFast( *DB_Vectors\RotateXMatrix, Matrix4Result, Angle )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateYMatrix( Matrix4Result.l, Angle.f )
  CallCFunctionFast( *DB_Vectors\RotateYMatrix, Matrix4Result, Angle )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateYawPitchRollMatrix( Matrix4Result.l, Yaw.f, Pitch.f, Roll.f )
  CallCFunctionFast( *DB_Vectors\RotateYawPitchRollMatrix, Matrix4Result, Yaw, Pitch, Roll )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateZMatrix( Matrix4Result.l, Angle.f )
  CallCFunctionFast( *DB_Vectors\RotateZMatrix, Matrix4Result, Angle )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleMatrix( Matrix4Result.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Vectors\ScaleMatrix, Matrix4Result, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleVector2( VectorResult.l, VectorSource.l, Value.f )
  CallCFunctionFast( *DB_Vectors\ScaleVector2, VectorResult, VectorSource, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleVector3( VectorResult.l, VectorSource.l, Value.f )
  CallCFunctionFast( *DB_Vectors\ScaleVector3, VectorResult, VectorSource, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleVector4( VectorResult.l, VectorSource.l, Value.f )
  CallCFunctionFast( *DB_Vectors\ScaleVector4, VectorResult, VectorSource, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBSetIdentityMatrix( Matrix4Result.l )
  CallCFunctionFast( *DB_Vectors\SetIdentityMatrix, Matrix4Result )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVector2( VectorResult.l, X.f, Y.f )
  CallCFunctionFast( *DB_Vectors\SetVector2, VectorResult, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVector3( VectorResult.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Vectors\SetVector3, VectorResult, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVector4( VectorResult.l, X.f, Y.f, Z.f, W.f )
  CallCFunctionFast( *DB_Vectors\SetVector4, VectorResult, X, Y, Z, W )
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
  CallCFunctionFast( *DB_Vectors\TranslateMatrix, Matrix4Result, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBTransposeMatrix( Matrix4Result.l, Matrix4Source.l )
  CallCFunctionFast( *DB_Vectors\TransposeMatrix, Matrix4Result, Matrix4Source )
 EndProcedure
;

