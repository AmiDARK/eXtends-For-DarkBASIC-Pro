; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_MatrixStruct
  MakeEx.l : SetWireframeOn.l : Delete.l : Fill.l
  SetTransparencyOn.l : SetTransparencyOff.l : PositionEx.l : PrepareTexture.l
  Randomize.l : SetHeight.l : SetNormal.l : SetTexture.l
  SetTile.l : SetWireframeOff.l : SetEx.l : ShiftDown.l
  ShiftLeft.l : ShiftRight.l : ShiftUp.l : Apply.l
  GetGroundHeightEx.l : GetHeightEx.l : GetExistEx.l : GetPositionXEx.l
  GetPositionYEx.l : GetPositionZEx.l : GetTileCountEx.l : GetTilesExistEx.l
  GetWireframeEx.l : SetPositionVector3.l : GetPositionVector3.l : SetTransparencyOn1.l
  SetTrim.l : SetPriority.l : 
 EndStructure

Procedure.l CheckMatrix()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProMatrixDebug.dll")
    DB_Matrix\MakeEx= AIsFunction( 1 , "?MakeEx@@YAXHMMHH@Z" ) ; 1 MAKE MATRIX Matrix Number, Width, Height, XSegments, ZSegments
    DB_Matrix\SetWireframeOn= AIsFunction( 1 , "?SetWireframeOn@@YAXH@Z" ) ; 2 SET MATRIX WIREFRAME ON Matrix Number
    DB_Matrix\Delete= AIsFunction( 1 , "?Delete@@YAXH@Z" ) ; 3 DELETE MATRIX Matrix Number
    DB_Matrix\Fill= AIsFunction( 1 , "?Fill@@YAXHMH@Z" ) ; 4 FILL MATRIX Matrix Number, Height, Tile Number
    DB_Matrix\SetTransparencyOn= AIsFunction( 1 , "?SetTransparencyOn@@YAXH@Z" ) ; 5 GHOST MATRIX ON Matrix Number
    DB_Matrix\SetTransparencyOff= AIsFunction( 1 , "?SetTransparencyOff@@YAXH@Z" ) ; 6 GHOST MATRIX OFF Matrix Number
    DB_Matrix\PositionEx= AIsFunction( 1 , "?PositionEx@@YAXHMMM@Z" ) ; 7 POSITION MATRIX Matrix Number, X, Y, Z
    DB_Matrix\PrepareTexture= AIsFunction( 1 , "?PrepareTexture@@YAXHHHH@Z" ) ; 8 PREPARE MATRIX TEXTURE Matrix Number, Image Number, Across, Down
    DB_Matrix\Randomize= AIsFunction( 1 , "?Randomize@@YAXHH@Z" ) ; 9 RANDOMIZE MATRIX Matrix Number, Maximum Height
    DB_Matrix\SetHeight= AIsFunction( 1 , "?SetHeight@@YAXHHHM@Z" ) ; 10 SET MATRIX HEIGHT Matrix Number, TileX, TileZ, Height
    DB_Matrix\SetNormal= AIsFunction( 1 , "?SetNormal@@YAXHHHMMM@Z" ) ; 11 SET MATRIX NORMAL Matrix Number, TileX, TileZ, NX, NY, NZ
    DB_Matrix\SetTexture= AIsFunction( 1 , "?SetTexture@@YAXHHH@Z" ) ; 12 SET MATRIX TEXTURE Matrix Number, Texture Mode, Mip Mode
    DB_Matrix\SetTile= AIsFunction( 1 , "?SetTile@@YAXHHHH@Z" ) ; 13 SET MATRIX TILE Matrix Number, TileX, TileZ, Tile Number
    DB_Matrix\SetWireframeOff= AIsFunction( 1 , "?SetWireframeOff@@YAXH@Z" ) ; 14 SET MATRIX WIREFRAME OFF Matrix Number
    DB_Matrix\SetEx= AIsFunction( 1 , "?SetEx@@YAXHHHHHHHH@Z" ) ; 15 SET MATRIX Matrix Number, Wire, Transparency, Cull, Filter, Light, Fog, Ambient
    DB_Matrix\ShiftDown= AIsFunction( 1 , "?ShiftDown@@YAXH@Z" ) ; 16 SHIFT MATRIX DOWN Matrix Number
    DB_Matrix\ShiftLeft= AIsFunction( 1 , "?ShiftLeft@@YAXH@Z" ) ; 18 SHIFT MATRIX LEFT Matrix Number
    DB_Matrix\ShiftRight= AIsFunction( 1 , "?ShiftRight@@YAXH@Z" ) ; 20 SHIFT MATRIX RIGHT Matrix Number
    DB_Matrix\ShiftUp= AIsFunction( 1 , "?ShiftUp@@YAXH@Z" ) ; 22 SHIFT MATRIX UP Matrix Number
    DB_Matrix\Apply= AIsFunction( 1 , "?Apply@@YAXH@Z" ) ; 24 UPDATE MATRIX Matrix Number
    DB_Matrix\GetGroundHeightEx= AIsFunction( 1 , "?GetGroundHeightEx@@YAKHMM@Z" ) ; 25 GET GROUND HEIGHT Matrix Number, X, Z
    DB_Matrix\GetHeightEx= AIsFunction( 1 , "?GetHeightEx@@YAKHHH@Z" ) ; 26 GET MATRIX HEIGHT Matrix Number, TileX, TileZ
    DB_Matrix\GetExistEx= AIsFunction( 1 , "?GetExistEx@@YAHH@Z" ) ; 27 MATRIX EXIST Matrix Number
    DB_Matrix\GetPositionXEx= AIsFunction( 1 , "?GetPositionXEx@@YAKH@Z" ) ; 28 MATRIX POSITION X Matrix Number
    DB_Matrix\GetPositionYEx= AIsFunction( 1 , "?GetPositionYEx@@YAKH@Z" ) ; 29 MATRIX POSITION Y Matrix Number
    DB_Matrix\GetPositionZEx= AIsFunction( 1 , "?GetPositionZEx@@YAKH@Z" ) ; 30 MATRIX POSITION Z Matrix Number
    DB_Matrix\GetTileCountEx= AIsFunction( 1 , "?GetTileCountEx@@YAHH@Z" ) ; 31 MATRIX TILE COUNT Matrix Number
    DB_Matrix\GetTilesExistEx= AIsFunction( 1 , "?GetTilesExistEx@@YAHH@Z" ) ; 32 MATRIX TILES EXIST Matrix Number
    DB_Matrix\GetWireframeEx= AIsFunction( 1 , "?GetWireframeEx@@YAHH@Z" ) ; 33 MATRIX WIREFRAME STATE Matrix Number
    DB_Matrix\SetPositionVector3= AIsFunction( 1 , "?SetPositionVector3@@YAXHH@Z" ) ; 34 POSITION MATRIX Matrix Number, Vector
    DB_Matrix\GetPositionVector3= AIsFunction( 1 , "?GetPositionVector3@@YAXHH@Z" ) ; 35 SET VECTOR3 TO MATRIX POSITION Vector, Matrix Number
    DB_Matrix\SetTransparencyOn1= AIsFunction( 1 , "?SetTransparencyOn@@YAXHH@Z" ) ; 36 GHOST MATRIX ON Matrix Number, Mode
    DB_Matrix\SetTrim= AIsFunction( 1 , "?SetTrim@@YAXHMM@Z" ) ; 37 SET MATRIX TRIM Matrix Number, TrimX, TrimY
    DB_Matrix\SetPriority= AIsFunction( 1 , "?SetPriority@@YAXHH@Z" ) ; 38 SET MATRIX PRIORITY Matrix Number, Priority Flag
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBMakeMatrix( MatrixNumber.l, Width.f, Height.f, XSegments.l, ZSegments.l )
  CallCFunctionFast( *DB_Matrix\MakeEx, MatrixNumber, Width, Height, XSegments, ZSegments )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixWireFrameOn( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\SetWireframeOn, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteMatrix1( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\Delete, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBFillMatrix( MatrixNumber.l, Height.f, TileNumber.l )
  CallCFunctionFast( *DB_Matrix\Fill, MatrixNumber, Height, TileNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixTransparencyOn( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\SetTransparencyOn, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixTransparencyOff( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\SetTransparencyOff, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionMatrix( MatrixNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Matrix\PositionEx, MatrixNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPrepareTexture( MatrixNumber.l, ImageNumber.l, Across.l, Down.l )
  CallCFunctionFast( *DB_Matrix\PrepareTexture, MatrixNumber, ImageNumber, Across, Down )
 EndProcedure
;
; *********************************************************************
Procedure DBRandomize( MatrixNumber.l, MaximumHeight.l )
  CallCFunctionFast( *DB_Matrix\Randomize, MatrixNumber, MaximumHeight )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixHeight( MatrixNumber.l, TileX.l, TileZ.l, Height.f )
  CallCFunctionFast( *DB_Matrix\SetHeight, MatrixNumber, TileX, TileZ, Height )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixNormal( MatrixNumber.l, TileX.l, TileZ.l, NX.f, NY.f, NZ.f )
  CallCFunctionFast( *DB_Matrix\SetNormal, MatrixNumber, TileX, TileZ, NX, NY, NZ )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixTexture( MatrixNumber.l, TextureMode.l, MipMode.l )
  CallCFunctionFast( *DB_Matrix\SetTexture, MatrixNumber, TextureMode, MipMode )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixTile( MatrixNumber.l, TileX.l, TileZ.l, TileNumber.l )
  CallCFunctionFast( *DB_Matrix\SetTile, MatrixNumber, TileX, TileZ, TileNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixWireFrameOff( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\SetWireframeOff, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrix( MatrixNumber.l, Wire.l, Transparency.l, Cull.l, Filter.l, Light.l, Fog.l, Ambient.l )
  CallCFunctionFast( *DB_Matrix\SetEx, MatrixNumber, Wire, Transparency, Cull, Filter, Light, Fog, Ambient )
 EndProcedure
;
; *********************************************************************
Procedure DBShiftMatrixDown( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\ShiftDown, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShiftMatrixLeft( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\ShiftLeft, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShiftMatrixRight( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\ShiftRight, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShiftMatrixUp( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\ShiftUp, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBApplyMatrix( MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\Apply, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetGroundHeight( MatrixNumber.l, X.f, Z.f )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetGroundHeightEx, MatrixNumber, X, Z )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetMatrixHeight( MatrixNumber.l, TileX.l, TileZ.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetHeightEx, MatrixNumber, TileX, TileZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMatrixExist( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetExistEx, MatrixNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionX1( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetPositionXEx, MatrixNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionY1( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetPositionYEx, MatrixNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionZ1( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetPositionZEx, MatrixNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTileCount( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetTileCountEx, MatrixNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTilesExist( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetTilesExistEx, MatrixNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetWireframe( MatrixNumber.l )
  Retour.l = CallCFunctionFast( *DB_Matrix\GetWireframeEx, MatrixNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixPositionVector3( MatrixNumber.l, Vector.l )
  CallCFunctionFast( *DB_Matrix\SetPositionVector3, MatrixNumber, Vector )
 EndProcedure
;
; *********************************************************************
Procedure DBGetPositionVector31( Vector.l, MatrixNumber.l )
  CallCFunctionFast( *DB_Matrix\GetPositionVector3, Vector, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixTransparencyOn1( MatrixNumber.l, Mode.l )
  CallCFunctionFast( *DB_Matrix\SetTransparencyOn1, MatrixNumber, Mode )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixTrim( MatrixNumber.l, TrimX.f, TrimY.f )
  CallCFunctionFast( *DB_Matrix\SetTrim, MatrixNumber, TrimX, TrimY )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMatrixPriority( MatrixNumber.l, PriorityFlag.l )
  CallCFunctionFast( *DB_Matrix\SetPriority, MatrixNumber, PriorityFlag )
 EndProcedure
;

