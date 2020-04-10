; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure XtImageStruct
  Image_Init.l : IMG_Clear.l : IMG_Count.l : IMG_Delete.l
  IMG_DynamicLoad.l : IMG_DynamicLoadF.l : IMG_MakeImageFromMemblock.l : IMG_GrabImage.l
  IMG_GrabImageF.l : IMG_Mosaic1.l : IMG_Mosaic2.l : IMG_Wobble1.l
  IMG_Wobble2.l : IMG_SetWobble.l : IMG_DOT3Generate.l : IMG_StaticLoad.l
  IMG_StaticLoadF.l : IMG_SetCameraToImage.l : IMG_SetCameraToImage1.l : IMG_GREYGenerate.l
 EndStructure
Global XtImage.XtImageStruct

Procedure.l CheckImageExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Images.dll" )
    XtImage\Image_Init= AIsFunction( 1 , "Image_Init" ) ; 1 IMG Initialized 
    XtImage\IMG_Clear= AIsFunction( 1 , "IMG_Clear" ) ; 2 IMG Clear 
    XtImage\IMG_Count= AIsFunction( 1 , "IMG_Count" ) ; 3 IMG Get Count 
    XtImage\IMG_Delete= AIsFunction( 1 , "IMG_Delete" ) ; 4 IMG Delete Image ImageNumber
    XtImage\IMG_DynamicLoad= AIsFunction( 1 , "IMG_DynamicLoad" ) ; 5 IMG Load Image Filename$
    XtImage\IMG_DynamicLoadF= AIsFunction( 1 , "IMG_DynamicLoadF" ) ; 6 IMG Load Image Filename$, Flag
    XtImage\IMG_MakeImageFromMemblock= AIsFunction( 1 , "IMG_MakeImageFromMemblock" ) ; 7 IMG Make Image From Memblock Memblock Number
    XtImage\IMG_GrabImage= AIsFunction( 1 , "IMG_GrabImage" ) ; 8 IMG Make Image Left, Top, Right, Bottom
    XtImage\IMG_GrabImageF= AIsFunction( 1 , "IMG_GrabImageF" ) ; 9 IMG Make Image Left, Top, Right, Bottom, Flag
    XtImage\IMG_Mosaic1= AIsFunction( 1 , "IMG_Mosaic1" ) ; 10 IMG Mosaic SourceImage, Factor, RandomMode
    XtImage\IMG_Mosaic2= AIsFunction( 1 , "IMG_Mosaic2" ) ; 11 IMG Mosaic SourceImage, Factor, RandomMode, TargetImage
    XtImage\IMG_Wobble1= AIsFunction( 1 , "IMG_Wobble1" ) ; 12 IMG Wobble SourceImage
    XtImage\IMG_Wobble2= AIsFunction( 1 , "IMG_Wobble2" ) ; 13 IMG Wobble SourceImage, TargetImage
    XtImage\IMG_SetWobble= AIsFunction( 1 , "IMG_SetWobble" ) ; 14 IMG Set Wobble Amplitude, Speed, Step
    XtImage\IMG_DOT3Generate= AIsFunction( 1 , "IMG_DOT3Generate" ) ; 15 IMG Generate DOT3 SourceImage, Smooth, Steep
    XtImage\IMG_StaticLoad= AIsFunction( 1 , "IMG_StaticLoad" ) ; 16 IMG Load Image FileName$, ImageID
    XtImage\IMG_StaticLoadF= AIsFunction( 1 , "IMG_StaticLoadF" ) ; 17 IMG Load Image FileName$, ImageID, TextureFlag
    XtImage\IMG_SetCameraToImage= AIsFunction( 1 , "IMG_SetCameraToImage" ) ; 18 IMG Set Camera To Image CameraID, Width, Height
    XtImage\IMG_SetCameraToImage1= AIsFunction( 1 , "IMG_SetCameraToImage1" ) ; 19 IMG Set Camera To Image CameraID, Width, Height, GenerateAlpha
    XtImage\IMG_GREYGenerate= AIsFunction( 1 , "IMG_GREYGenerate" ) ; 20 IMG Generate HeightMap SourceImage
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l Image_Init()
  Retour.l = CallCFunctionFast( XtImage\Image_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure IMG_Clear()
  CallCFunctionFast( XtImage\IMG_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Count()
  Retour.l = CallCFunctionFast( XtImage\IMG_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Delete( ImageNumber.l )
  Retour.l = CallCFunctionFast( XtImage\IMG_Delete, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_DynamicLoad( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( XtImage\IMG_DynamicLoad, FilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_DynamicLoadF( Filename.s, Flag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( XtImage\IMG_DynamicLoadF, FilenamePTR, Flag )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_MakeImageFromMemblock( MemblockNumber.l )
  Retour.l = CallCFunctionFast( XtImage\IMG_MakeImageFromMemblock, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_GrabImage( Left.l, Top.l, Right.l, Bottom.l )
  Retour.l = CallCFunctionFast( XtImage\IMG_GrabImage, Left, Top, Right, Bottom )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_GrabImageF( Left.l, Top.l, Right.l, Bottom.l, Flag.l )
  Retour.l = CallCFunctionFast( XtImage\IMG_GrabImageF, Left, Top, Right, Bottom, Flag )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Mosaic1( SourceImage.l, Factor.l, RandomMode.l )
  Retour.l = CallCFunctionFast( XtImage\IMG_Mosaic1, SourceImage, Factor, RandomMode )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Mosaic2( SourceImage.l, Factor.l, RandomMode.l, TargetImage.l )
  Retour.l = CallCFunctionFast( XtImage\IMG_Mosaic2, SourceImage, Factor, RandomMode, TargetImage )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Wobble1( SourceImage.l )
  Retour.l = CallCFunctionFast( XtImage\IMG_Wobble1, SourceImage )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Wobble2( SourceImage.l, TargetImage.l )
  Retour.l = CallCFunctionFast( XtImage\IMG_Wobble2, SourceImage, TargetImage )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure IMG_SetWobble( Amplitude.l, Speed.l, Steep.l )
  CallCFunctionFast( XtImage\IMG_SetWobble, Amplitude, Speed, Steep )
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_DOT3Generate( SourceImage.l, Smooth.l, Steep.l )
  Retour.l = CallCFunctionFast( XtImage\IMG_DOT3Generate, SourceImage, Smooth, Steep )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure IMG_StaticLoad( FileName.s, ImageID.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  CallCFunctionFast( XtImage\IMG_StaticLoad, FileNamePTR, ImageID )
 EndProcedure
;
; *********************************************************************
Procedure IMG_StaticLoadF( FileName.s, ImageID.l, TextureFlag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  CallCFunctionFast( XtImage\IMG_StaticLoadF, FileNamePTR, ImageID, TextureFlag )
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_SetCameraToImage( CameraID.l, Width.l, Height.l )
  Retour.l = CallCFunctionFast( XtImage\IMG_SetCameraToImage, CameraID, Width, Height )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_SetCameraToImage1( CameraID.l, Width.l, Height.l, GenerateAlpha.l )
  Retour.l = CallCFunctionFast( XtImage\IMG_SetCameraToImage1, CameraID, Width, Height, GenerateAlpha )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_GREYGenerate( SourceImage.l )
  Retour.l = CallCFunctionFast( XtImage\IMG_GREYGenerate, SourceImage )
  ProcedureReturn Retour
 EndProcedure
;


; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 12
; Folding = ----