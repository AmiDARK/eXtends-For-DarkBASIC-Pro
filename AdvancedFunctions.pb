; ***************************************************************************************
Procedure DisplayErrorMessage()
  MessageRequester( "eXtends Warning", "If you see that message it's because a command was not found and redirected here to prevent from crashs" )
 EndProcedure
; ***************************************************************************************
Procedure.l AIsFunction( OpenDLL.l, FunctionName$ )
  Retour.l = GetFunction( OpenDLL, FunctionName$ )
  If DebugMode = 1
;    UseFile( 2 )
    WriteStringN( 2, FunctionName$ + " : " + Str( Retour ) )
   EndIf
  If Retour = 0
    If DebugMode = 1
      MessageRequester( "Warning, Function not found :", FunctionName$, 0 )
     EndIf
    OpenLibrary( 2, "DBProExtends.dll" )
    Retour = GetFunction( 2, "DBProExtends_NotFound" )
    CloseLibrary( 2 )
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
Procedure.f GetDistance( X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f )
  XDist.f = X1 - X2 : YDist.f = Y1 - Y2 : ZDist.f = Z1 - Z2
  Dist.f = Sqr( ( XDist*XDist ) + ( YDist*YDist ) + ( ZDist*ZDist ) )
  ProcedureReturn Dist
 EndProcedure
; *************************************************************************************** Convert Degrees 2 Radians
Procedure.f Deg2Rad( Angle.f )
  AngleFinal.f = ( Angle.f * 3.14159265 ) / 180.0
  ProcedureReturn AngleFinal
 EndProcedure
; *************************************************************************************** Convert Radians 2 Degrees
Procedure.f Rad2Deg( Angle.f )
  AngleFinal.f = ( Angle.f * 180 ) / 3.14159265
  ProcedureReturn AngleFinal
 EndProcedure
; *************************************************************************************** Read Unsigned Byte from file.
Procedure.l ReadUByte( FileID.l )
  VALUE.l = ReadByte( FileID ) & $FF
  ProcedureReturn VALUE
 EndProcedure
; ***************************************************************************************
Procedure.s MyDeleteString( Pointer.l )
  If Pointer <> 0
    InCheck.s = PeekS( Pointer, -1, #PB_UTF8 )
    If Len( InCheck ) > 3 : 
      CallCFunctionFast( *GlobPtr\CreateDeleteString, Pointer, 0 )
     EndIf
   Else
    InCheck = ""
   EndIf
  ProcedureReturn InCheck
 EndProcedure
; ***************************************************************************************

; IDE Options = PureBasic 4.40 Beta 5 (Windows - x86)
; CursorPosition = 45
; FirstLine = 22
; Folding = --