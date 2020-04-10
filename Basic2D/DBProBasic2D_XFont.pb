;
; *******************************************
; *                                         *
; * SUPPORT DES FONTES GRAPHIQUES POUR XGUI *
; *                                         *
; *******************************************
;
ProcedureCDLL XFont_SetupFont( ImageFile.l , FontNumber.l , FontSize.l , FirstChar.l , Flag.l )
  Btmp.l = 0
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  ImageName$ = MyDeleteString( ImageFile )
;  If ImageFile <> 0
;    ImageName$ = PeekS( ImageFile )
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, ImageFile , 0 )
;   Else
;    ImageName$ = ""
;   EndIf
  FinalFile1$ = dbGetDir() + "\XWindow\" + ImageName$
  FinalFile2$ = ImageName$
  If B2DInitialized = 1
    If FontNumber > 0 And FontNumber < 17
      If XFont_Exist( FontNumber ) = 0
        If FontSize = 8 Or FontSize = 16 Or FontSize = 32 Or FontSize = 64
          If DBGetFileExist( FinalFile1$ ) = 1
            Btmp.l = BMP_DynamicLoad( FinalFile1$ )
           Else
            If DBGetFileExist( FinalFile2$ ) = 1
              Btmp.l = BMP_DynamicLoad( FinalFile2$ )
             EndIf
           EndIf
          If Btmp > 0
            dbSetCurrentBitmap( Btmp )
            FirstImage.l = 0
            Select FontSize
              Case 8
                For YLoop = 0 To dbBitmapHeight( Btmp ) - FontSize Step 8
                  For Xloop = 0 To dbBitmapWidth( Btmp ) - FontSize Step 8
                    XFontImage( FontNumber, FirstChar + FirstImage ) = IMG_GrabImageF( XLoop , YLoop , XLoop + FontSize , YLoop + FontSize , XWinSystem\MipMapMode )
                    FirstImage = FirstImage + 1
                   Next XLoop
                 Next YLoop
              Case 16
                For YLoop = 0 To dbBitmapHeight( Btmp ) - FontSize Step 16
                  For Xloop = 0 To dbBitmapWidth( Btmp ) - FontSize Step 16
                    XFontImage( FontNumber, FirstChar + FirstImage ) = IMG_GrabImageF( XLoop , YLoop , XLoop + FontSize , YLoop + FontSize , XWinSystem\MipMapMode )
                    FirstImage = FirstImage + 1
                   Next XLoop
                 Next YLoop
              Case 32
               For YLoop = 0 To dbBitmapHeight( Btmp ) - FontSize Step 32
                 For Xloop = 0 To dbBitmapWidth( Btmp ) - FontSize Step 32
                   XFontImage( FontNumber, FirstChar + FirstImage ) = IMG_GrabImageF( XLoop , YLoop , XLoop + FontSize , YLoop + FontSize , XWinSystem\MipMapMode )
                    FirstImage = FirstImage + 1
                  Next XLoop
                Next YLoop
              Case 64
                For YLoop = 0 To dbBitmapHeight( Btmp ) - FontSize Step 64
                  For Xloop = 0 To dbBitmapWidth( Btmp ) - FontSize Step 64
                    XFontImage( FontNumber, FirstChar + FirstImage ) = IMG_GrabImageF( XLoop , YLoop , XLoop + FontSize , YLoop + FontSize , XWinSystem\MipMapMode )
                    FirstImage = FirstImage + 1
                   Next XLoop
                 Next YLoop
             EndSelect
            Btmp = BMP_Delete( Btmp )
            dbSetCurrentBitmap( 0 )
            XFont( FontNumber )\FontSize = FontSize
            XFont( FontNumber )\Exist = 1
            XFont( FontNumber )\FirstChar = FirstChar
            XFont( FontNumber )\Type = Flag
            XFontsys\CurrentFont = FontNumber
            INITIALIZED = 1
           Else
            INITIALIZED = - 5 : ; Impossible de créer un bitmap pour initialiser la fonte graphique.
           EndIf
         Else
          INITIALIZED = - 4 : ; Dimension de fonte non supportée.
         EndIf
       Else
        INITIALIZED = - 2 : ; Font Exist.
       EndIf
     Else
      INITIALIZED = - 1 : ; Font Number is Invalid.
     EndIf
   Else
    MessageRequester( "DBproBasic2DExtends.dll Warning :" , "Plugin isn't activated" )
   EndIf
 EndProcedure
;
ProcedureCDLL XFont_ClearFont( FontNumber )
    If FontNumber > 0 And FontNumber < 17
      If XFont_Exist( FontNumber ) = 1
        For XLoop = 1 To 255
          If XFontImage( FontNumber, XLoop ) > 0
            XFontImage( FontNumber, XLoop ) = IMG_Delete( XFontImage( FontNumber, XLoop ) )
           EndIf
         Next XLoop
        XFont( FontNumber )\Exist = 0 : XFont( FontNumber )\FontSize = 0
        XFont( FontNumber )\FirstChar = 0 : XFont( FontNumber )\Type = 0
        If XFontSys\CurrentFont = FontNumber : XFontSys\CurrentFont = 0 : EndIf
       Else
        INITIALIZED = - 6 : ; La font n'existe pas
       EndIf
     Else
      INITIALIZED = - 1 : ; Font Number is Invalid.
     EndIf
 EndProcedure
;
ProcedureCDLL XFont_ClearAllFont()
  For XLoop = 1 To 16
    If XFont_Exist( XLoop ) = 1 : XFont_ClearFont( XLoop ) : EndIf
   Next XLoop
 EndProcedure
;
ProcedureCDLL.l XFont_Exist( FontNumber.l )
  If FontNumber > 0 And FontNumber < 17
    INITIALIZED = XFont( FontNumber )\Exist
   Else
    INITIALIZED = - 1 : ; Font Number is Invalid.
   EndIf
  ProcedureReturn INITIALIZED 
 EndProcedure
;
ProcedureCDLL XFont_SetCursor( XCursor.l , YCursor.l )
  XFontsys\XCursor = XCursor
  XFontsys\YCursor = YCursor
 EndProcedure
;
ProcedureCDLL XFont_SetCurrentFont( FontNumber.l )
  If FontNumber > 0 And FontNumber < 17
    If XFont_Exist( FontNumber ) = 1
     XFontSys\CurrentFont = FontNumber
     Else
      XFontSys\CurrentFont = 0
     EndIf
   EndIf
 EndProcedure
;
Procedure.l XFont_GetTextWidthInternal( Texte$ )
  If XFontSys\CurrentFont > 0 
    If XFont_Exist( XFontSys\CurrentFont ) = 1 
      INITIALIZED = XFont( XFontSys\CurrentFont )\FontSize * Len( Texte$ )
     Else
      INITIALIZED = - 6 : ; La font n'existe pas
     EndIf
   Else
    INITIALIZED = - 6 : ; La font n'existe pas
   EndIf
  ProcedureReturn INITIALIZED
 EndProcedure

ProcedureCDLL.l XFont_GetTextWidth( Texto.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  TEXTE$ = MyDeleteString( Texto )
;  If Texto <> 0
;    TEXTE$ = PeekS( Texto )
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, Texto , 0 )
;   Else
;    TEXTE$ = ""
;   EndIf
  INITIALIZED.l = XFont_GetTextWidthInternal( Texte$ )
  ProcedureReturn INITIALIZED
 EndProcedure
;
Procedure.l XFont_GetTextHeightInternal( Texte$ )
  If XFontSys\CurrentFont > 0
    If XFont_Exist( XFontSys\CurrentFont ) = 1
      INITIALIZED = XFont( XFontSys\CurrentFont )\FontSize
     Else
      INITIALIZED = - 6 : ; La font n'existe pas
     EndIf
   Else
    INITIALIZED = - 6 : ; La font n'existe pas
   EndIf
  ProcedureReturn INITIALIZED
 EndProcedure
;
ProcedureCDLL.l XFont_GetTextHeight( Texto.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  TEXTE$ = MyDeleteString( Texto )
;  If Texto <> 0
;    TEXTE$ = PeekS( Texto )
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, Texto , 0 )
;   Else
;    TEXTE$ = ""
;   EndIf
  INITIALIZED.l = XFont_GetTextHeightInternal( Texte$ )
  ProcedureReturn INITIALIZED
 EndProcedure

Procedure XFont_PrintFast( Texte$ )
  If B2DInitialized = 1
    If XFontSys\CurrentFont > 0
      If XFont_Exist( XFontSys\CurrentFont ) = 1
        Btmp.l = XFontSys\Bitmap : XCurs = XFontSys\XCursor : YCurs = XFontSys\YCursor
        If dbBitmapExist( Btmp ) : dbSetCurrentBitmap( Btmp ) : EndIf
        XWinBmp = 0 : XMargin.l = 0
        For XLoop = 1 To 16
          If Btmp = XWindowBitmap( XLoop ) : XMargin = 8 : EndIf
         Next XLoop
        XMax.l = dbBitmapWidth( Btmp ) - ( XFont( XFontSys\CurrentFont )\FontSize + XMargin )
        If XCurs > XMax
          XCurs = XMargin : YCurs = YCurs + XFont( XFontSys\CurrentFont )\FontSize
         EndIf
        If Len( Texte$ ) > 0
          For XLoop = 1 To Len( Texte$ )
            If XFont( XFontSys\CurrentFont )\Type = 0
              Char$ = UCase( Mid( Texte$ , XLoop , 1) )
             Else
              Char$ = Mid( Texte$ , XLoop , 1)
             EndIf
            Image.l = XFontImage( XFontSys\CurrentFont, Asc( Char$ ) )
            If Image > 0
              DBPasteImage1( Image , XCurs , YCurs , XFontsys\Opaque )
              XCurs = XCurs + XFont( XFontSys\CurrentFont )\FontSize
              If XCurs > XMax And XFontSys\AutoReturn = 1
                XCurs = XMargin : YCurs = YCurs + XFont( XFontSys\CurrentFont )\FontSize
               EndIf
             EndIf
           Next XLoop
          XCurs = XMargin : YCurs = YCurs + XFont( XFontSys\CurrentFont )\FontSize
          XFontSys\XCursor = XCurs : XFontSys\YCursor = YCurs
         EndIf
        If Btmp > 15 : WinNum = 31 - Btmp : XWindow( WinNum )\Refresh = 3 : EndIf
        dbSetCurrentBitmap( 0 )
       Else
        MessageRequester( "DBProBasicExtends Extends Warning" , "Font does not exist" )
        INITIALIZED = - 6 : ; La font n'existe pas
       EndIf
     Else
      MessageRequester( "DBProBasicExtends Extends Warning" , "No Current Font Selected" )
      INITIALIZED = - 6 : ; La font n'existe pas
     EndIf
   Else
    MessageRequester( "DBProBasicExtends Extends Warning" , "PlugIn Isn't Activated" )
   EndIf
 EndProcedure
;
Procedure XFont_GadgetPrintFast( Texte$ )
  If B2DInitialized = 1
    If XFontSys\CurrentFont > 0
      If XFont_Exist( XFontSys\CurrentFont ) = 1
        XCurs = XFontSys\XCursor : YCurs = XFontSys\YCursor
;        If XCurs > GetBitmapWidth( 0 ) - XFont( XFontSys\CurrentFont )\FontSize
;          XCurs = 0 : YCurs = YCurs + XFont( XFontSys\CurrentFont )\FontSize
;         EndIf
        If Len( Texte$ ) > 0
          For XLoop = 1 To Len( Texte$ )
            If XFont( XFontSys\CurrentFont )\Type = 0
              Char$ = UCase( Mid( Texte$ , XLoop , 1) )
             Else
              Char$ = Mid( Texte$ , XLoop , 1)
             EndIf
            Image.l = XFontImage( XFontSys\CurrentFont, Asc( Char$ ) )
            If Image > 0
              DBPasteImage1( Image , XCurs , YCurs , XFontsys\Opaque )
              XCurs = XCurs + XFont( XFontSys\CurrentFont )\FontSize
             EndIf
           Next XLoop
          XCurs = 0 : YCurs = YCurs + XFont( XFontSys\CurrentFont )\FontSize
          XFontSys\XCursor = XCurs : XFontSys\YCursor = YCurs
         EndIf
       Else
        INITIALIZED = - 6 : ; La font n'existe pas
       EndIf
     Else
      INITIALIZED = - 6 : ; La font n'existe pas
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XFont_Print( Texto.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  TEXTE$ = MyDeleteString( Texto )
;  If Texto <> 0
;    TEXTE$ = PeekS( Texto )
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, Texto , 0 )
;   Else
;    TEXTE$ = ""
;   EndIf
  XFont_PrintFast( Texte$ )
 EndProcedure
;
ProcedureCDLL XFont_SetCurrentBitmap( Btmp.l )
  XFontSys\Bitmap = Btmp
 EndProcedure
;
ProcedureCDLL XWindow_AttachWindow( MasterWin.l , TargetWin.l , Position.l )
  If MasterWin > 0 And MasterWin < 17 And B2DInitialized = 1
    If TargetWin > 0 And TargetWin < 17
      If XWindow_Exist( MasterWin ) And XWindow_Exist( Targetwin )
        XWindow( MasterWin )\ChildCount = XWindow( Masterwin )\ChildCount + 1
        XWindow( TargetWin )\Parent = MasterWin
        XWindow( TargetWin )\Alignment = Position
       EndIf
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_DetachWindow( TargetWin.l )
  If TargetWin > 0 And TargetWin < 17
    If XWindow_Exist( TargetWin )
      XWindow( XWindow( TargetWin )\Parent )\ChildCount = XWindow( XWindow( TargetWin )\Parent )\ChildCount - 1
      XWindow( TargetWin )\Alignment = 0
      XWindow( TargetWin )\Parent = 0
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL.l XWindow_GetAttached( WinNum.l )
  Retour.l = 0
  If WinNum > 0 And WinNum < 16
    Retour = Xwindow( WinNum )\Parent
   EndIf
  ProcedureReturn Retour
 EndProcedure
;
ProcedureCDLL XWindow_SetTextOpaque()
  XFontsys\Opaque = 0
 EndProcedure
;
ProcedureCDLL XWindow_SetTextTransparent()
  XFontsys\Opaque = 1
 EndProcedure
;
ProcedureCDLL.l XWindow_GetWinGadgetCount( WinNum.l )
  RETOUR.l = XWindow( WinNum )\GadgetCount
  ProcedureReturn RETOUR
 EndProcedure
;
ProcedureCDLL XWindow_SetChatGadget( GadNum.l )
  If GadNum > 0 And GadNum < 256 And B2DInitialized = 1
    If XGadget( GadNum )\Exist = 1
      XWinSystem\ChatGadget = GadNum
      XWinSystem\ChatInText = ""
      XWinSystem\ChatReading = 0
      Restore DONNEES
      For XLoop = 1 To 255
        Read.s ChatChar( XLoop )
       Next XLoop
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_SetChatWindowGadget( GadNum.l )
  If GadNum > 0 And GadNum < 256 And B2DInitialized = 1
    If XGadget( GadNum )\Exist = 1 : XWinSystem\ChatWindowGadget = GadNum : EndIf
   EndIf
 EndProcedure
;
Procedure XWindow_TalkToChatInternal( TEXTE$ )
  If XWinSystem\ChatWindowGadget > 0
    ; Copy all chat texts up.
    For XLoop = 1 To 31 Step 1
      ChatTexts( XLoop ) = ChatTexts( XLoop + 1 )
     Next XLoop
    ChatTexts( 32 ) = TEXTE$
    WinNum.l = XGadget( XWinSystem\ChatWindowGadget )\Window
    If XWindow( WinNum )\Refresh < 3 : XWindow( WinNum )\Refresh = 3 : EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_TalkToChat( Texto.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  TEXTE$ = MyDeleteString( Texto )
;  If Texto <> 0
;    TEXTE$ = PeekS( Texto )
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, Texto , 0 )
;   Else
;    TEXTE$ = ""
;   EndIf
  XWindow_TalkToChatInternal( TEXTE$ )
 EndProcedure
;
ProcedureCDLL XWindow_SetChatScanCode( Key.l )
  XWinSystem\ChatScanCode = Key
 EndProcedure
;
ProcedureCDLL.l XWindow_ChatReadingKey()
  RETOUR.l = XWinSystem\ChatReading
  ProcedureReturn RETOUR
 EndProcedure
;
ProcedureCDLL.l XWindow_GetLastCommand( Teste.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  Temp$ = MyDeleteString( teste )
;  If Teste <> 0
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, @teste.l, 0 ) ; CreateString
;   EndIf
  If Len( ChatTexts( 32 ) ) > 0
    CallCFunctionFast(*GlobPtr\CreateDeleteString, @temp.l, Len( ChatTexts( 32 ) ) + 1 ) ; CreateString
    PokeS( temp , ChatTexts( 32 ) )
   Else
    Temp = 0
   EndIf
  ProcedureReturn temp
 EndProcedure

ProcedureCDLL XFont_AutoReturnMode( Mode.l )
  XFontSys\AutoReturn = Mode
 EndProcedure

; IDE Options = PureBasic 4.30 (Windows - x86)
; CursorPosition = 337
; FirstLine = 326
; Folding = -----