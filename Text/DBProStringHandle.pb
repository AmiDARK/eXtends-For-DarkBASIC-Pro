Procedure.s GetLeftFrom( InText.s, Char.s )
  If Len( InText ) > 0
    Pos = Len( InText ) +1
    Repeat
      Pos = Pos - 1
     Until Mid( InText, Pos, 1 ) = Char Or Pos = 1
    If Mid( InText, Pos, 1 ) = Char
      OutText.s = Left( InText, Pos-1 )
     Else
      OutText = ""
     EndIf
   Else
    OutText = ""
   EndIf
  ProcedureReturn OutText
 EndProcedure

Procedure.s GetRightFrom( InText.s, Char.s )
  If Len( InText ) > 0
    Pos = Len( InText ) +1
    Repeat
      Pos = Pos - 1
     Until Mid( InText, Pos, 1 ) = Char Or Pos = 1
    If Mid( InText, Pos, 1 ) = Char
      OutText.s = Right( InText, Len( InText ) - Pos )
     Else
      OutText = ""
     EndIf
   Else
    OutText = ""
   EndIf
  ProcedureReturn OutText
 EndProcedure

ProcedureCDLL.l STR_ExtractFileName( Empty.l, Fichier.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  EmptyNULL.s = MyDeleteString( Empty )
;  If Empty <> 0
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Empty , 0 )
;   EndIf  
  Full.s = MyDeleteString( Fichier )
;  If Fichier <> 0
;    Full.s = PeekS( Fichier )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Fichier , 0 )
;   EndIf
  If TXTinitialized = 1
    If Len( Full ) > 0
      Pos.l = Len( Full )
      Repeat
        Pos = Pos - 1
       Until Mid( Full, Pos, 1 ) = "\" Or Pos = 0
      FileName.s = Right( Full, ( Len( Full ) ) - Pos )
     Else
      FileName.s = ""
     EndIf
   EndIf
  If Len( FileName ) > 0
    CallCFunctionFast(*GlobPtr\CreateDeleteString, @temp.l, Len( FileName ) + 1 ) ; CreateString
    PokeS( temp , FileName )
   Else
    temp = 0
   EndIf
  ProcedureReturn temp
 EndProcedure  


ProcedureCDLL.l STR_ExtractDrawer( Empty.l, Fichier.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  EmptyNULL.s = MyDeleteString( Empty )
;  If Empty <> 0
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Empty , 0 )
;   EndIf  
  Full.s = MyDeleteString( Fichier )
;  If Fichier <> 0
;    Full.s = PeekS( Fichier )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Fichier , 0 )
;   EndIf
  If TXTinitialized = 1
    If Len( Full ) > 0
      Pos.l = Len( Full )
      Repeat
        Pos = Pos - 1
       Until Mid( Full, Pos, 1 ) = "\" Or Pos = 0
      If Pos > 0
        Drawer.s = Left( Full, Pos )
       Else
        Drawer = ""
       EndIf
     Else
      Drawer = ""
     EndIf
   EndIf
  If Len( Drawer ) > 0
    CallCFunctionFast(*GlobPtr\CreateDeleteString, @temp.l, Len( Drawer ) + 1 ) ; CreateString
    PokeS( temp , Drawer )
   Else
    temp = 0
   EndIf
  ProcedureReturn temp
 EndProcedure  
  
ProcedureCDLL.l STR_GetFileWithoutExtension( Empty.l, Fichier.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  EmptyNULL.s = MyDeleteString( Empty )
;   If Empty <> 0
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Empty , 0 )
;   EndIf  
  InText.s = MyDeleteString( Fichier )
; If Fichier <> 0
;    InText.s = PeekS( Fichier )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Fichier , 0 )
;   EndIf
  If TXTinitialized = 1
    FileName.s = GetLeftFrom( InText, "." )
   EndIf
  If Len( FileName ) > 0
    CallCFunctionFast(*GlobPtr\CreateDeleteString, @temp.l, Len( FileName ) + 1 ) ; CreateString
    PokeS( temp , FileName )
   Else
    Temp = 0
   EndIf
  ProcedureReturn temp
 EndProcedure  

ProcedureCDLL.l STR_GetFileExtension( Empty.l, Fichier.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  EmptyNULL.s = MyDeleteString( Empty )
;  If Empty <> 0
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Empty , 0 )
;   EndIf  
  InText.s = MyDeleteString( Fichier )
;  If Fichier <> 0
;    InText.s = PeekS( Fichier )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Fichier , 0 )
;   EndIf
  If TXTinitialized = 1
    FileName.s = GetRightFrom( InText, "." )
   EndIf
  If Len( FileName ) > 0
    CallCFunctionFast(*GlobPtr\CreateDeleteString, @temp.l, Len( FileName ) + 1 ) ; CreateString
    PokeS( temp , FileName )
   Else
    Temp = 0
   EndIf
  ProcedureReturn temp
 EndProcedure  
 
ProcedureCDLL.l STR_GetCharPosition( Txt.l, Char.l, Occurence.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  InText.s = MyDeleteString( Txt )
;  If Txt <> 0
;    InText.s = PeekS( Txt )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Txt , 0 )
;   EndIf
  InChar.s = MyDeleteString( Char )
;  If Char <> 0
;    InChar.s = PeekS( Char )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Char , 0 )
;   EndIf
  If TXTinitialized = 1
    InPos.l = 1
    Repeat
      If Mid( InText, InPos, 1 ) = InChar
        Occurence = Occurence - 1
        If Occurence > 0 : InPos = InPos + 1 : EndIf
       Else
        InPos = InPos + 1
       EndIf
     Until Occurence = 0 Or InPos > Len( InText )
    If InPos > Len( InText ) : InPos = 0 : EndIf
   Else
    InPos = -1
   EndIf
  ProcedureReturn InPos
 EndProcedure
;
ProcedureCDLL.l STR_GetLeftFrom( Empty.l, Txt.l, Char.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  EmptyNULL.s = MyDeleteString( Empty )
;  If Empty <> 0
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Empty , 0 )
;   EndIf  
  InText.s = MyDeleteString( Txt )
;  If Txt <> 0
;    InText.s = PeekS( Txt )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Txt , 0 )
;   EndIf
  InChar.s = MyDeleteString( Char )
;  If Char <> 0
;    InChar.s = PeekS( Char )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Char , 0 )
;   EndIf
  If TXTinitialized = 1
    OutText.s = GetLeftFrom( InText, InChar )
   EndIf
  If Len( OutText ) > 0
    CallCFunctionFast(*GlobPtr\CreateDeleteString, @temp.l, Len( OutText ) + 1 ) ; CreateString
    PokeS( temp , OutText )
   Else
    Temp = 0
   EndIf
  ProcedureReturn temp
 EndProcedure  

ProcedureCDLL.l STR_GetRightFrom( Empty.l, Txt.l, Char.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  EmptyNULL.s = MyDeleteString( Empty )
;  If Empty <> 0
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Empty , 0 )
;   EndIf  
  InText.s = MyDeleteString( Txt )
;  If Txt <> 0
;    InText.s = PeekS( Txt )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Txt , 0 )
;   EndIf
  InChar.s = MyDeleteString( Char )
;  If Char <> 0
;    InChar.s = PeekS( Char )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Char , 0 )
;   EndIf
  If TXTinitialized = 1
    OutText.s = GetRightFrom( InText, InChar )
   EndIf
  If Len( OutText ) > 0
    CallCFunctionFast(*GlobPtr\CreateDeleteString, @temp.l, Len( OutText ) + 1 ) ; CreateString
    PokeS( temp , OutText )
   Else
    Temp = 0
   EndIf
  ProcedureReturn temp
 EndProcedure  

ProcedureCDLL.l STR_GetMiddle( Empty.l, Txt.l, Start.l, Lon.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  EmptyNULL.s = MyDeleteString( Empty )
;  If Empty <> 0
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Empty , 0 )
;   EndIf  
  InText.s = MyDeleteString( Txt ) : OutText.s = ""
;  If Txt <> 0
;    InText.s = PeekS( Txt ) : OutText.s = ""
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Txt , 0 )
;   EndIf
  If TXTinitialized = 1
    If Lon > 0 And Lon+Start <= Len( InText )
      If Lon = 1
        OutText = Mid( InText, Start, 1 )
       Else
        For XLoop = Start To ( Start + Lon ) - 1
          OutText = OutText + Mid( InText, XLoop, 1 )
         Next XLoop
       EndIf
     EndIf
   EndIf
  If Len( OutText ) > 0
    CallCFunctionFast(*GlobPtr\CreateDeleteString, @temp.l, Len( OutText ) + 1 ) ; CreateString
    PokeS( temp , OutText )
   Else
    Temp = 0
   EndIf
  ProcedureReturn temp
 EndProcedure  

; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 238
; FirstLine = 209
; Folding = --