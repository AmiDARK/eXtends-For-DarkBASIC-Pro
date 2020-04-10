;
; **************************************
; *                                    *
; * X-Quad Editor TPC Plug-In Ver 2.00 *
; *                                    *
; **************************************
; CHECKER LE GHOST OBJECT ON QUI A 2 COMMANDES UTILISANT LE MEME NOM.
; On Inclut en premier lieu les structures nécessaires à l'utilisation des DLLs de DBPro.
  IncludeFile "..\DBPro_Structures.pb"
  IncludeFile "..\DBPro_Structures_Init.pb" ; Setup for main, Init for sub.
  ; On Inclut les commandes incluses dans les DLLs de DBPro
  IncludeFile "..\DBPro_Init.pb" ; Pour l'initialisation secondaire pour les DLLs du pack.
  ; On inclut alors les commandes du langage de DBPro Nécessaire à la DLL.
  IncludeFile "..\DBPro_Commands\DBProBasic2DDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProBasic3DDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProBitmapDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBproCameraDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProCompileCSGDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProCore.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProFileDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProImageDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProInputDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProLightDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProMatrixDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProMemblocksDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProMultiPlayerDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProMusicDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProParticlesDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProSetupDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProSoundDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProSpritesDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProSystemDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProTerrainDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProTextDebug.dll_Commands.pb"
  ;
  IncludeFile "..\DynamicListHandler.pb"
  ;
  IncludeFile "..\AdvancedFunctions.pb"
  ;
  IncludeFile "..\DBProBasic2DExtends.dll_All.pb"
  IncludeFile "..\DBProBasic3DExtends.dll_All.pb"
  IncludeFile "..\DBProBitmapExtends.dll_All.pb"
  IncludeFile "..\DBProExtends.dll_All.pb"
  IncludeFile "..\DBProFileExtends.dll_All.pb"
  IncludeFile "..\DBProImageExtends.dll_All.pb"
  IncludeFile "..\DBProMemblocksExtends.dll_All.pb"
  IncludeFile "..\DBProMusicExtends.dll_All.pb"
  IncludeFile "..\DBProSoundExtends.dll_All.pb"
  IncludeFile "..\DBProSpriteExtends.dll_All.pb"
  IncludeFile "..\DBProTextExtends.dll_All.pb"
;

; ExecutableFormat=Windows
; EOF