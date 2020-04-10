; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 13.12.05
;
Structure XtBitmapStruct
  BMP_Init.l : BMP_Clear.l : BMP_Count.l : BMP_Delete.l
  BMP_DynamicLoad.l : BMP_DynamicClone.l : BMP_DynamicMake.l : BMP_MakeBitmapFromMemblock.l
 EndStructure
Global XtBitmap.XtBitmapStruct

Procedure.l CheckBitmapExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Bitmaps.dll")
    XtBitmap\BMP_Init= AIsFunction( 1 , "BMP_Init" ) ; 1 BMP Initialized 
    XtBitmap\BMP_Clear= AIsFunction( 1 , "BMP_Clear" ) ; 2 BMP Clear All Bitmaps 
    XtBitmap\BMP_Count= AIsFunction( 1 , "BMP_Count" ) ; 3 BMP Exist Bitmap Count 
    XtBitmap\BMP_Delete= AIsFunction( 1 , "BMP_Delete" ) ; 4 BMP Delete Bitmap Bitmap Number
    XtBitmap\BMP_DynamicLoad= AIsFunction( 1 , "BMP_DynamicLoad" ) ; 5 BMP Load Bitmap FileName$
    XtBitmap\BMP_DynamicClone= AIsFunction( 1 , "BMP_DynamicClone" ) ; 6 BMP Clone Bitmap Source Bitmap
    XtBitmap\BMP_DynamicMake= AIsFunction( 1 , "BMP_DynamicMake" ) ; 7 BMP Make Bitmap Width, Height
    XtBitmap\BMP_MakeBitmapFromMemblock= AIsFunction( 1 , "BMP_MakeBitmapFromMemblock" ) ; 8 BMP Make Bitmap From Memblock Memblock Number
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l BMP_Init()
  Retour.l = CallCFunctionFast( XtBitmap\BMP_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure BMP_Clear()
  CallCFunctionFast( XtBitmap\BMP_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_Count()
  Retour.l = CallCFunctionFast( XtBitmap\BMP_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_Delete( BitmapNumber.l )
  Retour.l = CallCFunctionFast( XtBitmap\BMP_Delete, BitmapNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_DynamicLoad( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( XtBitmap\BMP_DynamicLoad, FileNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_DynamicClone()
  Retour.l = CallCFunctionFast( XtBitmap\BMP_DynamicClone )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_DynamicMake( Width.l, Height.l )
  Retour.l = CallCFunctionFast( XtBitmap\BMP_DynamicMake, Width, Height )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_MakeBitmapFromMemblock( MemblockNumber.l )
  Retour.l = CallCFunctionFast( XtBitmap\BMP_MakeBitmapFromMemblock, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;


; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 9
; Folding = --