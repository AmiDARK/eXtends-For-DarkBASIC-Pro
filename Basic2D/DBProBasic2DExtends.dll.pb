;
; **************************************
; *                                    *
; * X-Quad Editor TPC Plug-In Ver 2.00 *
; *                                    *
; **************************************
; Add support for STRING OUTPUT Fix thanks to Mike.J
; 1.5 : Changed global variables for Sprites, Images and Bitmap names to XtSprite, XtImage and XtBitmap.
  Global DebugMode.l
; On Inclut en premier lieu les structures nécessaires à l'utilisation des DLLs de DBPro.
  IncludeFile "..\DBPro_Structures.pb"
  IncludeFile "..\DBPro_Structures_Init.pb" ; Setup for main, Init for sub.
; On Inclut les commandes incluses dans les DLLs de DBPro
  IncludeFile "..\DBPro_Init.pb" ; Pour l'initialisation secondaire pour les DLLs du pack.
; On inclut alors les commandes du langage de DBPro Nécessaire à la DLL.
;  IncludeFile "..\DBPro_Commands\DBProAnimationDebug.dll_commands.pb" ;
  IncludeFile "..\DBPro_Commands\DBProBasic2DDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProBasic3DDebug.dll_Commands.pb" ;
  IncludeFile "..\DBPro_Commands\DBProBitmapDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBproCameraDebug.dll_Commands.pb" ;
  IncludeFile "..\DBPro_Commands\DBProCore.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProCSGDebug.dll_Commands.pb" ;
  IncludeFile "..\DBPro_Commands\DBProFileDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProImageDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProInputDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProLightDebug.dll_Commands.pb" ;
;  IncludeFile "..\DBPro_Commands\DBProLODTerrainDebug.dll_Commands.pb" ;
;  IncludeFile "..\DBPro_Commands\DBProMatrixDebug.dll_Commands.pb" ;
;  IncludeFile "..\DBPro_Commands\DBProMemblocksDebug.dll_Commands.pb" ;
;  IncludeFile "..\DBPro_Commands\DBProMultiPlayerDebug.dll_Commands.pb" ;
;  IncludeFile "..\DBPro_Commands\DBProMusicDebug.dll_Commands.pb" ;
;  IncludeFile "..\DBPro_Commands\DBProParticlesDebug.dll_Commands.pb" ;
;  IncludeFile "..\DBPro_Commands\DBProSetupDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSoundDebug.dll_Commands.pb" ;
  IncludeFile "..\DBPro_Commands\DBProSpritesDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSystemDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProTextDebug.dll_Commands.pb"


;  IncludeFile "..\..\"
  IncludeFile "..\DynamicListHandlerV2.pb"
  IncludeFile "..\AdvancedFunctions.pb"
;
;  IncludeFile "..\DBProBasic2DExtends.dll_All.pb"
;  IncludeFile "..\DBProBasic3DExtends.dll_All.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_ALLs\DBProBitmapExtends.dll_All.pb"
;  IncludeFile "..\DBProExtends.dll_All.pb"
;  IncludeFile "..\DBProFileExtends.dll_All.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_ALLs\DBProImageExtends.dll_All.pb"
;  IncludeFile "..\DBProMemblocksExtends.dll_All.pb"
;  IncludeFile "..\DBProMusicExtends.dll_All.pb"
;  IncludeFile "..\DBProSoundExtends.dll_All.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_ALLs\DBProSpriteExtends.dll_All.pb"
;
;
  IncludeFile "DBProBasic2D_Declare.pb"

  IncludeFile "DBProBasic2D_Internal.pb"
;
  Global B2DInitialized.l
; 
; PARAMETRES SYSTEME DE XWINDOW
Structure XWindowSystem_Type
  Skin.s : GadgetCount.l : CheckPriorities.l : CurrentWindow.l : OldWindow.l : SkinLoaded.l
  AllowDragging.l : Dragging.l : DragWindow.l : XDragOrigin.l : YDragOrigin.l : XDragMouse.l : YDragMouse.l : AllowAlphaiser.l
  CloseMode.l : OldMouseClick.l : CurrentGadget.l : MipMapMode.l
  ChatGadget.l : ChatWindowGadget.l : ChatInText.s : ChatReading.l : ChatScanCode.l : LastKey.l
 EndStructure
Global XWinSystem.XWindowSystem_Type
Global Dim XWinFiles$( 16 )
; LISTE DES FENETRES DU SYSTEM XWINDOW
Structure XWindow_Type
  Exist.l : Format.l : Refresh.l : XSize.l : YSize.l : Linked.l : Moveable.l : Close.l : Borders.l : Bgd.l : XFont.l : ChildCount.l
  Alpha.l : GadgetCount.l : XPos.l : YPos.l : Hidden.l : Title.l : Name.s : Hide.l : XDsize.l : YDSize.l : Parent.l : Alignment.l
 EndStructure
Global Dim XWindow.XWindow_Type( 15 )
Global Dim XWinDisplay( 16 )
;
Structure CP_Type
  Window.l : Alignment.l
 EndStructure
Global Dim XWinChild.CP_Type( 16 , 15 )
;
; LISTE DE TOUT LES GADGETS EXISTANTS DANS LES FENETRES OU EN DEHORS
Structure XWindowGadgets_Type
  Exist.l : Type.l : Window.l : XPos.l : YPos.l : Action.l : Image.l : XSize.l : YSize.l : Texte.s
 EndStructure
Global Dim XGadget.XWindowGadgets_Type( 255 )
Global InputText$ : Global OutPutText$
;
Structure XFont_Type
  Exist.l : FontSize.l : FirstChar.l : Type.l
 EndStructure
Global Dim XFont.XFont_Type( 16 )
Structure XFontSystem_Type
  XCursor.l : YCursor.l : CurrentFont.l : Bitmap.l : Opaque.l : AutoReturn.l
 EndStructure
Global XFontsys.XFontSystem_Type
Global Temp.l
Global Dim ChatTexts.s( 32 ) : Global Dim ChatChar.s( 256 )

; Values used with Dynamic media handling.
Global Dim SkinImage( 11 ) ; Numéro des images utilisées pour le Skin des fenêtres chargé.
Global Dim SkinImageX( 11 ) ; Largeur de toutes les images du skin
Global Dim SkinImageY( 11 ) ; Hauteur de toutes les images du skin
Global Dim XWindowBitmap( 16 ) ; Numéros des bitmaps utilisés pour les fenêtres du GUI.
Global Dim XWindowImage( 16 ) ; Numéros des images utilisées pour les fenêtres du GUI.
Global Dim XWindowSprite( 16 ) ; Numéros des sprites utilisés pour les fenêtres du GUI.
Global Dim XFontImage( 16, 255 ) ; Numéros des images utilisées pour gérer les fontes bitmap.
;
; *************************************************************************************** Start()
ProcedureCDLL AConstructor00YAXXZ()
  If B2DInitialized < 1
    B2DInitialized = InitDLLBase()
    If B2DInitialized = 1
      IMGInitialized = CheckImageExtends()
      BMPInitialized = CheckBitmapExtends()
      SPRInitialized = CheckSpriteExtends()
      If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
      Restore DONNEES
      For XLoop = 1 To 255
        Read.s ChatChar( XLoop )
       Next XLoop
     EndIf
    EndIf
  XWinSystem\CloseMode = 1
  XWinSystem\MipMapMode = 3
 EndProcedure
; *************************************************************************************** Quit()
ProcedureCDLL ADestructor00YAXXZ()
  XWinSystem\CloseMode = 0
  XWinSystem\MipMapMode = 0
 EndProcedure
; *************************************************************************************** Get Dependencies()
ProcedureCDLL.l AGetNumDependencies00YAHXZ()
  ProcedureReturn 12
 EndProcedure
; *************************************************************************************** Return DLL names()
ProcedureCDLL.s AGetDependencyID00YAPBDH0Z( NumID.l )
  Select NumID
    Case 0 : NewPTR.s = PeekS( ?DEP_eXtends )      ; Include eXtends system for SETUP the Plugin.
    Case 1 : NewPTR = PeekS( ?DEP_DBPRO01 )      ; Include DarkBASIC Professional IMAGES
    Case 2 : NewPTR = PeekS( ?DEP_DBPRO02 )      ; Include DarkBASIC Professional SPRITES
    Case 3 : NewPTR = PeekS( ?DEP_DBPRO03 )      ; Include DarkBASIC Professional BITMAP
    Case 4 : NewPTR = PeekS( ?DEP_DBPRO04 )      ; Include DarkBASIC Professional FILE
    Case 5 : NewPTR = PeekS( ?DEP_DBPRO05 )      ; Include DarkBASIC Professional INPUT
    Case 6 : NewPTR = PeekS( ?DEP_DBPRO06 )      ; Include DarkBASIC Professional TEXT
    Case 7 : NewPTR = PeekS( ?DEP_DBPRO07 )      ; Include DarkBASIC Professional BASIC2D
    Case 8 : NewPTR = PeekS( ?DEP_DBPRO08 )      ; Include DarkBASIC Professional CORE
    Case 9 : NewPTR = PeekS( ?DEP_eXtends01 )    ; Include eXtends system for SETUP the Plugin.
    Case 10 : NewPTR = PeekS( ?DEP_eXtends02 )   ; Include eXtends system for SETUP the Plugin.
    Case 11 : NewPTR = PeekS( ?DEP_eXtends03 )   ; Include eXtends system for SETUP the Plugin.
    Default : NewPTR = ""
   EndSelect
  ProcedureReturn NewPTR
 EndProcedure
; **************************************************************
ProcedureCDLL.l Basic2D_Init()
  If B2DInitialized < 1
    B2DInitialized = InitDLLBase()
    If B2DInitialized = 1
      IMGInitialized = CheckImageExtends()
      BMPInitialized = CheckBitmapExtends()
      SPRInitialized = CheckSpriteExtends()
      If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
      Restore DONNEES
      For XLoop = 1 To 255
        Read.s ChatChar( XLoop )
       Next XLoop
     EndIf
    XWinSystem\CloseMode = 1
   EndIf
  ProcedureReturn B2DInitialized
 EndProcedure
;
; ************************************************************** Files updated To handle : .s = MyDeleteString( .l )
; **************************************************************
  IncludeFile "DBProBasic2D_XWindow.pb"
; **************************************************************
  IncludeFile "DBProBasic2D_Gadgets.pb"
; **************************************************************
  IncludeFile "DBProBasic2D_XFont.pb"
; **************************************************************
; **************************************************************

DataSection
DEP_eXtends:
Data.s "DBProExtends.dll"
Data.b 0
DEP_eXtends01:
Data.s "eXtends_Bitmaps.dll"
Data.b 0
DEP_eXtends02:
Data.s "eXtends_Images.dll"
Data.b 0
DEP_eXtends03:
Data.s "eXtends_Sprites.dll"
Data.b 0
DEP_DBPRO01:
Data.s "DBProImageDebug.dll"
Data.b 0
DEP_DBPRO02:
Data.s "DBProSpritesDebug.dll"
Data.b 0
DEP_DBPRO03:
Data.s "DBProBitmapDebug.dll"
Data.b 0
DEP_DBPRO04:
Data.s "DBProFileDebug.dll"
Data.b 0
DEP_DBPRO05:
Data.s "DBProInputDebug.dll"
Data.b 0
DEP_DBPRO06:
Data.s "DBProTextDebug.dll"
Data.b 0
DEP_DBPRO07:
Data.s "DBProBasic2DDebug.dll"
Data.b 0
DEP_DBPRO08:
Data.s "DBProCORE.dll"
Data.b 0
DONNEES:
Data.s " " , "1" , "2" , "3" , "4" , "5" , "6" , "7" , "8" , "9"
Data.s "0" , "" , "" , "" , "" , "Q" , "W" , "E" , "R" , "T"
Data.s "Y" , "U" , "I" , "O" , "P" , "[" , "]" , "" , "ENTREE" , "A"
Data.s "S" , "D" , "F" , "G" , "H" , "J" , "K" , "L" , ";" , "%"
Data.s "*" , "" , "" , "Z" , "X" , "C" , "V" , "B" , "N" , "M"
Data.s "," , "." , "/" , "" , "" , "" , " " , "" , "F1" , "F2"
Data.s "F3" , "F4" , "F5" , "F6" , "F7" , "F8" , "F9" , "F10" , "" , ""
Data.s "7" , "8" , "9" , "" , "4" , "5" , "6" , "" , "1" , "2"
Data.s "3" , "0" , "" , "" , "" , "" , "F11" , "F12" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
Data.s "" , "" , "" , "" , "" , "" , "" , "" , "" , ""
DLLINFORMATIONS:
Data.s "DarkBasic Professional Extends Pack Ver 1.6 / "
Data.s "DBProBasic2DExtends.dll Ver 1.6rc1 [ 2012.06.27 ]  / "
Data.s "XWindow & XGui are Copyrighted :"
Data.s "@TheGameCreators(c)2009-2012"
EndDataSection

; IDE Options = PureBasic 4.61 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 250
; FirstLine = 198
; Folding = -
; Executable = eXtends_Basic2D.dll
; DisableDebugger
; VersionField0 = DBProBASIC2DeXtends.dll
; VersionField1 = 1.3.0.1
; VersionField2 = Odyssey-Creators
; VersionField3 = eXtends
; VersionField4 = 1.3.0.1
; VersionField5 = 1.3.0.1
; VersionField6 = Basic2D
; VersionField7 = Basic2DeXtneds
; VersionField8 = DBProBasic2DeXtends.dll
; VersionField9 = Frédéric Cordier - Odyssey-Creators
; VersionField10 = Odyssey Creators
; VersionField13 = support@odyssey-creators.com
; AddResource = Basic2D.rc