;
; **************************************
; *                                    *
; * X-Quad Editor TPC Plug-In Ver 2.00 *
; *                                    *
; **************************************
;
; On Inclut en premier lieu les structures nécessaires à l'utilisation des DLLs de DBPro.
  IncludeFile "..\DBPro_Structures.pb"
  IncludeFile "..\DBPro_Structures_Init.pb" ; Setup for main, Init for sub.
; On Inclut les commandes incluses dans les DLLs de DBPro
  IncludeFile "..\DBPro_Init.pb" ; Pour l'initialisation secondaire pour les DLLs du pack.
; On inclut alors les commandes du langage de DBPro Nécessaire à la DLL.
;  IncludeFile "..\DBPro_Commands\DBProBasic2DDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProBasic3DDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProBitmapDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBproCameraDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProCompileCSGDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProCore.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProFileDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProImageDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProInputDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProLightDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProMatrixDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProMemblocksDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProMultiPlayerDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProMusicDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProParticlesDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSetupDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSoundDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSpritesDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSystemDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProTerrainDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProTextDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProVectorsDebug.dll_Commands.pb"
;  IncludeFile "..\..\"
  IncludeFile "..\DynamicListHandler.pb"
;
  Global B3DInitialized.l
;
  Global ActualTime.l : Global OldTime.l : Global TimeFactor.f
;
;                                                                   BILLBOARD DATA STRUCTURE
Global Dim BBList.l( 65536 )
Global Dim BBYRot.b( 65536 )
Global BBCount.l : Global BBCamera.l
; 4 Dynamic object support.
Global Dim ObjectStack.l( 65536 )
Global ObjectStackPos.l : Global ObjectCount.l
;
; *************************************************************************************** Start()
ProcedureCDLL AConstructor00YAXXZ()
  If B3DInitialized = 0
    B3DInitialized = InitDLLBase()
   EndIf
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
 EndProcedure
; *************************************************************************************** Quit()
ProcedureCDLL Destructor()
 EndProcedure
; **************************************************************
ProcedureCDLL.l Mesh3D_Init()
  If B3DInitialized = 0
    B3DInitialized = InitDLLBase()
   EndIf
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  ProcedureReturn B3DInitialized
 EndProcedure
; **************************************************************
IncludeFile "3DMapEditorFunctions.pb"
; **************************************************************
; **************************************************************
DataSection
DONNEES:
Data.s "DarkBasic Professional Extends Pack Ver 1.0 / "
Data.s "3DMapEditor233.dll Ver 1.0 [ 290606 ]  / "
Data.s "(c) Frédéric Cordier 2005/2006 "
EndDataSection
; IDE Options = PureBasic v4.00 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 75
; FirstLine = 23
; Folding = -
; Executable = DBProMesh3DExtends.dll