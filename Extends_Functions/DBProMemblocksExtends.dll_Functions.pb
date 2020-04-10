; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 13.12.05
;
Procedure.l CheckMemblocksExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Memblocks.dll")
    MemblocksExtends\BMP_Init= AIsFunction( 1 , "BMP_Init" ) ; 1 MBC Initialized 
    MemblocksExtends\BMP_Clear= AIsFunction( 1 , "BMP_Clear" ) ; 2 MBC Clear All Memblocks 
    MemblocksExtends\BMP_Count= AIsFunction( 1 , "BMP_Count" ) ; 3 MBC Exist Memblock Count 
    MemblocksExtends\BMP_Delete= AIsFunction( 1 , "BMP_Delete" ) ; 4 MBC Delete Memblock Memblock Number
    MemblocksExtends\BMP_CloneMemblock= AIsFunction( 1 , "BMP_CloneMemblock" ) ; 5 MBC Clone Memblock Source Memblock
    MemblocksExtends\BMP_DynamicMake= AIsFunction( 1 , "BMP_DynamicMake" ) ; 6 MBC Make Memblock Bytes Size
    MemblocksExtends\MBC_DynamicMakeFromArray= AIsFunction( 1 , "MBC_DynamicMakeFromArray" ) ; 7 MBC Make Memblock From Array Array Name(0)
    MemblocksExtends\MBC_DynamicMakeFromBitmap= AIsFunction( 1 , "MBC_DynamicMakeFromBitmap" ) ; 8 MBC Make Memblock From Bitmap Bitmap Number
    MemblocksExtends\MBC_DynamicMakeFromImage= AIsFunction( 1 , "MBC_DynamicMakeFromImage" ) ; 9 MBC Make Memblock From Image Image Number
    MemblocksExtends\MBC_DynamicMakeFromMesh= AIsFunction( 1 , "MBC_DynamicMakeFromMesh" ) ; 10 MBC Make Memblock From Mesh Mesh Number
    MemblocksExtends\MBC_DynamicMakeFromSound= AIsFunction( 1 , "MBC_DynamicMakeFromSound" ) ; 11 MBC Make Memblock From Sound Sound Number
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -