;
; *************************************
; *                                   *
; * INITIALISATION DU SYSTEME XWINDOW *
; *                                   *
; *************************************
;
;
Procedure.l XWindow_InitializeSkin()
  INITIALIZED.l = 0
  If B2DInitialized = 1
    Path$ = GetDir() + "\XWindow\" + XWinSystem\Skin + "\"
    INITIALIZED = 1
    For XLoop = 0 To 11
      Fichier$ = Path$ + XWinFiles$( XLoop )
      If DBGetFileExist( Fichier$ ) = 1
        SkinImage( XLoop ) = IMG_DynamicLoadF( Fichier$ , XWinSystem\MipMapMode )
        If SkinImage( XLoop ) > 0
          SkinImageX( XLoop ) = DBGetImageWidth( SkinImage( XLoop ) )
          SkinImageY( XLoop ) = DBGetImageHeight( SkinImage( XLoop ) )
         EndIf
       Else
        INITIALIZED.l = 0
       EndIf
     Next XLoop
   EndIf
  ProcedureReturn INITIALIZED
 EndProcedure
;
ProcedureCDLL.l XWindow_Initialize( SkinO.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  INITIALIZED.l = 0
  Skin$ = MyDeleteString( SkinO )
;  If SkinO <> 0
;    Skin$ = PeekS( SkinO )
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, SkinO , 0 )
;   Else
;    Skin$ = ""
;   EndIf
  Path$ = GetDir() + "\XWindow\"
  If B2DInitialized = 1
    If DBGetFileExist( Path$ + Skin$ ) = 1
      If ReadFile( 1 , Path$ + Skin$ )
        _HEADER$ = ReadString( 1 )
        If _HEADER$ = "[XWINDOW_SKIN]"
          XWinSystem\Skin = ReadString( 1 )
          DRAWER$ = Path$ + XWinSystem\Skin + "\"
          For XLoop = 0 To 11
            XWinFiles$( XLoop ) = ReadString( 1 )
           Next XLoop
          _HEADER$ = ReadString( 1 )
          INITIALIZED = 1
         EndIf   
        CloseFile( 1 )
       EndIf
     EndIf
    For XLoop = 1 To 11 : XWinDisplay( XLoop ) = - 1 : Next XLoop : XWinDisplay(0) = 0
    If INITIALIZED = 1
      INITIALIZED = XWindow_InitializeSkin()
      If INITIALIZED = 0 : INITIALIZED = -1 : EndIf
     EndIf
    XWinSystem\OldWindow = -1 : XWinSystem\CurrentWindow = -1
    XWinSystem\DragWindow = - 1 : XWinSystem\AllowDragging = 0
   EndIf
  XWinSystem\SkinLoaded = INITIALIZED
  ProcedureReturn INITIALIZED
 EndProcedure
;
ProcedureCDLL XWindow_ClearSystem()
  For XLoop = 255 To 1 Step - 1
    If XGadget( XLoop )\Exist = 1 : XWindow_DeleteGadget( XLoop ) : EndIf
   Next XLoop
  For XLoop = 16 To 0 Step - 1
    If XWindow( XLoop )\Exist = 1 : XWindow_Delete( XLoop ) : EndIf
   Next XLoop
  ; On supprime ensuite les images servant à faire le système
  If XWinSystem\SkinLoaded > 0
    For XLoop = 0 To 11
      If DBGetImageExist( SkinImage( XLoop ) ) = 1 : SkinImage( XLoop ) = IMG_Delete( SkinImage( XLoop ) ) : EndIf
     Next XLoop
   EndIf
  ; Suppression des données de compteurs de fenêtres.
  For XLoop = 1 To 11 : XWinDisplay( XLoop ) = - 1 : Next XLoop : XWinDisplay( 0 ) = 0
  XWinSystem\SkinLoaded = 0
 EndProcedure

;
; **************************************
; *                                    *
; * AFFECTATIOS DE VARIABLES POUR EDIT *
; *                                    *
; **************************************
;
ProcedureCDLL XWindow_TrueCloseMode()
  XWinSystem\CloseMode = 1
 EndProcedure
;
ProcedureCDLL XWindow_FakeCloseMode()
  XWinSystem\CloseMode = 0
 EndProcedure
;
ProcedureCDLL XWindow_EnableAlphaiser()
  XWinSystem\AllowAlphaiser = 1
 EndProcedure
;
ProcedureCDLL XWindow_DisableAlphaiser()
  XWinSystem\AllowAlphaiser = 0
 EndProcedure
;
Procedure XWindow_SetupAlphaiserInternal()
  TESTEUR.l = 0
 EndProcedure
;
; *******************************************
; *                                         *
; * GESTION DES FENETRES DU SYSTEME XWINDOW *
; *                                         *
; *******************************************
;
ProcedureCDLL XWindow_Create( WinNum.l , XSize.l , YSize.l )
  If WinNum > -1 And WinNum < 16 And B2DInitialized = 1
    If XWindow( WinNum )\Exist = 0
      XWindow( WinNum )\Exist = 1 : ; Valide la création de la fenêtre.
      XWindow( WinNum )\Format = 0 : ; Définit le type de fenêtre ( 0 = Normal , 1 = Chat )
      XWindow( WinNum )\XSize = XSize : XWindow( WinNum )\YSize = YSize
      XWindow( WinNum )\Refresh = 5 : ; Force le rafraichissement de l'image complête de la fenêtre.
      XWindow( WinNum )\Linked = 0 : ; La fenêtre est liée à une autre fenêtre .
      XWindow( WinNum )\Moveable = 1 : ; définit la fenêtre comme draggeable ( déplaçable ).
      XWindow( WinNum )\Close = 1 : ; Ajoute le gadget de fermeture de fenêtre.
      XWindow( WinNum )\Borders = 1 : ; Autorise l'affichage des bordures de fenêtre.
      XWindow( WinNum )\Bgd = 1 : ; Autorise l'affichage de la trame de fond de la fenêtre.
      XWindow( WinNum )\Alpha = 255 : ; Valeur d'alpha mapping par défaut.
      XWindow( WinNum )\GadgetCount = 0 : ; Aucun gadget inclus dans la fenêtre par défaut.
      XWindow( WinNum )\Hidden = 0 : ; Par défaut, la fenêtre serat visible et pas cachée.
      XWindow( WinNum )\Xpos = 0 : XWindow( WinNum )\YPos = 0
      XWindow( WinNum )\Title = 1 : XWindow( WinNum )\Name = "XGui Window"
      XWindow( WinNum )\XDSize = 0 : XWindow( WinNum )\YDSize = 0
      XWindow( WinNum )\Parent = 0 : XWindow( WinNum )\ChildCount = 0
      XWinDisplay(0) = XWinDisplay(0) + 1
      XWinDisplay( XWinDisplay(0) ) = WinNum
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_SetChatWin( WinNum.l )
  If WinNum > -1 And WinNum < 16 And B2DInitialized = 1
    If XWindow( WinNum )\Exist = 0
      ; Prevent any other window from being a chat window too.
      For XLoop = 0 To 15
        XWindow( WinNum )\Format = 0
       Next XLoop
      XWindow( WinNum )\Format = 1
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_DisableChatwin()
  For XLoop = 0 To 15
    XWindow( WinNum )\Format = 0
   Next XLoop
 EndProcedure
;
ProcedureCDLL XWindow_Alpha( WinNum.l , Alpha.l )
  If WinNum > -1 And WinNum < 16
    If XWindow( WinNum )\Exist = 1
      If Alpha < 1 : Alpha = 1 : EndIf
      If Alpha > 255 : Alpha = 255 : EndIf
      XWindow( WinNum )\Alpha = Alpha
      If XWindow( WinNum )\Refresh = 0 : XWindow( WinNum )\Refresh = 1 : EndIf
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_ToBack( WinNum.l )
  If WinNum > -1 And WinNum < 16
    If XWinDisplay(0) > 0 And XWindow( WinNum )\Exist = 1
      If XWinDisplay(0) > 1 And XWinDisplay( 1 ) <> WinNum
        XWinpos = 0 : Repeat : XWinPos = XWinPos + 1 : Until XWinDisplay( XWinPos ) = WinNum Or XWinPos = 16
        If XWinPos > 1
          For XLoop = XWinPos-1 To 1 Step 1
            XWinDisplay( XLoop + 1 ) = XWinDisplay( XLoop )
           Next XLoop
          XWinDisplay( 1 ) = WinNum
          XWinSystem\CheckPriorities = 1
         EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_ToFront( WinNum.l )
  If WinNum > -1 And WinNum < 16
    If XWinDisplay(0) > 0 And XWindow( WinNum )\Exist = 1
      If XWinDisplay(0) > 1 And XWinDisplay( XWinDisplay(0) ) <> WinNum
        XWinpos = 0 : Repeat : XWinPos = XWinPos + 1 : Until XWinDisplay( XWinPos ) = WinNum Or XWinPos = 16
        If XWinPos < XWinDisplay(0)
          For XLoop = XwinPos To XWinDisplay(0)-1 Step 1
            XWinDisplay( XLoop ) = XWinDisplay( XLoop + 1 )
           Next XLoop
          XWinDisplay( XWinDisplay(0) ) = WinNum
          XWinSystem\CheckPriorities = 1
         EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_Position( WinNum.l , Xpos.l , Ypos.l )
  If WinNum > -1 And WinNum < 16
    If XWindow( WinNum )\Exist = 1
      XWindow( WinNum )\Xpos = Xpos : XWindow( WinNum )\Ypos = Ypos
      If XWindow( WinNum )\Refresh = 0 : XWindow( WinNum )\Refresh = 1 : EndIf
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_Properties( WinNum.l , Borders.l , Title.l , Draggeable.l , Close.l )
  If WinNum > -1 And WinNum < 16
    If XWindow( WinNum )\Exist = 1
      ; Avant de modifier les propriétés d'affichage de la fenêtre et de la retracer entièrement,
      ; On vérifie si il y a des gadgets dans la dite fenêtre.
      If XWindow( WinNum )\GadgetCount > 0
        ; On recale les gadgets par rapport à en haut à gauche sans bordures ...
        If XWindow( WinNum )\Borders = 1
          XAdd = -8 : YAdd = -8
          If XWindow( WinNum )\Title = 1 : YAdd = -16 : EndIf
          For XLoop = 1 To XWinSystem\GadgetCount
           If XGadget( XLoop )\Window = WinNum
             XGadget( XLoop )\Xpos = XGadget( XLoop )\Xpos + XAdd
             XGadget( XLoop )\Ypos = XGadget( XLoop )\Ypos + YAdd
            EndIf
           Next XLoop
         EndIf
        If XWindow( WinNum )\Refresh < 3 : XWindow( WinNum )\Refresh = 3 : EndIf
       EndIf
      XWindow( WinNum )\Borders = Borders
      XWindow( WinNum )\Title = Title
      XWindow( WinNum )\Moveable = Draggeable
      XWindow( WinNum )\Close = Close
      XWindow( WinNum )\Refresh = 5
      ; Une fois les propriétés modifiées, on repositionne les gadgets de la fenêtre ou il faut...
      If XWindow( WinNum )\GadgetCount > 0 And XWindow( WinNum )\Borders = 1
        For XLoop = 1 To XWinSystem\GadgetCount
          If XGadget( XLoop )\Window = WinNum : XWindow_GadgetAdaptInternal( XLoop ) : EndIf
         Next XLoop
       EndIf
     EndIf
   EndIf
 EndProcedure

ProcedureCDLL XWindow_SetBorderOff( WinNum.l )
  If WinNum > 1 And WinNum < 16
    XWindow_Properties( WinNum , 0 , 0 , 0 , 0 )
   EndIf
 EndProcedure

ProcedureCDLL XWindow_SetBorderOn( WinNum.l )
  If WinNum > -1 And WinNum < 16
    Title.l = XWindow( WinNum )\Title
    Draggeable.l = XWindow( WinNum )\Moveable
    Close.l = XWindow( WinNum )\Close
    XWindow_Properties( WinNum , 1 , Title , Draggeable , Close )
   EndIf
 EndProcedure

ProcedureCDLL XWindow_SetTitleOff( WinNum.l )
  If WinNum > -1 And WinNum < 16
    Borders.l = XWindow( WinNum )\Borders
    Draggeable.l = XWindow( WinNum )\Moveable
    Close.l = XWindow( WinNum )\Close
    XWindow_Properties( WinNum , Borders , 0 , Draggeable , Close )
   EndIf
 EndProcedure

ProcedureCDLL XWindow_SetTitleOn( WinNum.l )
  If WinNum > -1 And WinNum < 16
    Borders.l = XWindow( WinNum )\Borders
    Draggeable.l = XWindow( WinNum )\Moveable
    Close.l = XWindow( WinNum )\Close
    XWindow_Properties( WinNum , Borders , 1 , Draggeable , Close )
   EndIf
 EndProcedure

ProcedureCDLL XWindow_SetDraggingOff( WinNum.l )
  If WinNum > -1 And WinNum < 16
    Borders.l = XWindow( WinNum )\Borders
    Title.l = XWindow( WinNum )\Title
    Close.l = XWindow( WinNum )\Close
    XWindow_Properties( WinNum , Borders , Title , 0 , Close )
   EndIf
 EndProcedure

ProcedureCDLL XWindow_SetDraggingOn( WinNum.l )
  If WinNum > -1 And WinNum < 16
    Borders.l = XWindow( WinNum )\Borders
    Title.l = XWindow( WinNum )\Title
    Close.l = XWindow( WinNum )\Close
    XWindow_Properties( WinNum , Borders , Title , 1 , Close )
   EndIf
 EndProcedure

ProcedureCDLL XWindow_SetCloseOff( WinNum.l )
  If WinNum > -1 And WinNum < 16
    Borders.l = XWindow( WinNum )\Borders
    Title.l = XWindow( WinNum )\Title
    Draggeable.l = XWindow( WinNum )\Moveable
    XWindow_Properties( WinNum , Borders , Title , Draggeable , 0 )
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_SetCloseOn( WinNum.l )
  If WinNum > -1 And WinNum < 16
    Borders.l = XWindow( WinNum )\Borders
    Title.l = XWindow( WinNum )\Title
    Draggeable.l = XWindow( WinNum )\Moveable
    XWindow_Properties( WinNum , Borders , Title , Draggeable , 1 )
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_Title( WinNum.l , NewTitle.l )
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  Title$ = MyDeleteString( NewTitle )
;  If NewTitle <> 0
;    Title$ = PeekS( Newtitle )
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, NewTitle , 0 )
;   EndIf
  If WinNum > -1 And WinNum < 16
    If XWindow( WinNum )\Exist = 1
      XWindow( WinNum )\Name = Title$
      XWindow( WinNum )\Borders = 1
      Xwindow( WinNum )\Title = 1
      If XWindow( WinNum )\Refresh < 4 : XWindow( WinNum )\Refresh = 4 : EndIf
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_Delete( WinNum.l )
  If WinNum > -1 And WinNum < 16
    If XWindow( WinNum )\Exist = 1
      ; Avant de supprimer la fenêtre, on vérifie si il y a pas des gadgets dedans ....
      If XWindow( WinNum )\GadgetCount > 0
        For XLoop = XWinSystem\GadgetCount To 1 Step -1
          If XGadget( XLoop )\Window = WinNum : XWindow_DeleteGadget( XLoop ) : EndIf
         Next XLoop
        EndIf
      ; On met la fenêtre au premier plan pour la supprimer de la liste plus facilement...
      XWindow_ToFront( WinNum ) : XWinDisplay(0) = XWinDisplay(0) - 1
      ; On supprime la fenêtre réellement.
      If XWindowSprite( WinNum ) > 0
        XWindowSprite( WinNum ) = SPR_Delete( XWindowSprite( WinNum ) )
       EndIf
      If XWindowImage( WinNum ) > 0
        If DBGetImageExist( XWindowImage( WinNum ) ) = 1 : XWindowImage( WinNum ) = IMG_Delete( XWindowImage( WinNum ) ) : EndIf
       EndIf
      If XWindowBitmap( WinNum ) > 0
        If DBBitmapExist( XWindowBitmap( WinNum ) ) = 1 : XWindowBitmap( WinNum ) = BMP_Delete( XWindowBitmap( WinNum ) ) : EndIf
       EndIf
      XWindow( WinNum )\Exist = 0 : XWindow( WinNum )\Format = 0
      XWindow( WinNum )\XSize = 0 : XWindow( WinNum )\YSize = 0
      XWindow( WinNum )\Refresh = 0 : XWindow( WinNum )\Linked = 0
      XWindow( WinNum )\Moveable = 0 : XWindow( WinNum )\Close = 0
      XWindow( WinNum )\Borders = 0 : XWindow( WinNum )\Bgd = 0
      XWindow( WinNum )\Alpha = 0 : XWindow( WinNum )\GadgetCount = 0
      XWindow( WinNum )\Parent = 0 : XWindow( WinNum )\ChildCount = 0
      XWindow( WinNum )\Hidden = 0
      XWindow( WinNum )\Xpos = 0 : XWindow( WinNum )\YPos = 0
      XWindow( WinNum )\Title = 1 : XWindow( WinNum )\Name = "XGui Window"
      XWindow( WinNum )\XDSize = 0 : XWindow( WinNum )\YDSize = 0
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_Show( WinNum.l )
  If WinNum > -1 And WinNum < 16
    If XWindow( WinNum )\Exist = 1
      If XWindowSprite( WinNum ) > 0
        DBShowSprite( XWindowSprite( WinNum ) ) : XWindow( WinNum )\Hide = 0
       Else
        XWindow( WinNum )\Hide = 3
       EndIf
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_Hide( WinNum.l )
  If WinNum > -1 And WinNum < 16
    If XWindow( WinNum )\Exist = 1
        If XWindowSprite( WinNum ) > 0
          DBHideSprite( XWindowSprite( WinNum ) )
          XWindow( WinNum )\Hide = 1
         Else
          XWindow( WinNum )\Hide = 2
         EndIf
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL.l GetWindowVisible( WinNum.l )
  If WinNum > -1 And WinNum < 16
    If XWindow( WinNum )\Hide = 0 : RETOUR.l = 1 : Else : RETOUR.l = 0 : EndIf
   Else
    RETOUR = 0
   EndIf
  ProcedureReturn RETOUR
 EndProcedure

Procedure.l XWindow_XLimit( Winnum.l )
  XResult.l = XWindow( WinNum )\XSize : XLimit.l = 0
  For XLoop = 0 To 16
    If XWindow( XLoop )\Parent = WinNum And XLoop <> WinNum
      If XWindow( XLoop )\Alignment = 8
        If XWindow( XLoop )\Hide = 0
          XLimit = XWindow( WinNum )\XSize + XWindow( XLoop )\XSize
          If XLimit > XResult : XResult = XLimit : EndIf
         EndIf
       EndIf
     EndIf
   Next XLoop
  ProcedureReturn XResult
 EndProcedure
;
Procedure.l XWindow_XMin( Winnum.l )
  XResult.l = 0 : XLimit.l = 0
  For XLoop = 0 To 16
    If XWindow( XLoop )\Parent = WinNum And XLoop <> WinNum
      If XWindow( XLoop )\Alignment = 4
        If XWindow( XLoop )\Hide = 0
          XLimit = XWindow( XLoop )\XSize
          If XLimit > XResult : XResult = XLimit : EndIf
         EndIf
       EndIf
     EndIf
   Next XLoop
  ProcedureReturn XResult
 EndProcedure
;
Procedure.l XWindow_YLimit( Winnum.l )
  YResult.l = XWindow( WinNum )\YSize : YLimit.l = 0
  For XLoop = 0 To 16
    If XWindow( XLoop )\Parent = WinNum And XLoop <> WinNum
      If XWindow( XLoop )\Alignment = 2
        If XWindow( XLoop )\Hide = 0
          YLimit = XWindow( WinNum )\YSize + XWindow( XLoop )\YSize
          If YLimit > YResult : YResult = YLimit : EndIf
         EndIf
       EndIf
     EndIf
   Next XLoop
  ProcedureReturn YResult
 EndProcedure
;
Procedure.l XWindow_YMin( Winnum.l )
  YResult.l = 0 : YLimit.l = 0
  For XLoop = 0 To 16
    If XWindow( XLoop )\Parent = WinNum And XLoop <> WinNum
      If XWindow( XLoop )\Alignment = 1
        If XWindow( XLoop )\Hide = 0
          YLimit = XWindow( XLoop )\YSize
          If YLimit > YResult : YResult = YLimit : EndIf
         EndIf
       EndIf
     EndIf
   Next XLoop
  ProcedureReturn YResult
 EndProcedure
;
Procedure XWindow_RepositionAttached( WinNum.l )
  For XLoop = 0 To 16
    If XWindow( XLoop )\Parent = WinNum And XLoop <> WinNum
      Select XWindow( XLoop )\Alignment
        Case 1
          XWindow( XLoop )\Xpos = XWindow( WinNum )\Xpos
          XWindow( XLoop )\YPos = XWindow( WinNum )\Ypos - XWindow( XLoop )\YSize
        Case 2
          XWindow( XLoop )\Xpos = XWindow( WinNum )\Xpos
          XWindow( XLoop )\YPos = XWindow( WinNum )\Ypos + XWindow( WinNum )\YSize
        Case 4
          XWindow( XLoop )\Xpos = XWindow( WinNum )\Xpos - XWindow( XLoop )\XSize
          XWindow( XLoop )\YPos = XWindow( WinNum )\Ypos
        Case 8
          XWindow( XLoop )\Xpos = XWindow( WinNum )\Xpos + XWindow( WinNum )\XSize
          XWindow( XLoop )\YPos = XWindow( WinNum )\Ypos
       EndSelect
      If XWindow( XLoop )\Refresh = 0 : XWindow( XLoop )\Refresh = 1 : EndIf
     EndIf
   Next XLoop
 EndProcedure
;
ProcedureCDLL XWindow_Refresh()
  If B2DInitialized = 1
      For XLoop = 0 To 16
       If XWindow( XLoop )\Exist = 1 And XWindow( XLoop )\Refresh > 0
         XWindow_RefreshInternal( XLoop )
        EndIf
       Next XLoop
      For XLoop = 1 To XWinDisplay(0)
        WinNum = XWinDisplay( XLoop )
        If XWindowSprite( WinNum ) > 0 
          Select XWindow( WinNum  )\Hide
            Case 2
              DBHideSprite( XWindowSprite( WinNum ) )
              XWindow( WinNum )\Hide = 1
            Case 3
              DBShowSprite( XWindowSprite( WinNum ) ) : DBSetSpritePriority( XWindowSprite( WinNum ) , XLoop )
              XWindow( WinNum )\Hide = 0
           EndSelect
         EndIf
        If XWinSystem\CheckPriorities = 1 And XWinDisplay(0) > 1
          DBSetSpritePriority( XWindowSprite( WinNum ) , XLoop )             
         EndIf
       Next XLoop
      XWinSystem\CheckPriorities = 0
      XWindow_GetWindowInternal()
      DBSetCurrentBitmap( 0 )
    ; Si l'on est pas en mode saisie de texte, on vérifie si la touche de saisie de texte a été préssée 
    If XWinSystem\ChatGadget > 0
      If XWinSystem\ChatReading = 0
        If XWinSystem\ChatScanCode <> 0
          ; Si la touche a été préssée alors on enclenche le mode SAISIE DE TEXTE POUR LE CHAT :)
          If DBKeyState( XWinSystem\ChatScanCode ) = 1
            XWinSystem\ChatReading = 1
            XWinSystem\ChatInText = "\"
            XWinSystem\LastKey = XWinSystem\ChatScanCode
           EndIf
         EndIf
       Else
        ; Si l'on est dans le mode chat.
        NewKey.l = DBScanCode() : MajMode.l = DBShiftKey()
        If NewKey > 0 And NewKey <> XWinSystem\LastKey
          ; On gère tout d'abord les touches systèmes.
          Select NewKey
            ; Supprimer le dernier caractère.
            ; Touches Escape pour annuler le texte.et désactiver le mode de saisie de texte.
            Case 1
              XWinSystem\ChatInText = " " : XWindow_SetGadgetTextInternal( XWinSystem\ChatGadget , XWinSystem\ChatInText )
              NewKey = 0 : XWinSystem\ChatReading = 0
            Case 14
              If Len( XWinSystem\ChatInText ) > 1
                XWinSystem\ChatInText = Left( XWinSystem\ChatInText , Len( XWinSystem\ChatInText ) - 1 )
                XWindow_SetGadgetTextInternal( XWinSystem\ChatGadget , XWinSystem\ChatInText )
               Else
                XWinSystem\ChatInText = "\"
                XWindow_SetGadgetTextInternal( XWinSystem\ChatGadget , XWinSystem\ChatInText )
               EndIf
              NewKey = 0
            ; Touches Entrée 1 pour valider le texte.et désactiver le mode de saisie de texte.
            Case 28
              If Len( XWinSystem\ChatInText ) > 0
                XWinSystem\ChatInText = Right( XWinSystem\ChatInText , Len( XWinSystem\ChatInText ) - 1 )
                XWindow_TalkToChatInternal( XWinSystem\ChatInText )
               EndIf
              XWinSystem\ChatInText = "" : XWindow_SetGadgetTextInternal( XWinSystem\ChatGadget , XWinSystem\ChatInText )
              NewKey = 0 : XWinSystem\ChatReading = 0
            ; Touches Entrée 2 pour valider le texte.et désactiver le mode de saisie de texte.
            Case 156
              If Len( XWinSystem\ChatInText ) > 0
                XWinSystem\ChatInText = Right( XWinSystem\ChatInText , Len( XWinSystem\ChatInText ) - 1 )
                XWindow_TalkToChatInternal( XWinSystem\ChatInText )
               EndIf
              XWinSystem\ChatInText = "" : XWindow_SetGadgetTextInternal( XWinSystem\ChatGadget , XWinSystem\ChatInText )
              NewKey = 0 : XWinSystem\ChatReading = 0
           EndSelect
          ; On gère ensuite les textes
          If NewKey > 0
;            XWinSystem\ChatInText = XWinSystem\ChatInText + ChatChar( NewKey )
            If MajMode = 1
              XWinSystem\ChatInText = XWinSystem\ChatInText + UCase( ChatChar( NewKey ) )
             Else
              XWinSystem\ChatInText = XWinSystem\ChatInText + LCase( ChatChar( NewKey ) )
             EndIf
            XWindow_SetGadgetTextInternal( XWinSystem\ChatGadget , XWinSystem\ChatInText )
           EndIf
         EndIf
        XWinSystem\LastKey = NewKey
       EndIf
     EndIf
   EndIf
 EndProcedure
;
Procedure XWindow_RefreshInternal( WinNum.l )
  If XWindow( WinNum )\Exist = 1
    ; Si on a changé les propriétés d'affichage de la fenêtre, on doit la recréer...
    If XWindow( WinNum )\Refresh = 5
      If XWindowBitmap( WinNum ) > 0 : XWindowBitmap( WinNum ) = BMP_Delete( XWindowBitmap( WinNum ) ) : EndIf
      XWindow( WinNum )\Refresh = 4
     EndIf
    ; Si le bitmap de la fenêtre n'est pas crée on le crée.
    If XWindowBitmap( WinNum ) = 0
      XWindowBitmap( WinNum ) = BMP_DynamicMake( XWindow( WinNum )\XSize , XWindow( WinNum )\YSize )
     Else
      If DBBitmapExist( XWindowBitmap( WinNum ) ) = 0
        XWindowBitmap( WinNum ) = BMP_DynamicMake( XWindow( WinNum )\XSize , XWindow( WinNum )\YSize )
       EndIf
     EndIf
    ; On vérifie que le système ait bien été initialisé.
    DBSetCurrentBitmap( XWindowBitmap( WinNum ) )
    If XWinSystem\SkinLoaded > 0
      ; On vérifie, si le rafraichissement est à 5 alors on retrace les contours de la fenêtre.
      If XWindow( WinNum )\Refresh = 4
        XWindow( WinNum )\Refresh = 3
        ; Si le tramage de fond est activé, on le rafraichit.
        If XWindow( WinNum )\bgd = 1

;          For XLoop.l = 0 To XWindow( WinNum )\XSize Step SkinImageX( 4 )
;           For YLoop.l = 0 To XWindow( WinNum )\YSize Step SkinImageY( 4 )
;              DBPasteImage( SkinImage( 4 ) , XLoop , YLoop )
;            Next YLoop
;           Next XLoop
          XLoop.l = 0 : Repeat
            YLoop.l = 0 : Repeat
              DBPasteImage( SkinImage( 4 ), XLoop, YLoop )
             YLoop = YLoop + SkinImageY( 4 ) : Until YLoop > XWindow( WinNum )\YSize
           XLoop = XLoop + SkinImageX( 4 ) : Until XLoop > XWindow( WinNum )\XSize

         EndIf
        ; Si les bordures sont activées, on les rafraichit.
        If XWindow( WinNum )\Borders = 1
          ; Tracé des bordures HAUT/BAS

;          For XLoop = 0 To XWindow( WinNum )\XSize Step SkinImageX( 1 )
;            DBPasteImage( SkinImage( 1 ) , XLoop , 0 )
;            DBPasteImage( SkinImage( 7 ) , XLoop , XWindow( WinNum )\YSize - 8 )
;           Next XLoop
          XLoop = 0 : Repeat
            DBPasteImage( SkinImage( 1 ) , XLoop , 0 )
            DBPasteImage( SkinImage( 7 ) , XLoop , XWindow( WinNum )\YSize - SkinImageY( 7 ) )
           XLoop = XLoop + SkinImageX( 1 ) : Until XLoop > XWindow( WinNum )\XSize

          ; Tracé des bordures GAUCHE/DROITE

;          For YLoop = 0 To XWindow( WinNum )\YSize Step SkinImageX( 3 )
;            DBPasteImage( SkinImage( 3 ) , 0 , YLoop )
;            DBPasteImage( SkinImage( 5 ) , XWindow( WinNum )\XSize - 8 , YLoop )
;           Next YLoop
          YLoop = 0 : Repeat
            DBPasteImage( SkinImage( 3 ) , 0 , YLoop )
            DBPasteImage( SkinImage( 5 ) , XWindow( WinNum )\XSize - SkinImageX( 5 ) , YLoop )
           YLoop = YLoop + SkinImageY( 3 ) : Until YLoop > XWindow( WinNum )\YSize

          ; On gère les 2 cas pour le texte , le cas FONTE par défaut et le cas XFONT
            ; Tracé du titre de la fenêtre à gérer.
          If XWindow( WinNum )\Title = 1
            ; Utilisation du texte simple pour le titre 
            For XLoop = 0 To XWindow( WinNum )\XSize + 64 Step 64
              DBPasteImage( SkinImage( 9 ) , XLoop , 0 )
             Next XLoop
            XPos.l = ( XWindow( WinNum )\XSize - DBTextWidth( XWindow( WinNum )\Name ) ) / 2
            DBSetCursor( Xpos + 1 , 1 ) : DBInk( 0 , 0 )
            DBPrintS( XWindow( WinNum )\Name )
            DBSetCursor( Xpos , 0 ) : DBInk( DBRgb( 255 , 255 , 255 ) , 0 )
            DBPrintS( XWindow( WinNum )\Name )
           EndIf

          ; Tracé des 4 Coins.
          If XWindow( WinNum )\Title = 0
            DBPasteImage( SkinImage( 0 ), 0, 0 )
           Else
            DBPasteImage( SkinImage( 10 ), 0, 0 )
           EndIf

          If XWindow( WinNum )\Close = 0
           If XWindow( WinNum )\Title = 0 : DBPasteImage( SkinImage( 2 ) , XWindow( WinNum )\XSize - SkinImageX( 2 ) , 0 ) : EndIf
           Else
            DBPasteImage( SkinImage( 11 ) , XWindow( WinNum )\XSize - SkinImageX( 11 ) , 0 )
           EndIf
          DBPasteImage( SkinImage( 6 ) , 0 , XWindow( WinNum )\YSize - SkinImageY( 6 ) )
          DBPasteImage( SkinImage( 8 ) , XWindow( WinNum )\XSize - SkinImageX( 8 ) , XWindow( WinNum )\YSize - SkinImageY( 8 ) )
         EndIf
       EndIf
      ; On Rafraichit les gadgets inclus dans la fenêtre.
      If XWindow( WinNum )\Refresh = 3
        XWindow( WinNum )\Refresh = 2
        If XWindow( WinNum )\GadgetCount > 0 And XWinSystem\GadgetCount > 0
          For XLoop = 1 To XWinSystem\GadgetCount
            If XGadget( XLoop )\Window = WinNum : XWindow_GadgetRefreshFast( XLoop ) : EndIf
           Next XLoop
         EndIf
        ; On Rafraichit le Chat si la fenêtre le contient
         If XWindowImage( WinNum ) = 0
           XWindowImage( WinNum ) = IMG_GrabImageF( 0 , 0 , XWindow( WinNum )\XSize , XWindow( WinNum )\YSize, XWinSystem\MipMapMode )
          Else
           DBGrabImage1( XWindowImage( WinNum ), 0, 0, XWindow( WinNum )\XSize, XWindow( WinNum )\YSize, XWinSystem\MipMapMode )
          EndIf
        ; Upper line changer !!! for GetBitmapX/Y asking for bitmap number
       EndIf
     EndIf
;    SetCurrentBitmap( 0 )
    XMin = XWindow_XMin( WinNum ) : YMin = XWindow_YMin( WinNum )
    XMax = DBBitmapWidth(0) - XWindow_XLimit( WinNum ) : YMax = DBBitmapHeight(0) - XWindow_YLimit( WinNum )
    If XWindow( WinNum )\Xpos < XMin : XWindow( WinNum )\Xpos = XMin : EndIf
    If XWindow( WinNum )\Xpos > XMax : XWindow( WinNum )\Xpos = XMax : EndIf
    If XWindow( WinNum )\Ypos < YMin : XWindow( WinNum )\Ypos = YMin : EndIf
    If XWindow( WinNum )\Ypos > YMax : XWindow( WinNum )\Ypos = YMax : EndIf
    XWindow_RepositionAttached( WinNum )
    If XWindowSprite( WinNum ) = 0
      XWindowSprite( WinNum ) = SPR_DynamicSprite( XWindow( WinNum )\Xpos , XWindow( WinNum )\Ypos , XWindowImage( WinNum ) )
;      If XWinSystem\MipMapMode > 0
;        DBSetSprite( XWindowSprite( WinNum ), 1, 1 )
;       Else
;        DBSetSprite( XWindowSprite( WinNum ), 1, 0 )
;       EndIf
     Else
      DBSprite( XWindowSprite( WinNum ), XWindow( WinNum )\Xpos , XWindow( WinNum )\Ypos , XWindowImage( WinNum ) )
     EndIf
    If XWindow( WinNum )\Refresh = 2
      XWindow( WinNum )\Refresh = 1
      If XWindow( WinNum )\XDSize > 0 And XWindow( WinNum )\YDSize > 0
        XPercent.l = ( 100 * XWindow( WinNum )\XDSize ) / XWindow( WinNum )\XSize
        YPercent.l = ( 100 * XWindow( WinNum )\YDSize ) / XWindow( WinNum )\YSize
        DBStretchSprite( XWindowSprite( WinNum ) , XPercent , YPercent )
       EndIf
     EndIf
    If XWindow( WinNum )\Refresh = 1
      DBSetSpriteAlpha( XWindowSprite( WinNum ) , XWindow( WinNum )\Alpha )    
;      If XWindow( WinNum )\Hide = 1 : DBHideSprite( XWindowSprite( WinNum ) ) : EndIf      
      XWindow( WinNum )\Refresh = 0
     EndIf

   EndIf
 EndProcedure
;
Procedure XWindow_GetWindowInternal()
  XM.l = DBGetMouseX() : YM.l = DBGetMouseY() : MC.l = DBGetMouseClick()
  If MC = 0 : XWinSystem\DragWindow = - 1 : EndIf
  XWinSystem\CurrentGadget = 0
  XWinSystem\OldWindow = XWinSystem\CurrentWindow
  If XWinSystem\DragWindow = - 1
    XWinSystem\CurrentWindow = - 1
    If XWinDisplay(0) > 0
      For XLoop = XWinDisplay(0) To 1 Step -1
        WinNum = XWinDisplay( XLoop )
        ; Si le curseur de la souris se trouve dans la fenêtre .
        If XWindow( WinNum )\Hide = 0
          If XM >= XWindow( WinNum )\XPos And YM >= XWindow( WinNum )\YPos
            If XM <= XWindow( WinNum )\Xpos + XWindow( WinNum )\XSize
              If YM <= XWindow( WinNum )\YPos + XWindow( WinNum )\YSize
                If XWinSystem\CurrentWindow = -1 : XWinSystem\CurrentWindow = WinNum : EndIf
               EndIf
             EndIf
           EndIf
         EndIf
       Next XLoop
     EndIf
    ; On vérifie la position de la souris dans la fenêtre  Si on peut déplacer la fenêtre ?
    If XWinSystem\CurrentWindow > -1
      YPosIn.l = YM - XWindow( XWinSystem\CurrentWindow )\YPos
      If YPosIn < 16 And XWindow( XWinSystem\CurrentWindow )\Moveable = 1
        XWinSystem\AllowDragging = 1
       Else
        XWinSystem\AllowDragging = 0
       EndIf
      ; Si le curseur de la souris est dans la zone de déplacement alors, on calcule si on la déplace, ferme , etc...
      XPosIn.l = XM - XWindow( XWinSystem\CurrentWindow )\XPos
      ; Vérifie que la fenêtre ne soit pas une fenêtre attachée à une autre.
      If MC = 1 And XWinSystem\OldMouseClick = 0
        ; Lorsque l'on est dans une fenetre, si l'on clique dessus, elle passe auto au premier plan.
        If XWinDisplay( XWinDisplay(0) ) <> XWinSystem\CurrentWindow
          XWindow_ToFront( XWinSystem\CurrentWindow )
         EndIf
         ; Mise en place du déplacement de fenêtre.
        If XPosIn < XWindow( XWinSystem\CurrentWindow )\XSize - SkinImageX( 11 ) And YPosIn <= SkinImageY( 11 )
          If XWinSystem\DragWindow = -1 And XWinSystem\AllowDragging = 1 And XWindow( XWinSystem\CurrentWindow )\Parent = 0
            XWinSystem\DragWindow = XWinSystem\CurrentWindow
            XWinSystem\XDragOrigin = XWindow( XWinSystem\DragWindow )\Xpos
            XWinSystem\YDragOrigin = XWindow( XWinSystem\DragWindow )\Ypos        
            XWinSystem\XDragMouse = XM : XWinsystem\YDragMouse = YM
           EndIf
         EndIf
        ; ON VERIFIE SI L'ON SE TROUVE SUR UN GADGET DANS LA FENETRE.
        If XWindow( XWinSystem\CurrentWindow )\GadgetCount > 0
          For XLoop = XWinSystem\GadgetCount To 1 Step - 1
            If XGadget( XLoop )\Window = XWinSystem\CurrentWindow
;              XGad.l = XWindow( XWinSystem\CurrentWindow )\Xpos + XGadget( Xloop )\Xpos
;              YGad.l = XWindow( XWinSystem\CurrentWindow )\Ypos + XGadget( Xloop )\Ypos
              XGad.l = XGadget( Xloop )\Xpos
              YGad.l = XGadget( Xloop )\Ypos
              If XPosIn >= XGad And YPosIn >= YGad
                If XPosIn <= XGad + XGadget( XLoop )\XSize And YPosIn <= YGad + XGadget( XLoop )\YSize
                  If XWinSystem\CurrentGadget = 0 : XWinSystem\CurrentGadget = XLoop : EndIf
                 EndIf
               EndIf
            EndIf
           Next XLoop
         EndIf
        ; Suppression de la fenêtre ???
        If XposIn >= XWindow( XWinSystem\CurrentWindow )\XSize - SkinImageX( 11 ) And YPosIn <= SkinImageY( 11 )
          If XWindow( XWinSystem\CurrentWindow )\Close = 1
            If XWinSystem\CloseMode = 1
              XWindow_Delete( XWinSystem\CurrentWindow )
             Else
              XWindow_Hide( XWinSystem\CurrentWindow )
             EndIf
           EndIf
          XWinSystem\CurrentWindow = -1 : XWinSystem\OldWindow = - 1
         EndIf   
       EndIf
     Else
      XWinSystem\AllowDragging = 0
      XWinSystem\DragWindow = -1
     EndIf
   Else
    ; Déplacement de la fenêtre ???
    XADD.l = XM - XWinSystem\XDragMouse : YADD.l = YM - XWinsystem\YDragMouse
    XWindow( XWinSystem\DragWindow )\Xpos = XWinSystem\XDragOrigin + XADD
    XWindow( XWinSystem\DragWindow )\Ypos = XWinSystem\YDragOrigin + YADD
    If XWindow( XWinSystem\DragWindow )\Refresh = 0 : XWindow( XWinSystem\DragWindow )\Refresh = 1 : EndIf
   EndIf
  XWinSystem\OldMouseClick = MC
 EndProcedure
;
ProcedureCDLL.l XWindow_GetCurrentWindow()
  WinNum.l = XWinSystem\CurrentWindow
  ProcedureReturn WinNum
 EndProcedure

ProcedureCDLL.l XWindow_GetWinXPos( WinNum.l )
  If WinNum > -1 And WinNum < 16
    Value.l = XWindow( WinNum )\Xpos
   Else
    Value.l = -1
   EndIf
  ProcedureReturn Value
 EndProcedure
;
ProcedureCDLL.l XWindow_GetWinYPos( WinNum.l )
  If WinNum > -1 And WinNum < 16
    Value.l = XWindow( WinNum )\Ypos
   Else
    Value.l = -1
   EndIf
  ProcedureReturn Value
 EndProcedure
;
ProcedureCDLL.l XWindow_Exist( WinNum.l )
  If WinNum > -1 And WinNum < 16
    Value.l = XWindow( WinNum )\Exist
   Else
    Value.l = -1
   EndIf
  ProcedureReturn Value
 EndProcedure
;
ProcedureCDLL XWindow_Stretch( WinNum.l , XSize.l , YSize.l )
  If WinNum > 0 And WinNum < 16
    If XSize > 0 And YSize > 0
      XWindow( WinNum )\XDSize = XSize
      XWindow( WinNum )\YDSize = YSize
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_DefaultSize( WinNum.l )
  If WinNum > 0 And WinNum < 16
    If XSize > 0 And YSize > 0
      XWindow( WinNum )\XDSize = 0
      XWindow( WinNum )\YDSize = 0
      XWindow( WinNum )\Refresh = 5
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL XWindow_UseXFont( WinNum.l , FontNumber.l )
  If WinNum > 0 And WinNum < 16
    If XWindow( WinNum )\Exist = 1
      If FontNumber > 0 And FontNumber < 17
        If XFont_Exist( FontNumber ) = 1
          XWindow( WinNum )\XFont = FontNumber
          If XWindow( WinNum )\Refresh < 3 : XWindow( WinNum )\Refresh = 3 : EndIf
         EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure  
;
ProcedureCDLL XWindow_DefaultFont( WinNum.l )
  If WinNum > 0 And WinNum < 16
    If XWindow( WinNum )\Exist = 1
      XWindow( WinNum )\XFont = 0
      If XWindow( WinNum )\Refresh < 3 : XWindow( WinNum )\Refresh = 3 : EndIf
     EndIf
   EndIf
 EndProcedure  

ProcedureCDLL.l XWindow_GetFreeWindow()
  WinNum.l = 0
  Repeat
    WinNum = WinNum + 1
   Until XWindow( WinNum )\Exist = 0 Or WinNum = 16
  If Xwindow( WinNum )\Exist = 0 : RETOUR.l = WinNum : Else : RETOUR = 0 : EndIf
  ProcedureReturn RETOUR
 EndProcedure

ProcedureCDLL.l XGui_UseMipMap( Mode.l )
  XWinSystem\MipMapMode = Mode
 EndProcedure

; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 35
; FirstLine = 32
; Folding = --------
; DisableDebugger