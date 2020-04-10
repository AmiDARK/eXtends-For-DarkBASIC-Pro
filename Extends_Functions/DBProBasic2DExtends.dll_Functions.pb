; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 13.12.05
;
Procedure.l CheckBasic2DExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Basic2D.dll")
    Basic2DExtends\XWindow_Initialize= AIsFunction( 1 , "XWindow_Initialize" ) ; 1 XGui Setup 
    Basic2DExtends\XWindow_ClearSystem= AIsFunction( 1 , "XWindow_ClearSystem" ) ; 2 XGui Clear 
    Basic2DExtends\XWindow_TrueCloseMode= AIsFunction( 1 , "XWindow_TrueCloseMode" ) ; 3 XGui CloseToClose 
    Basic2DExtends\XWindow_FakeCloseMode= AIsFunction( 1 , "XWindow_FakeCloseMode" ) ; 4 XGui CloseToHide 
    Basic2DExtends\XWindow_EnableAlphaiser= AIsFunction( 1 , "XWindow_EnableAlphaiser" ) ; 5 XGui Enable Alpha Window 
    Basic2DExtends\XWindow_DisableAlphaiser= AIsFunction( 1 , "XWindow_DisableAlphaiser" ) ; 6 XGui Disable Alpha Window 
    Basic2DExtends\XWindow_Create= AIsFunction( 1 , "XWindow_Create" ) ; 7 XGui Create Window 
    Basic2DExtends\XWindow_Alpha= AIsFunction( 1 , "XWindow_Alpha" ) ; 8 XGui Set Alpha 
    Basic2DExtends\XWindow_ToBack= AIsFunction( 1 , "XWindow_ToBack" ) ; 9 XGui Window To Front 
    Basic2DExtends\XWindow_ToFront= AIsFunction( 1 , "XWindow_ToFront" ) ; 10 XGui Window To Back 
    Basic2DExtends\XWindow_Position= AIsFunction( 1 , "XWindow_Position" ) ; 11 XGui Position Window 
    Basic2DExtends\XWindow_Properties= AIsFunction( 1 , "XWindow_Properties" ) ; 12 XGui Window Properties 
    Basic2DExtends\XWindow_SetBorderOff= AIsFunction( 1 , "XWindow_SetBorderOff" ) ; 13 XGui Window Border Off 
    Basic2DExtends\XWindow_SetBorderOn= AIsFunction( 1 , "XWindow_SetBorderOn" ) ; 14 XGui Window Border On 
    Basic2DExtends\XWindow_SetTitleOff= AIsFunction( 1 , "XWindow_SetTitleOff" ) ; 15 XGui Window Title Off 
    Basic2DExtends\XWindow_SetTitleOn= AIsFunction( 1 , "XWindow_SetTitleOn" ) ; 16 XGui Window Title On 
    Basic2DExtends\XWindow_SetDraggingOff= AIsFunction( 1 , "XWindow_SetDraggingOff" ) ; 17 XGui Window Dragging Off 
    Basic2DExtends\XWindow_SetDraggingOn= AIsFunction( 1 , "XWindow_SetDraggingOn" ) ; 18 XGui Window Dragging On 
    Basic2DExtends\XWindow_SetCloseOff= AIsFunction( 1 , "XWindow_SetCloseOff" ) ; 19 XGui Window Close Off L
    Basic2DExtends\XWindow_SetCloseOn= AIsFunction( 1 , "XWindow_SetCloseOn" ) ; 20 XGui Window Close On 
    Basic2DExtends\XWindow_Title= AIsFunction( 1 , "XWindow_Title" ) ; 21 Xgui Set Window Title 
    Basic2DExtends\XWindow_Delete= AIsFunction( 1 , "XWindow_Delete" ) ; 22 XGui Delete Window 
    Basic2DExtends\XWindow_Show= AIsFunction( 1 , "XWindow_Show" ) ; 23 XGui Show Window 
    Basic2DExtends\XWindow_Hide= AIsFunction( 1 , "XWindow_Hide" ) ; 24 XGui Hide Window 
    Basic2DExtends\XWindow_Refresh= AIsFunction( 1 , "XWindow_Refresh" ) ; 25 XGui Update 
    Basic2DExtends\XWindow_GetCurrentWindow= AIsFunction( 1 , "XWindow_GetCurrentWindow" ) ; 26 XGui Get Window 
    Basic2DExtends\XWindow_GetWinXPos= AIsFunction( 1 , "XWindow_GetWinXPos" ) ; 27 XGui Get Window XPos 
    Basic2DExtends\XWindow_GetWinYPos= AIsFunction( 1 , "XWindow_GetWinYPos" ) ; 28 XGui Get Window YPos 
    Basic2DExtends\XWindow_Exist= AIsFunction( 1 , "XWindow_Exist" ) ; 29 XGui Window Exist 
    Basic2DExtends\XWindow_AddGadget= AIsFunction( 1 , "XWindow_AddGadget" ) ; 30 XGui Add Gadget 
    Basic2DExtends\XWindow_AddGadgetCombination= AIsFunction( 1 , "XWindow_AddGadgetCombination" ) ; 31 XGui Add Gadget Combi 
    Basic2DExtends\XWindow_AddGadgetTexte= AIsFunction( 1 , "XWindow_AddGadgetTexte" ) ; 32 XGui Add Gadget Text 
    Basic2DExtends\XWindow_DeleteGadget= AIsFunction( 1 , "XWindow_DeleteGadget" ) ; 33 XGui Delete Gadget 
    Basic2DExtends\XWindow_GetCurrentGadget= AIsFunction( 1 , "XWindow_GetCurrentGadget" ) ; 34 XGui Get Clicked 
    Basic2DExtends\XWindow_SetGadgetImage= AIsFunction( 1 , "XWindow_SetGadgetImage" ) ; 35 XGui Set Gadget Image 
    Basic2DExtends\XWindow_SetGadgetText= AIsFunction( 1 , "XWindow_SetGadgetText" ) ; 36 XGui Set Gadget Text 
    Basic2DExtends\XWindow_PositionGadget= AIsFunction( 1 , "XWindow_PositionGadget" ) ; 37 XGui Position Gadget 
    Basic2DExtends\XWindow_Stretch= AIsFunction( 1 , "XWindow_Stretch" ) ; 38 XGui Stretch Window 
    Basic2DExtends\XWindow_DefaultSize= AIsFunction( 1 , "XWindow_DefaultSize" ) ; 39 XGui Default Window Size 
    Basic2DExtends\XFont_SetupFont= AIsFunction( 1 , "XFont_SetupFont" ) ; 40 XFont Setup Font 
    Basic2DExtends\XFont_ClearFont= AIsFunction( 1 , "XFont_ClearFont" ) ; 41 XFont Clear Font 
    Basic2DExtends\XFont_Exist= AIsFunction( 1 , "XFont_Exist" ) ; 42 XFont Exist 
    Basic2DExtends\XFont_ClearAllFont= AIsFunction( 1 , "XFont_ClearAllFont" ) ; 43 XFont Clear All Fonts 
    Basic2DExtends\XFont_SetCursor= AIsFunction( 1 , "XFont_SetCursor" ) ; 44 XFont Set Cursor 
    Basic2DExtends\XFont_SetCurrentFont= AIsFunction( 1 , "XFont_SetCurrentFont" ) ; 45 XFont Set Current Font 
    Basic2DExtends\XFont_GetTextWidth= AIsFunction( 1 , "XFont_GetTextWidth" ) ; 46 XFont Text Width 
    Basic2DExtends\XFont_GetTextHeight= AIsFunction( 1 , "XFont_GetTextHeight" ) ; 47 XFont Text Height 
    Basic2DExtends\XFont_Print= AIsFunction( 1 , "XFont_Print" ) ; 48 XFont Print 
    Basic2DExtends\XFont_SetCurrentBitmap= AIsFunction( 1 , "XFont_SetCurrentBitmap" ) ; 49 XFont Set Current Bitmap 
    Basic2DExtends\XWindow_UseXFont= AIsFunction( 1 , "XWindow_UseXFont" ) ; 50 XGui Window Use XFont 
    Basic2DExtends\XWindow_DefaultFont= AIsFunction( 1 , "XWindow_DefaultFont" ) ; 51 XGui Window Default Font 
    Basic2DExtends\XWindow_AttachWindow= AIsFunction( 1 , "XWindow_AttachWindow" ) ; 52 XGui Attach Window 
    Basic2DExtends\XWindow_DetachWindow= AIsFunction( 1 , "XWindow_DetachWindow" ) ; 53 XGui Detach Window 
    Basic2DExtends\XWindow_SetTextOpaque= AIsFunction( 1 , "XWindow_SetTextOpaque" ) ; 54 XGui Set Text Opaque 
    Basic2DExtends\XWindow_SetTextTransparent= AIsFunction( 1 , "XWindow_SetTextTransparent" ) ; 55 XGui Set Text Transparent 
    Basic2DExtends\XWindow_GetAttached= AIsFunction( 1 , "XWindow_GetAttached" ) ; 56 XGui Get Attached 
    Basic2DExtends\GetWindowVisible= AIsFunction( 1 , "GetWindowVisible" ) ; 57 XGui Window Hidden 
    Basic2DExtends\XWindow_GetWinGadgetCount= AIsFunction( 1 , "XWindow_GetWinGadgetCount" ) ; 58 XGui Window Gadget Count 
    Basic2DExtends\XWindow_SetChatGadget= AIsFunction( 1 , "XWindow_SetChatGadget" ) ; 59 XGui Set Chat Gadget 
    Basic2DExtends\XWindow_SetChatWindowGadget= AIsFunction( 1 , "XWindow_SetChatWindowGadget" ) ; 60 XGui Set Dialog Gadget 
    Basic2DExtends\XWindow_TalkToChat= AIsFunction( 1 , "XWindow_TalkToChat" ) ; 61 XGui Send Dialog 
    Basic2DExtends\XWindow_SetChatScanCode= AIsFunction( 1 , "XWindow_SetChatScanCode" ) ; 62 XGui Set Chat ScanCode 
    Basic2DExtends\XWindow_ChatReadingKey= AIsFunction( 1 , "XWindow_ChatReadingKey" ) ; 63 XGui Chat Active 
    Basic2DExtends\XWindow_GetLastCommand= AIsFunction( 1 , "XWindow_GetLastCommand" ) ; 64 Last Chat Command$ 
    Basic2DExtends\Basic2D_Init= AIsFunction( 1 , "Basic2D_Init" ) ; 65 B2D Initialized 
    Basic2DExtends\GetActivated= AIsFunction( 1 , "GetActivated" ) ; 66 Get Active Basic2D 
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -