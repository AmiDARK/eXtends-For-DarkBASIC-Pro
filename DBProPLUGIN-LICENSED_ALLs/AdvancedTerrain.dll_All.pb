; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure cedTerrainStruct
  SetTerrainScale.l : SetTerrainSplit.l : SetTerrainTiling.l : SetTerrainHeightMap.l
  SetTerrainLight.l : BuildTerrain.l : UpdateTerrain.l : SetTerrainTexture.l
  MakeObjectTerrain.l : GetTerrainGroundHeight.l : LoadTerrain.l : SaveTerrain.l
  GetTerrainXSize.l : GetTerrainZSize.l : DeleteTerrain.l : UpdateTerrainNoCull.l
  BuildTerrainEx.l : 
 EndStructure
Global cedTerrain.cedTerrainStruct

Procedure.l CheckcedTerrain()
  SUCCESS.l = 1
  If OpenLibrary( 1, "AdvancedTerrain.dll")
    cedTerrain\SetTerrainScale= AIsFunction( 1 , "?SetTerrainScale@@YAXHMMM@Z" ) ; 1 SET TERRAIN SCALE 
    cedTerrain\SetTerrainSplit= AIsFunction( 1 , "?SetTerrainSplit@@YAXHH@Z" ) ; 2 SET TERRAIN SPLIT 
    cedTerrain\SetTerrainTiling= AIsFunction( 1 , "?SetTerrainTiling@@YAXHH@Z" ) ; 3 SET TERRAIN TILING 
    cedTerrain\SetTerrainHeightMap= AIsFunction( 1 , "?SetTerrainHeightMap@@YAXHK@Z" ) ; 4 SET TERRAIN HEIGHTMAP 
    cedTerrain\SetTerrainLight= AIsFunction( 1 , "?SetTerrainLight@@YAXHMMMMMMM@Z" ) ; 5 SET TERRAIN LIGHT 
    cedTerrain\BuildTerrain= AIsFunction( 1 , "?BuildTerrain@@YAXH@Z" ) ; 6 BUILD TERRAIN 
    cedTerrain\UpdateTerrain= AIsFunction( 1 , "?UpdateTerrain@@YAXXZ" ) ; 7 UPDATE TERRAIN 
    cedTerrain\SetTerrainTexture= AIsFunction( 1 , "?SetTerrainTexture@@YAXHHH@Z" ) ; 8 SET TERRAIN TEXTURE 
    cedTerrain\MakeObjectTerrain= AIsFunction( 1 , "?MakeObjectTerrain@@YAXH@Z" ) ; 9 MAKE OBJECT TERRAIN 
    cedTerrain\GetTerrainGroundHeight= AIsFunction( 1 , "?GetTerrainGroundHeight@@YAKHMM@Z" ) ; 10 GET TERRAIN GROUND HEIGHT 
    cedTerrain\LoadTerrain= AIsFunction( 1 , "?LoadTerrain@@YAXKH@Z" ) ; 11 LOAD TERRAIN 
    cedTerrain\SaveTerrain= AIsFunction( 1 , "?SaveTerrain@@YAXKH@Z" ) ; 12 SAVE TERRAIN 
    cedTerrain\GetTerrainXSize= AIsFunction( 1 , "?GetTerrainXSize@@YAKH@Z" ) ; 13 GET TERRAIN X SIZE 
    cedTerrain\GetTerrainZSize= AIsFunction( 1 , "?GetTerrainZSize@@YAKH@Z" ) ; 14 GET TERRAIN Z SIZE 
    cedTerrain\DeleteTerrain= AIsFunction( 1 , "?DeleteTerrain@@YAXH@Z" ) ; 15 DESTROY TERRAIN 
    cedTerrain\UpdateTerrainNoCull= AIsFunction( 1 , "?UpdateTerrainNoCull@@YAXH@Z" ) ; 16 UPDATE TERRAIN No Culling Mode
    cedTerrain\BuildTerrainEx= AIsFunction( 1 , "?BuildTerrainEx@@YAXHH@Z" ) ; 17 BUILD TERRAIN 
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure SetTerrainScale( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( cedTerrain\SetTerrainScale, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure SetTerrainSplit( Param0.l, Param1.l )
  CallCFunctionFast( cedTerrain\SetTerrainSplit, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure SetTerrainTiling( Param0.l, Param1.l )
  CallCFunctionFast( cedTerrain\SetTerrainTiling, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure SetTerrainHeightMap( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( cedTerrain\SetTerrainHeightMap, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure SetTerrainLight( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f, Param7.f )
  CallCFunctionFast( cedTerrain\SetTerrainLight, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7 )
 EndProcedure
;
; *********************************************************************
Procedure BuildTerrain( Param0.l )
  CallCFunctionFast( cedTerrain\BuildTerrain, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure UpdateTerrain()
  CallCFunctionFast( cedTerrain\UpdateTerrain )
 EndProcedure
;
; *********************************************************************
Procedure SetTerrainTexture( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( cedTerrain\SetTerrainTexture, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure MakecedTerrainObjectTerrain( Param0.l )
  CallCFunctionFast( cedTerrain\MakeObjectTerrain, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.f GetTerrainGroundHeight( Param1.l, Param2.f, Param3.f )
  Retour.l = CallCFunctionFast( cedTerrain\GetTerrainGroundHeight, Param1, Param2, Param3 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure LoadTerrain( Param0.s, Param1.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( cedTerrain\LoadTerrain, Param0PTR, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure SaveTerrain( Param0.s, Param1.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( cedTerrain\SaveTerrain, Param0PTR, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.f GetcedTerrainTerrainXSize( Param1.l )
  Retour.l = CallCFunctionFast( cedTerrain\GetTerrainXSize, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f GetcedTerrainTerrainZSize( Param1.l )
  Retour.l = CallCFunctionFast( cedTerrain\GetTerrainZSize, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DeleteTerrain( Param0.l )
  CallCFunctionFast( cedTerrain\DeleteTerrain, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure UpdateTerrainNoCull( NoCullingMode.l )
  CallCFunctionFast( cedTerrain\UpdateTerrainNoCull, NoCullingMode )
 EndProcedure
;
; *********************************************************************
Procedure BuildTerrain1( Param0.l, Param1.l )
  CallCFunctionFast( cedTerrain\BuildTerrainEx, Param0, Param1 )
 EndProcedure
;

