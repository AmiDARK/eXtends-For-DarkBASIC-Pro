; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l DBAsc( String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\Asc, StringPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBBin( Value.l )
  Retour.l = CallCFunctionFast( *DB_Text\Bin, 0, Value )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBChr( Value.l )
  Retour.l = CallCFunctionFast( *DB_Text\Chr, 0, Value )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBH( Value.l )
  Retour.l = CallCFunctionFast( *DB_Text\Hex, 0, Value )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBLeft( String.s, Value.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\Left, 0, StringPTR, Value )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBLen( String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\Len, StringPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBLower( String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\Lower, 0, StringPTR )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBMid( String.s, Value.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\Mid, 0, StringPTR, Value )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBRight( String.s, Value.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\Right, 0, StringPTR, Value )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBStr( Value.f )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Text\Str, 0, V )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBUpper( String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\Upper, 0, StringPTR )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.f DBValF( String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\ValF, StringPTR )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForFonts()
  CallCFunctionFast( *DB_Text\PerformChecklistForFonts )
 EndProcedure
;
; *********************************************************************
Procedure DBBasicText( X.l, Y.l, String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  CallCFunctionFast( *DB_Text\BasicText, X, Y, StringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBCenterText( X.l, Y.l, String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  CallCFunctionFast( *DB_Text\CenterText, X, Y, StringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextToOpaque()
  CallCFunctionFast( *DB_Text\SetTextToOpaque )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextToTransparent()
  CallCFunctionFast( *DB_Text\SetTextToTransparent )
 EndProcedure
;
; *********************************************************************
Procedure DBSetBasicTextFont( Fontname.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FontnamePTR.l, Len( Fontname ) + 1 ) ; CreateString
  PokeS( FontnamePTR, Fontname )
  CallCFunctionFast( *DB_Text\SetBasicTextFont, FontnamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetBasicTextFont1( Fontname.s, CharsetValue.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FontnamePTR.l, Len( Fontname ) + 1 ) ; CreateString
  PokeS( FontnamePTR, Fontname )
  CallCFunctionFast( *DB_Text\SetBasicTextFont1, FontnamePTR, CharsetValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextSize( Pointsize.l )
  CallCFunctionFast( *DB_Text\SetTextSize, Pointsize )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextToNormal()
  CallCFunctionFast( *DB_Text\SetTextToNormal )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextToItalic()
  CallCFunctionFast( *DB_Text\SetTextToItalic )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextToBold()
  CallCFunctionFast( *DB_Text\SetTextToBold )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextToBoldItalic()
  CallCFunctionFast( *DB_Text\SetTextToBoldItalic )
 EndProcedure
;
; *********************************************************************
Procedure.l DBTextBackgroundType()
  Retour.l = CallCFunctionFast( *DB_Text\TextBackgroundType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBTextFont()
  Retour.l = CallCFunctionFast( *DB_Text\TextFont, 0 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBTextSize()
  Retour.l = CallCFunctionFast( *DB_Text\TextSize )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBTextStyle()
  Retour.l = CallCFunctionFast( *DB_Text\TextStyle )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBTextWidth( String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\TextWidth, StringPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBTextHeight( String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\TextHeight, StringPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBSpaces( NumberofSpaces.l )
  Retour.l = CallCFunctionFast( *DB_Text\Spaces, 0, NumberofSpaces )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBStr1( Value.l )
  Retour.l = CallCFunctionFast( *DB_Text\Str1, 0, Value )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBStrDouble( DoubleFloat.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DoubleFloatPTR.l, Len( DoubleFloat ) + 1 ) ; CreateString
  PokeS( DoubleFloatPTR, DoubleFloat )
  Retour.l = CallCFunctionFast( *DB_Text\StrDouble, 0, DoubleFloatPTR )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBAppendText( stringA.s, stringB.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @stringAPTR.l, Len( stringA ) + 1 ) ; CreateString
  PokeS( stringAPTR, stringA )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @stringBPTR.l, Len( stringB ) + 1 ) ; CreateString
  PokeS( stringBPTR, stringB )
  CallCFunctionFast( *DB_Text\Append, stringAPTR, stringBPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBReverse( string.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @stringPTR.l, Len( string ) + 1 ) ; CreateString
  PokeS( stringPTR, string )
  CallCFunctionFast( *DB_Text\Reverse, stringPTR )
 EndProcedure
;
; *********************************************************************
Procedure.l DBFindFirstChar( source.s, char.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @sourcePTR.l, Len( source ) + 1 ) ; CreateString
  PokeS( sourcePTR, source )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @charPTR.l, Len( char ) + 1 ) ; CreateString
  PokeS( charPTR, char )
  Retour.l = CallCFunctionFast( *DB_Text\FindFirstChar, sourcePTR, charPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBFindLastChar( source.s, char.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @sourcePTR.l, Len( source ) + 1 ) ; CreateString
  PokeS( sourcePTR, source )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @charPTR.l, Len( char ) + 1 ) ; CreateString
  PokeS( charPTR, char )
  Retour.l = CallCFunctionFast( *DB_Text\FindLastChar, sourcePTR, charPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBFindSubString( source.s, string.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @sourcePTR.l, Len( source ) + 1 ) ; CreateString
  PokeS( sourcePTR, source )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @stringPTR.l, Len( string ) + 1 ) ; CreateString
  PokeS( stringPTR, string )
  Retour.l = CallCFunctionFast( *DB_Text\FindSubString, sourcePTR, stringPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBCompareCase( stringA.s, stringB.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @stringAPTR.l, Len( stringA ) + 1 ) ; CreateString
  PokeS( stringAPTR, stringA )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @stringBPTR.l, Len( stringB ) + 1 ) ; CreateString
  PokeS( stringBPTR, stringB )
  Retour.l = CallCFunctionFast( *DB_Text\CompareCase, stringAPTR, stringBPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBFirstToken( source.s, delim.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @sourcePTR.l, Len( source ) + 1 ) ; CreateString
  PokeS( sourcePTR, source )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @delimPTR.l, Len( delim ) + 1 ) ; CreateString
  PokeS( delimPTR, delim )
  Retour.l = CallCFunctionFast( *DB_Text\FirstToken, 0, sourcePTR, delimPTR )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBNextToken( delim.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @delimPTR.l, Len( delim ) + 1 ) ; CreateString
  PokeS( delimPTR, delim )
  Retour.l = CallCFunctionFast( *DB_Text\NextToken, 0, delimPTR )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBStr2( Value.f, DecimalPlaces.l )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Text\StrEx, 0, V, DecimalPlaces )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBStrDoubleInt( DoubleInteger.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DoubleIntegerPTR.l, Len( DoubleInteger ) + 1 ) ; CreateString
  PokeS( DoubleIntegerPTR, DoubleInteger )
  Retour.l = CallCFunctionFast( *DB_Text\StrDoubleInt, 0, DoubleIntegerPTR )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;

; IDE Options = PureBasic 4.61 (Windows - x86)
; CursorPosition = 384
; FirstLine = 352
; Folding = --------