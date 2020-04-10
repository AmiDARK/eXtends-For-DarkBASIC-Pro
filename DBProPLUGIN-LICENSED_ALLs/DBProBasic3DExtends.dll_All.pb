; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure Basic3DExtendsStruct
  Basic3D_Init.l : B3D_DynamicLoad.l : B3D_Delete.l : B3D_DynamicMake.l
  B3D_DynamicMakeBox.l : B3D_DynamicMakeCone.l : B3D_DynamicMakeCube.l : B3D_DynamicMakeCylinder.l
  B3D_DynamicMakeSphere.l : B3D_DynamicMakeTriangle.l : B3D_DynamicMakePlain.l : B3D_MakeFromLimb.l
  B3D_DynamicClone.l : B3D_DynamicInstance.l : B3D_AddBillBoardToList.l : B3D_RemoveBillBoardFromList.l
  B3D_DisableYRot.l : B3D_EnableYRot.l : B3D_RefreshBillBoards.l : B3D_GetPointsDistance.l
  B3D_GetDistanceFromCamera.l : B3D_GetObjectsDistance.l : B3D_GetPointDistancetoObject.l : B3D_GetPointDistancetoCamera.l
  B3D_SetBBCameraControl.l : B3D_DynamicLoadEx.l : B3D_ClearBillBoardList.l : B3D_GetBillBoardCount.l
  B3D_DynamicLoadEx1.l : B3D_DynamicLoadEx2.l : B3D_FixedObjectScale.l
 EndStructure
Global Basic3DExtends.Basic3DExtendsStruct

Procedure.l CheckBasic3DExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Basic3D.dll" )
    Basic3DExtends\Basic3D_Init= AIsFunction( 1 , "Basic3D_Init" ) ; 1 B3D Initialized 
    Basic3DExtends\B3D_DynamicLoad= AIsFunction( 1 , "B3D_DynamicLoad" ) ; 2 B3D Load Object FileName$
    Basic3DExtends\B3D_Delete= AIsFunction( 1 , "B3D_Delete" ) ; 3 B3D Delete Object Object Number
    Basic3DExtends\B3D_DynamicMake= AIsFunction( 1 , "B3D_DynamicMake" ) ; 4 B3D Make Object Meshe, Texture
    Basic3DExtends\B3D_DynamicMakeBox= AIsFunction( 1 , "B3D_DynamicMakeBox" ) ; 5 B3D Make Object Box Width , Height , Depth
    Basic3DExtends\B3D_DynamicMakeCone= AIsFunction( 1 , "B3D_DynamicMakeCone" ) ; 6 B3D Make Object Cone Size
    Basic3DExtends\B3D_DynamicMakeCube= AIsFunction( 1 , "B3D_DynamicMakeCube" ) ; 7 B3D Make Object Cube Size
    Basic3DExtends\B3D_DynamicMakeCylinder= AIsFunction( 1 , "B3D_DynamicMakeCylinder" ) ; 8 B3D Make Object Cylinder Size
    Basic3DExtends\B3D_DynamicMakeSphere= AIsFunction( 1 , "B3D_DynamicMakeSphere" ) ; 9 B3D Make Object Sphere Size
    Basic3DExtends\B3D_DynamicMakeTriangle= AIsFunction( 1 , "B3D_DynamicMakeTriangle" ) ; 10 B3D Make Object Triangle X1,Y1,Z1,X2,Y2,Z2,X3,Y3,Z3
    Basic3DExtends\B3D_DynamicMakePlain= AIsFunction( 1 , "B3D_DynamicMakePlain" ) ; 11 B3D Make Object Plain XSize, ZSize
    Basic3DExtends\B3D_MakeFromLimb= AIsFunction( 1 , "B3D_MakeFromLimb" ) ; 12 B3D Make Object From Limb Object Number, Limb Number
    Basic3DExtends\B3D_DynamicClone= AIsFunction( 1 , "B3D_DynamicClone" ) ; 13 B3D Clone Object SourceObject
    Basic3DExtends\B3D_DynamicInstance= AIsFunction( 1 , "B3D_DynamicInstance" ) ; 14 B3D Instance Object SourceObject
    Basic3DExtends\B3D_AddBillBoardToList= AIsFunction( 1 , "B3D_AddBillBoardToList" ) ; 15 B3D Object To Billboard ObjectID
    Basic3DExtends\B3D_RemoveBillBoardFromList= AIsFunction( 1 , "B3D_RemoveBillBoardFromList" ) ; 16 B3D Remove Object From Billboard ObjectID
    Basic3DExtends\B3D_DisableYRot= AIsFunction( 1 , "B3D_DisableYRot" ) ; 17 B3D Disable YAlign ObjectID
    Basic3DExtends\B3D_EnableYRot= AIsFunction( 1 , "B3D_EnableYRot" ) ; 18 B3D Enable YAlign ObjectID
    Basic3DExtends\B3D_RefreshBillBoards= AIsFunction( 1 , "B3D_RefreshBillBoards" ) ; 19 B3D Update Billboards 
    Basic3DExtends\B3D_GetPointsDistance= AIsFunction( 1 , "B3D_GetPointsDistance" ) ; 20 B3D Get Distance XPoint1, YPoint1, ZPoint1, XPoint2, YPoint2, ZPoint2
    Basic3DExtends\B3D_GetDistanceFromCamera= AIsFunction( 1 , "B3D_GetDistanceFromCamera" ) ; 21 B3D Get Distance From Camera ObjectNumber
    Basic3DExtends\B3D_GetObjectsDistance= AIsFunction( 1 , "B3D_GetObjectsDistance" ) ; 22 B3D Get Objects Distance Object1, Object2
    Basic3DExtends\B3D_GetPointDistancetoObject= AIsFunction( 1 , "B3D_GetPointDistancetoObject" ) ; 23 B3D Get Distance To Object Object, XPoint, YPoint, ZPoint
    Basic3DExtends\B3D_GetPointDistancetoCamera= AIsFunction( 1 , "B3D_GetPointDistancetoCamera" ) ; 24 B3D Get Distance To Camera XPoint, YPoint, ZPoint
    Basic3DExtends\B3D_SetBBCameraControl= AIsFunction( 1 , "B3D_SetBBCameraControl" ) ; 25 B3D Set Billboard Camera CameraNumber
    Basic3DExtends\B3D_DynamicLoadEx= AIsFunction( 1 , "B3D_DynamicLoadEx" ) ; 26 B3D Load Object FileName$, Flag
    Basic3DExtends\B3D_ClearBillBoardList= AIsFunction( 1 , "B3D_ClearBillBoardList" ) ; 27 B3D Clear Billboard List 
    Basic3DExtends\B3D_GetBillBoardCount= AIsFunction( 1 , "B3D_GetBillBoardCount" ) ; 28 B3D Get Billboard Count 
    Basic3DExtends\B3D_DynamicLoadEx1= AIsFunction( 1 , "B3D_DynamicLoadEx" ) ; 29 B3D Load ObjectF FileName$
    Basic3DExtends\B3D_DynamicLoadEx2= AIsFunction( 1 , "B3D_DynamicLoadEx2" ) ; 30 B3D Load ObjectFF FileName$
    Basic3DExtends\B3D_FixedObjectScale = AIsFunction( 1, "B3D_FixedObjectScale" ) ; 31 B3D Fixed Object Scale
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l Basic3D_Init()
  Retour.l = CallCFunctionFast( Basic3DExtends\Basic3D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicLoad( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicLoad, FileNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_Delete( ObjectNumber.l )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_Delete, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMake( Meshe.l, Texture.l )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicMake, Meshe, Texture )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakeBox( Width.f, Height.f, Depth.f )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicMakeBox, Width, Height, Depth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakeCone( Size.f )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicMakeCone, Size )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakeCube( Size.f )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicMakeCube, Size )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakeCylinder( Size.f )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicMakeCylinder, Size )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakeSphere( Size.f )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicMakeSphere, Size )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakeTriangle( X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f, X3.f, Y3.f, Z3.f )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicMakeTriangle, X1, Y1, Z1, X2, Y2, Z2, X3, Y3, Z3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakePlain( XSize.f, ZSize.f )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicMakePlain, XSize, ZSize )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_MakeFromLimb( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_MakeFromLimb, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicClone( SourceObject.l )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicClone, SourceObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicInstance( SourceObject.l )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicInstance, SourceObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure B3D_AddBillBoardToList( ObjectID.l )
  CallCFunctionFast( Basic3DExtends\B3D_AddBillBoardToList, ObjectID )
 EndProcedure
;
; *********************************************************************
Procedure B3D_RemoveBillBoardFromList( ObjectID.l )
  CallCFunctionFast( Basic3DExtends\B3D_RemoveBillBoardFromList, ObjectID )
 EndProcedure
;
; *********************************************************************
Procedure B3D_DisableYRot( ObjectID.l )
  CallCFunctionFast( Basic3DExtends\B3D_DisableYRot, ObjectID )
 EndProcedure
;
; *********************************************************************
Procedure B3D_EnableYRot( ObjectID.l )
  CallCFunctionFast( Basic3DExtends\B3D_EnableYRot, ObjectID )
 EndProcedure
;
; *********************************************************************
Procedure B3D_RefreshBillBoards()
  CallCFunctionFast( Basic3DExtends\B3D_RefreshBillBoards )
 EndProcedure
;
; *********************************************************************
Procedure.f B3D_GetPointsDistance( XPoint1.f, YPoint1.f, ZPoint1.f, XPoint2.f, YPoint2.f, ZPoint2.f )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_GetPointsDistance, XPoint1, YPoint1, ZPoint1, XPoint2, YPoint2, ZPoint2 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f B3D_GetDistanceFromCamera( ObjectNumber.l )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_GetDistanceFromCamera, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f B3D_GetObjectsDistance( Object1.l, Object2.l )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_GetObjectsDistance, Object1, Object2 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f B3D_GetPointDistancetoObject( Object.l, XPoint.f, YPoint.f, ZPoint.f )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_GetPointDistancetoObject, Object, XPoint, YPoint, ZPoint )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f B3D_GetPointDistancetoCamera( XPoint.f, YPoint.f, ZPoint.f )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_GetPointDistancetoCamera, XPoint, YPoint, ZPoint )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure B3D_SetBBCameraControl( CameraNumber.l )
  CallCFunctionFast( Basic3DExtends\B3D_SetBBCameraControl, CameraNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicLoad1( FileName.s, Flag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicLoadEx, FileNamePTR, Flag )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure B3D_ClearBillBoardList()
  CallCFunctionFast( Basic3DExtends\B3D_ClearBillBoardList )
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_GetBillBoardCount()
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_GetBillBoardCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicLoad2( FileName.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicLoadEx1, FileNamePTR, Param2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicLoadEx2( FileName.s, Param2.l, Param3.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( Basic3DExtends\B3D_DynamicLoadEx2, FileNamePTR, Param2, Param3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure B3D_FixedObjectScale( ObjectID.l, XScale.f, YScale.f, ZScale.f )
  CallCFunctionFast( Basic3DExtends\B3D_FixedObjectScale, ObjectID, XScale, YScale, ZScale )
 EndProcedure
;

; IDE Options = PureBasic 4.61 (Windows - x86)
; CursorPosition = 243
; FirstLine = 190
; Folding = ------