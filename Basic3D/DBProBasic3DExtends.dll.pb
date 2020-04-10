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
;  IncludeFile "..\DBPro_Commands\DBProMemblocksDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProMultiPlayerDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProMusicDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProParticlesDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSetupDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSoundDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSpritesDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProSystemDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProTerrainDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProTextDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProVectorsDebug.dll_Commands.pb"
;  IncludeFile "..\..\"
  IncludeFile "..\DynamicListHandlerV2.pb"
  IncludeFile "..\AdvancedFunctions.pb"
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
; ************************************************************** X4DynamicObjectSupport.pb         [ Ver1.0 ]
; X4DOS_Clear()
; RESULT.l = B3D_Count()
; RESULT.l = B3D_GetFree()
; NULL.l = B3D_Delete( Number.l )
; RESULT.l = B3D_DynamicLoad( FileName.s )
; RESULT.l = B3D_DynamicClone( Source.l )
; RESULT.l = B3D_DynamicInstance( Source.l )
; RESULT.l = B3D_DynamicMake( Meshe.l , Texture.l )
; RESULT.l = B3D_DynamicMakePlain( XSize.f , YSize.f )
;
; *************************************************************************************** Start()
ProcedureCDLL AConstructor00YAXXZ()
  If B3DInitialized = 0
    B3DInitialized = InitDLLBase()
   EndIf
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
 EndProcedure
; *************************************************************************************** Quit()
ProcedureCDLL ADestructor00YAXXZ()
  Null.l = 0
 EndProcedure
; *************************************************************************************** Get Dependencies()
ProcedureCDLL.l AGetNumDependencies00YAHXZ()
  ProcedureReturn 4
 EndProcedure
; *************************************************************************************** Return DLL names()
ProcedureCDLL.s AGetDependencyID00YAPBDH0Z( NumID.l )
  Select NumID
    Case 0 : NewPTR.s = PeekS( ?DEP_eXtends )      ; Include PurePLUGIN system for SETUP the Plugin.
    Case 1 : NewPTR = PeekS( ?DEP_DBPRO01 )      ; Include DarkBASIC Professional IMAGES
    Case 2 : NewPTR = PeekS( ?DEP_DBPRO02 )      ; Include DarkBASIC Professional CAMERA
    Case 3 : NewPTR = PeekS( ?DEP_DBPRO03 )      ; Include DarkBASIC Professional BASIC3D
    Default : NewPTR = ""
   EndSelect
  ProcedureReturn NewPTR
 EndProcedure
; **************************************************************
ProcedureCDLL.l Basic3D_Init()
  If B3DInitialized = 0
    B3DInitialized = InitDLLBase()
   EndIf
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  ProcedureReturn B3DInitialized
 EndProcedure
; ************************************************************** Files updated to handle : .s = MyDeleteString( .l )
; **************************************************************
IncludeFile "DBProBasic3DBillBoards.pb"
; **************************************************************
IncludeFile "DBProBasic3DDynamic.pb"
; **************************************************************
IncludeFile "DBProBasic3DMaths.pb"
; **************************************************************
IncludeFile "DBProBasic3DNewFunctions.pb"                       ; Extends 1.6 New Function to fix Scale Object command.
; **************************************************************
DataSection
DEP_eXtends:
Data.s "DBProExtends.dll"
Data.b 0
DEP_DBPRO01:
Data.s "DBProImageDebug.dll"
Data.b 0
DEP_DBPRO02:
Data.s "DBProCameraDebug.dll"
Data.b 0
DEP_DBPRO03:
Data.s "DBProBasic3DDebug.dll"
Data.b 0
DONNEES:
Data.s "DarkBasic Professional Extends Pack Ver 1.6 / "
Data.s "DBProBasic3DExtends.dll Ver 1.6rc1 [ 2012.06.27 ]  / "
Data.s "TheGameCreators(c)2009/2012 "
EndDataSection
; IDE Options = PureBasic 4.61 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 31
; Folding = -
; Executable = eXtends_Basic3D.dll
; AddResource = Basic3D.rc