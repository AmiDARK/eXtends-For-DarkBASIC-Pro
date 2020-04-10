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
  IncludeFile "..\DBPro_Commands\DBProBitmapDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBproCameraDebug.dll_Commands.pb"
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
  IncludeFile "..\DBPro_Commands\DBProSoundDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSpritesDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSystemDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProTerrainDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProTextDebug.dll_Commands.pb"
;  IncludeFile "..\..\"
  IncludeFile "..\DynamicListHandlerV2.pb"
  IncludeFile "..\AdvancedFunctions.pb"
;
  Global MBCInitialized.l
  ;
; *************************************************************************************** Start()
ProcedureCDLL AConstructor00YAXXZ()
  If MBCInitialized = 0
    MBCInitialized = InitDLLBase()
   EndIf
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
 EndProcedure
; *************************************************************************************** Quit()
ProcedureCDLL ADestructor00YAXXZ()
  Null.l = 0
 EndProcedure
; *************************************************************************************** Get Dependencies()
ProcedureCDLL.l AGetNumDependencies00YAHXZ()
  ProcedureReturn 6
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
    Default : NewPTR = ""
   EndSelect
  ProcedureReturn NewPTR
 EndProcedure
; **************************************************************
ProcedureCDLL.l MBC_Init()
  If MBCInitialized = 0
    MBCInitialized = InitDLLBase()
   EndIf
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  ProcedureReturn MBCInitialized
 EndProcedure
;
; ************************************************************** Files updated To handle : .s = MyDeleteString( .l )
; ************************************************************** Special Memory copy function.
  IncludeFile "DBProASMMemoryCopy.pb"
; **************************************************************
  IncludeFile "DBProMemblocksDynamic.pb"
; **************************************************************
  IncludeFile "DBProMemblocksObjects.pb"
; **************************************************************
  IncludeFile "DBProMemblocksImages.pb"
; **************************************************************
DataSection
DEP_eXtends:
Data.s "DBProExtends.dll"
Data.b 0
DEP_DBPRO01:
Data.s "DBProBasic3DDebug.dll"
Data.b 0
DEP_DBPRO02:
Data.s "DBProBitmapDebug.dll"
Data.b 0
DEP_DBPRO03:
Data.s "DBProImageDebug.dll"
Data.b 0
DEP_DBPRO04:
Data.s "DBProMemblocksDebug.dll"
Data.b 0
DEP_DBPRO05:
Data.s "DBProSoundDebug.dll"
Data.b 0
Data.s "DarkBasic Professional Extends Pack Ver 1.6 / "
Data.s "DBProMemblocksExtends.dll Ver 1.6 [ 2012.06.27 ] / "
Data.s "TheGameCreators(c)2009/2012 "
EndDataSection
; IDE Options = PureBasic 4.61 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 107
; FirstLine = 53
; Folding = -
; Executable = eXtends_Memblocks.dll
; DisableDebugger
; AddResource = Memblocks.rc