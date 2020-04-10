; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckBitmapExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Bitmaps.dll")
    BitmapExtends\BMP_Init= AIsFunction( 1 , "BMP_Init" ) ; 1 BMP Initialized 
    BitmapExtends\BMP_Clear= AIsFunction( 1 , "BMP_Clear" ) ; 2 BMP Clear All Bitmaps 
    BitmapExtends\BMP_Count= AIsFunction( 1 , "BMP_Count" ) ; 3 BMP Exist Bitmap Count 
    BitmapExtends\BMP_Delete= AIsFunction( 1 , "BMP_Delete" ) ; 4 BMP Delete Bitmap Bitmap Number
    BitmapExtends\BMP_DynamicLoad= AIsFunction( 1 , "BMP_DynamicLoad" ) ; 5 BMP Load Bitmap FileName$
    BitmapExtends\BMP_DynamicClone= AIsFunction( 1 , "BMP_DynamicClone" ) ; 6 BMP Clone Bitmap Source Bitmap
    BitmapExtends\BMP_DynamicMake= AIsFunction( 1 , "BMP_DynamicMake" ) ; 7 BMP Make Bitmap Width, Height
    BitmapExtends\BMP_MakeBitmapFromMemblock= AIsFunction( 1 , "BMP_MakeBitmapFromMemblock" ) ; 8 BMP Make Bitmap From Memblock Memblock Number
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -