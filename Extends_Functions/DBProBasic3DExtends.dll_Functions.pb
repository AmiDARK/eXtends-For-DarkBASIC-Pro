; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 13.12.05
;
Procedure.l CheckBasic3DExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Basic3D.dll")
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
    Basic3DExtends\B3D_AddBillBoardToList= AIsFunction( 1 , "B3D_AddBillBoardToList" ) ; 13 B3D Object To Billboard ObjectID
    Basic3DExtends\B3D_RemoveBillBoardFromList= AIsFunction( 1 , "B3D_RemoveBillBoardFromList" ) ; 14 B3D Remove Object From Billboard ObjectID
    Basic3DExtends\B3D_AddBillBoardToList1= AIsFunction( 1 , "B3D_AddBillBoardToList" ) ; 15 B3D Set As Billboard 
    Basic3DExtends\B3D_DisableYRot= AIsFunction( 1 , "B3D_DisableYRot" ) ; 16 B3D Disable YAlign ObjectID
    Basic3DExtends\B3D_EnableYRot= AIsFunction( 1 , "B3D_EnableYRot" ) ; 17 B3D Enable YAlign ObjectID
    Basic3DExtends\B3D_RemoveBillBoardFromList1= AIsFunction( 1 , "B3D_RemoveBillBoardFromList" ) ; 18 B3D Remove From Billboard 
    Basic3DExtends\B3D_RefreshBillBoards= AIsFunction( 1 , "B3D_RefreshBillBoards" ) ; 19 B3D Update Billboards 
    Basic3DExtends\B3D_GetPointsDistance= AIsFunction( 1 , "B3D_GetPointsDistance" ) ; 20 B3D Get Distance XPoint1, YPoint1, ZPoint1, XPoint2, YPoint2, ZPoint2
    Basic3DExtends\B3D_GetDistanceFromCamera= AIsFunction( 1 , "B3D_GetDistanceFromCamera" ) ; 21 B3D Get Distance From Camera ObjectNumber
    Basic3DExtends\B3D_GetObjectsDistance= AIsFunction( 1 , "B3D_GetObjectsDistance" ) ; 22 B3D Get Objects Distance Object1, Object2
    Basic3DExtends\B3D_GetPointDistancetoObject= AIsFunction( 1 , "B3D_GetPointDistancetoObject" ) ; 23 B3D Get Distance To Object Object, XPoint, YPoint, ZPoint
    Basic3DExtends\B3D_GetPointDistancetoCamera= AIsFunction( 1 , "B3D_GetPointDistancetoCamera" ) ; 24 B3D Get Distance To Camera XPoint, YPoint, ZPoint
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -