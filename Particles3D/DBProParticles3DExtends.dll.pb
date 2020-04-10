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
;  IncludeFile "..\DBPro_Commands\DBProBitmapDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBproCameraDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProCompileCSGDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProCore.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProFileDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProImageDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProInputDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProLightDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProMatrixDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProMemblocksDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProMultiPlayerDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProMusicDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProParticlesDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProSetupDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSoundDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProSpritesDebug.dll_Commands.pb"
  IncludeFile "..\DBPro_Commands\DBProSystemDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProTerrainDebug.dll_Commands.pb"
;  IncludeFile "..\DBPro_Commands\DBProTextDebug.dll_Commands.pb"
;  IncludeFile "..\..\"
  IncludeFile "..\DynamicListHandlerV2.pb"
  IncludeFile "..\AdvancedFunctions.pb"
;
;  IncludeFile "..\DBProBasic2DExtends.dll_All.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_ALLs\DBProBasic3DExtends.dll_All.pb"
;  IncludeFile "..\DBProBitmapExtends.dll_All.pb"
;  IncludeFile "..\DBProExtends.dll_All.pb"
;  IncludeFile "..\DBProFileExtends.dll_All.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_ALLs\DBProImageExtends.dll_All.pb"
  IncludeFile "..\DBProPLUGIN-LICENSED_ALLs\DBProMemblocksExtends.dll_All.pb"
;  IncludeFile "..\DBProMusicExtends.dll_All.pb"
;  IncludeFile "..\DBProSoundExtends.dll_All.pb"
;

  Global P3DInitialized.l
;
  Global ActualTime.l : Global OldTime.l : Global TimeFactor.f
;
; **************************************************************
Structure Particle_Structure
  Type.l : Count.l : Exist.l : Size.f
  XEmitter.f : YEmitter.f : ZEmitter.f
  XSize.f : YSize.f : ZSize.f
  XMove.f : YMove.f : ZMove.f
  XMin.f : XMax.f : YMin.f : YMax.f : ZMin.f : ZMax.f
  Duration.f : Hide.l
  LoadedImage.l : UseInternal.l
 EndStructure
Global Dim ParticleSystem.Particle_Structure( 256 )
Structure ParticleObject_Structure
  Number.l : XPos.f : YPos.f : ZPos.f : Duration.f
 EndStructure
Global Dim ParticleObject.ParticleObject_Structure( 256 , 256 )
Global NextFlame.l : Global NextSmoke.l
;
; *************************************************************************************** Start()
ProcedureCDLL AConstructor00YAXXZ()
  If P3DInitialized = 0
    P3DInitialized = InitDLLBase()
    If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
    If P3DInitialized = 1
      P3DInitialized = CheckBasic3DExtends()
      MBCInitialized = CheckMemblocksExtends()
      IMGInitialized = CheckImageExtends()
     EndIf
   EndIf
 EndProcedure
; *************************************************************************************** Quit()
ProcedureCDLL ADestructor00YAXXZ()
  Null.l = 0
 EndProcedure
; *************************************************************************************** Get Dependencies()
ProcedureCDLL.l AGetNumDependencies00YAHXZ()
  ProcedureReturn 11
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
    Case 8 : NewPTR = PeekS( ?DEP_eXtends01 )    ; Include eXtends system for SETUP the Plugin.
    Case 9 : NewPTR = PeekS( ?DEP_eXtends02 )    ; Include eXtends system for SETUP the Plugin.
    Case 10 : NewPTR = PeekS( ?DEP_eXtends03 )   ; Include eXtends system for SETUP the Plugin.
    Default : NewPTR = ""
   EndSelect
  ProcedureReturn NewPTR
 EndProcedure
; **************************************************************
ProcedureCDLL.l Particles3D_Init()
  If P3DInitialized = 0
    P3DInitialized = InitDLLBase()
    If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
    If P3DInitialized = 1
      P3DInitialized = CheckBasic3DExtends()
      MBCInitialized = CheckMemblocksExtends()
      IMGInitialized = CheckImageExtends()
     EndIf
   EndIf
  ProcedureReturn P3DInitialized
 EndProcedure
; ************************************************************** Files updated To handle : .s = MyDeleteString( .l )
; **************************************************************
IncludeFile "DBProBasic3DParticles.pb"
; **************************************************************
DataSection
DEP_eXtends:
Data.s "DBProExtends.dll"
Data.b 0
DEP_eXtends01:
Data.s "eXtends_Basic3D.dll"
Data.b 0
DEP_eXtends02:
Data.s "eXtends_Images.dll"
Data.b 0
DEP_eXtends03:
Data.s "eXtends_Memblocks.dll"
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
Data.s "DBProImageDebug.dll"
Data.b 0
DEP_DBPRO05:
Data.s "DBProMemblocksDebug.dll"
Data.b 0
DEP_DBPRO06:
Data.s "DBProSetupDebug.dll"
Data.b 0
DEP_DBPRO07:
Data.s "DBProSystemDebug.dll"
Data.b 0
DONNEES:
Data.s "DarkBasic Professional Extends Pack Ver 1.6 / "
Data.s "DBProParticles3DExtends.dll Ver 1.6 [ 2012.06.27 ]  / "
Data.s "TheGameCreators(c)2009/2012 "
FLAMEPARTICLES:   IncludeBinary "Medias\Flame.raw"   ; 262 156
SNOWPARTICLES:    IncludeBinary "Medias\snow.raw"    ;   4.108
RAINPARTICLES:    IncludeBinary "Medias\rain.raw"    ;  16.396
SPARKLEPARTICLES: IncludeBinary "Medias\sparkle.raw" ; 262.156
EndDataSection


; IDE Options = PureBasic 4.61 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 102
; FirstLine = 71
; Folding = -
; Executable = eXtends_Particles3D.dll
; DisableDebugger
; AddResource = Particles3D.rc