; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 13.12.05
;
; *********************************************************************
Procedure.l XWindow_Initialize( Param1.s, Param2.l, Param3.l, Param4.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( *Basic2DExtends\XWindow_Initialize, Param1PTR, Param2, Param3, Param4 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XWindow_ClearSystem()
  CallCFunctionFast( *Basic2DExtends\XWindow_ClearSystem )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_TrueCloseMode()
  CallCFunctionFast( *Basic2DExtends\XWindow_TrueCloseMode )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_FakeCloseMode()
  CallCFunctionFast( *Basic2DExtends\XWindow_FakeCloseMode )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_EnableAlphaiser()
  CallCFunctionFast( *Basic2DExtends\XWindow_EnableAlphaiser )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DisableAlphaiser()
  CallCFunctionFast( *Basic2DExtends\XWindow_DisableAlphaiser )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Create( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_Create, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Alpha( Param0.l, Param1.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_Alpha, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_ToBack( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_ToBack, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_ToFront( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_ToFront, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Position( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_Position, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Properties( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_Properties, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetBorderOff( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetBorderOff, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetBorderOn( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetBorderOn, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetTitleOff( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetTitleOff, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetTitleOn( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetTitleOn, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetDraggingOff( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetDraggingOff, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetDraggingOn( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetDraggingOn, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetCloseOff( L.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetCloseOff, L )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetCloseOn( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetCloseOn, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Title( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *Basic2DExtends\XWindow_Title, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Delete( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_Delete, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Show( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_Show, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Hide( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_Hide, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Refresh()
  CallCFunctionFast( *Basic2DExtends\XWindow_Refresh )
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetCurrentWindow()
  Retour.l = CallCFunctionFast( *Basic2DExtends\XWindow_GetCurrentWindow )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetWinXPos( Param1.l )
  Retour.l = CallCFunctionFast( *Basic2DExtends\XWindow_GetWinXPos, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetWinYPos( Param1.l )
  Retour.l = CallCFunctionFast( *Basic2DExtends\XWindow_GetWinYPos, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_Exist( Param1.l )
  Retour.l = CallCFunctionFast( *Basic2DExtends\XWindow_Exist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XWindow_AddGadget( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l, Param5.l, Param6.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_AddGadget, Param0, Param1, Param2, Param3, Param4, Param5, Param6 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_AddGadgetCombination( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l, Param5.l, Param6.l, Param7.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param7PTR.l, Len( Param7 ) + 1 ) ; CreateString
  PokeS( Param7PTR, Param7 )
  CallCFunctionFast( *Basic2DExtends\XWindow_AddGadgetCombination, Param0, Param1, Param2, Param3, Param4, Param5, Param6, Param7PTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_AddGadgetTexte( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l, Param5.l, Param6.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param6PTR.l, Len( Param6 ) + 1 ) ; CreateString
  PokeS( Param6PTR, Param6 )
  CallCFunctionFast( *Basic2DExtends\XWindow_AddGadgetTexte, Param0, Param1, Param2, Param3, Param4, Param5, Param6PTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DeleteGadget( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_DeleteGadget, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetCurrentGadget()
  Retour.l = CallCFunctionFast( *Basic2DExtends\XWindow_GetCurrentGadget )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetGadgetImage( Param0.l, Param1.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetGadgetImage, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetGadgetText( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetGadgetText, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_PositionGadget( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_PositionGadget, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Stretch( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_Stretch, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DefaultSize( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_DefaultSize, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XFont_SetupFont( Param0.s, Param1.l, Param2.l, Param3.l, Param4.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *Basic2DExtends\XFont_SetupFont, Param0PTR, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure XFont_ClearFont( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XFont_ClearFont, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l XFont_Exist( Param1.l )
  Retour.l = CallCFunctionFast( *Basic2DExtends\XFont_Exist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XFont_ClearAllFont()
  CallCFunctionFast( *Basic2DExtends\XFont_ClearAllFont )
 EndProcedure
;
; *********************************************************************
Procedure XFont_SetCursor( Param0.l, Param1.l )
  CallCFunctionFast( *Basic2DExtends\XFont_SetCursor, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure XFont_SetCurrentFont( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XFont_SetCurrentFont, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l XFont_GetTextWidth( Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( *Basic2DExtends\XFont_GetTextWidth, Param1PTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XFont_GetTextHeight( Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( *Basic2DExtends\XFont_GetTextHeight, Param1PTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XFont_Print( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *Basic2DExtends\XFont_Print, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure XFont_SetCurrentBitmap( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XFont_SetCurrentBitmap, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_UseXFont( Param0.l, Param1.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_UseXFont, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DefaultFont( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_DefaultFont, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_AttachWindow( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_AttachWindow, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DetachWindow( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_DetachWindow, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetTextOpaque()
  CallCFunctionFast( *Basic2DExtends\XWindow_SetTextOpaque )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetTextTransparent()
  CallCFunctionFast( *Basic2DExtends\XWindow_SetTextTransparent )
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetAttached( Param1.l )
  Retour.l = CallCFunctionFast( *Basic2DExtends\XWindow_GetAttached, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetWindowVisible( Param1.l )
  Retour.l = CallCFunctionFast( *Basic2DExtends\GetWindowVisible, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetWinGadgetCount( Param1.l )
  Retour.l = CallCFunctionFast( *Basic2DExtends\XWindow_GetWinGadgetCount, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetChatGadget( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetChatGadget, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetChatWindowGadget( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetChatWindowGadget, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_TalkToChat( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *Basic2DExtends\XWindow_TalkToChat, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetChatScanCode( Param0.l )
  CallCFunctionFast( *Basic2DExtends\XWindow_SetChatScanCode, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_ChatReadingKey()
  Retour.l = CallCFunctionFast( *Basic2DExtends\XWindow_ChatReadingKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s XWindow_GetLastCommand()
  Retour.l = CallCFunctionFast( *Basic2DExtends\XWindow_GetLastCommand )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l Basic2D_Init()
  Retour.l = CallCFunctionFast( *Basic2DExtends\Basic2D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetActivated()
  Retour.l = CallCFunctionFast( *Basic2DExtends\GetActivated )
  ProcedureReturn Retour
 EndProcedure
;
