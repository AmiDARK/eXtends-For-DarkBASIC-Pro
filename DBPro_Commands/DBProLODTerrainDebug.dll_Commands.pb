; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBMakeLODTerrain( TerrainNumber.l, HeightmapFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @HeightmapFilenamePTR.l, Len( HeightmapFilename ) + 1 ) ; CreateString
  PokeS( HeightmapFilenamePTR, HeightmapFilename )
  CallCFunctionFast( *DB_LODTerrain\Make, TerrainNumber, HeightmapFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLODTerraintPosition( TerrainNumber.l, X.f, Y.f, Z.f )
  X1.l = 0 : Y1.l = 0 : Z1.l = 0
  PokeF( @X1, X ) : PokeF( @Y1, Y ) : PokeF( @Z1, Z )
  CallCFunctionFast( *DB_LODTerrain\SetPosition, TerrainNumber, X1, Y1, Z1 )
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
  X1.l = 0 : Z1.l = 0
  PokeF( @X1, X ) : PokeF( @Z1, Z )
  Retour.l = CallCFunctionFast( *DB_LODTerrain\GetHeight, TerrainNumber, X1, Z1 )
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

; IDE Options = PureBasic 4.61 (Windows - x86)
; CursorPosition = 33
; Folding = --
; EnableXP