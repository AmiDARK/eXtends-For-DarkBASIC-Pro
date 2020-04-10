; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_ImageStruct
  LoadEx.l : SaveEx.l : GrabImageEx.l : PasteEx.l
  DeleteEx.l : GetExistEx.l : SetColorKey.l : PasteEx1.l
  RotateImageEx.l : LoadEx1.l : GrabImageEx1.l : SaveIconFromImage.l
  FreeIcon.l : LoadIconA.l : SaveEx1.l : GetWidth.l
  GetHeight.l : LoadEx2.l : 
 EndStructure

Procedure.l CheckImage()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProImageDebug.dll")
    DB_Image\LoadEx= AIsFunction( 1 , "?LoadEx@@YAXPADH@Z" ) ; 1 LOAD IMAGE Filename, Image Number
    DB_Image\SaveEx= AIsFunction( 1 , "?SaveEx@@YAXPADH@Z" ) ; 2 SAVE IMAGE Filename, Image Number
    DB_Image\GrabImageEx= AIsFunction( 1 , "?GrabImageEx@@YAXHHHHH@Z" ) ; 3 GET IMAGE Image Number, Left, Top, Right, Bottom
    DB_Image\PasteEx= AIsFunction( 1 , "?PasteEx@@YAXHHH@Z" ) ; 4 PASTE IMAGE Image Number, X, Y
    DB_Image\DeleteEx= AIsFunction( 1 , "?DeleteEx@@YAXH@Z" ) ; 5 DELETE IMAGE Image Number
    DB_Image\GetExistEx= AIsFunction( 1 , "?GetExistEx@@YAHH@Z" ) ; 6 IMAGE EXIST Image Number
    DB_Image\SetColorKey= AIsFunction( 1 , "?SetColorKey@@YAXHHH@Z" ) ; 7 SET IMAGE COLORKEY Red Value, Green Value, Blue Value
    DB_Image\PasteEx1= AIsFunction( 1 , "?PasteEx@@YAXHHHH@Z" ) ; 8 PASTE IMAGE Image Number, X, Y, Transparency
    DB_Image\RotateImageEx= AIsFunction( 1 , "?RotateImageEx@@YAXHH@Z" ) ; 9 ROTATE IMAGE Image Number, Angle
    DB_Image\LoadEx1= AIsFunction( 1 , "?LoadEx@@YAXPADHH@Z" ) ; 10 LOAD IMAGE Filename, Image Number, Texture Flag
    DB_Image\GrabImageEx1= AIsFunction( 1 , "?GrabImageEx@@YAXHHHHHH@Z" ) ; 11 GET IMAGE Image Number, Left, Top, Right, Bottom, Texture Flag
    DB_Image\SaveIconFromImage= AIsFunction( 1 , "?SaveIconFromImage@@YAXPADH@Z" ) ; 12 SAVE ICON FROM IMAGE Icon Filename, Image Number
    DB_Image\FreeIcon= AIsFunction( 1 , "?FreeIcon@@YAXK@Z" ) ; 13 DELETE ICON Icon Handle
    DB_Image\LoadIconA= AIsFunction( 1 , "?LoadIconA@@YAKPAD@Z" ) ; 14 LOAD ICON Icon Filename
    DB_Image\SaveEx1= AIsFunction( 1 , "?SaveEx@@YAXPADHH@Z" ) ; 15 SAVE IMAGE Filename, Image Number, Compression Mode
    DB_Image\GetWidth= AIsFunction( 1 , "?GetWidth@@YAHH@Z" ) ; 16 IMAGE WIDTH Image Number
    DB_Image\GetHeight= AIsFunction( 1 , "?GetHeight@@YAHH@Z" ) ; 17 IMAGE HEIGHT Image Number
    DB_Image\LoadEx2= AIsFunction( 1 , "?LoadEx@@YAXPADHHH@Z" ) ; 18 LOAD IMAGE Filename, Image Number, Texture Flag, Divide Texture Size
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBLoadImage( Filename.s, ImageNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Image\LoadEx, FilenamePTR, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveImage( Filename.s, ImageNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Image\SaveEx, FilenamePTR, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGrabImage( ImageNumber.l, Left.l, Top.l, Right.l, Bottom.l )
  CallCFunctionFast( *DB_Image\GrabImageEx, ImageNumber, Left, Top, Right, Bottom )
 EndProcedure
;
; *********************************************************************
Procedure DBPasteImage( ImageNumber.l, X.l, Y.l )
  CallCFunctionFast( *DB_Image\PasteEx, ImageNumber, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteImage( ImageNumber.l )
  CallCFunctionFast( *DB_Image\DeleteEx, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetImageExist( ImageNumber.l )
  Retour.l = CallCFunctionFast( *DB_Image\GetExistEx, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetColorKey( RedValue.l, GreenValue.l, BlueValue.l )
  CallCFunctionFast( *DB_Image\SetColorKey, RedValue, GreenValue, BlueValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPasteImage1( ImageNumber.l, X.l, Y.l, Transparency.l )
  CallCFunctionFast( *DB_Image\PasteEx1, ImageNumber, X, Y, Transparency )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateImage( ImageNumber.l, Angle.l )
  CallCFunctionFast( *DB_Image\RotateImageEx, ImageNumber, Angle )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadImage1( Filename.s, ImageNumber.l, TextureFlag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Image\LoadEx1, FilenamePTR, ImageNumber, TextureFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBGrabImage1( ImageNumber.l, Left.l, Top.l, Right.l, Bottom.l, TextureFlag.l )
  CallCFunctionFast( *DB_Image\GrabImageEx1, ImageNumber, Left, Top, Right, Bottom, TextureFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveIconFromImage( IconFilename.s, ImageNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @IconFilenamePTR.l, Len( IconFilename ) + 1 ) ; CreateString
  PokeS( IconFilenamePTR, IconFilename )
  CallCFunctionFast( *DB_Image\SaveIconFromImage, IconFilenamePTR, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBFreeIcon( IconHandle.l )
  CallCFunctionFast( *DB_Image\FreeIcon, IconHandle )
 EndProcedure
;
; *********************************************************************
Procedure.l DBLoadIconA( IconFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @IconFilenamePTR.l, Len( IconFilename ) + 1 ) ; CreateString
  PokeS( IconFilenamePTR, IconFilename )
  Retour.l = CallCFunctionFast( *DB_Image\LoadIconA, IconFilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSaveImage1( Filename.s, ImageNumber.l, CompressionMode.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Image\SaveEx1, FilenamePTR, ImageNumber, CompressionMode )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetImageWidth( ImageNumber.l )
  Retour.l = CallCFunctionFast( *DB_Image\GetWidth, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetImageHeight( ImageNumber.l )
  Retour.l = CallCFunctionFast( *DB_Image\GetHeight, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBLoadImage2( Filename.s, ImageNumber.l, TextureFlag.l, DivideTextureSize.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Image\LoadEx2, FilenamePTR, ImageNumber, TextureFlag, DivideTextureSize )
 EndProcedure
;

