; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_TextStruct
  Asc.l : Bin.l : Chr.l : Hex.l
  Left.l : Len.l : Lower.l : Mid.l
  Right.l : Str.l : Upper.l : ValF.l
  PerformChecklistForFonts.l : BasicText.l : CenterText.l : SetTextToOpaque.l
  SetTextToTransparent.l : SetBasicTextFont.l : SetBasicTextFont1.l : SetTextSize.l
  SetTextToNormal.l : SetTextToItalic.l : SetTextToBold.l : SetTextToBoldItalic.l
  TextBackgroundType.l : TextFont.l : TextSize.l : TextStyle.l
  TextWidth.l : TextHeight.l : Spaces.l : Str1.l
  StrDouble.l : Append.l : Reverse.l : FindFirstChar.l
  FindLastChar.l : FindSubString.l : CompareCase.l : FirstToken.l
  NextToken.l : StrEx.l : StrDoubleInt.l : 
 EndStructure

Procedure.l CheckText()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProTextDebug.dll")
    DB_Text\Asc= AIsFunction( 1 , "?Asc@@YAHK@Z" ) ; 1 ASC String
    DB_Text\Bin= AIsFunction( 1 , "?Bin@@YAKKH@Z" ) ; 2 BIN$ Value
    DB_Text\Chr= AIsFunction( 1 , "?Chr@@YAKKH@Z" ) ; 3 CHR$ Value
    DB_Text\Hex= AIsFunction( 1 , "?Hex@@YAKKH@Z" ) ; 4 HEX$ Value
    DB_Text\Left= AIsFunction( 1 , "?Left@@YAKKKH@Z" ) ; 5 LEFT$ String,Value
    DB_Text\Len= AIsFunction( 1 , "?Len@@YAHK@Z" ) ; 6 LEN String
    DB_Text\Lower= AIsFunction( 1 , "?Lower@@YAKKK@Z" ) ; 7 LOWER$ String
    DB_Text\Mid= AIsFunction( 1 , "?Mid@@YAKKKH@Z" ) ; 8 MID$ String,Value
    DB_Text\Right= AIsFunction( 1 , "?Right@@YAKKKH@Z" ) ; 9 RIGHT$ String,Value
    DB_Text\Str= AIsFunction( 1 , "?Str@@YAKKM@Z" ) ; 10 STR$ Value
    DB_Text\Upper= AIsFunction( 1 , "?Upper@@YAKKK@Z" ) ; 11 UPPER$ String
    DB_Text\ValF= AIsFunction( 1 , "?ValF@@YAKK@Z" ) ; 12 VAL String
    DB_Text\PerformChecklistForFonts= AIsFunction( 1 , "?PerformChecklistForFonts@@YAXXZ" ) ; 14 PERFORM CHECKLIST FOR FONTS 
    DB_Text\BasicText= AIsFunction( 1 , "?BasicText@@YAXHHK@Z" ) ; 15 TEXT X,Y,String
    DB_Text\CenterText= AIsFunction( 1 , "?CenterText@@YAXHHK@Z" ) ; 16 CENTER TEXT X,Y,String
    DB_Text\SetTextToOpaque= AIsFunction( 1 , "?SetTextToOpaque@@YAXXZ" ) ; 17 SET TEXT OPAQUE 
    DB_Text\SetTextToTransparent= AIsFunction( 1 , "?SetTextToTransparent@@YAXXZ" ) ; 18 SET TEXT TRANSPARENT 
    DB_Text\SetBasicTextFont= AIsFunction( 1 , "?SetBasicTextFont@@YAXK@Z" ) ; 19 SET TEXT FONT Fontname
    DB_Text\SetBasicTextFont1= AIsFunction( 1 , "?SetBasicTextFont@@YAXKH@Z" ) ; 20 SET TEXT FONT Fontname, Charset Value
    DB_Text\SetTextSize= AIsFunction( 1 , "?SetTextSize@@YAXH@Z" ) ; 21 SET TEXT SIZE Point size
    DB_Text\SetTextToNormal= AIsFunction( 1 , "?SetTextToNormal@@YAXXZ" ) ; 22 SET TEXT TO NORMAL 
    DB_Text\SetTextToItalic= AIsFunction( 1 , "?SetTextToItalic@@YAXXZ" ) ; 23 SET TEXT TO ITALIC 
    DB_Text\SetTextToBold= AIsFunction( 1 , "?SetTextToBold@@YAXXZ" ) ; 24 SET TEXT TO BOLD 
    DB_Text\SetTextToBoldItalic= AIsFunction( 1 , "?SetTextToBoldItalic@@YAXXZ" ) ; 25 SET TEXT TO BOLDITALIC 
    DB_Text\TextBackgroundType= AIsFunction( 1 , "?TextBackgroundType@@YAHXZ" ) ; 26 TEXT BACKGROUND TYPE 
    DB_Text\TextFont= AIsFunction( 1 , "?TextFont@@YAKK@Z" ) ; 27 TEXT FONT$ 
    DB_Text\TextSize= AIsFunction( 1 , "?TextSize@@YAHXZ" ) ; 28 TEXT SIZE 
    DB_Text\TextStyle= AIsFunction( 1 , "?TextStyle@@YAHXZ" ) ; 29 TEXT STYLE 
    DB_Text\TextWidth= AIsFunction( 1 , "?TextWidth@@YAHK@Z" ) ; 30 TEXT WIDTH String
    DB_Text\TextHeight= AIsFunction( 1 , "?TextHeight@@YAHK@Z" ) ; 31 TEXT HEIGHT String
    DB_Text\Spaces= AIsFunction( 1 , "?Spaces@@YAKKH@Z" ) ; 32 SPACE$ Number of Spaces
    DB_Text\Str1= AIsFunction( 1 , "?Str@@YAKKH@Z" ) ; 33 STR$ Value
    DB_Text\StrDouble= AIsFunction( 1 , "?StrDouble@@YAKKN@Z" ) ; 34 STR$ Double Float
    DB_Text\Append= AIsFunction( 1 , "?Append@@YAXKK@Z" ) ; 35 APPEND$ string A, string B
    DB_Text\Reverse= AIsFunction( 1 , "?Reverse@@YAXK@Z" ) ; 36 REVERSE$ string
    DB_Text\FindFirstChar= AIsFunction( 1 , "?FindFirstChar@@YAHKK@Z" ) ; 37 FIND FIRST CHAR$ source, char
    DB_Text\FindLastChar= AIsFunction( 1 , "?FindLastChar@@YAHKK@Z" ) ; 38 FIND LAST CHAR$ source, char
    DB_Text\FindSubString= AIsFunction( 1 , "?FindSubString@@YAHKK@Z" ) ; 39 FIND SUB STRING$ source, string
    DB_Text\CompareCase= AIsFunction( 1 , "?CompareCase@@YAHKK@Z" ) ; 40 COMPARE CASE$ string A, string B
    DB_Text\FirstToken= AIsFunction( 1 , "?FirstToken@@YAKKKK@Z" ) ; 41 FIRST TOKEN$ source, delim
    DB_Text\NextToken= AIsFunction( 1 , "?NextToken@@YAKKK@Z" ) ; 42 NEXT TOKEN$ delim
    DB_Text\StrEx= AIsFunction( 1 , "?StrEx@@YAKKMH@Z" ) ; 43 STR$ Value, Decimal Places
    DB_Text\StrDoubleInt= AIsFunction( 1 , "?StrDoubleInt@@YAKK_J@Z" ) ; 44 STR$ Double Integer
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

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
  Retour.l = CallCFunctionFast( *DB_Text\Bin, ExtraPARAM.l, Value )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBChr( Value.l )
  Retour.l = CallCFunctionFast( *DB_Text\Chr, ExtraPARAM.l, Value )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBH( Value.l )
  Retour.l = CallCFunctionFast( *DB_Text\Hex, ExtraPARAM.l, Value )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBLeft( String.s, Value.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\Left, ExtraPARAM.l, StringPTR, Value )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
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
  Retour.l = CallCFunctionFast( *DB_Text\Lower, ExtraPARAM.l, StringPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBMid( String.s, Value.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\Mid, ExtraPARAM.l, StringPTR, Value )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBRight( String.s, Value.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\Right, ExtraPARAM.l, StringPTR, Value )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBStr( Value.f )
  Retour.l = CallCFunctionFast( *DB_Text\Str, ExtraPARAM.l, Value )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBUpper( String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  Retour.l = CallCFunctionFast( *DB_Text\Upper, ExtraPARAM.l, StringPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
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
  Retour.l = CallCFunctionFast( *DB_Text\TextFont, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
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
  Retour.l = CallCFunctionFast( *DB_Text\Spaces, ExtraPARAM.l, NumberofSpaces )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBStr1( Value.l )
  Retour.l = CallCFunctionFast( *DB_Text\Str1, ExtraPARAM.l, Value )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBStrDouble( DoubleFloat.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DoubleFloatPTR.l, Len( DoubleFloat ) + 1 ) ; CreateString
  PokeS( DoubleFloatPTR, DoubleFloat )
  Retour.l = CallCFunctionFast( *DB_Text\StrDouble, ExtraPARAM.l, DoubleFloatPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
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
  Retour.l = CallCFunctionFast( *DB_Text\FirstToken, ExtraPARAM.l, sourcePTR, delimPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBNextToken( delim.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @delimPTR.l, Len( delim ) + 1 ) ; CreateString
  PokeS( delimPTR, delim )
  Retour.l = CallCFunctionFast( *DB_Text\NextToken, ExtraPARAM.l, delimPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBStr2( Value.f, DecimalPlaces.l )
  Retour.l = CallCFunctionFast( *DB_Text\StrEx, ExtraPARAM.l, Value, DecimalPlaces )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBStrDoubleInt( DoubleInteger.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DoubleIntegerPTR.l, Len( DoubleInteger ) + 1 ) ; CreateString
  PokeS( DoubleIntegerPTR, DoubleInteger )
  Retour.l = CallCFunctionFast( *DB_Text\StrDoubleInt, ExtraPARAM.l, DoubleIntegerPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;

