; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 13.12.05
;
; *********************************************************************
Procedure.l Basic3D_Init()
  Retour.l = CallCFunctionFast( *Basic3DExtends\Basic3D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicLoad( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_DynamicLoad, FileNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_Delete( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_Delete, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMake( Meshe.l, Texture.l )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_DynamicMake, Meshe, Texture )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakeBox( Width.f, Height.f, Depth.f )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_DynamicMakeBox, Width, Height, Depth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakeCone( Size.f )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_DynamicMakeCone, Size )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakeCube( Size.f )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_DynamicMakeCube, Size )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakeCylinder( Size.f )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_DynamicMakeCylinder, Size )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakeSphere( Size.f )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_DynamicMakeSphere, Size )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakeTriangle( X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f, X3.f, Y3.f, Z3.f )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_DynamicMakeTriangle, X1, Y1, Z1, X2, Y2, Z2, X3, Y3, Z3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_DynamicMakePlain( XSize.f, ZSize.f )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_DynamicMakePlain, XSize, ZSize )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l B3D_MakeFromLimb( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_MakeFromLimb, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure B3D_AddBillBoardToList( ObjectID.l )
  CallCFunctionFast( *Basic3DExtends\B3D_AddBillBoardToList, ObjectID )
 EndProcedure
;
; *********************************************************************
Procedure B3D_RemoveBillBoardFromList( ObjectID.l )
  CallCFunctionFast( *Basic3DExtends\B3D_RemoveBillBoardFromList, ObjectID )
 EndProcedure
;
; *********************************************************************
Procedure B3D_AddBillBoardToList1( Param0.l )
  CallCFunctionFast( *Basic3DExtends\B3D_AddBillBoardToList1, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure B3D_DisableYRot( ObjectID.l )
  CallCFunctionFast( *Basic3DExtends\B3D_DisableYRot, ObjectID )
 EndProcedure
;
; *********************************************************************
Procedure B3D_EnableYRot( ObjectID.l )
  CallCFunctionFast( *Basic3DExtends\B3D_EnableYRot, ObjectID )
 EndProcedure
;
; *********************************************************************
Procedure B3D_RemoveBillBoardFromList1( Param0.l )
  CallCFunctionFast( *Basic3DExtends\B3D_RemoveBillBoardFromList1, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure B3D_RefreshBillBoards()
  CallCFunctionFast( *Basic3DExtends\B3D_RefreshBillBoards )
 EndProcedure
;
; *********************************************************************
Procedure.f B3D_GetPointsDistance( XPoint1.f, YPoint1.f, ZPoint1.f, XPoint2.f, YPoint2.f, ZPoint2.f )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_GetPointsDistance, XPoint1, YPoint1, ZPoint1, XPoint2, YPoint2, ZPoint2 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f B3D_GetDistanceFromCamera( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_GetDistanceFromCamera, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f B3D_GetObjectsDistance( Object1.l, Object2.l )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_GetObjectsDistance, Object1, Object2 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f B3D_GetPointDistancetoObject( Object.l, XPoint.f, YPoint.f, ZPoint.f )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_GetPointDistancetoObject, Object, XPoint, YPoint, ZPoint )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f B3D_GetPointDistancetoCamera( XPoint.f, YPoint.f, ZPoint.f )
  Retour.l = CallCFunctionFast( *Basic3DExtends\B3D_GetPointDistancetoCamera, XPoint, YPoint, ZPoint )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
