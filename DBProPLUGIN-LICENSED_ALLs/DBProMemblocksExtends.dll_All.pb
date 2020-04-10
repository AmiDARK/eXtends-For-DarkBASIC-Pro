; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure MemblocksExtendsStruct
  MBC_Init.l : MBC_Clear.l : MBC_Count.l : MBC_Delete.l
  MBC_CloneMemblock.l : MBC_DynamicMake.l : MBC_DynamicMakeFromArray.l : MBC_DynamicMakeFromBitmap.l
  MBC_DynamicMakeFromImage.l : MBC_DynamicMakeFromMesh.l : MBC_DynamicMakeFromSound.l : MakeMemblockImage.l
  IMPlot.l : IMGetPixel.l : IMCircle.l : IMCube.l
  IMBox.l : IMStretch.l : IMStretch2.l
 EndStructure
Global MemblocksExtends.MemblocksExtendsStruct

Procedure.l CheckMemblocksExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Memblocks.dll")
    MemblocksExtends\MBC_Init= AIsFunction( 1 , "MBC_Init" ) ; 1 MBC Initialized 
    MemblocksExtends\MBC_Clear= AIsFunction( 1 , "MBC_Clear" ) ; 2 MBC Clear All Memblocks 
    MemblocksExtends\MBC_Count= AIsFunction( 1 , "MBC_Count" ) ; 3 MBC Exist Memblock Count 
    MemblocksExtends\MBC_Delete= AIsFunction( 1 , "MBC_Delete" ) ; 4 MBC Delete Memblock Memblock Number
    MemblocksExtends\MBC_CloneMemblock= AIsFunction( 1 , "MBC_CloneMemblock" ) ; 5 MBC Clone Memblock Source Memblock
    MemblocksExtends\MBC_DynamicMake= AIsFunction( 1 , "MBC_DynamicMake" ) ; 6 MBC Make Memblock Bytes Size
    MemblocksExtends\MBC_DynamicMakeFromArray= AIsFunction( 1 , "MBC_DynamicMakeFromArray" ) ; 7 MBC Make Memblock From Array Array Name(0)
    MemblocksExtends\MBC_DynamicMakeFromBitmap= AIsFunction( 1 , "MBC_DynamicMakeFromBitmap" ) ; 8 MBC Make Memblock From Bitmap Bitmap Number
    MemblocksExtends\MBC_DynamicMakeFromImage= AIsFunction( 1 , "MBC_DynamicMakeFromImage" ) ; 9 MBC Make Memblock From Image Image Number
    MemblocksExtends\MBC_DynamicMakeFromMesh= AIsFunction( 1 , "MBC_DynamicMakeFromMesh" ) ; 10 MBC Make Memblock From Mesh Mesh Number
    MemblocksExtends\MBC_DynamicMakeFromSound= AIsFunction( 1 , "MBC_DynamicMakeFromSound" ) ; 11 MBC Make Memblock From Sound Sound Number
    MemblocksExtends\MakeMemblockImage= AIsFunction( 1 , "MakeMemblockImage" ) ; 12 MBC Make Memblock Image Width, Height, Depth
    MemblocksExtends\IMPlot= AIsFunction( 1 , "IMPlot" ) ; 13 MBC Plot Memblock Number, X, Y, RGBColor
    MemblocksExtends\IMGetPixel= AIsFunction( 1 , "IMGetPixel" ) ; 14 MBC Get Pixel Memblock Number, X, Y
    MemblocksExtends\IMCircle= AIsFunction( 1 , "IMCircle" ) ; 15 MBC Circle Memblock Number, X, Y, Diameter, RGBColor, FillMode
    MemblocksExtends\IMCube= AIsFunction( 1 , "IMCube" ) ; 16 MBC Cube Memblock Number, X, Y, Size, RGBColor, FillMode
    MemblocksExtends\IMBox= AIsFunction( 1 , "IMBox" ) ; 17 MBC Box Memblock Number, Left, Top, Bottom, Right, RGBColor, FillMode
    MemblocksExtends\IMStretch= AIsFunction( 1 , "IMStretch" ) ; 18 MBC Stretch Image Source IM, Target IM
    MemblocksExtends\IMStretch2= AIsFunction( 1 , "IMStretch2" ) ; 19 MBC Stretch Image Source IM, Width, Height
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l MBC_Init()
  Retour.l = CallCFunctionFast( MemblocksExtends\MBC_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure MBC_Clear()
  CallCFunctionFast( MemblocksExtends\MBC_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_Count()
  Retour.l = CallCFunctionFast( MemblocksExtends\MBC_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_Delete( MemblockNumber.l )
  Retour.l = CallCFunctionFast( MemblocksExtends\MBC_Delete, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_CloneMemblock()
  Retour.l = CallCFunctionFast( MemblocksExtends\MBC_CloneMemblock )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMake( BytesSize.l )
  Retour.l = CallCFunctionFast( MemblocksExtends\MBC_DynamicMake, BytesSize )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromArray( ArrayName0 )
  Retour.l = CallCFunctionFast( MemblocksExtends\MBC_DynamicMakeFromArray, ArrayName0 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromBitmap( BitmapNumber.l )
  Retour.l = CallCFunctionFast( MemblocksExtends\MBC_DynamicMakeFromBitmap, BitmapNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromImage( ImageNumber.l )
  Retour.l = CallCFunctionFast( MemblocksExtends\MBC_DynamicMakeFromImage, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromMesh( MeshNumber.l )
  Retour.l = CallCFunctionFast( MemblocksExtends\MBC_DynamicMakeFromMesh, MeshNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromSound( SoundNumber.l )
  Retour.l = CallCFunctionFast( MemblocksExtends\MBC_DynamicMakeFromSound, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeMemblockImage( Width.l, Height.l, Depth.l )
  Retour.l = CallCFunctionFast( MemblocksExtends\MakeMemblockImage, Width, Height, Depth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure MBC_IMPlot( MemblockNumber.l, X.l, Y.l, RGBColor.l )
  CallCFunctionFast( MemblocksExtends\IMPlot, MemblockNumber, X, Y, RGBColor )
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_IMGetPixel( MemblockNumber.l, X.l, Y.l )
  Retour.l = CallCFunctionFast( MemblocksExtends\IMGetPixel, MemblockNumber, X, Y )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure MBC_IMCircle( MemblockNumber.l, X.l, Y.l, Diameter.l, RGBColor.l, FillMode.l )
  CallCFunctionFast( MemblocksExtends\IMCircle, MemblockNumber, X, Y, Diameter, RGBColor, FillMode )
 EndProcedure
;
; *********************************************************************
Procedure MBC_IMCube( MemblockNumber.l, X.l, Y.l, Size.l, RGBColor.l, FillMode.l )
  CallCFunctionFast( MemblocksExtends\IMCube, MemblockNumber, X, Y, Size, RGBColor, FillMode )
 EndProcedure
;
; *********************************************************************
Procedure MBC_IMBox( MemblockNumber.l, Left.l, Top.l, Bottom.l, Right.l, RGBColor.l, FillMode.l )
  CallCFunctionFast( MemblocksExtends\IMBox, MemblockNumber, Left, Top, Bottom, Right, RGBColor, FillMode )
 EndProcedure
;
; *********************************************************************
Procedure MBC_IMStretch( SourceIM.l, TargetIM.l )
  CallCFunctionFast( MemblocksExtends\IMStretch, SourceIM, TargetIM )
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_IMStretch2( SourceIM.l, Width.l, Height.l )
  Retour.l = CallCFunctionFast( MemblocksExtends\IMStretch2, SourceIM, Width, Height )
  ProcedureReturn Retour
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 8
; Folding = ----