;
; **************************************
; *                                    *
; * X-Quad Editor TPC Plug-In Ver 2.00 *
; *                                    *
; **************************************
; CHECKER LE GHOST OBJECT ON QUI A 2 COMMANDES UTILISANT LE MEME NOM.
  Global DebugMode.l
; On Inclut en premier lieu les structures nécessaires à l'utilisation des DLLs de DBPro.
  IncludeFile "..\DBPro_Structures.pb"
  IncludeFile "..\DBPro_Structures_Init.pb" ; Setup for main, Init for sub.
; On Inclut les commandes incluses dans les DLLs de DBPro
  IncludeFile "..\DBPro_Init.pb" ; Pour l'initialisation secondaire pour les DLLs du pack.
; On inclut alors les commandes du langage de DBPro Nécessaire à la DLL.
  IncludeFile "..\DBPro_Commands\DBProBasic2DDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProBasic3DDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProBitmapDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBproCameraDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProCompileCSGDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProCore.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProFileDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProImageDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProInputDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProLightDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProMatrixDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProMemblocksDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProMultiPlayerDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProMusicDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProParticlesDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProSetupDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSoundDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSpritesDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSystemDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProTerrainDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProTextDebug.dll_Commands.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_Commands\DBProGameFX.dll_Commands.pb"
;  IncludeFile "..\..\"
  IncludeFile "..\DynamicListHandlerV2.pb"
;
  IncludeFile "..\AdvancedFunctions.pb"
;
;  IncludeFile "..\DBProBasic2DExtends.dll_All.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_ALLs\DBProBasic3DExtends.dll_All.pb"
;  IncludeFile "..\DBProBitmapExtends.dll_All.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_ALLs\DBProCameraExtends.dll_All.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_ALLs\DBProExtends.dll_All.pb"
;  IncludeFile "..\DBProFileExtends.dll_All.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_ALLs\DBProImageExtends.dll_All.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_ALLs\DBProLight3DExtends.dll_All.pb"
;  IncludeFile "..\DBProMatrixExtends.dll_All.pb"
;  IncludeFile "..\DBProMemblocksExtends.dll_All.pb"
;  IncludeFile "..\DBProMusicExtends.dll_All.pb"
;  IncludeFile "..\DBProParticles3DExtends.dll_All.pb"
;  IncludeFile "..\DBProSoundExtends.dll_All.pb"
;  IncludeFile "..\DBProSpriteExtends.dll_All.pb"
;  IncludeFile "..\DBProTextExtends.dll_All.pb"
;

  Global RTSInitialized.l : Global UseShadowsOn.l
;
  Global ActualTime.l : Global OldTime.l : Global TimeFactor.f
  Global DefAutoZoom.f
  Global TextureQuality.l
;
; **************************************************************
;
; *************************************************************************************** Start()
ProcedureCDLL AConstructor00YAXXZ()
  If RTSInitialized = 0
    RTSInitialized = InitDLLBase()
    If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
    If RTSInitialized = 1
      B3DInitialized = CheckBasic3DExtends()
      CMRInitialized = CheckCameraExtends()
      IMGInitialized = CheckImageExtends()
      L3DInitialized = CheckLight3DExtends()
     EndIf
   EndIf
  DefAutoZoom = 1.0
  TextureQuality = 0
 EndProcedure
; *************************************************************************************** Quit()
ProcedureCDLL ADestructor00YAXXZ()
  Null.l = 0
 EndProcedure
; *************************************************************************************** Get Dependencies()
ProcedureCDLL.l AGetNumDependencies00YAHXZ()
  ProcedureReturn 14
 EndProcedure
; *************************************************************************************** Return DLL names()
ProcedureCDLL.s AGetDependencyID00YAPBDH0Z( NumID.l )
  Select NumID
    Case 0 : NewPTR.s = PeekS( ?DEP_eXtends )      ; Include eXtends system for SETUP the Plugin.
    Case 1 : NewPTR = PeekS( ?DEP_DBPRO01 )      ; Include DarkBASIC Professional 
    Case 2 : NewPTR = PeekS( ?DEP_DBPRO02 )      ; Include DarkBASIC Professional 
    Case 3 : NewPTR = PeekS( ?DEP_DBPRO03 )      ; Include DarkBASIC Professional 
    Case 4 : NewPTR = PeekS( ?DEP_DBPRO04 )      ; Include DarkBASIC Professional 
    Case 5 : NewPTR = PeekS( ?DEP_DBPRO05 )      ; Include DarkBASIC Professional 
    Case 6 : NewPTR = PeekS( ?DEP_DBPRO06 )      ; Include DarkBASIC Professional 
    Case 7 : NewPTR = PeekS( ?DEP_DBPRO07 )      ; Include DarkBASIC Professional 
    Case 8 : NewPTR = PeekS( ?DEP_DBPRO08 )      ; Include DarkBASIC Professional 
    Case 9 : NewPTR = PeekS( ?DEP_DBPRO09 )      ; Include DarkBASIC Professional 
    Case 10 : NewPTR = PeekS( ?DEP_eXtends01 )    ; Include eXtends system for SETUP the Plugin.
    Case 11 : NewPTR = PeekS( ?DEP_eXtends02 )   ; Include eXtends system for SETUP the Plugin.
    Case 12 : NewPTR = PeekS( ?DEP_eXtends03 )   ; Include eXtends system for SETUP the Plugin.
    Case 13 : NewPTR = PeekS( ?DEP_eXtends04 )   ; Include eXtends system for SETUP the Plugin.
    Default : NewPTR = ""
   EndSelect
  ProcedureReturn NewPTR
 EndProcedure
; **************************************************************
ProcedureCDLL.l RTSkybox_Init()
  Retour.l = RTSInitialized
  TextureQuality = 0
  ProcedureReturn Retour
 EndProcedure
; **************************************************************
IncludeFile "DBProRealTimeSkybox.pb"
; **************************************************************
DataSection
DEP_eXtends:
Data.s "DBProExtends.dll"
Data.b 0
DEP_eXtends01:
Data.s "eXtends_Basic3D.dll"
Data.b 0
DEP_eXtends02:
Data.s "eXtends_Cameras3D.dll"
Data.b 0
DEP_eXtends03:
Data.s "eXtends_Images.dll"
Data.b 0
DEP_eXtends04:
Data.s "eXtends_VirtualsLights3D.dll"
Data.b 0
DEP_DBPRO01:
Data.s "DBProBasic2DDebug.dll"
Data.b 0
DEP_DBPRO02:
Data.s "DBProBasic3DDebug.dll"
Data.b 0
DEP_DBPRO03:
Data.s "DBProCore.dll"
Data.b 0
DEP_DBPRO04:
Data.s "DBproCameraDebug.dll"
Data.b 0
DEP_DBPRO05:
Data.s "DBProFileDebug.dll"
Data.b 0
DEP_DBPRO06:
Data.s "DBProImageDebug.dll"
Data.b 0
DEP_DBPRO07:
Data.s "DBProLightDebug.dll"
Data.b 0
DEP_DBPRO08:
Data.s "DBProSetupDebug.dll"
Data.b 0
DEP_DBPRO09:
Data.s "DBProGameFX.dll"
Data.b 0
DONNEES:
Data.s "DarkBasic Professional Extends Pack Ver 1.6 / "
Data.s "DBProRTSkyBoxExtends.dll Ver 1.6 [ 2012.06.27 ]  / "
Data.s "Custom Days&Nights - Real Time Skybox System Made by Frédéric Cordier - TheGameCreators(c)2009/2012 "
EndDataSection

; IDE Options = PureBasic 4.61 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 165
; FirstLine = 111
; Folding = -
; Executable = eXtends_RealTimeSkySystem.dll
; DisableDebugger
; AddResource = RTSkyBOX.rc