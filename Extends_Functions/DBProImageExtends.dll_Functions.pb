; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 13.12.05
;
Procedure.l CheckImageExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Images.dll")
    ImageExtends\Image_Init= AIsFunction( 1 , "Image_Init" ) ; 1 IMG Initialized 
    ImageExtends\IMG_Clear= AIsFunction( 1 , "IMG_Clear" ) ; 2 IMG Clear 
    ImageExtends\IMG_Count= AIsFunction( 1 , "IMG_Count" ) ; 3 IMG Get Count 
    ImageExtends\IMG_Delete= AIsFunction( 1 , "IMG_Delete" ) ; 4 IMG Delete Image ImageNumber
    ImageExtends\IMG_DynamicLoad= AIsFunction( 1 , "IMG_DynamicLoad" ) ; 5 IMG Load Image Filename$, Flag
    ImageExtends\IMG_MakeImageFromMemblock= AIsFunction( 1 , "IMG_MakeImageFromMemblock" ) ; 6 IMG Make Image From Memblock Memblock Number
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -