ProcedureCDLL.l MyFileExist( File.l )
  If File <> 0
    Fichier.s = MyDeleteString( File )
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    If DSKInitialized = 1
      If ReadFile( 1, Fichier )
        CloseFile( 1 )
        Target.l = 1
       Else
        Target = 0
       EndIf
     Else
      Target = 0
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 

; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 4
; Folding = -