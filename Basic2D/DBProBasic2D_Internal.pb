 
;Procedure.l FileExist( File.s )
;  If ReadFile( 255 , File ) = 1 : EXIST.l = 1 : CloseFile( 255 ) : Else : EXIST.l = 0 : EndIf
;  ProcedureReturn EXIST
; EndProcedure
;
Procedure.s GetDir()
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  If OpenLibrary( 12 , "DBProFileDebug.dll" ) 
    coreptr_handle.l = GetFunction( 12 , "?GetDir@@YAKK@Z" )
    defpath.l = CallCFunctionFast( coreptr_handle );
    DEFAULTPATH$ = PeekS( defpath )
    CallCFunctionFast(*GlobPtr\CreateDeleteString, defpath , 0 )
    CloseLibrary( 12 );
   EndIf
  ProcedureReturn DEFAULTPATH$
EndProcedure
;
;Procedure.f Deg2Rad( Angle.f )
;  AngleFinal.f = ( Angle.f * 3.14159265 ) / 180.0
;  ProcedureReturn AngleFinal
; EndProcedure
;
;Procedure.f Rad2Deg( Angle.f )
;  AngleFinal.f = ( Angle.f * 180.0 ) / 3.14159265
;  ProcedureReturn AngleFinal
; EndProcedure
;
;Procedure.l GetDistance( x1.l , y1.l , z1.l , x2.l , y2.l , z2.l )
;  a.l = x2 - x1 : b.l = y2 - y1 : c.l = z2 - z1
;  DistanceReelle.l = Sqr( ( a*a ) + ( b*b ) + ( c*c ) )
;  ProcedureReturn DistanceReelle
; EndProcedure
;
; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 13
; Folding = -