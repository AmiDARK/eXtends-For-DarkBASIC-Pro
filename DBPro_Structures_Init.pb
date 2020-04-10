;
; Création réelle des structures pour utilisation dans la DLL Principale du pack.
;
;

Structure BaseListStruct
  DBEmpty.l
  DBAnimation.l : DBBasic2D.l : DBBasic3D.l : DBBitmap.l : DBCamera.l
  DBCore.l : DBCSG.l : DBFile.l : DBFTP.l : DBImage.l
  DBInput.l : DBLight.l : DBLODTerrain.l : DBMatrix.l : DBMemblocks.l
  DBMultiPlayer.l : DBMusic.l : DBParticles.l : DBSetup.l : DBSound.l
  DBSprites.l : DBSystem.l : DBText.l : DBVectors.l : DBWorld3D.l
  DBAdvancedTerrain.l : DBGameFX.l : DBEnhancementsOV.l
  DBMultiplayerPlus.l : DBODE.l : DBShaderData.l
  DBDarkPHYSICS.l
 EndStructure
Global *BaseList.BaseListStruct
;
; ****************************************************************************************************
Global *DB_Animation.DB_AnimationStruct
Global *DB_Basic2D.DB_Basic2DStruct
Global *DB_Basic3D.DB_Basic3DStruct
Global *DB_Bitmap.DB_BitmapStruct
Global *DB_Camera.DB_CameraStruct
Global *DB_Core.DB_CoreStruct
Global *DB_CSG.DB_CSGStruct
Global *DB_File.DB_FileStruct
Global *DB_FTP.DB_FTPStruct
Global *DB_Image.DB_ImageStruct
Global *DB_Input.DB_InputStruct
Global *DB_Light.DB_LightStruct
Global *DB_LODTerrain.DB_LODTerrainStruct
Global *DB_Matrix.DB_MatrixStruct
Global *DB_Memblocks.DB_MemblocksStruct
Global *DB_MultiPlayer.DB_MultiPlayerStruct
Global *DB_Music.DB_MusicStruct
Global *DB_Particles.DB_ParticlesStruct
Global *DB_Setup.DB_SetupStruct
Global *DB_Sound.DB_SoundStruct
Global *DB_Sprites.DB_SpritesStruct
Global *DB_System.DB_SystemStruct
Global *DB_Text.DB_TextStruct
Global *DB_Vectors.DB_VectorsStruct
Global *DB_World3D.DB_World3DStruct
;
Global *DB_AdvancedTerrain.DB_AdvancedTerrainStruct
Global *DB_GameFX.DB_GameFXStruct
Global *DB_EnhancementsOV.DB_EnhancementsOVStruct
;
Global *DB_MultiplayerPlus.DB_MultiplayerPlusStruct
Global *DB_ODE.DB_ODEStruct
Global *DB_ShaderData.DB_ShaderDataStruct
;
Global *DB_DarkPHYSICS.DB_DarkPhysicsStruct
;
; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 53
; FirstLine = 10
; Folding = -