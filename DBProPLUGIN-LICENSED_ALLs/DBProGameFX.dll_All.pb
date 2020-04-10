; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure GameFXStruct
  CreateNodeTree.l : AddNodeTreeObject.l : AddNodeTreeLimb.l : DeleteNodeTree.l
  RemoveNodeTreeObject.l : SetNodeTreePortalsOn.l : SetNodeTreePortalsOff.l : BuildNodeTreePortals.l
  SetNodeTreeWireframeOn.l : SetNodeTreeWireframeOff.l : GetStaticLineOfSight.l : GetStaticHit.l
  GetStaticRayCast.l : GetStaticVolumeCast.l : GetStaticX.l : GetStaticY.l
  GetStaticZ.l : GetStaticColCount.l : GetStaticColValue.l : GetStaticFloor.l
  AddStaticObjectsToLightMapPool.l : AddObjectToLightMapPool.l : AddLightMapLight.l : CreateLightMaps.l
  FlushLightMaps.l : AddLimbToLightMapPool.l : FlushLightMapLights.l : AddNodeTreeScorch.l
  LoadNodeTreeObjects.l : SetNodeTreeScorchTexture.l : AddNodeTreeLight.l : SetGlobalShadowsOff.l
  SetGlobalShadowsOn.l : SetShadowShades.l : SetShadowColor.l : SetShadowPosition.l
  PeformCSGUnion.l : PeformCSGDifference.l : PeformCSGIntersection.l : PeformCSGClip.l
  PeformCSGUnionOnVertexData.l : PeformCSGDifferenceOnVertexData.l : PeformCSGIntersectionOnVertexData.l : ReduceMesh.l
  AttachObjectToNodeTree.l : ObjectBlocking.l : DetachObjectFromNodeTree.l : AddLODToObject.l
  SaveNodeTreeObjects.l : MakeNodeTreeCollisionBox.l : 
 EndStructure
Global GameFX.GameFXStruct

Procedure.l CheckGameFX()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProGameFX.dll")
    GameFX\CreateNodeTree= AIsFunction( 1 , "?CreateNodeTree@@YAXMMM@Z" ) ; 101 SET STATIC UNIVERSE X, Y, Z
    GameFX\AddNodeTreeObject= AIsFunction( 1 , "?AddNodeTreeObject@@YAXHHHHH@Z" ) ; 102 MAKE STATIC OBJECT Object Number, Collision, Arbitary Value, Cast Shadow, Portal Blocker
    GameFX\AddNodeTreeLimb= AIsFunction( 1 , "?AddNodeTreeLimb@@YAXHHHHHH@Z" ) ; 103 MAKE STATIC LIMB Object Number, Limb Number, Collision, Arbitary Value, Cast Shadow, Portal Blocker
    GameFX\DeleteNodeTree= AIsFunction( 1 , "?DeleteNodeTree@@YAXXZ" ) ; 104 DELETE STATIC OBJECTS 
    GameFX\RemoveNodeTreeObject= AIsFunction( 1 , "?RemoveNodeTreeObject@@YAXH@Z" ) ; 105 DELETE STATIC OBJECT Object Number
    GameFX\SetNodeTreePortalsOn= AIsFunction( 1 , "?SetNodeTreePortalsOn@@YAXXZ" ) ; 106 SET STATIC PORTALS ON 
    GameFX\SetNodeTreePortalsOff= AIsFunction( 1 , "?SetNodeTreePortalsOff@@YAXXZ" ) ; 107 SET STATIC PORTALS OFF 
    GameFX\BuildNodeTreePortals= AIsFunction( 1 , "?BuildNodeTreePortals@@YAXXZ" ) ; 108 BUILD STATIC PORTALS 
    GameFX\SetNodeTreeWireframeOn= AIsFunction( 1 , "?SetNodeTreeWireframeOn@@YAXXZ" ) ; 109 SET STATIC OBJECTS WIREFRAME ON 
    GameFX\SetNodeTreeWireframeOff= AIsFunction( 1 , "?SetNodeTreeWireframeOff@@YAXXZ" ) ; 110 SET STATIC OBJECTS WIREFRAME OFF 
    GameFX\GetStaticLineOfSight= AIsFunction( 1 , "?GetStaticLineOfSight@@YAHMMMMMMMM@Z" ) ; 111 STATIC LINE OF SIGHT X1, Y1, Z1, X2, Y2, Z2, Width, Accuracy
    GameFX\GetStaticHit= AIsFunction( 1 , "?GetStaticHit@@YAHMMMMMMMMMMMM@Z" ) ; 112 GET STATIC COLLISION HIT OX1, OY1, OZ1, OX2, OY2, OZ2, NX1, NY1, NZ1, NX2, NY2, NZ2
    GameFX\GetStaticRayCast= AIsFunction( 1 , "?GetStaticRayCast@@YAHMMMMMM@Z" ) ; 113 STATIC RAYCAST X1, Y1, Z1, X2, Y2, Z2
    GameFX\GetStaticVolumeCast= AIsFunction( 1 , "?GetStaticVolumeCast@@YAHMMMMMMM@Z" ) ; 114 STATIC VOLUME X1, Y1, Z1, X2, Y2, Z2, Size
    GameFX\GetStaticX= AIsFunction( 1 , "?GetStaticX@@YAKXZ" ) ; 115 GET STATIC COLLISION X 
    GameFX\GetStaticY= AIsFunction( 1 , "?GetStaticY@@YAKXZ" ) ; 116 GET STATIC COLLISION Y 
    GameFX\GetStaticZ= AIsFunction( 1 , "?GetStaticZ@@YAKXZ" ) ; 117 GET STATIC COLLISION Z 
    GameFX\GetStaticColCount= AIsFunction( 1 , "?GetStaticColCount@@YAHXZ" ) ; 118 GET STATIC COLLISION COUNT 
    GameFX\GetStaticColValue= AIsFunction( 1 , "?GetStaticColValue@@YAHXZ" ) ; 119 GET STATIC COLLISION VALUE 
    GameFX\GetStaticFloor= AIsFunction( 1 , "?GetStaticFloor@@YAHXZ" ) ; 120 GET STATIC COLLISION FLOOR 
    GameFX\AddStaticObjectsToLightMapPool= AIsFunction( 1 , "?AddStaticObjectsToLightMapPool@@YAXXZ" ) ; 121 ADD STATIC OBJECTS TO LIGHT MAP POOL 
    GameFX\AddObjectToLightMapPool= AIsFunction( 1 , "?AddObjectToLightMapPool@@YAXH@Z" ) ; 122 ADD OBJECT TO LIGHT MAP POOL Object Number
    GameFX\AddLightMapLight= AIsFunction( 1 , "?AddLightMapLight@@YAXMMMMMMMMH@Z" ) ; 123 ADD LIGHT MAP LIGHT X, Y, Z, Radius, Red, Green, Blue, Brightness, Shadow
    GameFX\CreateLightMaps= AIsFunction( 1 , "?CreateLightMaps@@YAXHHK@Z" ) ; 124 CREATE LIGHT MAPS Texture Size, Texture Quality, LightMapSavePath
    GameFX\FlushLightMaps= AIsFunction( 1 , "?FlushLightMaps@@YAXXZ" ) ; 125 FLUSH LIGHT MAPS 
    GameFX\AddLimbToLightMapPool= AIsFunction( 1 , "?AddLimbToLightMapPool@@YAXHH@Z" ) ; 126 ADD LIMB TO LIGHT MAP POOL 
    GameFX\FlushLightMapLights= AIsFunction( 1 , "?FlushLightMapLights@@YAXXZ" ) ; 127 DELETE LIGHT MAP LIGHTS 
    GameFX\AddNodeTreeScorch= AIsFunction( 1 , "?AddNodeTreeScorch@@YAXMH@Z" ) ; 128 ADD STATIC SCORCH Scorch Size, Scorch Type
    GameFX\LoadNodeTreeObjects= AIsFunction( 1 , "?LoadNodeTreeObjects@@YAXKH@Z" ) ; 129 LOAD STATIC OBJECTS Filename, Divide Texture Size
    GameFX\SetNodeTreeScorchTexture= AIsFunction( 1 , "?SetNodeTreeScorchTexture@@YAXHHH@Z" ) ; 130 SET STATIC SCORCH Image Number, Width, Height
    GameFX\AddNodeTreeLight= AIsFunction( 1 , "?AddNodeTreeLight@@YAXHMMMM@Z" ) ; 131 SET SHADOW LIGHT Light Number, X, Y, Z, Range
    GameFX\SetGlobalShadowsOff= AIsFunction( 1 , "?SetGlobalShadowsOff@@YAXXZ" ) ; 132 SET GLOBAL SHADOWS OFF 
    GameFX\SetGlobalShadowsOn= AIsFunction( 1 , "?SetGlobalShadowsOn@@YAXXZ" ) ; 133 SET GLOBAL SHADOWS ON 
    GameFX\SetShadowShades= AIsFunction( 1 , "?SetShadowShades@@YAXH@Z" ) ; 134 SET GLOBAL SHADOW SHADES Number Of Shades
    GameFX\SetShadowColor= AIsFunction( 1 , "?SetShadowColor@@YAXHHHH@Z" ) ; 135 SET GLOBAL SHADOW COLOR Red, Green, Blue, Alpha
    GameFX\SetShadowPosition= AIsFunction( 1 , "?SetShadowPosition@@YAXHMMM@Z" ) ; 136 SET SHADOW POSITION Mode, X, Y, Z
    GameFX\PeformCSGUnion= AIsFunction( 1 , "?PeformCSGUnion@@YAXHH@Z" ) ; 137 PERFORM CSG UNION Target Object, Brush Object
    GameFX\PeformCSGDifference= AIsFunction( 1 , "?PeformCSGDifference@@YAXHH@Z" ) ; 138 PERFORM CSG DIFFERENCE Target Object, Brush Object
    GameFX\PeformCSGIntersection= AIsFunction( 1 , "?PeformCSGIntersection@@YAXHH@Z" ) ; 139 PERFORM CSG INTERSECTION Target Object, Brush Object
    GameFX\PeformCSGClip= AIsFunction( 1 , "?PeformCSGClip@@YAXHH@Z" ) ; 140 PERFORM CSG CLIP Target Object, Brush Object
    GameFX\PeformCSGUnionOnVertexData= AIsFunction( 1 , "?PeformCSGUnionOnVertexData@@YAXH@Z" ) ; 141 PERFORM CSG UNION ON VERTEXDATA Brush Mesh
    GameFX\PeformCSGDifferenceOnVertexData= AIsFunction( 1 , "?PeformCSGDifferenceOnVertexData@@YAXH@Z" ) ; 142 PERFORM CSG DIFFERENCE ON VERTEXDATA Brush Mesh
    GameFX\PeformCSGIntersectionOnVertexData= AIsFunction( 1 , "?PeformCSGIntersectionOnVertexData@@YAXH@Z" ) ; 143 PERFORM CSG INTERSECTION ON VERTEXDATA Brush Mesh
    GameFX\ReduceMesh= AIsFunction( 1 , "?ReduceMesh@@YAXHHHHHH@Z" ) ; 144 REDUCE MESH Mesh Number, Block Mode, Near Mode, GX, GY, GZ
    GameFX\AttachObjectToNodeTree= AIsFunction( 1 , "?AttachObjectToNodeTree@@YAXH@Z" ) ; 145 ATTACH OBJECT TO STATIC Object Number
    GameFX\ObjectBlocking= AIsFunction( 1 , "?ObjectBlocking@@YAHHMMMMMM@Z" ) ; 146 OBJECT BLOCKING Object, X1, Y1, Z1, X2, Y2, Z2
    GameFX\DetachObjectFromNodeTree= AIsFunction( 1 , "?DetachObjectFromNodeTree@@YAXH@Z" ) ; 147 DETACH OBJECT FROM STATIC Object Number
    GameFX\AddLODToObject= AIsFunction( 1 , "?AddLODToObject@@YAXHHHM@Z" ) ; 148 ADD LOD TO OBJECT Object Number, LOD Object, LOD Level, LOD Distance
    GameFX\SaveNodeTreeObjects= AIsFunction( 1 , "?SaveNodeTreeObjects@@YAXK@Z" ) ; 149 SAVE STATIC OBJECTS Filename
    GameFX\MakeNodeTreeCollisionBox= AIsFunction( 1 , "?MakeNodeTreeCollisionBox@@YAXMMMMMM@Z" ) ; 150 MAKE STATIC COLLISION BOX X1, Y1, Z1, X2, Y2, Z2
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure CreateNodeTree( X.f, Y.f, Z.f )
  CallCFunctionFast( GameFX\CreateNodeTree, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure AddNodeTreeObject( ObjectNumber.l, Collision.l, ArbitaryValue.l, CastShadow.l, PortalBlocker.l )
  CallCFunctionFast( GameFX\AddNodeTreeObject, ObjectNumber, Collision, ArbitaryValue, CastShadow, PortalBlocker )
 EndProcedure
;
; *********************************************************************
Procedure AddNodeTreeLimb( ObjectNumber.l, LimbNumber.l, Collision.l, ArbitaryValue.l, CastShadow.l, PortalBlocker.l )
  CallCFunctionFast( GameFX\AddNodeTreeLimb, ObjectNumber, LimbNumber, Collision, ArbitaryValue, CastShadow, PortalBlocker )
 EndProcedure
;
; *********************************************************************
Procedure DeleteNodeTree()
  CallCFunctionFast( GameFX\DeleteNodeTree )
 EndProcedure
;
; *********************************************************************
Procedure RemoveNodeTreeObject( ObjectNumber.l )
  CallCFunctionFast( GameFX\RemoveNodeTreeObject, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure SetNodeTreePortalsOn()
  CallCFunctionFast( GameFX\SetNodeTreePortalsOn )
 EndProcedure
;
; *********************************************************************
Procedure SetNodeTreePortalsOff()
  CallCFunctionFast( GameFX\SetNodeTreePortalsOff )
 EndProcedure
;
; *********************************************************************
Procedure BuildNodeTreePortals()
  CallCFunctionFast( GameFX\BuildNodeTreePortals )
 EndProcedure
;
; *********************************************************************
Procedure SetNodeTreeWireframeOn()
  CallCFunctionFast( GameFX\SetNodeTreeWireframeOn )
 EndProcedure
;
; *********************************************************************
Procedure SetNodeTreeWireframeOff()
  CallCFunctionFast( GameFX\SetNodeTreeWireframeOff )
 EndProcedure
;
; *********************************************************************
Procedure.l GetStaticLineOfSight( X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f, Width.f, Accuracy.f )
  Retour.l = CallCFunctionFast( GameFX\GetStaticLineOfSight, X1, Y1, Z1, X2, Y2, Z2, Width, Accuracy )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetStaticHit( OX1.f, OY1.f, OZ1.f, OX2.f, OY2.f, OZ2.f, NX1.f, NY1.f, NZ1.f, NX2.f, NY2.f, NZ2.f )
  Retour.l = CallCFunctionFast( GameFX\GetStaticHit, OX1, OY1, OZ1, OX2, OY2, OZ2, NX1, NY1, NZ1, NX2, NY2, NZ2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetStaticRayCast( X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f )
  Retour.l = CallCFunctionFast( GameFX\GetStaticRayCast, X1, Y1, Z1, X2, Y2, Z2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetStaticVolumeCast( X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f, Size.f )
  Retour.l = CallCFunctionFast( GameFX\GetStaticVolumeCast, X1, Y1, Z1, X2, Y2, Z2, Size )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f GetStaticX()
  Retour.l = CallCFunctionFast( GameFX\GetStaticX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f GetStaticY()
  Retour.l = CallCFunctionFast( GameFX\GetStaticY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f GetStaticZ()
  Retour.l = CallCFunctionFast( GameFX\GetStaticZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l GetStaticColCount()
  Retour.l = CallCFunctionFast( GameFX\GetStaticColCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetStaticColValue()
  Retour.l = CallCFunctionFast( GameFX\GetStaticColValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetStaticFloor()
  Retour.l = CallCFunctionFast( GameFX\GetStaticFloor )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure AddStaticObjectsToLightMapPool()
  CallCFunctionFast( GameFX\AddStaticObjectsToLightMapPool )
 EndProcedure
;
; *********************************************************************
Procedure AddObjectToLightMapPool( ObjectNumber.l )
  CallCFunctionFast( GameFX\AddObjectToLightMapPool, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure AddLightMapLight( X.f, Y.f, Z.f, Radius.f, Red.f, Green.f, Blue.f, Brightness.f, Shadow.l )
  CallCFunctionFast( GameFX\AddLightMapLight, X, Y, Z, Radius, Red, Green, Blue, Brightness, Shadow )
 EndProcedure
;
; *********************************************************************
Procedure CreateLightMaps( TextureSize.l, TextureQuality.l, LightMapSavePath.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @LightMapSavePathPTR.l, Len( LightMapSavePath ) + 1 ) ; CreateString
  PokeS( LightMapSavePathPTR, LightMapSavePath )
  CallCFunctionFast( GameFX\CreateLightMaps, TextureSize, TextureQuality, LightMapSavePathPTR )
 EndProcedure
;
; *********************************************************************
Procedure FlushLightMaps()
  CallCFunctionFast( GameFX\FlushLightMaps )
 EndProcedure
;
; *********************************************************************
Procedure AddLimbToLightMapPool( Param0.l, Param1.l )
  CallCFunctionFast( GameFX\AddLimbToLightMapPool, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure FlushLightMapLights()
  CallCFunctionFast( GameFX\FlushLightMapLights )
 EndProcedure
;
; *********************************************************************
Procedure AddNodeTreeScorch( ScorchSize.f, ScorchType.l )
  CallCFunctionFast( GameFX\AddNodeTreeScorch, ScorchSize, ScorchType )
 EndProcedure
;
; *********************************************************************
Procedure LoadNodeTreeObjects( Filename.s, DivideTextureSize.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( GameFX\LoadNodeTreeObjects, FilenamePTR, DivideTextureSize )
 EndProcedure
;
; *********************************************************************
Procedure SetNodeTreeScorchTexture( ImageNumber.l, Width.l, Height.l )
  CallCFunctionFast( GameFX\SetNodeTreeScorchTexture, ImageNumber, Width, Height )
 EndProcedure
;
; *********************************************************************
Procedure AddNodeTreeLight( LightNumber.l, X.f, Y.f, Z.f, Range.f )
  CallCFunctionFast( GameFX\AddNodeTreeLight, LightNumber, X, Y, Z, Range )
 EndProcedure
;
; *********************************************************************
Procedure SetGlobalShadowsOff()
  CallCFunctionFast( GameFX\SetGlobalShadowsOff )
 EndProcedure
;
; *********************************************************************
Procedure SetGlobalShadowsOn()
  CallCFunctionFast( GameFX\SetGlobalShadowsOn )
 EndProcedure
;
; *********************************************************************
Procedure SetShadowShades( NumberOfShades.l )
  CallCFunctionFast( GameFX\SetShadowShades, NumberOfShades )
 EndProcedure
;
; *********************************************************************
Procedure SetShadowColor( Red.l, Green.l, Blue.l, Alpha.l )
  CallCFunctionFast( GameFX\SetShadowColor, Red, Green, Blue, Alpha )
 EndProcedure
;
; *********************************************************************
Procedure SetGameFXwPosition( Mode.l, X.f, Y.f, Z.f )
  CallCFunctionFast( GameFX\SetShadowPosition, Mode, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure PeformCSGUnion( TargetObject.l, BrushObject.l )
  CallCFunctionFast( GameFX\PeformCSGUnion, TargetObject, BrushObject )
 EndProcedure
;
; *********************************************************************
Procedure PeformCSGDifference( TargetObject.l, BrushObject.l )
  CallCFunctionFast( GameFX\PeformCSGDifference, TargetObject, BrushObject )
 EndProcedure
;
; *********************************************************************
Procedure PeformCSGIntersection( TargetObject.l, BrushObject.l )
  CallCFunctionFast( GameFX\PeformCSGIntersection, TargetObject, BrushObject )
 EndProcedure
;
; *********************************************************************
Procedure PeformCSGClip( TargetObject.l, BrushObject.l )
  CallCFunctionFast( GameFX\PeformCSGClip, TargetObject, BrushObject )
 EndProcedure
;
; *********************************************************************
Procedure PeformCSGUnionOnVertexData( BrushMesh.l )
  CallCFunctionFast( GameFX\PeformCSGUnionOnVertexData, BrushMesh )
 EndProcedure
;
; *********************************************************************
Procedure PeformCSGDifferenceOnVertexData( BrushMesh.l )
  CallCFunctionFast( GameFX\PeformCSGDifferenceOnVertexData, BrushMesh )
 EndProcedure
;
; *********************************************************************
Procedure PeformCSGIntersectionOnVertexData( BrushMesh.l )
  CallCFunctionFast( GameFX\PeformCSGIntersectionOnVertexData, BrushMesh )
 EndProcedure
;
; *********************************************************************
Procedure ReduceMesh( MeshNumber.l, BlockMode.l, NearMode.l, GX.l, GY.l, GZ.l )
  CallCFunctionFast( GameFX\ReduceMesh, MeshNumber, BlockMode, NearMode, GX, GY, GZ )
 EndProcedure
;
; *********************************************************************
Procedure AttachObjectToNodeTree( ObjectNumber.l )
  CallCFunctionFast( GameFX\AttachObjectToNodeTree, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l ObjectBlocking( Object.l, X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f )
  Retour.l = CallCFunctionFast( GameFX\ObjectBlocking, Object, X1, Y1, Z1, X2, Y2, Z2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DetachObjectFromNodeTree( ObjectNumber.l )
  CallCFunctionFast( GameFX\DetachObjectFromNodeTree, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure AddLODToObject( ObjectNumber.l, LODObject.l, LODLevel.l, LODDistance.f )
  CallCFunctionFast( GameFX\AddLODToObject, ObjectNumber, LODObject, LODLevel, LODDistance )
 EndProcedure
;
; *********************************************************************
Procedure SaveNodeTreeObjects( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( GameFX\SaveNodeTreeObjects, FilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure MakeGameFXNodeTreeCollisionBox( X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f )
  CallCFunctionFast( GameFX\MakeNodeTreeCollisionBox, X1, Y1, Z1, X2, Y2, Z2 )
 EndProcedure
;

