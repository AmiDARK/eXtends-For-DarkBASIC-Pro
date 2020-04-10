; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_Basic2DStruct
  Ink.l : Box.l : Dot.l : Circle.l
  Elipse.l : Line.l : Rgb.l : RgbR.l
  RgbG.l : RgbB.l : ClearRgb.l : GetPoint.l
  Lock.l : Unlock.l : BoxGradient.l : Dot1.l
  GetPixelPtr.l : GetPixelPitch.l : 
 EndStructure

Procedure.l CheckBasic2D()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProBasic2DDebug.dll")
    DB_Basic2D\Ink= AIsFunction( 1 , "?Ink@@YAXKK@Z" ) ; 1 INK Foreground Color,Background Color
    DB_Basic2D\Box= AIsFunction( 1 , "?Box@@YAXHHHH@Z" ) ; 2 BOX Left,Top,Right,Bottom
    DB_Basic2D\Dot= AIsFunction( 1 , "?Dot@@YAXHH@Z" ) ; 3 DOT X,Y
    DB_Basic2D\Circle= AIsFunction( 1 , "?Circle@@YAXHHH@Z" ) ; 4 CIRCLE X,Y,Radius
    DB_Basic2D\Elipse= AIsFunction( 1 , "?Elipse@@YAXHHHH@Z" ) ; 5 ELLIPSE X,Y,X Radius,Y Radius
    DB_Basic2D\Line= AIsFunction( 1 , "?Line@@YAXHHHH@Z" ) ; 6 LINE X1,Y1,X2,Y2
    DB_Basic2D\Rgb= AIsFunction( 1 , "?Rgb@@YAKHHH@Z" ) ; 7 RGB Red Value,Green Value,Blue Value
    DB_Basic2D\RgbR= AIsFunction( 1 , "?RgbR@@YAHK@Z" ) ; 8 RGBR Red Value
    DB_Basic2D\RgbG= AIsFunction( 1 , "?RgbG@@YAHK@Z" ) ; 9 RGBG Green Value
    DB_Basic2D\RgbB= AIsFunction( 1 , "?RgbB@@YAHK@Z" ) ; 10 RGBB Blue Value
    DB_Basic2D\ClearRgb= AIsFunction( 1 , "?ClearRgb@@YAXK@Z" ) ; 11 CLS Color Value
    DB_Basic2D\GetPoint= AIsFunction( 1 , "?GetPoint@@YAKHH@Z" ) ; 12 POINT X,Y
    DB_Basic2D\Lock= AIsFunction( 1 , "?Lock@@YAXXZ" ) ; 13 LOCK PIXELS 
    DB_Basic2D\Unlock= AIsFunction( 1 , "?Unlock@@YAXXZ" ) ; 14 UNLOCK PIXELS 
    DB_Basic2D\BoxGradient= AIsFunction( 1 , "?BoxGradient@@YAXHHHHKKKK@Z" ) ; 15 BOX Left, Top, Right, Bottom, Color1, Color2, Color3, Color4
    DB_Basic2D\Dot1= AIsFunction( 1 , "?Dot@@YAXHHK@Z" ) ; 16 DOT X,Y,Color Value
    DB_Basic2D\GetPixelPtr= AIsFunction( 1 , "?GetPixelPtr@@YAKXZ" ) ; 17 GET PIXELS POINTER 
    DB_Basic2D\GetPixelPitch= AIsFunction( 1 , "?GetPixelPitch@@YAKXZ" ) ; 18 GET PIXELS PITCH 
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBInk( ForegroundColor.l, BackgroundColor.l )
  CallCFunctionFast( *DB_Basic2D\Ink, ForegroundColor, BackgroundColor )
 EndProcedure
;
; *********************************************************************
Procedure DBBox( Left.l, Top.l, Right.l, Bottom.l )
  CallCFunctionFast( *DB_Basic2D\Box, Left, Top, Right, Bottom )
 EndProcedure
;
; *********************************************************************
Procedure DBDot( X.l, Y.l )
  CallCFunctionFast( *DB_Basic2D\Dot, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBCircle( X.l, Y.l, Radius.l )
  CallCFunctionFast( *DB_Basic2D\Circle, X, Y, Radius )
 EndProcedure
;
; *********************************************************************
Procedure DBElipse( X.l, Y.l, XRadius.l, YRadius.l )
  CallCFunctionFast( *DB_Basic2D\Elipse, X, Y, XRadius, YRadius )
 EndProcedure
;
; *********************************************************************
Procedure DBLine( X1.l, Y1.l, X2.l, Y2.l )
  CallCFunctionFast( *DB_Basic2D\Line, X1, Y1, X2, Y2 )
 EndProcedure
;
; *********************************************************************
Procedure.l DBRgb( RedValue.l, GreenValue.l, BlueValue.l )
  Retour.l = CallCFunctionFast( *DB_Basic2D\Rgb, RedValue, GreenValue, BlueValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBRgbR( RedValue.l )
  Retour.l = CallCFunctionFast( *DB_Basic2D\RgbR, RedValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBRgbG( GreenValue.l )
  Retour.l = CallCFunctionFast( *DB_Basic2D\RgbG, GreenValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBRgbB( BlueValue.l )
  Retour.l = CallCFunctionFast( *DB_Basic2D\RgbB, BlueValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBClearRgb( ColorValue.l )
  CallCFunctionFast( *DB_Basic2D\ClearRgb, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetPoint( X.l, Y.l )
  Retour.l = CallCFunctionFast( *DB_Basic2D\GetPoint, X, Y )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBLock()
  CallCFunctionFast( *DB_Basic2D\Lock )
 EndProcedure
;
; *********************************************************************
Procedure DBUnlock()
  CallCFunctionFast( *DB_Basic2D\Unlock )
 EndProcedure
;
; *********************************************************************
Procedure DBBoxGradient( Left.l, Top.l, Right.l, Bottom.l, Color1.l, Color2.l, Color3.l, Color4.l )
  CallCFunctionFast( *DB_Basic2D\BoxGradient, Left, Top, Right, Bottom, Color1, Color2, Color3, Color4 )
 EndProcedure
;
; *********************************************************************
Procedure DBDot1( X.l, Y.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic2D\Dot1, X, Y, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetPixelPtr()
  Retour.l = CallCFunctionFast( *DB_Basic2D\GetPixelPtr )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetPixelPitch()
  Retour.l = CallCFunctionFast( *DB_Basic2D\GetPixelPitch )
  ProcedureReturn Retour
 EndProcedure
;

