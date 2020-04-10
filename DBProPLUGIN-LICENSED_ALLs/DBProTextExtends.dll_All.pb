; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure TextExtendsStruct
  STR_Init.l : STR_ExtractFileName.l : STR_ExtractDrawer.l : STR_GetFileWithoutExtension.l
  STR_GetFileExtension.l : STR_GetCharPosition.l : STR_GetLeftFrom.l : STR_GetRightFrom.l
  STR_GetMiddle.l
 EndStructure
Global TextExtends.TextExtendsStruct

Procedure.l CheckTextExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Texts.dll")
    TextExtends\STR_Init= AIsFunction( 1 , "STR_Init" ) ; 1 STR Initialized 
    TextExtends\STR_ExtractFileName= AIsFunction( 1 , "STR_ExtractFileName" ) ; 2 STR Extract Filename TextString
    TextExtends\STR_ExtractDrawer= AIsFunction( 1 , "STR_ExtractDrawer" ) ; 3 STR Extract Drawer TextString
    TextExtends\STR_GetFileWithoutExtension= AIsFunction( 1 , "STR_GetFileWithoutExtension" ) ; 4 STR Remove File Extention FileName
    TextExtends\STR_GetFileExtension= AIsFunction( 1 , "STR_GetFileExtension" ) ; 5 STR Get File Extension FileName
    TextExtends\STR_GetCharPosition= AIsFunction( 1 , "STR_GetCharPosition" ) ; 6 STR Find Char TextString, Char, Counter
    TextExtends\STR_GetLeftFrom= AIsFunction( 1 , "STR_GetLeftFrom" ) ; 7 STR Get Left From TextString, Char
    TextExtends\STR_GetRightFrom= AIsFunction( 1 , "STR_GetRightFrom" ) ; 8 STR Get Right From TextString, Char
    TextExtends\STR_GetMiddle= AIsFunction( 1 , "STR_GetMiddle" ) ; 9 STR Get Middle TextString, StartPosition, Length
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l STR_Init()
  Retour.l = CallCFunctionFast( TextExtends\STR_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s STR_ExtractFileName( TextString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TextStringPTR.l, Len( TextString ) + 1 ) ; CreateString
  PokeS( TextStringPTR, TextString )
  Retour.l = CallCFunctionFast( TextExtends\STR_ExtractFileName, ExtraPARAM.l, TextStringPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s STR_ExtractDrawer( TextString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TextStringPTR.l, Len( TextString ) + 1 ) ; CreateString
  PokeS( TextStringPTR, TextString )
  Retour.l = CallCFunctionFast( TextExtends\STR_ExtractDrawer, ExtraPARAM.l, TextStringPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s STR_GetFileWithoutExtension( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( TextExtends\STR_GetFileWithoutExtension, ExtraPARAM.l, FileNamePTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s STR_GetFileExtension( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( TextExtends\STR_GetFileExtension, ExtraPARAM.l, FileNamePTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l STR_GetCharPosition( TextString.s, Char.s, Counter.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TextStringPTR.l, Len( TextString ) + 1 ) ; CreateString
  PokeS( TextStringPTR, TextString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CharPTR.l, Len( Char ) + 1 ) ; CreateString
  PokeS( CharPTR, Char )
  Retour.l = CallCFunctionFast( TextExtends\STR_GetCharPosition, TextStringPTR, CharPTR, Counter )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s STR_GetLeftFrom( TextString.s, Char.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TextStringPTR.l, Len( TextString ) + 1 ) ; CreateString
  PokeS( TextStringPTR, TextString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CharPTR.l, Len( Char ) + 1 ) ; CreateString
  PokeS( CharPTR, Char )
  Retour.l = CallCFunctionFast( TextExtends\STR_GetLeftFrom, ExtraPARAM.l, TextStringPTR, CharPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s STR_GetRightFrom( TextString.s, Char.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TextStringPTR.l, Len( TextString ) + 1 ) ; CreateString
  PokeS( TextStringPTR, TextString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CharPTR.l, Len( Char ) + 1 ) ; CreateString
  PokeS( CharPTR, Char )
  Retour.l = CallCFunctionFast( TextExtends\STR_GetRightFrom, ExtraPARAM.l, TextStringPTR, CharPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s STR_GetMiddle( TextString.s, StartPosition.l, Length.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TextStringPTR.l, Len( TextString ) + 1 ) ; CreateString
  PokeS( TextStringPTR, TextString )
  Retour.l = CallCFunctionFast( TextExtends\STR_GetMiddle, ExtraPARAM.l, TextStringPTR, StartPosition, Length )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 6
; Folding = --