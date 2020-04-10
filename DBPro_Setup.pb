;
; Initialisation réelle des DLLs de Dark Basic Professional.
; Fichier à utiliser seulement sur la DLL Principale qui saisirat les adresses réelles.
; Cette DLL Principale devra renvoyer la base des adresses aux sous DLLs du projet.
;
; *************************************************************************************** Initialize DarkBasicPro Core Pointer
Procedure InitialiseCorePtr()
  If OpenLibrary( 1 , "DBProCore.dll" ) 
    coreptr_handle.l = AIsFunction( 1 , "?GetGlobPtr@@YAKXZ" )
    *GlobPtr = CallCFunctionFast( coreptr_handle );
    CloseLibrary( 1 );
   Else
    MessageRequester( "DBP Initialisation" , " Library DBProCore.dll not found" )
   EndIf
EndProcedure
;
; **************************************************************
Procedure InitBaseList()
  BaseList\DBAnimation = @DB_Animation
  BaseList\DBBasic2D = @DB_Basic2D
  BaseList\DBBasic3D = @DB_Basic3D
  BaseList\DBBitmap = @DB_Bitmap
  BaseList\DBCamera = @DB_Camera
  BaseList\DBCore = @DB_Core
  BaseList\DBCSG = @DB_CSG
  BaseList\DBFile = @DB_File
  BaseList\DBFTP = @DB_FTP
  BaseList\DBImage = @DB_Image
  BaseList\DBInput = @DB_Input
  BaseList\DBLight = @DB_Light
  BaseList\DBLODTerrain = @DB_LODTerrain
  BaseList\DBMatrix = @DB_Matrix
  BaseList\DBMemblocks = @DB_Memblocks
  BaseList\DBMultiPlayer = @DB_MultiPlayer
  BaseList\DBMusic = @DB_Music
  BaseList\DBParticles = @DB_Particles
  BaseList\DBSetup = @DB_Setup
  BaseList\DBSound = @DB_Sound
  BaseList\DBSprites = @DB_Sprites
  BaseList\DBSystem = @DB_System
  BaseList\DBText = @DB_Text
  BaseList\DBVectors = @DB_Vectors
  BaseList\DBWorld3D = @DB_World3D
;
  BaseList\DBAdvancedTerrain = @DB_AdvancedTerrain
  BaseList\DBGameFX = @DB_GameFX
  BaseList\DBEnhancementsOV = @DB_EnhancementsOV
;
  BaseList\DBMultiPlayerPlus = @DB_MultiPlayerPlus
  BaseList\DBODE = @DB_ODE
  BaseList\DBShaderData = @DB_ShaderData
;
  BaseList\DBDarkPHYSICS =@DB_DarkPHYSICS
;
 EndProcedure
; *************************************************************************************** 
IncludeFile "..\DBPro_Functions\DBProAnimationDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProBasic2DDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProBasic3DDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProBitmapDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBproCameraDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProCore.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProCSGDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProFileDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProFTPDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProImageDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProInputDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProLightDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProLODTerrainDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProMatrixDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProMemblocksDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProMultiPlayerDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProMusicDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProParticlesDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProSetupDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProSoundDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProSpritesDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProSystemDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProTextDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProVectorsDebug.dll_Functions.pb"
IncludeFile "..\DBPro_Functions\DBProWorld3DDebug.dll_Functions.pb"
; DarkBASIC Professional Compiler\Plugin-Licensed content"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\AdvancedTerrain.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DBProGameFX.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\EnhancementsOV.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-LICENSED_Functions\DarkPhysics.DLL_Functions.pb"

; DarkBASIC Professional Compiler\Plugin-Licensed Content"
IncludeFile "..\DBProPLUGIN-USER_Functions\DBProMultiplayerPlusDebug.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-USER_Functions\DBProODEDebug.dll_Functions.pb"
IncludeFile "..\DBProPLUGIN-USER_Functions\ShaderData.dll_Functions.pb"
; *************************************************************************************** Initialize DarkBasicPro Library
Procedure.l InitDBPro()
  InitialiseCorePtr()
  If *GlobPtr <> 0
    DBProDLLs( 1 ) = CheckAnimation()
    DBProDLLs( 2 ) = CheckBasic2D()
    DBProDLLs( 3 ) = CheckBasic3D()
    DBProDLLs( 4 ) = CheckBitmap()
    DBProDLLs( 5 ) = CheckCamera()
    DBProDLLs( 6 ) = CheckCore()
    DBProDLLs( 7 ) = CheckCSG()
    DBProDLLs( 8 ) = CheckFile()
    DBProDLLs( 9 ) = CheckFTP()
    DBProDLLs( 10 ) = CheckImage()
    DBProDLLs( 11 ) = CheckInput()
    DBProDLLs( 12 ) = CheckLight()
    DBProDLLs( 13 ) = CheckLODTerrain()
    DBProDLLs( 14 ) = CheckMatrix()
    DBProDLLs( 15 ) = CheckMemblocks()
    DBProDLLs( 16 ) = CheckMultiPlayer()
    DBProDLLs( 17 ) = CheckMusic()
    DBProDLLs( 18 ) = CheckParticles()
    DBProDLLs( 19 ) = CheckSetup()
    DBProDLLs( 20 ) = CheckSound()
    DBProDLLs( 21 ) = CheckSprites()
    DBProDLLs( 22 ) = CheckSystem()
    DBProDLLs( 23 ) = CheckText()
    DBProDLLs( 24 ) = CheckVectors()
    DBProDLLs( 25 ) = CheckWorld3D()
;
    DBProDLLs( 32 ) = CheckAdvancedTerrain()
    DBProDLLs( 33 ) = CheckGameFX()
    DBProDLLs( 34 ) = CheckEnhancementsOV()
    DBProDLLs( 35 ) = CheckDarkPHYSICS()
;
    DBProDLLs( 48 ) = CheckMultiplayerPlus()
    DBProDLLs( 49 ) = CheckODE()
    DBProDLLs( 50 ) = CheckShaderData()
    Retour.l = 1
   Else
    Retour.l = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure

; IDE Options = PureBasic 4.30 (Windows - x86)
; CursorPosition = 129
; FirstLine = 82
; Folding = -