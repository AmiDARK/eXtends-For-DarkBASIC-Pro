;
; ******************************************
; *                                        *
; * GESTION DES GADGETS DU SYSTEME XWINDOW *
; *                                        *
; ******************************************
;
ProcedureCDLL XWindow_AddGadget( WinNum.l , GadNum.l , Xpos.l , Ypos.l , XSize.l , Ysize.l , Imag.l )
  If WinNum > -1 And WinNum < 16 And B2DInitialized = 1
    If GadNum > 0 And GadNum < 256
      If XGadget( GadNum )\Exist = 0 And XWindow( WinNum )\Exist = 1
          If DBGetImageExist( Imag ) = 1
            XGadget( GadNum )\Image = Imag : XGadget( GadNum )\Window = WinNum
            XGadget( GadNum )\XPos = XPos : XGadget( GadNum )\YPos = YPos
            XGadget( GadNum )\XSize = XSize : XGadget( GadNum )\YSize = YSize
            XGadget( GadNum )\Exist = 1 : XGadget( GadNum )\Texte = ""
            If XWindow( WinNum )\Refresh < 3 : XWindow( WinNum )\Refresh = 3 : EndIf
            XWindow( WinNum )\GadgetCount = XWindow( WinNum )\GadgetCount + 1
            XWinSystem\GadgetCount = XWinSystem\GadgetCount + 1
            XWindow_GadgetAdaptInternal( GadNum )
           EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure  
;
ProcedureCDLL XWindow_AddGadgetCombination( WinNum.l , GadNum.l , Xpos.l , Ypos.l , XSize.l , Ysize.l , Imag.l , Texto.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  TEXTE$ = MyDeleteString( Texto )
;  If Texto <> 0
;    TEXTE$ = PeekS( Texto )
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, Texto , 0 )
;   Else
;    TEXTE$ = ""
;   EndIf
  If WinNum > -1 And WinNum < 16 And B2DInitialized = 1
    If GadNum > 0 And GadNum < 256
      If XGadget( GadNum )\Exist = 0 And XWindow( WinNum )\Exist = 1
          If DBGetImageExist( Imag ) = 1
            XGadget( GadNum )\Image = Imag : XGadget( GadNum )\Window = WinNum
            XGadget( GadNum )\XPos = XPos : XGadget( GadNum )\YPos = YPos
            XGadget( GadNum )\XSize = XSize : XGadget( GadNum )\YSize = YSize
            XGadget( GadNum )\Exist = 1 : XGadget( GadNum )\Texte = TEXTE$
            If XWindow( WinNum )\Refresh < 3 : XWindow( WinNum )\Refresh = 3 : EndIf
            XWindow( WinNum )\GadgetCount = XWindow( WinNum )\GadgetCount + 1
            XWinSystem\GadgetCount = XWinSystem\GadgetCount + 1
            XWindow_GadgetAdaptInternal( GadNum )
           EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure  
;
ProcedureCDLL XWindow_AddGadgetTexte( WinNum.l , GadNum.l , Xpos.l , Ypos.l , XSize.l , Ysize.l , Texto.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  TEXTE$ = MyDeleteString( Texto )
;  If Texto <> 0
;    TEXTE$ = PeekS( Texto )
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, Texto , 0 )
;   Else
;    TEXTE$ = ""
;   EndIf
  If WinNum > 0 And WinNum < 16 And B2DInitialized = 1
    If GadNum > 0 And GadNum < 256
      If XGadget( GadNum )\Exist = 0 And XWindow( WinNum )\Exist = 1
        XGadget( GadNum )\Image = 0 : XGadget( GadNum )\Window = WinNum
        XGadget( GadNum )\XPos = XPos : XGadget( GadNum )\YPos = YPos
        XGadget( GadNum )\XSize = XSize : XGadget( GadNum )\YSize = YSize
        XGadget( GadNum )\Exist = 1 : XGadget( GadNum )\Texte = TEXTE$
        If XWindow( WinNum )\Refresh < 3 : XWindow( WinNum )\Refresh = 3 : EndIf
        XWindow( WinNum )\GadgetCount = XWindow( WinNum )\GadgetCount + 1
        XWinSystem\GadgetCount = XWinSystem\GadgetCount + 1
        XWindow_GadgetAdaptInternal( GadNum )
       EndIf
     EndIf
   EndIf
 EndProcedure  
;
Procedure XWindow_GadgetAdaptInternal( GadNum.l )
  If GadNum > 0 And GadNum < 256
    If XWindow( XGadget( GadNum )\Window )\Borders = 1
      XAdd.l = 8 : YAdd.l = 8 
      If XWindow( XGadget( GadNum )\Window )\Title = 1
        YAdd = 16
       EndIf
      XGadget( GadNum )\Xpos = XGadget( GadNum )\Xpos + XAdd
      XGadget( GadNum )\Ypos = XGadget( GadNum )\Ypos + YAdd
     EndIf
   EndIf
 EndProcedure
;
;
Procedure XWindow_GadgetRefreshFast( GadNum.l )
  ; Si le gadget possède une image, on l'affiche en premier.
  If XGadget( GadNum )\Image > 0
    If DBGetImageExist( XGadget( GadNum )\Image ) = 1
      DBPasteImage1( XGadget( GadNum )\Image , XGadget( GadNum )\Xpos , XGadget( GadNum )\YPos , 1 )
     EndIf
   EndIf
  ; Dans le mode ChatWindowGadget, on peut afficher plusieurs lignes de textes ... alors on fait le compte d'abord.
  If XWinSystem\ChatWindowGadget = GadNum And XWinSystem\ChatWindowGadget > 0
    If XFontSys\CurrentFont > 0
      DefaultFont.l = XFontSys\CurrentFont
      XFontSys\CurrentFont = XWindow( XGadget( GadNum )\Window )\XFont
      YSize.l = XFont_GetTextHeightInternal( "TEST" ) : If YSIZE = 0 : YSIZE = 8 : EndIf
      YCount = XGadget( GadNum )\YSize / YSize : XCount.l = XGadget( GadNum )\XSize / YSize
      If YCount * YSize > XGadget( GadNum )\YSize : YCount = YCount - 1 : EndIf
      XPos.l = XGadget( GadNum )\Xpos : YPos.l = XGadget( GadNum )\Ypos + XGadget( GadNum )\YSize - YSize
      XLoop = 32
      TESTE$ = ""
      Repeat
        If Len( TESTE$ ) = 0
          TESTE$ = ChatTexts( XLoop ) : XLoop = XLoop - 1
         EndIf
        XFont_SetCursor( Xpos , Ypos )
        If Len( TESTE$ ) <= XCount
          XFont_GadgetPrintFast( TESTE$ )
          TESTE$ = ""
         Else
          XLines.l = Len( TESTE$ ) / XCount
          If XLines * XCount = Len( TESTE$ ) : XLines = XLines - 1 : EndIf
          XStart.l = XLines * XCount : XQuant.l = Len( TESTE$ ) - XStart
          TEST2$ = Right( TESTE$ , XQuant ) : TESTE$ = Left( TESTE$ , Len( TESTE$ ) - XQuant )
          XFont_GadgetPrintFast( TEST2$ )
         EndIf
        YPos = YPos - YSize : YCount = YCount - 1
       Until YCount < 1
      XFontSys\CurrentFont = DefaultFont
     EndIf
   Else
    ; Si le gadget contient du texte, on l'affiche après l'image.
    If Len( XGadget( GadNum )\Texte ) > 0
      TEMPTEXT$ = XGadget( GadNum )\Texte
      If Len( TEMPTEXT$ ) > 0
        If XWindow( XGadget( GadNum )\Window )\XFont = 0
          XSize.l = DBTextWidth( TEMPTEXT$ ) : YSize.l = DBTextHeight( TEMPTEXT$ )
          If XWinSystem\ChatGadget = GadNum
            XPos.l = XGadget( GadNum )\XPos
            YSize.l = DBTextHeight( TEMPTEXT$ ) : XCount = XGadget( GadNum )\XSize / YSize
            If Len( TEMPTEXT$ ) >= XCount : TEMPTEXT$ = Right( TEMPTEXT$ , XCount ) : EndIf
           Else
            XPos.l = XGadget( GadNum )\Xpos + ( XGadget( GadNum )\XSize / 2 ) - ( XSize / 2 )
           EndIf
          YPos.l = XGadget( GadNum )\Ypos + ( XGadget( GadNum )\YSize / 2 ) - ( YSize / 2 )
          DBSetCursor( Xpos , Ypos ) : DBPrintS( TEMPTEXT$ )
         Else
          DefaultFont.l = XFontSys\CurrentFont
          XFontSys\CurrentFont = XWindow( XGadget( GadNum )\Window )\XFont
          XSize.l = XFont_GetTextWidthInternal( TEMPTEXT$ )
          YSize.l = XFont_GetTextHeightInternal( TEMPTEXT$ )
          If XWinSystem\ChatGadget = GadNum
            XPos.l = XGadget( GadNum )\XPos
            YSize.l = XFont_GetTextHeightInternal( TEMPTEXT$ ) : XCount.l = XGadget( GadNum )\XSize / YSize
            If Len( TEMPTEXT$ ) >= XCount : TEMPTEXT$ = Right( TEMPTEXT$ , XCount ) : EndIf
           Else
            XPos.l = XGadget( GadNum )\Xpos + ( XGadget( GadNum )\XSize / 2 ) - ( XSize / 2 )
           EndIf
          YPos.l = XGadget( GadNum )\Ypos + ( XGadget( GadNum )\YSize / 2 ) - ( YSize / 2 )          
          XFont_SetCursor( Xpos , Ypos )
          XFont_GadgetPrintFast( TEMPTEXT$ )
          XFontSys\CurrentFont = DefaultFont
         EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_DeleteGadget( GadNum.l )
  If GadNum > 0 And GadNum < 256
    If XGadget( GadNum )\Exist = 1
      If XWindow( XGadget( GadNum )\Window )\Refresh < 4 : XWindow( XGadget( GadNum )\Window )\Refresh = 4 : EndIf
      XWindow( XGadget( GadNum )\Window )\GadgetCount = XWindow( XGadget( GadNum )\Window )\GadgetCount - 1
      XWinSystem\GadgetCount = XWinSystem\GadgetCount - 1
      XGadget( GadNum )\Image = 0 : XGadget( GadNum )\Window = 0
      XGadget( GadNum )\XPos = 0 : XGadget( GadNum )\YPos = 0
      XGadget( GadNum )\XSize = 0 : XGadget( GadNum )\YSize = 0
      XGadget( GadNum )\Exist = 0 : XGadget( GadNum )\Texte = ""
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL.l XWindow_GetCurrentGadget()
  GadNum.l = XWinSystem\CurrentGadget
  ProcedureReturn GadNum
 EndProcedure
;
ProcedureCDLL XWindow_SetGadgetImage( GadNum.l , Imag.l )
  If GadNum > 0 And GadNum < 256
    If XGadget( GadNum )\Exist = 1
      If Imag > 0 : XGadget( GadNum )\Image = Imag : EndIf
      If XWindow( XGadget( GadNum )\Window )\Refresh < 4 : XWindow( XGadget( GadNum )\Window )\Refresh = 4 : EndIf
     EndIf
   EndIf
 EndProcedure
;
Procedure XWindow_SetGadgetTextInternal( GadNum.l , Texte$ )
  If GadNum > 0 And GadNum < 256
    If XGadget( GadNum )\Exist = 1
      XGadget( GadNum )\Texte = Texte$
      If XWindow( XGadget( GadNum )\Window )\Refresh < 4 : XWindow( XGadget( GadNum )\Window )\Refresh = 4 : EndIf
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_SetGadgetText( GadNum.l , Texto.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  TEXTE$ = MyDeleteString( Texto )
;  If Texto <> 0
;    TEXTE$ = PeekS( Texto )
;    If Len( TEXTE$ ) > 3
;      CallCFunctionFast(*GlobPtr\CreateDeleteString, Texto, 0 )
;     EndIf
;   Else
;    TEXTE$ = ""
;   EndIf
  XWindow_SetGadgetTextInternal( GadNum , TEXTE$ )
 EndProcedure
;
ProcedureCDLL XWindow_PositionGadget( GadNum.l , XPos.l , YPos.l )
  If GadNum > 0 And GadNum < 256
    If XGadget( GadNum )\Exist = 1
      XGadget( GadNum )\XPos = XPos : XGadget( GadNum )\XPos = YPos
      If XWindow( XGadget( GadNum )\Window )\Refresh < 4 : XWindow( XGadget( GadNum )\Window )\Refresh = 4 : EndIf
     EndIf
   EndIf
 EndProcedure

; IDE Options = PureBasic 4.30 (Windows - x86)
; CursorPosition = 138
; FirstLine = 91
; Folding = --