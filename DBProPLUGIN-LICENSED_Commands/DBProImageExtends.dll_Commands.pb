; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l Image_Init()
  Retour.l = CallCFunctionFast( ImageExtends\Image_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure IMG_Clear()
  CallCFunctionFast( ImageExtends\IMG_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Count()
  Retour.l = CallCFunctionFast( ImageExtends\IMG_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Delete( ImageNumber.l )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_Delete, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_DynamicLoad( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_DynamicLoad, FilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_DynamicLoadF( Filename.s, Flag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_DynamicLoadF, FilenamePTR, Flag )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_MakeImageFromMemblock( MemblockNumber.l )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_MakeImageFromMemblock, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_GrabImage( Left.l, Top.l, Right.l, Bottom.l )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_GrabImage, Left, Top, Right, Bottom )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_GrabImageF( Left.l, Top.l, Right.l, Bottom.l, Flag.l )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_GrabImageF, Left, Top, Right, Bottom, Flag )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Mosaic1( SourceImage.l, Factor.l, RandomMode.l )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_Mosaic1, SourceImage, Factor, RandomMode )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Mosaic2( SourceImage.l, Factor.l, RandomMode.l, TargetImage.l )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_Mosaic2, SourceImage, Factor, RandomMode, TargetImage )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Wobble1( SourceImage.l )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_Wobble1, SourceImage )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Wobble2( SourceImage.l, TargetImage.l )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_Wobble2, SourceImage, TargetImage )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure IMG_SetWobble( Amplitude.l, Speed.l, Step.l )
  CallCFunctionFast( ImageExtends\IMG_SetWobble, Amplitude, Speed, Step )
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_DOT3Generate( SourceImage.l, Smooth.l, Steep.l )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_DOT3Generate, SourceImage, Smooth, Steep )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure IMG_StaticLoad( FileName.s, ImageID.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  CallCFunctionFast( ImageExtends\IMG_StaticLoad, FileNamePTR, ImageID )
 EndProcedure
;
; *********************************************************************
Procedure IMG_StaticLoadF( FileName.s, ImageID.l, TextureFlag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  CallCFunctionFast( ImageExtends\IMG_StaticLoadF, FileNamePTR, ImageID, TextureFlag )
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_SetCameraToImage( CameraID.l, Width.l, Height.l )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_SetCameraToImage, CameraID, Width, Height )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_SetCameraToImage1( CameraID.l, Width.l, Height.l, GenerateAlpha.l )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_SetCameraToImage1, CameraID, Width, Height, GenerateAlpha )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_GREYGenerate( SourceImage.l )
  Retour.l = CallCFunctionFast( ImageExtends\IMG_GREYGenerate, SourceImage )
  ProcedureReturn Retour
 EndProcedure
;
