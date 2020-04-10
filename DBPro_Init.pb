; *************************************************************************************** Initialize DarkBasicPro Core Pointer
Procedure InitialiseCorePtr()
  If OpenLibrary( 3 , "DBProCore.dll" ) 
    coreptr_handle.l = GetFunction( 3 , "?GetGlobPtr@@YAKXZ" )
    *GlobPtr = CallCFunctionFast( coreptr_handle );
    CloseLibrary( 3 );
   Else
    MessageRequester( "DBP Initialisation" , " Library DBProCore.dll not found" )
   EndIf
EndProcedure
;
; **************************************************************
Procedure.l InitDLLBase()
  If OpenLibrary( 1 , "DBProExtends.dll" )
    ; Added checking to add DebugMode for all eXtends plugin files
    DebugModePTR.l = GetFunction( 1 , "GetDebugMode" )
    If DebugModePTR <> 0
      DebugMode = CallCFunctionFast( DebugModePTR )
     EndIf
    ;
    GetDBPInit.l = GetFunction( 1 , "GetDBProBase" )
    If GetDBPInit <> 0
      *BaseList = CallCFunctionFast( GetDBPInit )
      If *BaseList <> 0
        *DB_Animation = *BaseList\DBAnimation
        *DB_Basic2D = *BaseList\DBBasic2D
        *DB_Basic3D = *BaseList\DBBasic3D
        *DB_Bitmap = *BaseList\DBBitmap
        *DB_Camera = *BaseList\DBCamera
        *DB_Core = *BaseList\DBCore
        *DB_CSG = *BaseList\DBCSG
        *DB_File = *BaseList\DBFile
        *DB_FTP = *BaseList\DBFTP
        *DB_Image = *BaseList\DBImage
        *DB_Input = *BaseList\DBInput
        *DB_Light = *BaseList\DBLight
        *DB_LODTerrain = *BaseList\DBLODTerrain
        *DB_Matrix = *BaseList\DBMatrix
        *DB_Memblocks = *BaseList\DBMemblocks
        *DB_MultiPlayer = *BaseList\DBMultiPlayer
        *DB_Music = *BaseList\DBMusic
        *DB_Particles = *BaseList\DBParticles
        *DB_Setup = *BaseList\DBSetup
        *DB_Sound = *BaseList\DBSound
        *DB_Sprites = *BaseList\DBSprites
        *DB_System = *BaseList\DBSystem
        *DB_Text = *BaseList\DBText
        *DB_Vectors = *BaseList\DBVectors
        *DB_World3D = *BaseList\DBWorld3D
;
        *DB_AdvancedTerrain = *BaseList\DBAdvancedTerrain
        *DB_GameFX = *BaseList\DBGameFX
        *DB_EnhancementsOV = *BaseList\DBEnhancementsOV
;
        *DB_MultiPlayerPlus = *BaseList\DBMultiPlayerPlus
        *DB_ODE = *BaseList\DBODE
        *DB_ShaderData = *BaseList\DBShaderData
;
        *DB_DarkPHYSICS = *BaseList\DBDarkPHYSICS
;
        SUCCESS = 1
       Else
        SUCCESS = 0
       EndIf
     Else
      SUCCESS = 0
     EndIf
    CloseLibrary( 1 )
   Else
    SUCCESS = 0
   EndIf
  If SUCCESS = 0 And DebugMode = 1
    MessageRequester( "Warning" , "DBProExtends\GetDBProBase init failed." )
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 76
; FirstLine = 20
; Folding = -