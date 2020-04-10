; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure Basic2DExtendsStruct
  XWindow_Initialize.l : XWindow_ClearSystem.l : XWindow_TrueCloseMode.l : XWindow_FakeCloseMode.l
  XWindow_EnableAlphaiser.l : XWindow_DisableAlphaiser.l : XWindow_Create.l : XWindow_Alpha.l
  XWindow_ToBack.l : XWindow_ToFront.l : XWindow_Position.l : XWindow_Properties.l
  XWindow_SetBorderOff.l : XWindow_SetBorderOn.l : XWindow_SetTitleOff.l : XWindow_SetTitleOn.l
  XWindow_SetDraggingOff.l : XWindow_SetDraggingOn.l : XWindow_SetCloseOff.l : XWindow_SetCloseOn.l
  XWindow_Title.l : XWindow_Delete.l : XWindow_Show.l : XWindow_Hide.l
  XWindow_Refresh.l : XWindow_GetCurrentWindow.l : XWindow_GetWinXPos.l : XWindow_GetWinYPos.l
  XWindow_Exist.l : XWindow_AddGadget.l : XWindow_AddGadgetCombination.l : XWindow_AddGadgetTexte.l
  XWindow_DeleteGadget.l : XWindow_GetCurrentGadget.l : XWindow_SetGadgetImage.l : XWindow_SetGadgetText.l
  XWindow_PositionGadget.l : XWindow_Stretch.l : XWindow_DefaultSize.l : XFont_SetupFont.l
  XFont_ClearFont.l : XFont_Exist.l : XFont_ClearAllFont.l : XFont_SetCursor.l
  XFont_SetCurrentFont.l : XFont_GetTextWidth.l : XFont_GetTextHeight.l : XFont_Print.l
  XFont_SetCurrentBitmap.l : XWindow_UseXFont.l : XWindow_DefaultFont.l : XWindow_AttachWindow.l
  XWindow_DetachWindow.l : XWindow_SetTextOpaque.l : XWindow_SetTextTransparent.l : XWindow_GetAttached.l
  GetWindowVisible.l : XWindow_GetWinGadgetCount.l : XWindow_SetChatGadget.l : XWindow_SetChatWindowGadget.l
  XWindow_TalkToChat.l : XWindow_SetChatScanCode.l : XWindow_ChatReadingKey.l : XWindow_GetLastCommand.l
  Basic2D_Init.l : XFont_AutoReturnMode.l : XGui_UseMipMap.l
 EndStructure
Global Basic2DExtends.Basic2DExtendsStruct

Procedure.l CheckBasic2DExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Basic2D.dll")
    Basic2DExtends\XWindow_Initialize= AIsFunction( 1 , "XWindow_Initialize" ) ; 1 XGui Setup SkinFileName$
    Basic2DExtends\XWindow_ClearSystem= AIsFunction( 1 , "XWindow_ClearSystem" ) ; 2 XGui Clear 
    Basic2DExtends\XWindow_TrueCloseMode= AIsFunction( 1 , "XWindow_TrueCloseMode" ) ; 3 XGui CloseToClose 
    Basic2DExtends\XWindow_FakeCloseMode= AIsFunction( 1 , "XWindow_FakeCloseMode" ) ; 4 XGui CloseToHide 
    Basic2DExtends\XWindow_EnableAlphaiser= AIsFunction( 1 , "XWindow_EnableAlphaiser" ) ; 5 XGui Enable Alpha Window 
    Basic2DExtends\XWindow_DisableAlphaiser= AIsFunction( 1 , "XWindow_DisableAlphaiser" ) ; 6 XGui Disable Alpha Window 
    Basic2DExtends\XWindow_Create= AIsFunction( 1 , "XWindow_Create" ) ; 7 XGui Create Window WindowNumber, Width, Height
    Basic2DExtends\XWindow_Alpha= AIsFunction( 1 , "XWindow_Alpha" ) ; 8 XGui Set Alpha WindowNumber, AlphaValue
    Basic2DExtends\XWindow_ToBack= AIsFunction( 1 , "XWindow_ToBack" ) ; 9 XGui Window To Front WindowNumber
    Basic2DExtends\XWindow_ToFront= AIsFunction( 1 , "XWindow_ToFront" ) ; 10 XGui Window To Back WindowNumber
    Basic2DExtends\XWindow_Position= AIsFunction( 1 , "XWindow_Position" ) ; 11 XGui Position Window WindowNumber, XPosition, YPosition
    Basic2DExtends\XWindow_Properties= AIsFunction( 1 , "XWindow_Properties" ) ; 12 XGui Window Properties WindowNumber, BorderFlag, TitleFlag, DraggingMode, CloseButton
    Basic2DExtends\XWindow_SetBorderOff= AIsFunction( 1 , "XWindow_SetBorderOff" ) ; 13 XGui Window Border Off WindowNumber
    Basic2DExtends\XWindow_SetBorderOn= AIsFunction( 1 , "XWindow_SetBorderOn" ) ; 14 XGui Window Border On WindowNumber
    Basic2DExtends\XWindow_SetTitleOff= AIsFunction( 1 , "XWindow_SetTitleOff" ) ; 15 XGui Window Title Off WindowNumber
    Basic2DExtends\XWindow_SetTitleOn= AIsFunction( 1 , "XWindow_SetTitleOn" ) ; 16 XGui Window Title On WindowNumber
    Basic2DExtends\XWindow_SetDraggingOff= AIsFunction( 1 , "XWindow_SetDraggingOff" ) ; 17 XGui Window Dragging Off WindowNumber
    Basic2DExtends\XWindow_SetDraggingOn= AIsFunction( 1 , "XWindow_SetDraggingOn" ) ; 18 XGui Window Dragging On WindowNumber
    Basic2DExtends\XWindow_SetCloseOff= AIsFunction( 1 , "XWindow_SetCloseOff" ) ; 19 XGui Window Close Off LWindowNumber
    Basic2DExtends\XWindow_SetCloseOn= AIsFunction( 1 , "XWindow_SetCloseOn" ) ; 20 XGui Window Close On WindowNumber
    Basic2DExtends\XWindow_Title= AIsFunction( 1 , "XWindow_Title" ) ; 21 XGui Set Window Title WindowNumber, StringTitle$
    Basic2DExtends\XWindow_Delete= AIsFunction( 1 , "XWindow_Delete" ) ; 22 XGui Delete Window WindowNumber
    Basic2DExtends\XWindow_Show= AIsFunction( 1 , "XWindow_Show" ) ; 23 XGui Show Window WindowNumber
    Basic2DExtends\XWindow_Hide= AIsFunction( 1 , "XWindow_Hide" ) ; 24 XGui Hide Window WindowNumber
    Basic2DExtends\XWindow_Refresh= AIsFunction( 1 , "XWindow_Refresh" ) ; 25 XGui Update 
    Basic2DExtends\XWindow_GetCurrentWindow= AIsFunction( 1 , "XWindow_GetCurrentWindow" ) ; 26 XGui Get Window 
    Basic2DExtends\XWindow_GetWinXPos= AIsFunction( 1 , "XWindow_GetWinXPos" ) ; 27 XGui Get Window XPos WindowNumber
    Basic2DExtends\XWindow_GetWinYPos= AIsFunction( 1 , "XWindow_GetWinYPos" ) ; 28 XGui Get Window YPos WindowNumber
    Basic2DExtends\XWindow_Exist= AIsFunction( 1 , "XWindow_Exist" ) ; 29 XGui Window Exist WindowNumber
    Basic2DExtends\XWindow_AddGadget= AIsFunction( 1 , "XWindow_AddGadget" ) ; 30 XGui Add Gadget WindowNumber, GadgetNumber, Xpos, Ypos, XSize, Ysize, ImageNumber
    Basic2DExtends\XWindow_AddGadgetCombination= AIsFunction( 1 , "XWindow_AddGadgetCombination" ) ; 31 XGui Add Gadget Combi WindowNumber, GadgetNumber, Xpos, Ypos, XSize, Ysize, Image, GadgetText$
    Basic2DExtends\XWindow_AddGadgetTexte= AIsFunction( 1 , "XWindow_AddGadgetTexte" ) ; 32 XGui Add Gadget Text 
    Basic2DExtends\XWindow_DeleteGadget= AIsFunction( 1 , "XWindow_DeleteGadget" ) ; 33 XGui Delete Gadget 
    Basic2DExtends\XWindow_GetCurrentGadget= AIsFunction( 1 , "XWindow_GetCurrentGadget" ) ; 34 XGui Get Clicked 
    Basic2DExtends\XWindow_SetGadgetImage= AIsFunction( 1 , "XWindow_SetGadgetImage" ) ; 35 XGui Set Gadget Image 
    Basic2DExtends\XWindow_SetGadgetText= AIsFunction( 1 , "XWindow_SetGadgetText" ) ; 36 XGui Set Gadget Text 
    Basic2DExtends\XWindow_PositionGadget= AIsFunction( 1 , "XWindow_PositionGadget" ) ; 37 XGui Position Gadget 
    Basic2DExtends\XWindow_Stretch= AIsFunction( 1 , "XWindow_Stretch" ) ; 38 XGui Stretch Window 
    Basic2DExtends\XWindow_DefaultSize= AIsFunction( 1 , "XWindow_DefaultSize" ) ; 39 XGui Default Window Size 
    Basic2DExtends\XFont_SetupFont= AIsFunction( 1 , "XFont_SetupFont" ) ; 40 XFont Setup Font ImageFile$, FontNumber, FontSize, FirstChar, Flag
    Basic2DExtends\XFont_ClearFont= AIsFunction( 1 , "XFont_ClearFont" ) ; 41 XFont Clear Font FontNumber
    Basic2DExtends\XFont_Exist= AIsFunction( 1 , "XFont_Exist" ) ; 42 XFont Exist 
    Basic2DExtends\XFont_ClearAllFont= AIsFunction( 1 , "XFont_ClearAllFont" ) ; 43 XFont Clear All Fonts 
    Basic2DExtends\XFont_SetCursor= AIsFunction( 1 , "XFont_SetCursor" ) ; 44 XFont Set Cursor XCurs, YCurs
    Basic2DExtends\XFont_SetCurrentFont= AIsFunction( 1 , "XFont_SetCurrentFont" ) ; 45 XFont Set Current Font FontNumber
    Basic2DExtends\XFont_GetTextWidth= AIsFunction( 1 , "XFont_GetTextWidth" ) ; 46 XFont Text Width StringText$
    Basic2DExtends\XFont_GetTextHeight= AIsFunction( 1 , "XFont_GetTextHeight" ) ; 47 XFont Text Height StringText$
    Basic2DExtends\XFont_Print= AIsFunction( 1 , "XFont_Print" ) ; 48 XFont Print StringText$
    Basic2DExtends\XFont_SetCurrentBitmap= AIsFunction( 1 , "XFont_SetCurrentBitmap" ) ; 49 XFont Set Current Bitmap BitmapNumber
    Basic2DExtends\XWindow_UseXFont= AIsFunction( 1 , "XWindow_UseXFont" ) ; 50 XGui Window Use XFont FontNumber
    Basic2DExtends\XWindow_DefaultFont= AIsFunction( 1 , "XWindow_DefaultFont" ) ; 51 XGui Window Default Font FontNumber
    Basic2DExtends\XWindow_AttachWindow= AIsFunction( 1 , "XWindow_AttachWindow" ) ; 52 XGui Attach Window MasterWindow, ChildWindow , RelativePosition
    Basic2DExtends\XWindow_DetachWindow= AIsFunction( 1 , "XWindow_DetachWindow" ) ; 53 XGui Detach Window ChildWindow
    Basic2DExtends\XWindow_SetTextOpaque= AIsFunction( 1 , "XWindow_SetTextOpaque" ) ; 54 XGui Set Text Opaque 
    Basic2DExtends\XWindow_SetTextTransparent= AIsFunction( 1 , "XWindow_SetTextTransparent" ) ; 55 XGui Set Text Transparent 
    Basic2DExtends\XWindow_GetAttached= AIsFunction( 1 , "XWindow_GetAttached" ) ; 56 XGui Get Attached WindowNumber
    Basic2DExtends\GetWindowVisible= AIsFunction( 1 , "GetWindowVisible" ) ; 57 XGui Window Hidden WindowNumbder
    Basic2DExtends\XWindow_GetWinGadgetCount= AIsFunction( 1 , "XWindow_GetWinGadgetCount" ) ; 58 XGui Window Gadget Count WindowNumber
    Basic2DExtends\XWindow_SetChatGadget= AIsFunction( 1 , "XWindow_SetChatGadget" ) ; 59 XGui Set Chat Gadget GadgetNumber
    Basic2DExtends\XWindow_SetChatWindowGadget= AIsFunction( 1 , "XWindow_SetChatWindowGadget" ) ; 60 XGui Set Dialog Gadget GadgetNumber
    Basic2DExtends\XWindow_TalkToChat= AIsFunction( 1 , "XWindow_TalkToChat" ) ; 61 XGui Send Dialog StringText$
    Basic2DExtends\XWindow_SetChatScanCode= AIsFunction( 1 , "XWindow_SetChatScanCode" ) ; 62 XGui Set Chat ScanCode ScanCodeID
    Basic2DExtends\XWindow_ChatReadingKey= AIsFunction( 1 , "XWindow_ChatReadingKey" ) ; 63 XGui Chat Active 
    Basic2DExtends\XWindow_GetLastCommand= AIsFunction( 1 , "XWindow_GetLastCommand" ) ; 64 Last Chat Command$ 
    Basic2DExtends\Basic2D_Init= AIsFunction( 1 , "Basic2D_Init" ) ; 65 B2D Initialized 
    Basic2DExtends\XFont_AutoReturnMode= AIsFunction( 1 , "XFont_AutoReturnMode" ) ; 66 XFont Auto Return Mode Mode
    Basic2DExtends\XGui_UseMipMap= AIsFunction( 1 , "XGui_UseMipMap" ) ; 67 XGui MipMap Mode Mode
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l XWindow_Initialize( SkinFileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @SkinFileNamePTR.l, Len( SkinFileName ) + 1 ) ; CreateString
  PokeS( SkinFileNamePTR, SkinFileName )
  Retour.l = CallCFunctionFast( Basic2DExtends\XWindow_Initialize, SkinFileNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XWindow_ClearSystem()
  CallCFunctionFast( Basic2DExtends\XWindow_ClearSystem )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_TrueCloseMode()
  CallCFunctionFast( Basic2DExtends\XWindow_TrueCloseMode )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_FakeCloseMode()
  CallCFunctionFast( Basic2DExtends\XWindow_FakeCloseMode )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_EnableAlphaiser()
  CallCFunctionFast( Basic2DExtends\XWindow_EnableAlphaiser )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DisableAlphaiser()
  CallCFunctionFast( Basic2DExtends\XWindow_DisableAlphaiser )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Create( WindowNumber.l, Width.l, Height.l )
  CallCFunctionFast( Basic2DExtends\XWindow_Create, WindowNumber, Width, Height )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Alpha( WindowNumber.l, AlphaValue.l )
  CallCFunctionFast( Basic2DExtends\XWindow_Alpha, WindowNumber, AlphaValue )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_ToBack( WindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_ToBack, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_ToFront( WindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_ToFront, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Position( WindowNumber.l, XPosition.l, YPosition.l )
  CallCFunctionFast( Basic2DExtends\XWindow_Position, WindowNumber, XPosition, YPosition )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Properties( WindowNumber.l, BorderFlag.l, TitleFlag.l, DraggingMode.l, CloseButton.l )
  CallCFunctionFast( Basic2DExtends\XWindow_Properties, WindowNumber, BorderFlag, TitleFlag, DraggingMode, CloseButton )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetBorderOff( WindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_SetBorderOff, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetBorderOn( WindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_SetBorderOn, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetTitleOff( WindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_SetTitleOff, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetTitleOn( WindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_SetTitleOn, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetDraggingOff( WindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_SetDraggingOff, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetDraggingOn( WindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_SetDraggingOn, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetCloseOff( LWindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_SetCloseOff, LWindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetCloseOn( WindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_SetCloseOn, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Title( WindowNumber.l, StringTitle.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringTitlePTR.l, Len( StringTitle ) + 1 ) ; CreateString
  PokeS( StringTitlePTR, StringTitle )
  CallCFunctionFast( Basic2DExtends\XWindow_Title, WindowNumber, StringTitlePTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Delete( WindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_Delete, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Show( WindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_Show, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Hide( WindowNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_Hide, WindowNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Refresh()
  CallCFunctionFast( Basic2DExtends\XWindow_Refresh )
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetCurrentWindow()
  Retour.l = CallCFunctionFast( Basic2DExtends\XWindow_GetCurrentWindow )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetWinXPos( WindowNumber.l )
  Retour.l = CallCFunctionFast( Basic2DExtends\XWindow_GetWinXPos, WindowNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetWinYPos( WindowNumber.l )
  Retour.l = CallCFunctionFast( Basic2DExtends\XWindow_GetWinYPos, WindowNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_Exist( WindowNumber.l )
  Retour.l = CallCFunctionFast( Basic2DExtends\XWindow_Exist, WindowNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XWindow_AddGadget( WindowNumber.l, GadgetNumber.l, Xpos.l, Ypos.l, XSize.l, Ysize.l, ImageNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_AddGadget, WindowNumber, GadgetNumber, Xpos, Ypos, XSize, Ysize, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_AddGadgetCombination( WindowNumber.l, GadgetNumber.l, Xpos.l, Ypos.l, XSize.l, Ysize.l, Image.l, GadgetText.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @GadgetTextPTR.l, Len( GadgetText ) + 1 ) ; CreateString
  PokeS( GadgetTextPTR, GadgetText )
  CallCFunctionFast( Basic2DExtends\XWindow_AddGadgetCombination, WindowNumber, GadgetNumber, Xpos, Ypos, XSize, Ysize, Image, GadgetTextPTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_AddGadgetTexte( Param0.l, Param1.l, Param2.l, Param3.l, Param4.l, Param5.l, Param6.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param6PTR.l, Len( Param6 ) + 1 ) ; CreateString
  PokeS( Param6PTR, Param6 )
  CallCFunctionFast( Basic2DExtends\XWindow_AddGadgetTexte, Param0, Param1, Param2, Param3, Param4, Param5, Param6PTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DeleteGadget( Param0.l )
  CallCFunctionFast( Basic2DExtends\XWindow_DeleteGadget, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetCurrentGadget()
  Retour.l = CallCFunctionFast( Basic2DExtends\XWindow_GetCurrentGadget )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetGadgetImage( Param0.l, Param1.l )
  CallCFunctionFast( Basic2DExtends\XWindow_SetGadgetImage, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetGadgetText( Param0.l, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( Basic2DExtends\XWindow_SetGadgetText, Param0, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_PositionGadget( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( Basic2DExtends\XWindow_PositionGadget, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_Stretch( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( Basic2DExtends\XWindow_Stretch, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DefaultSize( Param0.l )
  CallCFunctionFast( Basic2DExtends\XWindow_DefaultSize, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure XFont_SetupFont( ImageFile.s, FontNumber.l, FontSize.l, FirstChar.l, Flag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ImageFilePTR.l, Len( ImageFile ) + 1 ) ; CreateString
  PokeS( ImageFilePTR, ImageFile )
  CallCFunctionFast( Basic2DExtends\XFont_SetupFont, ImageFilePTR, FontNumber, FontSize, FirstChar, Flag )
 EndProcedure
;
; *********************************************************************
Procedure XFont_ClearFont( FontNumber.l )
  CallCFunctionFast( Basic2DExtends\XFont_ClearFont, FontNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l XFont_Exist( Param1.l )
  Retour.l = CallCFunctionFast( Basic2DExtends\XFont_Exist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XFont_ClearAllFont()
  CallCFunctionFast( Basic2DExtends\XFont_ClearAllFont )
 EndProcedure
;
; *********************************************************************
Procedure XFont_SetCursor( XCurs.l, YCurs.l )
  CallCFunctionFast( Basic2DExtends\XFont_SetCursor, XCurs, YCurs )
 EndProcedure
;
; *********************************************************************
Procedure XFont_SetCurrentFont( FontNumber.l )
  CallCFunctionFast( Basic2DExtends\XFont_SetCurrentFont, FontNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l XFont_GetTextWidth( StringText.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringTextPTR.l, Len( StringText ) + 1 ) ; CreateString
  PokeS( StringTextPTR, StringText )
  Retour.l = CallCFunctionFast( Basic2DExtends\XFont_GetTextWidth, StringTextPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XFont_GetTextHeight( StringText.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringTextPTR.l, Len( StringText ) + 1 ) ; CreateString
  PokeS( StringTextPTR, StringText )
  Retour.l = CallCFunctionFast( Basic2DExtends\XFont_GetTextHeight, StringTextPTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XFont_Print( StringText.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringTextPTR.l, Len( StringText ) + 1 ) ; CreateString
  PokeS( StringTextPTR, StringText )
  CallCFunctionFast( Basic2DExtends\XFont_Print, StringTextPTR )
 EndProcedure
;
; *********************************************************************
Procedure XFont_SetCurrentBitmap( BitmapNumber.l )
  CallCFunctionFast( Basic2DExtends\XFont_SetCurrentBitmap, BitmapNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_UseXFont( FontNumber.l, Param1.l )
  CallCFunctionFast( Basic2DExtends\XWindow_UseXFont, FontNumber, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DefaultFont( FontNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_DefaultFont, FontNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_AttachWindow( MasterWindow.l, ChildWindow.l, RelativePosition.l )
  CallCFunctionFast( Basic2DExtends\XWindow_AttachWindow, MasterWindow, ChildWindow, RelativePosition )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_DetachWindow( ChildWindow.l )
  CallCFunctionFast( Basic2DExtends\XWindow_DetachWindow, ChildWindow )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetTextOpaque()
  CallCFunctionFast( Basic2DExtends\XWindow_SetTextOpaque )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetTextTransparent()
  CallCFunctionFast( Basic2DExtends\XWindow_SetTextTransparent )
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetAttached( WindowNumber.l )
  Retour.l = CallCFunctionFast( Basic2DExtends\XWindow_GetAttached, WindowNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetWindowVisible( WindowNumbder.l )
  Retour.l = CallCFunctionFast( Basic2DExtends\GetWindowVisible, WindowNumbder )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_GetWinGadgetCount( WindowNumber.l )
  Retour.l = CallCFunctionFast( Basic2DExtends\XWindow_GetWinGadgetCount, WindowNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetChatGadget( GadgetNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_SetChatGadget, GadgetNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetChatWindowGadget( GadgetNumber.l )
  CallCFunctionFast( Basic2DExtends\XWindow_SetChatWindowGadget, GadgetNumber )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_TalkToChat( StringText.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringTextPTR.l, Len( StringText ) + 1 ) ; CreateString
  PokeS( StringTextPTR, StringText )
  CallCFunctionFast( Basic2DExtends\XWindow_TalkToChat, StringTextPTR )
 EndProcedure
;
; *********************************************************************
Procedure XWindow_SetChatScanCode( ScanCodeID.l )
  CallCFunctionFast( Basic2DExtends\XWindow_SetChatScanCode, ScanCodeID )
 EndProcedure
;
; *********************************************************************
Procedure.l XWindow_ChatReadingKey()
  Retour.l = CallCFunctionFast( Basic2DExtends\XWindow_ChatReadingKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s XWindow_GetLastCommand()
  Retour.l = CallCFunctionFast( Basic2DExtends\XWindow_GetLastCommand, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l Basic2D_Init()
  Retour.l = CallCFunctionFast( Basic2DExtends\Basic2D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure XFont_AutoReturnMode( Mode.l )
  CallCFunctionFast( Basic2DExtends\XFont_AutoReturnMode, Mode )
 EndProcedure
;
; *********************************************************************
Procedure XGui_UseMipMap( Mode.l )
  CallCFunctionFast( Basic2DExtends\XGui_UseMipMap, Mode )
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 20
; Folding = ------------