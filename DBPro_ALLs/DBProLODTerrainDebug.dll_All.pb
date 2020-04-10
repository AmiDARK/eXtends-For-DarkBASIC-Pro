; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_LODTerrainStruct
  Make.l : SetPosition.l : Delete.l : GetExist.l
  GetHeight.l : GetTotalHeight.l : GetPositionX.l : GetPositionY.l
  GetPositionZ.l : SetTexture.l : 
 EndStructure

Procedure.l CheckLODTerrain()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProLODTerrainDebug.dll")
    DB_LODTerrain\Make= AIsFunction( 1 , "?Make@@YAXHK@Z" ) ; 1 MAKE TERRAIN Terrain Number, Heightmap Filename
    DB_LODTerrain\SetPosition= AIsFunction( 1 , "?SetPosition@@YAXHMMM@Z" ) ; 3 POSITION TERRAIN Terrain Number, X, Y, Z
    DB_LODTerrain\Delete= AIsFunction( 1 , "?Delete@@YAXH@Z" ) ; 4 DELETE TERRAIN Terrain Number
    DB_LODTerrain\GetExist= AIsFunction( 1 , "?GetExist@@YAHH@Z" ) ; 5 TERRAIN EXIST Terrain Number
    DB_LODTerrain\GetHeight= AIsFunction( 1 , "?GetHeight@@YAKHMM@Z" ) ; 6 GET TERRAIN HEIGHT Terrain Number, X, Z
    DB_LODTerrain\GetTotalHeight= AIsFunction( 1 , "?GetTotalHeight@@YAKH@Z" ) ; 7 GET TOTAL TERRAIN HEIGHT Terrain Number
    DB_LODTerrain\GetPositionX= AIsFunction( 1 , "?GetPositionX@@YAKH@Z" ) ; 8 TERRAIN POSITION X Terrain Number
    DB_LODTerrain\GetPositionY= AIsFunction( 1 , "?GetPositionY@@YAKH@Z" ) ; 9 TERRAIN POSITION Y Terrain Number
    DB_LODTerrain\GetPositionZ= AIsFunction( 1 , "?GetPositionZ@@YAKH@Z" ) ; 10 TERRAIN POSITION Z Terrain Number
    DB_LODTerrain\SetTexture= AIsFunction( 1 , "?SetTexture@@YAXHH@Z" ) ; 11 TEXTURE TERRAIN Terrain Number, Image Number
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBMakeLODTerrain( TerrainNumber.l, HeightmapFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @HeightmapFilenamePTR.l, Len( HeightmapFilename ) + 1 ) ; CreateString
  PokeS( HeightmapFilenamePTR, HeightmapFilename )
  CallCFunctionFast( *DB_LODTerrain\Make, TerrainNumber, HeightmapFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLODTerraintPosition( TerrainNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_LODTerrain\SetPosition, TerrainNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteLODTerrain( TerrainNumber.l )
  CallCFunctionFast( *DB_LODTerrain\Delete, TerrainNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLODTerrainExist( TerrainNumber.l )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetExist, TerrainNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLODTerrainHeight( TerrainNumber.l, X.f, Z.f )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetHeight, TerrainNumber, X, Z )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetTotalLODTerrainHeight( TerrainNumber.l )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetTotalHeight, TerrainNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionX2( TerrainNumber.l )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetPositionX, TerrainNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionY2( TerrainNumber.l )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetPositionY, TerrainNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPositionZ2( TerrainNumber.l )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetPositionZ, TerrainNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBSetLODTerrainTexture( TerrainNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_LODTerrain\SetTexture, TerrainNumber, ImageNumber )
 EndProcedure
;

