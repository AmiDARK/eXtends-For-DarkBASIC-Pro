; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
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
Procedure.l MakeMemblocksExtendMemblockImage( Width.l, Height.l, Depth.l )
  Retour.l = CallCFunctionFast( MemblocksExtends\MakeMemblockImage, Width, Height, Depth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure IMPlot( MemblockNumber.l, X.l, Y.l, RGBColor.l )
  CallCFunctionFast( MemblocksExtends\IMPlot, MemblockNumber, X, Y, RGBColor )
 EndProcedure
;
; *********************************************************************
Procedure.l IMGetPixel( MemblockNumber.l, X.l, Y.l )
  Retour.l = CallCFunctionFast( MemblocksExtends\IMGetPixel, MemblockNumber, X, Y )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure IMCircle( MemblockNumber.l, X.l, Y.l, Diameter.l, RGBColor.l, FillMode.l )
  CallCFunctionFast( MemblocksExtends\IMCircle, MemblockNumber, X, Y, Diameter, RGBColor, FillMode )
 EndProcedure
;
; *********************************************************************
Procedure IMCube( MemblockNumber.l, X.l, Y.l, Size.l, RGBColor.l, FillMode.l )
  CallCFunctionFast( MemblocksExtends\IMCube, MemblockNumber, X, Y, Size, RGBColor, FillMode )
 EndProcedure
;
; *********************************************************************
Procedure IMBox( MemblockNumber.l, Left.l, Top.l, Bottom.l, Right.l, RGBColor.l, FillMode.l )
  CallCFunctionFast( MemblocksExtends\IMBox, MemblockNumber, Left, Top, Bottom, Right, RGBColor, FillMode )
 EndProcedure
;
; *********************************************************************
Procedure IMStretch( SourceIM.l, TargetIM.l )
  CallCFunctionFast( MemblocksExtends\IMStretch, SourceIM, TargetIM )
 EndProcedure
;
; *********************************************************************
Procedure.l IMStretch2( SourceIM.l, Width.l, Height.l )
  Retour.l = CallCFunctionFast( MemblocksExtends\IMStretch2, SourceIM, Width, Height )
  ProcedureReturn Retour
 EndProcedure
;
