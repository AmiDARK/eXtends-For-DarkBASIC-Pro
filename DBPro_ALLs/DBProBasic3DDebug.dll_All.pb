; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_Basic3DStruct
  Load.l : Rotate.l : Loop.l : AddLimb.l
  Append.l : AppendAnimation.l : LoadEffectEx.l : ChangeMesh.l
  ClearAllKeyFrames.l : ClearKeyFrame.l : CalculateObjectBounds.l : Color.l
  ColorLimb.l : DeleteCollisionBox.l : DeleteEx.l : DeleteMesh.l
  SetMask.l : DisableZDepth.l : EnableZDepth.l : Fade.l
  FixPivot.l : SetToObjectOrientation.l : GetAlphaBlending.l : GetNumberOfFrames.l
  GetBlending.l : GetCollision.l : GetCollisionX.l : GetCollisionY.l
  GetCollisionZ.l : GetExist.l : GetFog.l : GetFrame.l
  GetHit.l : GetInScreen.l : GetInterpolation.l : GetLimbAngleX.l
  GetLimbAngleY.l : GetLimbAngleZ.l : GetLimbExist.l : GetLimbName.l
  GetLimbOffsetX.l : GetLimbOffsetY.l : GetLimbOffsetZ.l : GetLimbScaleX.l
  GetLimbScaleY.l : GetLimbScaleZ.l : GetLimbTextureName.l : GetLimbTexture.l
  GetLimbVisible.l : GetLimbXDirection.l : GetLimbYDirection.l : GetLimbZDirection.l
  GetLimbXPosition.l : GetLimbYPosition.l : GetLimbZPosition.l : GetLooping.l
  GetMeshExist.l : GetPlaying.l : GetScreenX.l : GetScreenY.l
  GetSize.l : GetSpeed.l : GetStaticLineOfSightX.l : GetStaticLineOfSightY.l
  GetStaticLineOfSightZ.l : GetVisible.l : GetXPositionEx.l : GetYPositionEx.l
  GetZPositionEx.l : GetXSize.l : GetYSize.l : GetZSize.l
  GetXRotationEx.l : GetYRotationEx.l : GetZRotationEx.l : GhostOff.l
  GhostOn.l : GhostOn1.l : GlueToLimb.l : Hide.l
  HideLimb.l : LinkLimb.l : LoadMesh.l : LockOff.l
  LockOn.l : Loop1.l : Loop2.l : MakeBox.l
  MakeCollisionBox.l : MakeCone.l : MakeCube.l : MakeCylinder.l
  MakeMeshFromObject.l : MakeObjectFromLimb.l : MakePlane.l : MakeSphere.l
  MakeTriangle.l : Move.l : OffsetLimb.l : PerformCheckListForLimbs.l
  PitchDown.l : PitchUp.l : Play.l : Play1.l
  Play2.l : Point.l : Position.l : RollLeft.l
  RollRight.l : MakePlane1.l : RotateLimb.l : SaveAnimation.l
  Scale.l : ScaleLimb.l : ScaleLimbTexture.l : ScaleTexture.l
  ScrollLimbTexture.l : ScrollTexture.l : Set.l : Set1.l
  Set2.l : Set3.l : Set4.l : SetCollisionOff.l
  SetCollisionOn.l : SetCollisionToBoxes.l : SetCollisionToPolygons.l : SetCollisionToSpheres.l
  SetFrameEx.l : SetGlobalCollisionOff.l : SetGlobalCollisionOn.l : SetInterpolation.l
  SetKeyFrame.l : SetMipmapMode.l : SetRotationXYZ.l : SetRotationZYX.l
  SetSpeed.l : SetTexture.l : SetTextureMode.l : SetToCameraOrientation.l
  SetToObjectOrientation1.l : Show.l : ShowLimb.l : Stop.l
  TextureLimb.l : TurnLeft.l : TurnRight.l : UnGlue.l
  XRotate.l : YRotate.l : ZRotate.l : MakeObject.l
  SetBumpMap.l : SetCartoonShadingOn.l : SetSphereMap.l : GetSizeEx.l
  GetLimbLink.l : GetObjectCollisionRadius.l : GetObjectCollisionCenterX.l : GetObjectCollisionCenterY.l
  GetObjectCollisionCenterZ.l : Convert3DStoX.l : FlushVideoMemory.l : DisableTNL.l
  EnableTNL.l : GetStatistic.l : GetDrawPrimTLVertex.l : Clone.l
  CreateVertexShaderFromFile.l : MakeSphere1.l : MoveDown.l : MoveLeft.l
  MoveRight.l : MoveUp.l : SetAmbient.l : SetCull.l
  SetDetailMap.l : SetFilter.l : SetFog.l : SetLight.l
  SetLightMap.l : SetSphereRadius.l : SetTransparency.l : SetVertexShaderMatrix.l
  SetVertexShaderOff.l : SetVertexShaderOn.l : SetVertexShaderStream.l : SetVertexShaderStreamCount.l
  SetVertexShaderVector.l : SetWireframe.l : GetAlpha.l : GetAlphaComparision.l
  GetAnisotropicFiltering.l : GetAntiAliasEdges.l : GetBlitSysOntoLocal.l : GetCalibrateGamma.l
  GetClipAndScalePoints.l : GetClipTLVerts.l : GetColorPerspective.l : GetColorWriteEnable.l
  GetCubeMap.l : GetCullCCW.l : GetCullCW.l : GetDeviceType.l
  GetDither.l : GetFogRange.l : GetFogTable.l : GetFogVertex.l
  GetFullScreenGamma.l : GetMaxLights.l : GetMaxPixelShaderValue.l : ScaleTexture1.l
  GetMaxTextureHeight.l : GetMaxTextureWidth.l : GetMaxVertexShaderConstants.l : GetMaxVolumeExtent.l
  GetMipCubeMap.l : GetMipMap.l : GetMipMapLODBias.l : GetMipMapVolume.l
  GetNonPowerOf2Textures.l : GetPerspective.l : GetPixelShaderVersion.l : GetProjected.l
  GetRenderAfterFlip.l : GetRenderWindowed.l : GetSeparateTextureMemories.l : GetSquareOnly.l
  GetTLVertexSystemMemory.l : GetTLVertexVideoMemory.l : GetTextureNonLocalVideoMemory.l : GetTextureSystemMemory.l
  GetTextureVideoMemory.l : GetVertexShaderVersion.l : GetVolumeMap.l : GetWBuffer.l
  GetWFog.l : GetZBuffer.l : GetZFog.l : DeleteVertexShader.l
  VertexShaderExist.l : SetCubeMap.l : SetBlendMap.l : SaveMesh.l
  RemoveLimb.l : IntersectObject.l : AutomaticObjectCollision.l : AutomaticCameraCollision.l
  SetRainbowRenderingOn.l : SetShadowOn.l : SetReflectionOn.l : CreatePixelShaderFromFile.l
  SetPixelShaderOn.l : SetPixelShaderOff.l : DeletePixelShader.l : SetPixelShaderTexture.l
  PixelShaderExist.l : SetTextureMD3.l : CloneMeshToNewFormat.l : Save.l
  HideBounds.l : ShowBounds.l : SetSmoothing.l : SetLimbSmoothing.l
  GetXSizeEx.l : LockVertexDataForLimb.l : LockVertexDataForMesh.l : UnlockVertexData.l
  SetVertexDataUV.l : SetVertexDataNormals.l : SetVertexDataPosition.l : SetVertexDataDiffuse.l
  AddMeshToVertexData.l : DeleteMeshFromVertexData.l : GetVertexDataVertexCount.l : GetVertexDataIndexCount.l
  GetVertexDataPositionX.l : GetVertexDataPositionY.l : GetVertexDataPositionZ.l : GetVertexDataNormalsX.l
  GetVertexDataNormalsY.l : GetVertexDataNormalsZ.l : GetVertexDataU.l : GetVertexDataV.l
  GetVertexDataDiffuse.l : SetAlphaFactor.l : Instance.l : SetEffectOn.l
  SetTextureStage.l : EnableZRead.l : DisableZRead.l : EnableZWrite.l
  DisableZWrite.l : LoadEffect.l : DeleteEffect.l : SetObjectEffect.l
  SetLimbEffect.l : SetEffectConstantF.l : PerformChecklistForEffectValues.l : SetDiffuseMaterial.l
  SetAmbienceMaterial.l : SetSpecularMaterial.l : SetEmissiveMaterial.l : SetSpecularPower.l
  TextureLimbStage.l : MakeEmitter.l : GetEffectExist.l : PerformChecklistForEffectErrors.l
  SetEffectTranspose.l : SetEffectConstantB.l : SetEffectConstantI.l : SetEffectConstantV.l
  SetEffectConstantM.l : PickScreenObject.l : GetPickVectorX.l : GetPickVectorY.l
  GetPickVectorZ.l : PickScreen2D23D.l : GetPickDistance.l : SetShadingOff.l
  ShowBoundsEx.l : SetEffectTechnique.l : SetVertexDataUV1.l : PerformChecklistForEffectErrors1.l
  GetLimbCollision.l : GetLimbHit.l : Load1.l : ExcludeOn.l
  ExcludeOff.l : SetNormals.l : SetLimbNormals.l : SetTextureModeStage.l
  SetFilterStage.l : LockVertexDataForLimbCore.l : SetObjectFOV.l : Deletes.l
  ForceAutomaticEnd.l : EnableZBias.l : DisableZBias.l : OffsetLimb1.l
  ScaleLimb1.l : RotateLimb1.l : CloneShared.l : SetFrameEx1.l
  SetShadowOnEx.l : SetShadowOff.l : SetBlendMap1.l : SetIndexData.l
  GetIndexData.l : GetVertexDataU1.l : GetVertexDataV1.l : GetYSizeEx.l
  SetGlobalObjectCreationMode.l : GetZSizeEx.l : ScrollTexture1.l : ScaleLimbTexture1.l
  ScrollLimbTexture1.l : SetTextureStageEx.l : SetDiffuseMaterialEx.l : Load2.l
  GetLimbTextureNameEx.l : GetLimbTextureEx.l : PickScreenObjectEx.l : GlueToLimbEx.l
  ConvertMeshToVertexData.l : MakeObjectFromLimbEx.l : AutomaticCameraCollision1.l : 
 EndStructure

Procedure.l CheckBasic3D()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProBasic3DDebug.dll")
    DB_Basic3D\Load= AIsFunction( 1 , "?Load@@YAXKH@Z" ) ; 1 LOAD OBJECT Filename, Object Number
    DB_Basic3D\Rotate= AIsFunction( 1 , "?Rotate@@YAXHMMM@Z" ) ; 2 ROTATE OBJECT Object Number, XAngle, YAngle, ZAngle
    DB_Basic3D\Loop= AIsFunction( 1 , "?Loop@@YAXH@Z" ) ; 3 LOOP OBJECT Object Number
    DB_Basic3D\AddLimb= AIsFunction( 1 , "?AddLimb@@YAXHHH@Z" ) ; 4 ADD LIMB Object Number, Limb Number, Mesh Number
    DB_Basic3D\Append= AIsFunction( 1 , "?Append@@YAXKHH@Z" ) ; 5 APPEND OBJECT Filename, Object Number, Start Frame
    DB_Basic3D\AppendAnimation= AIsFunction( 1 , "?AppendAnimation@@YAXHK@Z" ) ; 6 APPEND OBJECT ANIMATION Object Number, Filename
    DB_Basic3D\LoadEffectEx= AIsFunction( 1 , "?LoadEffectEx@@YAXKHHH@Z" ) ; 7 LOAD EFFECT Filename, Effect Number, Texture Flag, DoNotGenerateExtraData
    DB_Basic3D\ChangeMesh= AIsFunction( 1 , "?ChangeMesh@@YAXHHH@Z" ) ; 8 CHANGE MESH Object Number, Limb Number, Mesh Number
    DB_Basic3D\ClearAllKeyFrames= AIsFunction( 1 , "?ClearAllKeyFrames@@YAXH@Z" ) ; 9 CLEAR ALL OBJECT KEYFRAMES Object Number
    DB_Basic3D\ClearKeyFrame= AIsFunction( 1 , "?ClearKeyFrame@@YAXHH@Z" ) ; 10 CLEAR OBJECT KEYFRAME Object Number, Keyframe
    DB_Basic3D\CalculateObjectBounds= AIsFunction( 1 , "?CalculateObjectBounds@@YAXH@Z" ) ; 11 CALCULATE OBJECT BOUNDS 
    DB_Basic3D\Color= AIsFunction( 1 , "?Color@@YAXHK@Z" ) ; 12 COLOR OBJECT Object Number, Color Value
    DB_Basic3D\ColorLimb= AIsFunction( 1 , "?ColorLimb@@YAXHHK@Z" ) ; 13 COLOR LIMB Object Number, Limb Number, Color Value
    DB_Basic3D\DeleteCollisionBox= AIsFunction( 1 , "?DeleteCollisionBox@@YAXH@Z" ) ; 14 DELETE OBJECT COLLISION BOX Object Number
    DB_Basic3D\DeleteEx= AIsFunction( 1 , "?DeleteEx@@YAXH@Z" ) ; 15 DELETE OBJECT Object Number
    DB_Basic3D\DeleteMesh= AIsFunction( 1 , "?DeleteMesh@@YAXH@Z" ) ; 16 DELETE MESH Mesh Number
    DB_Basic3D\SetMask= AIsFunction( 1 , "?SetMask@@YAXHH@Z" ) ; 17 SET OBJECT MASK Object Number, Camera Mask Bits
    DB_Basic3D\DisableZDepth= AIsFunction( 1 , "?DisableZDepth@@YAXH@Z" ) ; 19 DISABLE OBJECT ZDEPTH Object Number
    DB_Basic3D\EnableZDepth= AIsFunction( 1 , "?EnableZDepth@@YAXH@Z" ) ; 21 ENABLE OBJECT ZDEPTH Object Number
    DB_Basic3D\Fade= AIsFunction( 1 , "?Fade@@YAXHM@Z" ) ; 22 FADE OBJECT Object Number, Fade Value
    DB_Basic3D\FixPivot= AIsFunction( 1 , "?FixPivot@@YAXH@Z" ) ; 23 FIX OBJECT PIVOT Object Number
    DB_Basic3D\SetToObjectOrientation= AIsFunction( 1 , "?SetToObjectOrientation@@YAXHHH@Z" ) ; 24 SET OBJECT TO OBJECT ORIENTATION Object Number, Second Object, Flag
    DB_Basic3D\GetAlphaBlending= AIsFunction( 1 , "?GetAlphaBlending@@YAHXZ" ) ; 25 ALPHABLENDING AVAILABLE 
    DB_Basic3D\GetNumberOfFrames= AIsFunction( 1 , "?GetNumberOfFrames@@YAHH@Z" ) ; 26 TOTAL OBJECT FRAMES Object Number
    DB_Basic3D\GetBlending= AIsFunction( 1 , "?GetBlending@@YAHXZ" ) ; 27 FILTERING AVAILABLE 
    DB_Basic3D\GetCollision= AIsFunction( 1 , "?GetCollision@@YAHHH@Z" ) ; 28 OBJECT COLLISION ObjectA Number, ObjectB Number
    DB_Basic3D\GetCollisionX= AIsFunction( 1 , "?GetCollisionX@@YAKXZ" ) ; 29 GET OBJECT COLLISION X 
    DB_Basic3D\GetCollisionY= AIsFunction( 1 , "?GetCollisionY@@YAKXZ" ) ; 30 GET OBJECT COLLISION Y 
    DB_Basic3D\GetCollisionZ= AIsFunction( 1 , "?GetCollisionZ@@YAKXZ" ) ; 31 GET OBJECT COLLISION Z 
    DB_Basic3D\GetExist= AIsFunction( 1 , "?GetExist@@YAHH@Z" ) ; 32 OBJECT EXIST Object Number
    DB_Basic3D\GetFog= AIsFunction( 1 , "?GetFog@@YAHXZ" ) ; 33 FOG AVAILABLE 
    DB_Basic3D\GetFrame= AIsFunction( 1 , "?GetFrame@@YAKH@Z" ) ; 34 OBJECT FRAME Object Number
    DB_Basic3D\GetHit= AIsFunction( 1 , "?GetHit@@YAHHH@Z" ) ; 35 OBJECT HIT ObjectA Number, ObjectB Number
    DB_Basic3D\GetInScreen= AIsFunction( 1 , "?GetInScreen@@YAHH@Z" ) ; 36 OBJECT IN SCREEN Object Number
    DB_Basic3D\GetInterpolation= AIsFunction( 1 , "?GetInterpolation@@YAKH@Z" ) ; 37 OBJECT INTERPOLATION Object Number
    DB_Basic3D\GetLimbAngleX= AIsFunction( 1 , "?GetLimbAngleX@@YAKHH@Z" ) ; 38 LIMB ANGLE X Object Number, Limb Number
    DB_Basic3D\GetLimbAngleY= AIsFunction( 1 , "?GetLimbAngleY@@YAKHH@Z" ) ; 39 LIMB ANGLE Y Object Number, Limb Number
    DB_Basic3D\GetLimbAngleZ= AIsFunction( 1 , "?GetLimbAngleZ@@YAKHH@Z" ) ; 40 LIMB ANGLE Z Object Number, Limb Number
    DB_Basic3D\GetLimbExist= AIsFunction( 1 , "?GetLimbExist@@YAHHH@Z" ) ; 41 LIMB EXIST Object Number, Limb Number
    DB_Basic3D\GetLimbName= AIsFunction( 1 , "?GetLimbName@@YAKKHH@Z" ) ; 42 LIMB NAME$ Object Number, Limb Number
    DB_Basic3D\GetLimbOffsetX= AIsFunction( 1 , "?GetLimbOffsetX@@YAKHH@Z" ) ; 43 LIMB OFFSET X Object Number, Limb Number
    DB_Basic3D\GetLimbOffsetY= AIsFunction( 1 , "?GetLimbOffsetY@@YAKHH@Z" ) ; 44 LIMB OFFSET Y Object Number, Limb Number
    DB_Basic3D\GetLimbOffsetZ= AIsFunction( 1 , "?GetLimbOffsetZ@@YAKHH@Z" ) ; 45 LIMB OFFSET Z Object Number, Limb Number
    DB_Basic3D\GetLimbScaleX= AIsFunction( 1 , "?GetLimbScaleX@@YAKHH@Z" ) ; 46 LIMB SCALE X Object Number, Limb Number
    DB_Basic3D\GetLimbScaleY= AIsFunction( 1 , "?GetLimbScaleY@@YAKHH@Z" ) ; 47 LIMB SCALE Y Object Number, Limb Number
    DB_Basic3D\GetLimbScaleZ= AIsFunction( 1 , "?GetLimbScaleZ@@YAKHH@Z" ) ; 48 LIMB SCALE Z Object Number, Limb Number
    DB_Basic3D\GetLimbTextureName= AIsFunction( 1 , "?GetLimbTextureName@@YAKKHH@Z" ) ; 49 LIMB TEXTURE NAME Object Number, Limb Number
    DB_Basic3D\GetLimbTexture= AIsFunction( 1 , "?GetLimbTexture@@YAHHH@Z" ) ; 50 LIMB TEXTURE Object Number, Limb Number
    DB_Basic3D\GetLimbVisible= AIsFunction( 1 , "?GetLimbVisible@@YAHHH@Z" ) ; 51 LIMB VISIBLE Object Number, Limb Number
    DB_Basic3D\GetLimbXDirection= AIsFunction( 1 , "?GetLimbXDirection@@YAKHH@Z" ) ; 52 LIMB DIRECTION X Object Number, Limb Number
    DB_Basic3D\GetLimbYDirection= AIsFunction( 1 , "?GetLimbYDirection@@YAKHH@Z" ) ; 53 LIMB DIRECTION Y Object Number, Limb Number
    DB_Basic3D\GetLimbZDirection= AIsFunction( 1 , "?GetLimbZDirection@@YAKHH@Z" ) ; 54 LIMB DIRECTION Z Object Number, Limb Number
    DB_Basic3D\GetLimbXPosition= AIsFunction( 1 , "?GetLimbXPosition@@YAKHH@Z" ) ; 55 LIMB POSITION X Object Number, Limb Number
    DB_Basic3D\GetLimbYPosition= AIsFunction( 1 , "?GetLimbYPosition@@YAKHH@Z" ) ; 56 LIMB POSITION Y Object Number, Limb Number
    DB_Basic3D\GetLimbZPosition= AIsFunction( 1 , "?GetLimbZPosition@@YAKHH@Z" ) ; 57 LIMB POSITION Z Object Number, Limb Number
    DB_Basic3D\GetLooping= AIsFunction( 1 , "?GetLooping@@YAHH@Z" ) ; 58 OBJECT LOOPING Object Number
    DB_Basic3D\GetMeshExist= AIsFunction( 1 , "?GetMeshExist@@YAHH@Z" ) ; 59 MESH EXIST Mesh Number
    DB_Basic3D\GetPlaying= AIsFunction( 1 , "?GetPlaying@@YAHH@Z" ) ; 60 OBJECT PLAYING Object Number
    DB_Basic3D\GetScreenX= AIsFunction( 1 , "?GetScreenX@@YAHH@Z" ) ; 61 OBJECT SCREEN X Object Number
    DB_Basic3D\GetScreenY= AIsFunction( 1 , "?GetScreenY@@YAHH@Z" ) ; 62 OBJECT SCREEN Y Object Number
    DB_Basic3D\GetSize= AIsFunction( 1 , "?GetSize@@YAKH@Z" ) ; 63 OBJECT SIZE Object Number
    DB_Basic3D\GetSpeed= AIsFunction( 1 , "?GetSpeed@@YAKH@Z" ) ; 64 OBJECT SPEED Object Number
    DB_Basic3D\GetStaticLineOfSightX= AIsFunction( 1 , "?GetStaticLineOfSightX@@YAKXZ" ) ; 65 STATIC LINE OF SIGHT X 
    DB_Basic3D\GetStaticLineOfSightY= AIsFunction( 1 , "?GetStaticLineOfSightY@@YAKXZ" ) ; 66 STATIC LINE OF SIGHT Y 
    DB_Basic3D\GetStaticLineOfSightZ= AIsFunction( 1 , "?GetStaticLineOfSightZ@@YAKXZ" ) ; 67 STATIC LINE OF SIGHT Z 
    DB_Basic3D\GetVisible= AIsFunction( 1 , "?GetVisible@@YAHH@Z" ) ; 68 OBJECT VISIBLE Object Number
    DB_Basic3D\GetXPositionEx= AIsFunction( 1 , "?GetXPositionEx@@YAKH@Z" ) ; 69 OBJECT POSITION X Object Number
    DB_Basic3D\GetYPositionEx= AIsFunction( 1 , "?GetYPositionEx@@YAKH@Z" ) ; 70 OBJECT POSITION Y Object Number
    DB_Basic3D\GetZPositionEx= AIsFunction( 1 , "?GetZPositionEx@@YAKH@Z" ) ; 71 OBJECT POSITION Z Object Number
    DB_Basic3D\GetXSize= AIsFunction( 1 , "?GetXSize@@YAKH@Z" ) ; 72 OBJECT SIZE X Object Number
    DB_Basic3D\GetYSize= AIsFunction( 1 , "?GetYSize@@YAKH@Z" ) ; 73 OBJECT SIZE Y Object Number
    DB_Basic3D\GetZSize= AIsFunction( 1 , "?GetZSize@@YAKH@Z" ) ; 74 OBJECT SIZE Z Object Number
    DB_Basic3D\GetXRotationEx= AIsFunction( 1 , "?GetXRotationEx@@YAKH@Z" ) ; 75 OBJECT ANGLE X Object Number
    DB_Basic3D\GetYRotationEx= AIsFunction( 1 , "?GetYRotationEx@@YAKH@Z" ) ; 76 OBJECT ANGLE Y Object Number
    DB_Basic3D\GetZRotationEx= AIsFunction( 1 , "?GetZRotationEx@@YAKH@Z" ) ; 77 OBJECT ANGLE Z Object Number
    DB_Basic3D\GhostOff= AIsFunction( 1 , "?GhostOff@@YAXH@Z" ) ; 78 GHOST OBJECT OFF Object Number
    DB_Basic3D\GhostOn= AIsFunction( 1 , "?GhostOn@@YAXH@Z" ) ; 79 GHOST OBJECT ON Object Number
    DB_Basic3D\GhostOn1= AIsFunction( 1 , "?GhostOn@@YAXHH@Z" ) ; 80 GHOST OBJECT ON Object Number, Ghost Effect
    DB_Basic3D\GlueToLimb= AIsFunction( 1 , "?GlueToLimb@@YAXHHH@Z" ) ; 81 GLUE OBJECT TO LIMB Object Number, Second Object, Limb Number
    DB_Basic3D\Hide= AIsFunction( 1 , "?Hide@@YAXH@Z" ) ; 82 HIDE OBJECT Object Number
    DB_Basic3D\HideLimb= AIsFunction( 1 , "?HideLimb@@YAXHH@Z" ) ; 83 HIDE LIMB Object Number, Limb Number
    DB_Basic3D\LinkLimb= AIsFunction( 1 , "?LinkLimb@@YAXHHH@Z" ) ; 84 LINK LIMB Object Number, Limb Parent, Limb Child
    DB_Basic3D\LoadMesh= AIsFunction( 1 , "?LoadMesh@@YAXKH@Z" ) ; 85 LOAD MESH Filename, Mesh Number
    DB_Basic3D\LockOff= AIsFunction( 1 , "?LockOff@@YAXH@Z" ) ; 87 LOCK OBJECT OFF Object Number
    DB_Basic3D\LockOn= AIsFunction( 1 , "?LockOn@@YAXH@Z" ) ; 88 LOCK OBJECT ON Object Number
    DB_Basic3D\Loop1= AIsFunction( 1 , "?Loop@@YAXHH@Z" ) ; 89 LOOP OBJECT Object Number, Start Frame
    DB_Basic3D\Loop2= AIsFunction( 1 , "?Loop@@YAXHHH@Z" ) ; 90 LOOP OBJECT Object Number, Start Frame, End Frame
    DB_Basic3D\MakeBox= AIsFunction( 1 , "?MakeBox@@YAXHMMM@Z" ) ; 91 MAKE OBJECT BOX Object Number, Width, Height, Depth
    DB_Basic3D\MakeCollisionBox= AIsFunction( 1 , "?MakeCollisionBox@@YAXHMMMMMMH@Z" ) ; 92 MAKE OBJECT COLLISION BOX Object Number, X1, Y1, Z1, X2, Y2, Z2, Collision Flag
    DB_Basic3D\MakeCone= AIsFunction( 1 , "?MakeCone@@YAXHM@Z" ) ; 93 MAKE OBJECT CONE Object Number, Size
    DB_Basic3D\MakeCube= AIsFunction( 1 , "?MakeCube@@YAXHM@Z" ) ; 94 MAKE OBJECT CUBE Object Number, Size
    DB_Basic3D\MakeCylinder= AIsFunction( 1 , "?MakeCylinder@@YAXHM@Z" ) ; 95 MAKE OBJECT CYLINDER Object Number, Size
    DB_Basic3D\MakeMeshFromObject= AIsFunction( 1 , "?MakeMeshFromObject@@YAXHH@Z" ) ; 96 MAKE MESH FROM OBJECT Mesh Number, Object Number
    DB_Basic3D\MakeObjectFromLimb= AIsFunction( 1 , "?MakeObjectFromLimb@@YAXHHH@Z" ) ; 98 MAKE OBJECT FROM LIMB Object Number, Second Object, Limb Number
    DB_Basic3D\MakePlane= AIsFunction( 1 , "?MakePlane@@YAXHMM@Z" ) ; 99 MAKE OBJECT PLAIN Object Number, Width, Height
    DB_Basic3D\MakeSphere= AIsFunction( 1 , "?MakeSphere@@YAXHM@Z" ) ; 100 MAKE OBJECT SPHERE Object Number, Size
    DB_Basic3D\MakeTriangle= AIsFunction( 1 , "?MakeTriangle@@YAXHMMMMMMMMM@Z" ) ; 101 MAKE OBJECT TRIANGLE Object Number, X1, Y1, Z1, X2, Y2, Z2, X3, Y3, Z3
    DB_Basic3D\Move= AIsFunction( 1 , "?Move@@YAXHM@Z" ) ; 102 MOVE OBJECT Object Number, Speed
    DB_Basic3D\OffsetLimb= AIsFunction( 1 , "?OffsetLimb@@YAXHHMMM@Z" ) ; 103 OFFSET LIMB Object Number, Limb Number, X, Y, Z
    DB_Basic3D\PerformCheckListForLimbs= AIsFunction( 1 , "?PerformCheckListForLimbs@@YAXH@Z" ) ; 104 PERFORM CHECKLIST FOR OBJECT LIMBS Object Number
    DB_Basic3D\PitchDown= AIsFunction( 1 , "?PitchDown@@YAXHM@Z" ) ; 105 PITCH OBJECT DOWN Object Number, Value
    DB_Basic3D\PitchUp= AIsFunction( 1 , "?PitchUp@@YAXHM@Z" ) ; 106 PITCH OBJECT UP Object Number, Value
    DB_Basic3D\Play= AIsFunction( 1 , "?Play@@YAXH@Z" ) ; 107 PLAY OBJECT Object Number
    DB_Basic3D\Play1= AIsFunction( 1 , "?Play@@YAXHH@Z" ) ; 108 PLAY OBJECT Object Number, Start Frame
    DB_Basic3D\Play2= AIsFunction( 1 , "?Play@@YAXHHH@Z" ) ; 109 PLAY OBJECT Object Number, Start Frame, End Frame
    DB_Basic3D\Point= AIsFunction( 1 , "?Point@@YAXHMMM@Z" ) ; 110 POINT OBJECT Object Number, X, Y, Z
    DB_Basic3D\Position= AIsFunction( 1 , "?Position@@YAXHMMM@Z" ) ; 111 POSITION OBJECT Object Number, X, Y, Z
    DB_Basic3D\RollLeft= AIsFunction( 1 , "?RollLeft@@YAXHM@Z" ) ; 112 ROLL OBJECT LEFT Object Number, Value
    DB_Basic3D\RollRight= AIsFunction( 1 , "?RollRight@@YAXHM@Z" ) ; 113 ROLL OBJECT RIGHT Object Number, Value
    DB_Basic3D\MakePlane1= AIsFunction( 1 , "?MakePlane@@YAXHMMH@Z" ) ; 114 MAKE OBJECT PLAIN Object Number, Width, Height
    DB_Basic3D\RotateLimb= AIsFunction( 1 , "?RotateLimb@@YAXHHMMM@Z" ) ; 115 ROTATE LIMB Object Number, Limb Number, XAngle, YAngle, ZAngle
    DB_Basic3D\SaveAnimation= AIsFunction( 1 , "?SaveAnimation@@YAXHK@Z" ) ; 116 SAVE OBJECT ANIMATION Object Number, Filename
    DB_Basic3D\Scale= AIsFunction( 1 , "?Scale@@YAXHMMM@Z" ) ; 118 SCALE OBJECT Object Number, XSize, YSize, ZSize
    DB_Basic3D\ScaleLimb= AIsFunction( 1 , "?ScaleLimb@@YAXHHMMM@Z" ) ; 119 SCALE LIMB Object Number, Limb Number, XSize, YSize, ZSize
    DB_Basic3D\ScaleLimbTexture= AIsFunction( 1 , "?ScaleLimbTexture@@YAXHHMM@Z" ) ; 120 SCALE LIMB TEXTURE Object Number, Limb Number, UScale, VScale
    DB_Basic3D\ScaleTexture= AIsFunction( 1 , "?ScaleTexture@@YAXHMM@Z" ) ; 121 SCALE OBJECT TEXTURE Object Number, UScale, VScale
    DB_Basic3D\ScrollLimbTexture= AIsFunction( 1 , "?ScrollLimbTexture@@YAXHHMM@Z" ) ; 122 SCROLL LIMB TEXTURE Object Number, Limb Number, X, Y
    DB_Basic3D\ScrollTexture= AIsFunction( 1 , "?ScrollTexture@@YAXHMM@Z" ) ; 123 SCROLL OBJECT TEXTURE Object Number, X, Y
    DB_Basic3D\Set= AIsFunction( 1 , "?Set@@YAXHHHH@Z" ) ; 124 SET OBJECT Object Number, Wire, Transparent, Cull
    DB_Basic3D\Set1= AIsFunction( 1 , "?Set@@YAXHHHHH@Z" ) ; 125 SET OBJECT Object Number, Wire, Transparent, Cull, Filter
    DB_Basic3D\Set2= AIsFunction( 1 , "?Set@@YAXHHHHHH@Z" ) ; 126 SET OBJECT Object Number, Wire, Transparent, Cull, Filter, Light
    DB_Basic3D\Set3= AIsFunction( 1 , "?Set@@YAXHHHHHHH@Z" ) ; 127 SET OBJECT Object Number, Wire, Transparent, Cull, Filter, Light, Fog
    DB_Basic3D\Set4= AIsFunction( 1 , "?Set@@YAXHHHHHHHH@Z" ) ; 128 SET OBJECT Object Number, Wire, Transparent, Cull, Filter, Light, Fog, Ambient
    DB_Basic3D\SetCollisionOff= AIsFunction( 1 , "?SetCollisionOff@@YAXH@Z" ) ; 129 SET OBJECT COLLISION OFF Object Number
    DB_Basic3D\SetCollisionOn= AIsFunction( 1 , "?SetCollisionOn@@YAXH@Z" ) ; 130 SET OBJECT COLLISION ON Object Number
    DB_Basic3D\SetCollisionToBoxes= AIsFunction( 1 , "?SetCollisionToBoxes@@YAXH@Z" ) ; 131 SET OBJECT COLLISION TO BOXES Object Number
    DB_Basic3D\SetCollisionToPolygons= AIsFunction( 1 , "?SetCollisionToPolygons@@YAXH@Z" ) ; 132 SET OBJECT COLLISION TO POLYGONS Object Number
    DB_Basic3D\SetCollisionToSpheres= AIsFunction( 1 , "?SetCollisionToSpheres@@YAXH@Z" ) ; 133 SET OBJECT COLLISION TO SPHERES Object Number
    DB_Basic3D\SetFrameEx= AIsFunction( 1 , "?SetFrameEx@@YAXHM@Z" ) ; 134 SET OBJECT FRAME Object Number, Frame
    DB_Basic3D\SetGlobalCollisionOff= AIsFunction( 1 , "?SetGlobalCollisionOff@@YAXXZ" ) ; 135 SET GLOBAL COLLISION OFF 
    DB_Basic3D\SetGlobalCollisionOn= AIsFunction( 1 , "?SetGlobalCollisionOn@@YAXXZ" ) ; 136 SET GLOBAL COLLISION ON 
    DB_Basic3D\SetInterpolation= AIsFunction( 1 , "?SetInterpolation@@YAXHH@Z" ) ; 137 SET OBJECT INTERPOLATION Object Number, Interpolation
    DB_Basic3D\SetKeyFrame= AIsFunction( 1 , "?SetKeyFrame@@YAXHH@Z" ) ; 138 SET OBJECT KEYFRAME Object Number, Keyframe
    DB_Basic3D\SetMipmapMode= AIsFunction( 1 , "?SetMipmapMode@@YAXH@Z" ) ; 139 SET MIPMAP MODE Mipmap Mode
    DB_Basic3D\SetRotationXYZ= AIsFunction( 1 , "?SetRotationXYZ@@YAXH@Z" ) ; 141 SET OBJECT ROTATION XYZ Object Number
    DB_Basic3D\SetRotationZYX= AIsFunction( 1 , "?SetRotationZYX@@YAXH@Z" ) ; 142 SET OBJECT ROTATION ZYX Object Number
    DB_Basic3D\SetSpeed= AIsFunction( 1 , "?SetSpeed@@YAXHH@Z" ) ; 143 SET OBJECT SPEED Object Number, Speed
    DB_Basic3D\SetTexture= AIsFunction( 1 , "?SetTexture@@YAXHH@Z" ) ; 144 TEXTURE OBJECT Object Number, Image Number
    DB_Basic3D\SetTextureMode= AIsFunction( 1 , "?SetTextureMode@@YAXHHH@Z" ) ; 145 SET OBJECT TEXTURE Object Number, Texturing Mode, Mipmap Flag
    DB_Basic3D\SetToCameraOrientation= AIsFunction( 1 , "?SetToCameraOrientation@@YAXH@Z" ) ; 146 SET OBJECT TO CAMERA ORIENTATION Object Number
    DB_Basic3D\SetToObjectOrientation1= AIsFunction( 1 , "?SetToObjectOrientation@@YAXHH@Z" ) ; 147 SET OBJECT TO OBJECT ORIENTATION Object Number, Second Object
    DB_Basic3D\Show= AIsFunction( 1 , "?Show@@YAXH@Z" ) ; 148 SHOW OBJECT Object Number
    DB_Basic3D\ShowLimb= AIsFunction( 1 , "?ShowLimb@@YAXHH@Z" ) ; 149 SHOW LIMB Object Number, Limb Number
    DB_Basic3D\Stop= AIsFunction( 1 , "?Stop@@YAXH@Z" ) ; 150 STOP OBJECT Object Number
    DB_Basic3D\TextureLimb= AIsFunction( 1 , "?TextureLimb@@YAXHHH@Z" ) ; 151 TEXTURE LIMB Object Number, Limb Number, Image Number
    DB_Basic3D\TurnLeft= AIsFunction( 1 , "?TurnLeft@@YAXHM@Z" ) ; 152 TURN OBJECT LEFT Object Number, Value
    DB_Basic3D\TurnRight= AIsFunction( 1 , "?TurnRight@@YAXHM@Z" ) ; 153 TURN OBJECT RIGHT Object Number, Value
    DB_Basic3D\UnGlue= AIsFunction( 1 , "?UnGlue@@YAXH@Z" ) ; 154 UNGLUE OBJECT Object Number
    DB_Basic3D\XRotate= AIsFunction( 1 , "?XRotate@@YAXHM@Z" ) ; 155 XROTATE OBJECT Object Number, XAngle
    DB_Basic3D\YRotate= AIsFunction( 1 , "?YRotate@@YAXHM@Z" ) ; 156 YROTATE OBJECT Object Number, YAngle
    DB_Basic3D\ZRotate= AIsFunction( 1 , "?ZRotate@@YAXHM@Z" ) ; 157 ZROTATE OBJECT Object Number, ZAngle
    DB_Basic3D\MakeObject= AIsFunction( 1 , "?MakeObject@@YAXHHH@Z" ) ; 158 MAKE OBJECT Object Number, Mesh Index, Image Number
    DB_Basic3D\SetBumpMap= AIsFunction( 1 , "?SetBumpMap@@YAXHH@Z" ) ; 166 SET BUMP MAPPING ON Object Number, Image Number
    DB_Basic3D\SetCartoonShadingOn= AIsFunction( 1 , "?SetCartoonShadingOn@@YAXHHH@Z" ) ; 167 SET CARTOON SHADING ON Object Number, Shade Image, Edge Image
    DB_Basic3D\SetSphereMap= AIsFunction( 1 , "?SetSphereMap@@YAXHH@Z" ) ; 168 SET SPHERE MAPPING ON Object Number, Image Number
    DB_Basic3D\GetSizeEx= AIsFunction( 1 , "?GetSizeEx@@YAKHH@Z" ) ; 171 OBJECT SIZE Object Number, Actual Size
    DB_Basic3D\GetLimbLink= AIsFunction( 1 , "?GetLimbLink@@YAHHH@Z" ) ; 172 CHECK LIMB LINK Object Number, Limb Number
    DB_Basic3D\GetObjectCollisionRadius= AIsFunction( 1 , "?GetObjectCollisionRadius@@YAKH@Z" ) ; 173 OBJECT COLLISION RADIUS Object Number
    DB_Basic3D\GetObjectCollisionCenterX= AIsFunction( 1 , "?GetObjectCollisionCenterX@@YAKH@Z" ) ; 174 OBJECT COLLISION CENTER X Object Number
    DB_Basic3D\GetObjectCollisionCenterY= AIsFunction( 1 , "?GetObjectCollisionCenterY@@YAKH@Z" ) ; 175 OBJECT COLLISION CENTER Y Object Number
    DB_Basic3D\GetObjectCollisionCenterZ= AIsFunction( 1 , "?GetObjectCollisionCenterZ@@YAKH@Z" ) ; 176 OBJECT COLLISION CENTER Z Object Number
    DB_Basic3D\Convert3DStoX= AIsFunction( 1 , "?Convert3DStoX@@YAXKK@Z" ) ; 177 3DS2X 3DS Filename, X Filename
    DB_Basic3D\FlushVideoMemory= AIsFunction( 1 , "?FlushVideoMemory@@YAXXZ" ) ; 178 FLUSH VIDEO MEMORY 
    DB_Basic3D\DisableTNL= AIsFunction( 1 , "?DisableTNL@@YAXXZ" ) ; 179 DISABLE TNL 
    DB_Basic3D\EnableTNL= AIsFunction( 1 , "?EnableTNL@@YAXXZ" ) ; 180 ENABLE TNL 
    DB_Basic3D\GetStatistic= AIsFunction( 1 , "?GetStatistic@@YAHH@Z" ) ; 181 STATISTIC Statistic Code
    DB_Basic3D\GetDrawPrimTLVertex= AIsFunction( 1 , "?GetDrawPrimTLVertex@@YAHXZ" ) ; 182 TNL AVAILABLE 
    DB_Basic3D\Clone= AIsFunction( 1 , "?Clone@@YAXHH@Z" ) ; 183 CLONE OBJECT Object Number, Source Object
    DB_Basic3D\CreateVertexShaderFromFile= AIsFunction( 1 , "?CreateVertexShaderFromFile@@YAXHK@Z" ) ; 184 CREATE VERTEX SHADER FROM FILE VertexShader Number, Shader Filename
    DB_Basic3D\MakeSphere1= AIsFunction( 1 , "?MakeSphere@@YAXHMHH@Z" ) ; 185 MAKE OBJECT SPHERE Object Number, Size, Rows, Columns
    DB_Basic3D\MoveDown= AIsFunction( 1 , "?MoveDown@@YAXHM@Z" ) ; 186 MOVE OBJECT DOWN Object Number, Value
    DB_Basic3D\MoveLeft= AIsFunction( 1 , "?MoveLeft@@YAXHM@Z" ) ; 187 MOVE OBJECT LEFT Object Number, Value
    DB_Basic3D\MoveRight= AIsFunction( 1 , "?MoveRight@@YAXHM@Z" ) ; 188 MOVE OBJECT RIGHT Object Number, Value
    DB_Basic3D\MoveUp= AIsFunction( 1 , "?MoveUp@@YAXHM@Z" ) ; 189 MOVE OBJECT UP Object Number, Value
    DB_Basic3D\SetAmbient= AIsFunction( 1 , "?SetAmbient@@YAXHH@Z" ) ; 190 SET OBJECT AMBIENT Object Number, Flag
    DB_Basic3D\SetCull= AIsFunction( 1 , "?SetCull@@YAXHH@Z" ) ; 192 SET OBJECT CULL Object Number, Flag
    DB_Basic3D\SetDetailMap= AIsFunction( 1 , "?SetDetailMap@@YAXHH@Z" ) ; 193 SET DETAIL MAPPING ON Object Number, Image Number
    DB_Basic3D\SetFilter= AIsFunction( 1 , "?SetFilter@@YAXHH@Z" ) ; 194 SET OBJECT FILTER Object Number, Flag
    DB_Basic3D\SetFog= AIsFunction( 1 , "?SetFog@@YAXHH@Z" ) ; 195 SET OBJECT FOG Object Number, Flag
    DB_Basic3D\SetLight= AIsFunction( 1 , "?SetLight@@YAXHH@Z" ) ; 196 SET OBJECT LIGHT Object Number, Flag
    DB_Basic3D\SetLightMap= AIsFunction( 1 , "?SetLightMap@@YAXHH@Z" ) ; 197 SET LIGHT MAPPING ON Object Number, Image Number
    DB_Basic3D\SetSphereRadius= AIsFunction( 1 , "?SetSphereRadius@@YAXHM@Z" ) ; 198 SET OBJECT RADIUS Object Number, Radius
    DB_Basic3D\SetTransparency= AIsFunction( 1 , "?SetTransparency@@YAXHH@Z" ) ; 199 SET OBJECT TRANSPARENCY Object Number, Flag
    DB_Basic3D\SetVertexShaderMatrix= AIsFunction( 1 , "?SetVertexShaderMatrix@@YAXHKHK@Z" ) ; 200 SET VERTEX SHADER MATRIX VertexShader Number, Constant, Matrix4, ConstantCount
    DB_Basic3D\SetVertexShaderOff= AIsFunction( 1 , "?SetVertexShaderOff@@YAXH@Z" ) ; 201 SET VERTEX SHADER OFF Object Number
    DB_Basic3D\SetVertexShaderOn= AIsFunction( 1 , "?SetVertexShaderOn@@YAXHH@Z" ) ; 202 SET VERTEX SHADER ON Object Number, VertexShader Number
    DB_Basic3D\SetVertexShaderStream= AIsFunction( 1 , "?SetVertexShaderStream@@YAXHHHH@Z" ) ; 203 SET VERTEX SHADER STREAM VertexShader Number, Position, Data, Datatype
    DB_Basic3D\SetVertexShaderStreamCount= AIsFunction( 1 , "?SetVertexShaderStreamCount@@YAXHH@Z" ) ; 204 SET VERTEX SHADER STREAMCOUNT VertexShader Number, Count
    DB_Basic3D\SetVertexShaderVector= AIsFunction( 1 , "?SetVertexShaderVector@@YAXHKHK@Z" ) ; 205 SET VERTEX SHADER VECTOR VertexShader Number, Constant, Vector3, ConstantCount
    DB_Basic3D\SetWireframe= AIsFunction( 1 , "?SetWireframe@@YAXHH@Z" ) ; 206 SET OBJECT WIREFRAME Object Number, Flag
    DB_Basic3D\GetAlpha= AIsFunction( 1 , "?GetAlpha@@YAHXZ" ) ; 207 ALPHA AVAILABLE 
    DB_Basic3D\GetAlphaComparision= AIsFunction( 1 , "?GetAlphaComparision@@YAHXZ" ) ; 208 ALPHACOMPARISON AVAILABLE 
    DB_Basic3D\GetAnisotropicFiltering= AIsFunction( 1 , "?GetAnisotropicFiltering@@YAHXZ" ) ; 209 ANISTROPICFILTERING AVAILABLE 
    DB_Basic3D\GetAntiAliasEdges= AIsFunction( 1 , "?GetAntiAliasEdges@@YAHXZ" ) ; 210 ANTIALIAS AVAILABLE 
    DB_Basic3D\GetBlitSysOntoLocal= AIsFunction( 1 , "?GetBlitSysOntoLocal@@YAHXZ" ) ; 211 BLITSYSTOLOCAL AVAILABLE 
    DB_Basic3D\GetCalibrateGamma= AIsFunction( 1 , "?GetCalibrateGamma@@YAHXZ" ) ; 212 CALIBRATEGAMMA AVAILABLE 
    DB_Basic3D\GetClipAndScalePoints= AIsFunction( 1 , "?GetClipAndScalePoints@@YAHXZ" ) ; 213 CLIPANDSCALEPOINTS AVAILABLE 
    DB_Basic3D\GetClipTLVerts= AIsFunction( 1 , "?GetClipTLVerts@@YAHXZ" ) ; 214 CLIPTLVERTS AVAILABLE 
    DB_Basic3D\GetColorPerspective= AIsFunction( 1 , "?GetColorPerspective@@YAHXZ" ) ; 215 COLORPERSPECTIVE AVAILABLE 
    DB_Basic3D\GetColorWriteEnable= AIsFunction( 1 , "?GetColorWriteEnable@@YAHXZ" ) ; 216 COLORWRITEENABLE AVAILABLE 
    DB_Basic3D\GetCubeMap= AIsFunction( 1 , "?GetCubeMap@@YAHXZ" ) ; 217 CUBEMAP AVAILABLE 
    DB_Basic3D\GetCullCCW= AIsFunction( 1 , "?GetCullCCW@@YAHXZ" ) ; 218 CULLCCW AVAILABLE 
    DB_Basic3D\GetCullCW= AIsFunction( 1 , "?GetCullCW@@YAHXZ" ) ; 219 CULLCW AVAILABLE 
    DB_Basic3D\GetDeviceType= AIsFunction( 1 , "?GetDeviceType@@YAHXZ" ) ; 220 GET DEVICE TYPE 
    DB_Basic3D\GetDither= AIsFunction( 1 , "?GetDither@@YAHXZ" ) ; 221 DITHER AVAILABLE 
    DB_Basic3D\GetFogRange= AIsFunction( 1 , "?GetFogRange@@YAHXZ" ) ; 222 FOGRANGE AVAILABLE 
    DB_Basic3D\GetFogTable= AIsFunction( 1 , "?GetFogTable@@YAHXZ" ) ; 223 FOGTABLE AVAILABLE 
    DB_Basic3D\GetFogVertex= AIsFunction( 1 , "?GetFogVertex@@YAHXZ" ) ; 224 FOGVERTEX AVAILABLE 
    DB_Basic3D\GetFullScreenGamma= AIsFunction( 1 , "?GetFullScreenGamma@@YAHXZ" ) ; 225 FULLSCREENGAMMA AVAILABLE 
    DB_Basic3D\GetMaxLights= AIsFunction( 1 , "?GetMaxLights@@YAHXZ" ) ; 226 GET MAXIMUM LIGHTS 
    DB_Basic3D\GetMaxPixelShaderValue= AIsFunction( 1 , "?GetMaxPixelShaderValue@@YAKXZ" ) ; 227 GET MAXIMUM PIXEL SHADER VALUE 
    DB_Basic3D\ScaleTexture1= AIsFunction( 1 , "?ScaleTexture@@YAXHHMM@Z" ) ; 228 SCALE OBJECT TEXTURE Object Number, Stage, UScale, VScale
    DB_Basic3D\GetMaxTextureHeight= AIsFunction( 1 , "?GetMaxTextureHeight@@YAHXZ" ) ; 229 GET MAXIMUM TEXTURE HEIGHT 
    DB_Basic3D\GetMaxTextureWidth= AIsFunction( 1 , "?GetMaxTextureWidth@@YAHXZ" ) ; 230 GET MAXIMUM TEXTURE WIDTH 
    DB_Basic3D\GetMaxVertexShaderConstants= AIsFunction( 1 , "?GetMaxVertexShaderConstants@@YAHXZ" ) ; 231 GET MAXIMUM VERTEX SHADER CONSTANTS 
    DB_Basic3D\GetMaxVolumeExtent= AIsFunction( 1 , "?GetMaxVolumeExtent@@YAHXZ" ) ; 232 GET MAXIMUM VOLUME EXTENT 
    DB_Basic3D\GetMipCubeMap= AIsFunction( 1 , "?GetMipCubeMap@@YAHXZ" ) ; 233 MIPCUBEMAP AVAILABLE 
    DB_Basic3D\GetMipMap= AIsFunction( 1 , "?GetMipMap@@YAHXZ" ) ; 234 MIPMAP AVAILABLE 
    DB_Basic3D\GetMipMapLODBias= AIsFunction( 1 , "?GetMipMapLODBias@@YAHXZ" ) ; 235 MIPMAPLODBIAS AVAILABLE 
    DB_Basic3D\GetMipMapVolume= AIsFunction( 1 , "?GetMipMapVolume@@YAHXZ" ) ; 236 MIPMAPVOLUME AVAILABLE 
    DB_Basic3D\GetNonPowerOf2Textures= AIsFunction( 1 , "?GetNonPowerOf2Textures@@YAHXZ" ) ; 237 NONPOWTEXTURES AVAILABLE 
    DB_Basic3D\GetPerspective= AIsFunction( 1 , "?GetPerspective@@YAHXZ" ) ; 238 PERSPECTIVETEXTURES AVAILABLE 
    DB_Basic3D\GetPixelShaderVersion= AIsFunction( 1 , "?GetPixelShaderVersion@@YAKXZ" ) ; 239 GET MAXIMUM PIXEL SHADER VERSION 
    DB_Basic3D\GetProjected= AIsFunction( 1 , "?GetProjected@@YAHXZ" ) ; 240 PROJECTEDTEXTURES AVAILABLE 
    DB_Basic3D\GetRenderAfterFlip= AIsFunction( 1 , "?GetRenderAfterFlip@@YAHXZ" ) ; 241 RENDERAFTERFLIP AVAILABLE 
    DB_Basic3D\GetRenderWindowed= AIsFunction( 1 , "?GetRenderWindowed@@YAHXZ" ) ; 242 RENDERWINDOWED AVAILABLE 
    DB_Basic3D\GetSeparateTextureMemories= AIsFunction( 1 , "?GetSeparateTextureMemories@@YAHXZ" ) ; 243 SEPERATETEXTUREMEMORIES AVAILABLE 
    DB_Basic3D\GetSquareOnly= AIsFunction( 1 , "?GetSquareOnly@@YAHXZ" ) ; 244 ONLYSQUARETEXTURES AVAILABLE 
    DB_Basic3D\GetTLVertexSystemMemory= AIsFunction( 1 , "?GetTLVertexSystemMemory@@YAHXZ" ) ; 245 TLVERTEXSYSTEMMEMORY AVAILABLE 
    DB_Basic3D\GetTLVertexVideoMemory= AIsFunction( 1 , "?GetTLVertexVideoMemory@@YAHXZ" ) ; 246 TLVERTEXVIDEOMEMORY AVAILABLE 
    DB_Basic3D\GetTextureNonLocalVideoMemory= AIsFunction( 1 , "?GetTextureNonLocalVideoMemory@@YAHXZ" ) ; 247 NONLOCALVIDEOMEMORY AVAILABLE 
    DB_Basic3D\GetTextureSystemMemory= AIsFunction( 1 , "?GetTextureSystemMemory@@YAHXZ" ) ; 248 TEXTURESYSTEMMEMORY AVAILABLE 
    DB_Basic3D\GetTextureVideoMemory= AIsFunction( 1 , "?GetTextureVideoMemory@@YAHXZ" ) ; 249 TEXTUREVIDEOMEMORY AVAILABLE 
    DB_Basic3D\GetVertexShaderVersion= AIsFunction( 1 , "?GetVertexShaderVersion@@YAKXZ" ) ; 250 GET MAXIMUM VERTEX SHADER VERSION 
    DB_Basic3D\GetVolumeMap= AIsFunction( 1 , "?GetVolumeMap@@YAHXZ" ) ; 251 VOLUMEMAP AVAILABLE 
    DB_Basic3D\GetWBuffer= AIsFunction( 1 , "?GetWBuffer@@YAHXZ" ) ; 252 WBUFFER AVAILABLE 
    DB_Basic3D\GetWFog= AIsFunction( 1 , "?GetWFog@@YAHXZ" ) ; 253 WFOG AVAILABLE 
    DB_Basic3D\GetZBuffer= AIsFunction( 1 , "?GetZBuffer@@YAHXZ" ) ; 254 ZBUFFER AVAILABLE 
    DB_Basic3D\GetZFog= AIsFunction( 1 , "?GetZFog@@YAHXZ" ) ; 255 ZFOG AVAILABLE 
    DB_Basic3D\DeleteVertexShader= AIsFunction( 1 , "?DeleteVertexShader@@YAXH@Z" ) ; 256 DELETE VERTEX SHADER VertexShader Number
    DB_Basic3D\VertexShaderExist= AIsFunction( 1 , "?VertexShaderExist@@YAHH@Z" ) ; 257 VERTEX SHADER EXIST VertexShader Number
    DB_Basic3D\SetCubeMap= AIsFunction( 1 , "?SetCubeMap@@YAXHHHHHHH@Z" ) ; 258 SET CUBE MAPPING ON Object Number, Face1, Face2, Face3, Face4, Face5, Face6
    DB_Basic3D\SetBlendMap= AIsFunction( 1 , "?SetBlendMap@@YAXHHH@Z" ) ; 259 SET BLEND MAPPING ON Object Number, Image Number, Blend Mode
    DB_Basic3D\SaveMesh= AIsFunction( 1 , "?SaveMesh@@YAXKH@Z" ) ; 260 SAVE MESH Filename, Mesh Number
    DB_Basic3D\RemoveLimb= AIsFunction( 1 , "?RemoveLimb@@YAXHH@Z" ) ; 261 REMOVE LIMB Object Number, Limb Number
    DB_Basic3D\IntersectObject= AIsFunction( 1 , "?IntersectObject@@YAKHMMMMMM@Z" ) ; 262 INTERSECT OBJECT Object Number, X, Y, Z, ToX, ToY, ToZ
    DB_Basic3D\AutomaticObjectCollision= AIsFunction( 1 , "?AutomaticObjectCollision@@YAXHMH@Z" ) ; 263 AUTOMATIC OBJECT COLLISION Object Number, Radius, Response
    DB_Basic3D\AutomaticCameraCollision= AIsFunction( 1 , "?AutomaticCameraCollision@@YAXHMH@Z" ) ; 264 AUTOMATIC CAMERA COLLISION Camera Number, Radius, Response
    DB_Basic3D\SetRainbowRenderingOn= AIsFunction( 1 , "?SetRainbowRenderingOn@@YAXHH@Z" ) ; 265 SET RAINBOW SHADING ON Object Number, Rainbow Image
    DB_Basic3D\SetShadowOn= AIsFunction( 1 , "?SetShadowOn@@YAXH@Z" ) ; 266 SET SHADOW SHADING ON Object Number
    DB_Basic3D\SetReflectionOn= AIsFunction( 1 , "?SetReflectionOn@@YAXH@Z" ) ; 267 SET REFLECTION SHADING ON Object Number
    DB_Basic3D\CreatePixelShaderFromFile= AIsFunction( 1 , "?CreatePixelShaderFromFile@@YAXHK@Z" ) ; 268 CREATE PIXEL SHADER FROM FILE PixelShader Number, Shader Filename
    DB_Basic3D\SetPixelShaderOn= AIsFunction( 1 , "?SetPixelShaderOn@@YAXHH@Z" ) ; 269 SET PIXEL SHADER ON Object Number, PixelShader Number
    DB_Basic3D\SetPixelShaderOff= AIsFunction( 1 , "?SetPixelShaderOff@@YAXH@Z" ) ; 270 SET PIXEL SHADER OFF Object Number
    DB_Basic3D\DeletePixelShader= AIsFunction( 1 , "?DeletePixelShader@@YAXH@Z" ) ; 271 DELETE PIXEL SHADER PixelShader Number
    DB_Basic3D\SetPixelShaderTexture= AIsFunction( 1 , "?SetPixelShaderTexture@@YAXHHH@Z" ) ; 272 SET PIXEL SHADER TEXTURE PixelShader Number, Slot Number, Image Number
    DB_Basic3D\PixelShaderExist= AIsFunction( 1 , "?PixelShaderExist@@YAHH@Z" ) ; 273 PIXEL SHADER EXIST PixelShader Number
    DB_Basic3D\SetTextureMD3= AIsFunction( 1 , "?SetTextureMD3@@YAXHHHHHHH@Z" ) ; 274 SET TEXTURE MD3 Object Number, H0, H1, L0, L1, L2, U0
    DB_Basic3D\CloneMeshToNewFormat= AIsFunction( 1 , "?CloneMeshToNewFormat@@YAXHK@Z" ) ; 275 CONVERT OBJECT FVF Object Number, FVF Format
    DB_Basic3D\Save= AIsFunction( 1 , "?Save@@YAXKH@Z" ) ; 276 SAVE OBJECT Filename, Object Number
    DB_Basic3D\HideBounds= AIsFunction( 1 , "?HideBounds@@YAXH@Z" ) ; 277 HIDE OBJECT BOUNDS Object Number
    DB_Basic3D\ShowBounds= AIsFunction( 1 , "?ShowBounds@@YAXH@Z" ) ; 278 SHOW OBJECT BOUNDS Object Number
    DB_Basic3D\SetSmoothing= AIsFunction( 1 , "?SetSmoothing@@YAXHM@Z" ) ; 279 SET OBJECT SMOOTHING Object Number, Percentage
    DB_Basic3D\SetLimbSmoothing= AIsFunction( 1 , "?SetLimbSmoothing@@YAXHHM@Z" ) ; 280 SET LIMB SMOOTHING Object Number, Limb Number, Percentage
    DB_Basic3D\GetXSizeEx= AIsFunction( 1 , "?GetXSizeEx@@YAKHH@Z" ) ; 281 OBJECT SIZE X Object Number, Actual Size
    DB_Basic3D\LockVertexDataForLimb= AIsFunction( 1 , "?LockVertexDataForLimb@@YAXHH@Z" ) ; 282 LOCK VERTEXDATA FOR LIMB Object Number, Limb Number
    DB_Basic3D\LockVertexDataForMesh= AIsFunction( 1 , "?LockVertexDataForMesh@@YAXH@Z" ) ; 283 LOCK VERTEXDATA FOR MESH Mesh Number
    DB_Basic3D\UnlockVertexData= AIsFunction( 1 , "?UnlockVertexData@@YAXXZ" ) ; 284 UNLOCK VERTEXDATA 
    DB_Basic3D\SetVertexDataUV= AIsFunction( 1 , "?SetVertexDataUV@@YAXHMM@Z" ) ; 285 SET VERTEXDATA UV Vertex Index, U, V
    DB_Basic3D\SetVertexDataNormals= AIsFunction( 1 , "?SetVertexDataNormals@@YAXHMMM@Z" ) ; 286 SET VERTEXDATA NORMALS Vertex Index, NX, NY, NZ
    DB_Basic3D\SetVertexDataPosition= AIsFunction( 1 , "?SetVertexDataPosition@@YAXHMMM@Z" ) ; 287 SET VERTEXDATA POSITION Vertex Index, X, Y, Z
    DB_Basic3D\SetVertexDataDiffuse= AIsFunction( 1 , "?SetVertexDataDiffuse@@YAXHK@Z" ) ; 288 SET VERTEXDATA DIFFUSE Vertex Index, RGB Value
    DB_Basic3D\AddMeshToVertexData= AIsFunction( 1 , "?AddMeshToVertexData@@YAXH@Z" ) ; 289 ADD MESH TO VERTEXDATA Mesh Number
    DB_Basic3D\DeleteMeshFromVertexData= AIsFunction( 1 , "?DeleteMeshFromVertexData@@YAXHHHH@Z" ) ; 290 DELETE MESH FROM VERTEXDATA Vertex Start, Vertex End, Index Start, Index End
    DB_Basic3D\GetVertexDataVertexCount= AIsFunction( 1 , "?GetVertexDataVertexCount@@YAHXZ" ) ; 291 GET VERTEXDATA VERTEX COUNT 
    DB_Basic3D\GetVertexDataIndexCount= AIsFunction( 1 , "?GetVertexDataIndexCount@@YAHXZ" ) ; 292 GET VERTEXDATA INDEX COUNT 
    DB_Basic3D\GetVertexDataPositionX= AIsFunction( 1 , "?GetVertexDataPositionX@@YAKH@Z" ) ; 293 GET VERTEXDATA POSITION X Vertex Index
    DB_Basic3D\GetVertexDataPositionY= AIsFunction( 1 , "?GetVertexDataPositionY@@YAKH@Z" ) ; 294 GET VERTEXDATA POSITION Y Vertex Index
    DB_Basic3D\GetVertexDataPositionZ= AIsFunction( 1 , "?GetVertexDataPositionZ@@YAKH@Z" ) ; 295 GET VERTEXDATA POSITION Z Vertex Index
    DB_Basic3D\GetVertexDataNormalsX= AIsFunction( 1 , "?GetVertexDataNormalsX@@YAKH@Z" ) ; 296 GET VERTEXDATA NORMALS X Vertex Index
    DB_Basic3D\GetVertexDataNormalsY= AIsFunction( 1 , "?GetVertexDataNormalsY@@YAKH@Z" ) ; 297 GET VERTEXDATA NORMALS Y Vertex Index
    DB_Basic3D\GetVertexDataNormalsZ= AIsFunction( 1 , "?GetVertexDataNormalsZ@@YAKH@Z" ) ; 298 GET VERTEXDATA NORMALS Z Vertex Index
    DB_Basic3D\GetVertexDataU= AIsFunction( 1 , "?GetVertexDataU@@YAKH@Z" ) ; 299 GET VERTEXDATA U Vertex Index
    DB_Basic3D\GetVertexDataV= AIsFunction( 1 , "?GetVertexDataV@@YAKH@Z" ) ; 300 GET VERTEXDATA V Vertex Index
    DB_Basic3D\GetVertexDataDiffuse= AIsFunction( 1 , "?GetVertexDataDiffuse@@YAKH@Z" ) ; 301 GET VERTEXDATA DIFFUSE Vertex Index
    DB_Basic3D\SetAlphaFactor= AIsFunction( 1 , "?SetAlphaFactor@@YAXHM@Z" ) ; 302 SET ALPHA MAPPING ON Object Number, Alpha Percentage
    DB_Basic3D\Instance= AIsFunction( 1 , "?Instance@@YAXHH@Z" ) ; 303 INSTANCE OBJECT Object Number, Source Object
    DB_Basic3D\SetEffectOn= AIsFunction( 1 , "?SetEffectOn@@YAXHKH@Z" ) ; 316 SET EFFECT ON Object Number, Effect Filename, Texture Flag
    DB_Basic3D\SetTextureStage= AIsFunction( 1 , "?SetTextureStage@@YAXHHH@Z" ) ; 317 TEXTURE OBJECT Object Number, Stage Number, Image Number
    DB_Basic3D\EnableZRead= AIsFunction( 1 , "?EnableZRead@@YAXH@Z" ) ; 318 ENABLE OBJECT ZREAD Object Number
    DB_Basic3D\DisableZRead= AIsFunction( 1 , "?DisableZRead@@YAXH@Z" ) ; 319 DISABLE OBJECT ZREAD Object Number
    DB_Basic3D\EnableZWrite= AIsFunction( 1 , "?EnableZWrite@@YAXH@Z" ) ; 320 ENABLE OBJECT ZWRITE Object Number
    DB_Basic3D\DisableZWrite= AIsFunction( 1 , "?DisableZWrite@@YAXH@Z" ) ; 321 DISABLE OBJECT ZWRITE Object Number
    DB_Basic3D\LoadEffect= AIsFunction( 1 , "?LoadEffect@@YAXKHH@Z" ) ; 322 LOAD EFFECT Filename, Effect Number, Texture Flag
    DB_Basic3D\DeleteEffect= AIsFunction( 1 , "?DeleteEffect@@YAXH@Z" ) ; 323 DELETE EFFECT Effect Number
    DB_Basic3D\SetObjectEffect= AIsFunction( 1 , "?SetObjectEffect@@YAXHH@Z" ) ; 324 SET OBJECT EFFECT Object Number, Effect Number
    DB_Basic3D\SetLimbEffect= AIsFunction( 1 , "?SetLimbEffect@@YAXHHH@Z" ) ; 325 SET LIMB EFFECT Object Number, Limb Number, Effect Number
    DB_Basic3D\SetEffectConstantF= AIsFunction( 1 , "?SetEffectConstantF@@YAXHKM@Z" ) ; 326 SET EFFECT CONSTANT FLOAT Effect Number, Constant String, Constant Value
    DB_Basic3D\PerformChecklistForEffectValues= AIsFunction( 1 , "?PerformChecklistForEffectValues@@YAXH@Z" ) ; 327 PERFORM CHECKLIST FOR EFFECT VALUES Effect Number
    DB_Basic3D\SetDiffuseMaterial= AIsFunction( 1 , "?SetDiffuseMaterial@@YAXHK@Z" ) ; 328 SET OBJECT DIFFUSE Object Number, Color Value
    DB_Basic3D\SetAmbienceMaterial= AIsFunction( 1 , "?SetAmbienceMaterial@@YAXHK@Z" ) ; 329 SET OBJECT AMBIENCE Object Number, Color Value
    DB_Basic3D\SetSpecularMaterial= AIsFunction( 1 , "?SetSpecularMaterial@@YAXHK@Z" ) ; 330 SET OBJECT SPECULAR Object Number, Color Value
    DB_Basic3D\SetEmissiveMaterial= AIsFunction( 1 , "?SetEmissiveMaterial@@YAXHK@Z" ) ; 331 SET OBJECT EMISSIVE Object Number, Color Value
    DB_Basic3D\SetSpecularPower= AIsFunction( 1 , "?SetSpecularPower@@YAXHM@Z" ) ; 332 SET OBJECT SPECULAR POWER Object Number, Power
    DB_Basic3D\TextureLimbStage= AIsFunction( 1 , "?TextureLimbStage@@YAXHHHH@Z" ) ; 333 TEXTURE LIMB Object Number, Limb Number, Stage Number, Image Number
    DB_Basic3D\MakeEmitter= AIsFunction( 1 , "?MakeEmitter@@YAXHH@Z" ) ; 335 MAKE EMITTER Object Number, Size
    DB_Basic3D\GetEffectExist= AIsFunction( 1 , "?GetEffectExist@@YAHH@Z" ) ; 336 EFFECT EXIST Effect Number
    DB_Basic3D\PerformChecklistForEffectErrors= AIsFunction( 1 , "?PerformChecklistForEffectErrors@@YAXXZ" ) ; 341 PERFORM CHECKLIST FOR EFFECT ERRORS 
    DB_Basic3D\SetEffectTranspose= AIsFunction( 1 , "?SetEffectTranspose@@YAXHH@Z" ) ; 342 SET EFFECT TRANSPOSE Effect Number, Transpose Flag
    DB_Basic3D\SetEffectConstantB= AIsFunction( 1 , "?SetEffectConstantB@@YAXHKH@Z" ) ; 343 SET EFFECT CONSTANT BOOLEAN Effect Number, Constant String, Constant Value
    DB_Basic3D\SetEffectConstantI= AIsFunction( 1 , "?SetEffectConstantI@@YAXHKH@Z" ) ; 344 SET EFFECT CONSTANT INTEGER Effect Number, Constant String, Constant Value
    DB_Basic3D\SetEffectConstantV= AIsFunction( 1 , "?SetEffectConstantV@@YAXHKH@Z" ) ; 345 SET EFFECT CONSTANT VECTOR Effect Number, Constant String, Vector Number
    DB_Basic3D\SetEffectConstantM= AIsFunction( 1 , "?SetEffectConstantM@@YAXHKH@Z" ) ; 346 SET EFFECT CONSTANT MATRIX Effect Number, Constant String, Matrix Number
    DB_Basic3D\PickScreenObject= AIsFunction( 1 , "?PickScreenObject@@YAHHHHH@Z" ) ; 347 PICK OBJECT Screen X, Screen Y, Object Start, Object End
    DB_Basic3D\GetPickVectorX= AIsFunction( 1 , "?GetPickVectorX@@YAKXZ" ) ; 348 GET PICK VECTOR X 
    DB_Basic3D\GetPickVectorY= AIsFunction( 1 , "?GetPickVectorY@@YAKXZ" ) ; 349 GET PICK VECTOR Y 
    DB_Basic3D\GetPickVectorZ= AIsFunction( 1 , "?GetPickVectorZ@@YAKXZ" ) ; 350 GET PICK VECTOR Z 
    DB_Basic3D\PickScreen2D23D= AIsFunction( 1 , "?PickScreen2D23D@@YAXHHM@Z" ) ; 351 PICK SCREEN Screen X, Screen Y, Distance
    DB_Basic3D\GetPickDistance= AIsFunction( 1 , "?GetPickDistance@@YAKXZ" ) ; 352 GET PICK DISTANCE 
    DB_Basic3D\SetShadingOff= AIsFunction( 1 , "?SetShadingOff@@YAXH@Z" ) ; 353 SET SHADING OFF Object Number
    DB_Basic3D\ShowBoundsEx= AIsFunction( 1 , "?ShowBoundsEx@@YAXHH@Z" ) ; 354 SHOW OBJECT BOUNDS Object Number, Box Only Flag
    DB_Basic3D\SetEffectTechnique= AIsFunction( 1 , "?SetEffectTechnique@@YAXHK@Z" ) ; 355 SET EFFECT TECHNIQUE Effect Number, Technique Name
    DB_Basic3D\SetVertexDataUV1= AIsFunction( 1 , "?SetVertexDataUV@@YAXHHMM@Z" ) ; 357 SET VERTEXDATA UV Vertex Index, Index,U, V
    DB_Basic3D\PerformChecklistForEffectErrors1= AIsFunction( 1 , "?PerformChecklistForEffectErrors@@YAXH@Z" ) ; 358 PERFORM CHECKLIST FOR EFFECT ERRORS Effect Number
    DB_Basic3D\GetLimbCollision= AIsFunction( 1 , "?GetLimbCollision@@YAHHHHH@Z" ) ; 361 LIMB COLLISION ObjectA Number, LimbA Number, ObjectB Number, LimbB Number
    DB_Basic3D\GetLimbHit= AIsFunction( 1 , "?GetLimbHit@@YAHHHHH@Z" ) ; 362 LIMB HIT ObjectA Number, LimbA Number, ObjectB Number, LimbB Number
    DB_Basic3D\Load1= AIsFunction( 1 , "?Load@@YAXKHH@Z" ) ; 366 LOAD OBJECT Filename, Object Number, DBPro Mode
    DB_Basic3D\ExcludeOn= AIsFunction( 1 , "?ExcludeOn@@YAXH@Z" ) ; 367 EXCLUDE OBJECT ON Object ID
    DB_Basic3D\ExcludeOff= AIsFunction( 1 , "?ExcludeOff@@YAXH@Z" ) ; 368 EXCLUDE OBJECT OFF Object ID
    DB_Basic3D\SetNormals= AIsFunction( 1 , "?SetNormals@@YAXH@Z" ) ; 369 SET OBJECT NORMALS Object Number
    DB_Basic3D\SetLimbNormals= AIsFunction( 1 , "?SetLimbNormals@@YAXHH@Z" ) ; 370 SET LIMB NORMALS Object Number, Limb Number
    DB_Basic3D\SetTextureModeStage= AIsFunction( 1 , "?SetTextureModeStage@@YAXHHHH@Z" ) ; 371 SET OBJECT TEXTURE Object Number, Stage Number, Texturing Mode, Mipmap Flag
    DB_Basic3D\SetFilterStage= AIsFunction( 1 , "?SetFilterStage@@YAXHHH@Z" ) ; 372 SET OBJECT FILTER Object Number, Stage Number, Flag
    DB_Basic3D\LockVertexDataForLimbCore= AIsFunction( 1 , "?LockVertexDataForLimbCore@@YAXHHH@Z" ) ; 373 LOCK VERTEXDATA FOR LIMB Object Number, Limb Number, Lock Mode
    DB_Basic3D\SetObjectFOV= AIsFunction( 1 , "?SetObjectFOV@@YAXHM@Z" ) ; 375 SET OBJECT FOV Object Number, FOV Angle
    DB_Basic3D\Deletes= AIsFunction( 1 , "?Deletes@@YAXHH@Z" ) ; 383 DELETE OBJECTS From, To
    DB_Basic3D\ForceAutomaticEnd= AIsFunction( 1 , "?ForceAutomaticEnd@@YAXXZ" ) ; 384 CALCULATE AUTOMATIC COLLISION 
    DB_Basic3D\EnableZBias= AIsFunction( 1 , "?EnableZBias@@YAXHMM@Z" ) ; 385 ENABLE OBJECT ZBIAS Object Number, Slope Scale, Depth
    DB_Basic3D\DisableZBias= AIsFunction( 1 , "?DisableZBias@@YAXH@Z" ) ; 386 DISABLE OBJECT ZBIAS Object Number
    DB_Basic3D\OffsetLimb1= AIsFunction( 1 , "?OffsetLimb@@YAXHHMMMH@Z" ) ; 387 OFFSET LIMB Object Number, Limb Number, X, Y, Z, Bounds Flag
    DB_Basic3D\ScaleLimb1= AIsFunction( 1 , "?ScaleLimb@@YAXHHMMMH@Z" ) ; 388 SCALE LIMB Object Number, Limb Number, XSize, YSize, ZSize, Bounds Flag
    DB_Basic3D\RotateLimb1= AIsFunction( 1 , "?RotateLimb@@YAXHHMMMH@Z" ) ; 389 ROTATE LIMB Object Number, Limb Number, XAngle, YAngle, ZAngle, Bounds Flag
    DB_Basic3D\CloneShared= AIsFunction( 1 , "?CloneShared@@YAXHHH@Z" ) ; 392 CLONE OBJECT Object Number, Source Object, Share Original Data
    DB_Basic3D\SetFrameEx1= AIsFunction( 1 , "?SetFrameEx@@YAXHMH@Z" ) ; 393 SET OBJECT FRAME Object Number, Frame, Recalculate Bounds
    DB_Basic3D\SetShadowOnEx= AIsFunction( 1 , "?SetShadowOnEx@@YAXHHHH@Z" ) ; 394 SET SHADOW SHADING ON Object Number, Mesh Number, Shadow Range, Use Shader
    DB_Basic3D\SetShadowOff= AIsFunction( 1 , "?SetShadowOff@@YAXH@Z" ) ; 395 SET SHADOW SHADING OFF Object Number
    DB_Basic3D\SetBlendMap1= AIsFunction( 1 , "?SetBlendMap@@YAXHHHHH@Z" ) ; 397 SET BLEND MAPPING ON Object Number, Stage Index, Image Number, TexCoordMode, Blend Mode
    DB_Basic3D\SetIndexData= AIsFunction( 1 , "?SetIndexData@@YAXHH@Z" ) ; 398 SET INDEXDATA Indice Index, Vertex Index
    DB_Basic3D\GetIndexData= AIsFunction( 1 , "?GetIndexData@@YAHH@Z" ) ; 399 GET INDEXDATA Index Number
    DB_Basic3D\GetVertexDataU1= AIsFunction( 1 , "?GetVertexDataU@@YAKHH@Z" ) ; 400 GET VERTEXDATA U Vertex Index, Stage Number
    DB_Basic3D\GetVertexDataV1= AIsFunction( 1 , "?GetVertexDataV@@YAKHH@Z" ) ; 401 GET VERTEXDATA V Vertex Index, Stage Number
    DB_Basic3D\GetYSizeEx= AIsFunction( 1 , "?GetYSizeEx@@YAKHH@Z" ) ; 403 OBJECT SIZE Y Object Number, Actual Size
    DB_Basic3D\SetGlobalObjectCreationMode= AIsFunction( 1 , "?SetGlobalObjectCreationMode@@YAXH@Z" ) ; 404 SET GLOBAL OBJECT CREATION Creation Mode
    DB_Basic3D\GetZSizeEx= AIsFunction( 1 , "?GetZSizeEx@@YAKHH@Z" ) ; 405 OBJECT SIZE Z Object Number, Actual Size
    DB_Basic3D\ScrollTexture1= AIsFunction( 1 , "?ScrollTexture@@YAXHHMM@Z" ) ; 406 SCROLL OBJECT TEXTURE Object Number, Stage, X, Y
    DB_Basic3D\ScaleLimbTexture1= AIsFunction( 1 , "?ScaleLimbTexture@@YAXHHHMM@Z" ) ; 407 SCALE LIMB TEXTURE Object Number, Limb Number, Stage, UScale, VScale
    DB_Basic3D\ScrollLimbTexture1= AIsFunction( 1 , "?ScrollLimbTexture@@YAXHHHMM@Z" ) ; 408 SCROLL LIMB TEXTURE Object Number, Limb Number, Stage, X, Y
    DB_Basic3D\SetTextureStageEx= AIsFunction( 1 , "?SetTextureStageEx@@YAXHHHH@Z" ) ; 409 TEXTURE OBJECT Object Number, Stage Number, Image Number, Ignore Sorting
    DB_Basic3D\SetDiffuseMaterialEx= AIsFunction( 1 , "?SetDiffuseMaterialEx@@YAXHKH@Z" ) ; 410 SET OBJECT DIFFUSE Object Number, Color Value, VertexDiffuseMode
    DB_Basic3D\Load2= AIsFunction( 1 , "?Load@@YAXKHHH@Z" ) ; 411 LOAD OBJECT Filename, Object Number, DBPro Mode, Divide Texture
    DB_Basic3D\GetLimbTextureNameEx= AIsFunction( 1 , "?GetLimbTextureNameEx@@YAKKHHH@Z" ) ; 412 LIMB TEXTURE NAME Object Number, Limb Number, Texture Stage
    DB_Basic3D\GetLimbTextureEx= AIsFunction( 1 , "?GetLimbTextureEx@@YAHHHH@Z" ) ; 413 LIMB TEXTURE Object Number, Limb Number, Texture Stage
    DB_Basic3D\PickScreenObjectEx= AIsFunction( 1 , "?PickScreenObjectEx@@YAHHHHHH@Z" ) ; 414 PICK OBJECT Screen X, Screen Y, Object Start, Object End, Ignore Camera Flag
    DB_Basic3D\GlueToLimbEx= AIsFunction( 1 , "?GlueToLimbEx@@YAXHHHH@Z" ) ; 415 GLUE OBJECT TO LIMB Object Number, Second Object, Limb Number, Glue Mode
    DB_Basic3D\ConvertMeshToVertexData= AIsFunction( 1 , "?ConvertMeshToVertexData@@YAXH@Z" ) ; 416 CONVERT MESH TO VERTEXDATA Mesh Number
    DB_Basic3D\MakeObjectFromLimbEx= AIsFunction( 1 , "?MakeObjectFromLimbEx@@YAXHHHH@Z" ) ; 417 MAKE OBJECT FROM LIMB Object Number, Second Object, Limb Number, All Limbs Flag
    DB_Basic3D\AutomaticCameraCollision1= AIsFunction( 1 , "?AutomaticCameraCollision@@YAXHMHH@Z" ) ; 418 AUTOMATIC CAMERA COLLISION Camera Number, Radius, Response, Stand Ground Mode
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBLoadObject( Filename.s, ObjectNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\Load, FilenamePTR, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateObject( ObjectNumber.l, XAngle.f, YAngle.f, ZAngle.f )
  CallCFunctionFast( *DB_Basic3D\Rotate, ObjectNumber, XAngle, YAngle, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopObject( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\Loop, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBAddLimb( ObjectNumber.l, LimbNumber.l, MeshNumber.l )
  CallCFunctionFast( *DB_Basic3D\AddLimb, ObjectNumber, LimbNumber, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBAppendObject( Filename.s, ObjectNumber.l, StartFrame.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\Append, FilenamePTR, ObjectNumber, StartFrame )
 EndProcedure
;
; *********************************************************************
Procedure DBAppendAnimation( ObjectNumber.l, Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\AppendAnimation, ObjectNumber, FilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadEffect( Filename.s, EffectNumber.l, TextureFlag.l, DoNotGenerateExtraData.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\LoadEffectEx, FilenamePTR, EffectNumber, TextureFlag, DoNotGenerateExtraData )
 EndProcedure
;
; *********************************************************************
Procedure DBChangeMesh( ObjectNumber.l, LimbNumber.l, MeshNumber.l )
  CallCFunctionFast( *DB_Basic3D\ChangeMesh, ObjectNumber, LimbNumber, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBClearAllKeyFrames( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\ClearAllKeyFrames, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBClearKeyFrame( ObjectNumber.l, Keyframe.l )
  CallCFunctionFast( *DB_Basic3D\ClearKeyFrame, ObjectNumber, Keyframe )
 EndProcedure
;
; *********************************************************************
Procedure DBCalculateObjectBounds( Param0.l )
  CallCFunctionFast( *DB_Basic3D\CalculateObjectBounds, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBColorObject( ObjectNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic3D\Color, ObjectNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBColorLimb( ObjectNumber.l, LimbNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic3D\ColorLimb, ObjectNumber, LimbNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteCollisionBox( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DeleteCollisionBox, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteObject( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DeleteEx, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteMesh( MeshNumber.l )
  CallCFunctionFast( *DB_Basic3D\DeleteMesh, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMask( ObjectNumber.l, CameraMaskBits.l )
  CallCFunctionFast( *DB_Basic3D\SetMask, ObjectNumber, CameraMaskBits )
 EndProcedure
;
; *********************************************************************
Procedure DBDisableObjectZDepth( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DisableZDepth, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableObjectZDepth( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\EnableZDepth, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBFadeObject( ObjectNumber.l, FadeValue.f )
  CallCFunctionFast( *DB_Basic3D\Fade, ObjectNumber, FadeValue )
 EndProcedure
;
; *********************************************************************
Procedure DBFixObjectPivot( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\FixPivot, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectToObjectOrientation( ObjectNumber.l, SecondObject.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetToObjectOrientation, ObjectNumber, SecondObject, Flag )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetAlphaBlending()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetAlphaBlending )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetNumberOfFrames( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetNumberOfFrames, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetBlending()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetBlending )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetObjectCollision( ObjectANumber.l, ObjectBNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCollision, ObjectANumber, ObjectBNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionX()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCollisionX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionY()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCollisionY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionZ()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCollisionZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetObjectExist( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetExist, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFog()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetFog )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectFrame( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetFrame, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetObjectHit( ObjectANumber.l, ObjectBNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetHit, ObjectANumber, ObjectBNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetInScreen( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetInScreen, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetInterpolation( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetInterpolation, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbAngl( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbAngleX, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbAngleY( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbAngleY, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbAngleZ( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbAngleZ, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbExist( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbExist, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetLimbName( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbName, ExtraPARAM.l, ObjectNumber, LimbNumber )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbOffsetX( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbOffsetX, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbOffsetY( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbOffsetY, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbOffsetZ( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbOffsetZ, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectLimbScale( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbScaleX, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbScaleY( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbScaleY, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetLimbScaleZ( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbScaleZ, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetLimbTextureName( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbTextureName, ExtraPARAM.l, ObjectNumber, LimbNumber )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbTexture( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbTexture, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbVisible( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbVisible, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectLimbXDirection( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbXDirection, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectLimbYDirection( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbYDirection, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectLimbZDirection( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbZDirection, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectXPosition( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbXPosition, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectYPosition( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbYPosition, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectZPosition( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbZPosition, ObjectNumber, LimbNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLooping( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLooping, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMeshExist( MeshNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMeshExist, MeshNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetPlaying( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPlaying, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetScreenX( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetScreenX, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetScreenY( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetScreenY, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectSize( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetSize, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetSpeed( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetSpeed, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetStaticLineOfSightX()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetStaticLineOfSightX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetStaticLineOfSightY()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetStaticLineOfSightY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetStaticLineOfSightZ()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetStaticLineOfSightZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVisible2( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVisible, ObjectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectXPosition1( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetXPositionEx, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectYPosition1( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetYPositionEx, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectZPosition1( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetZPositionEx, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectXSize( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetXSize, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectYSize( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetYSize, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectZSize( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetZSize, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectXRotation( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetXRotationEx, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectYRotation( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetYRotationEx, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectZRotation( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetZRotationEx, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBGhostObjectOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\GhostOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGhostObjectOn( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\GhostOn, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBGhostObjectOn1( ObjectNumber.l, GhostEffect.l )
  CallCFunctionFast( *DB_Basic3D\GhostOn1, ObjectNumber, GhostEffect )
 EndProcedure
;
; *********************************************************************
Procedure DBGlueToLimb( ObjectNumber.l, SecondObject.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\GlueToLimb, ObjectNumber, SecondObject, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBHideObject( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\Hide, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBHideObjectLimb( ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\HideLimb, ObjectNumber, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLinkLimb( ObjectNumber.l, LimbParent.l, LimbChild.l )
  CallCFunctionFast( *DB_Basic3D\LinkLimb, ObjectNumber, LimbParent, LimbChild )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadMesh( Filename.s, MeshNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\LoadMesh, FilenamePTR, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLockObjectOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\LockOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLockObjectOn( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\LockOn, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopObject1( ObjectNumber.l, StartFrame.l )
  CallCFunctionFast( *DB_Basic3D\Loop1, ObjectNumber, StartFrame )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopObject2( ObjectNumber.l, StartFrame.l, EndFrame.l )
  CallCFunctionFast( *DB_Basic3D\Loop2, ObjectNumber, StartFrame, EndFrame )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectBox( ObjectNumber.l, Width.f, Height.f, Depth.f )
  CallCFunctionFast( *DB_Basic3D\MakeBox, ObjectNumber, Width, Height, Depth )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectCollisionBox( ObjectNumber.l, X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f, CollisionFlag.l )
  CallCFunctionFast( *DB_Basic3D\MakeCollisionBox, ObjectNumber, X1, Y1, Z1, X2, Y2, Z2, CollisionFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectCone( ObjectNumber.l, Size.f )
  CallCFunctionFast( *DB_Basic3D\MakeCone, ObjectNumber, Size )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectCube( ObjectNumber.l, Size.f )
  CallCFunctionFast( *DB_Basic3D\MakeCube, ObjectNumber, Size )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectCylinder( ObjectNumber.l, Size.f )
  CallCFunctionFast( *DB_Basic3D\MakeCylinder, ObjectNumber, Size )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeMeshFromObject( MeshNumber.l, ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\MakeMeshFromObject, MeshNumber, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectObjectFromLimb( ObjectNumber.l, SecondObject.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\MakeObjectFromLimb, ObjectNumber, SecondObject, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectPlane( ObjectNumber.l, Width.f, Height.f )
  CallCFunctionFast( *DB_Basic3D\MakePlane, ObjectNumber, Width, Height )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectSphere( ObjectNumber.l, Size.f )
  CallCFunctionFast( *DB_Basic3D\MakeSphere, ObjectNumber, Size )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectTriangle( ObjectNumber.l, X1.f, Y1.f, Z1.f, X2.f, Y2.f, Z2.f, X3.f, Y3.f, Z3.f )
  CallCFunctionFast( *DB_Basic3D\MakeTriangle, ObjectNumber, X1, Y1, Z1, X2, Y2, Z2, X3, Y3, Z3 )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveObject( ObjectNumber.l, Speed.f )
  CallCFunctionFast( *DB_Basic3D\Move, ObjectNumber, Speed )
 EndProcedure
;
; *********************************************************************
Procedure DBOffsetLimb( ObjectNumber.l, LimbNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Basic3D\OffsetLimb, ObjectNumber, LimbNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformCheckListForLimbs( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\PerformCheckListForLimbs, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchObjectDown( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\PitchDown, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBPitchObjectUp( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\PitchUp, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayObject( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\Play, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayObject1( ObjectNumber.l, StartFrame.l )
  CallCFunctionFast( *DB_Basic3D\Play1, ObjectNumber, StartFrame )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayObject2( ObjectNumber.l, StartFrame.l, EndFrame.l )
  CallCFunctionFast( *DB_Basic3D\Play2, ObjectNumber, StartFrame, EndFrame )
 EndProcedure
;
; *********************************************************************
Procedure DBPointObject( ObjectNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Basic3D\Point, ObjectNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionObject( ObjectNumber.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Basic3D\Position, ObjectNumber, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBRollObjectLeft( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\RollLeft, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBRollObjectRight( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\RollRight, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectObjectPlane1( ObjectNumber.l, Width.f, Height.f, Param3.l )
  CallCFunctionFast( *DB_Basic3D\MakePlane1, ObjectNumber, Width, Height, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateLimb( ObjectNumber.l, LimbNumber.l, XAngle.f, YAngle.f, ZAngle.f )
  CallCFunctionFast( *DB_Basic3D\RotateLimb, ObjectNumber, LimbNumber, XAngle, YAngle, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveAnimation( ObjectNumber.l, Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\SaveAnimation, ObjectNumber, FilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleObject( ObjectNumber.l, XSize.f, YSize.f, ZSize.f )
  CallCFunctionFast( *DB_Basic3D\Scale, ObjectNumber, XSize, YSize, ZSize )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleLimb( ObjectNumber.l, LimbNumber.l, XSize.f, YSize.f, ZSize.f )
  CallCFunctionFast( *DB_Basic3D\ScaleLimb, ObjectNumber, LimbNumber, XSize, YSize, ZSize )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleLimbTexture( ObjectNumber.l, LimbNumber.l, UScale.f, VScale.f )
  CallCFunctionFast( *DB_Basic3D\ScaleLimbTexture, ObjectNumber, LimbNumber, UScale, VScale )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleTexture( ObjectNumber.l, UScale.f, VScale.f )
  CallCFunctionFast( *DB_Basic3D\ScaleTexture, ObjectNumber, UScale, VScale )
 EndProcedure
;
; *********************************************************************
Procedure DBScrollLimbTexture( ObjectNumber.l, LimbNumber.l, X.f, Y.f )
  CallCFunctionFast( *DB_Basic3D\ScrollLimbTexture, ObjectNumber, LimbNumber, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBScrollTexture( ObjectNumber.l, X.f, Y.f )
  CallCFunctionFast( *DB_Basic3D\ScrollTexture, ObjectNumber, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObject( ObjectNumber.l, Wire.l, Transparent.l, Cull.l )
  CallCFunctionFast( *DB_Basic3D\Set, ObjectNumber, Wire, Transparent, Cull )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObject1( ObjectNumber.l, Wire.l, Transparent.l, Cull.l, Filter.l )
  CallCFunctionFast( *DB_Basic3D\Set1, ObjectNumber, Wire, Transparent, Cull, Filter )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObject2( ObjectNumber.l, Wire.l, Transparent.l, Cull.l, Filter.l, Light.l )
  CallCFunctionFast( *DB_Basic3D\Set2, ObjectNumber, Wire, Transparent, Cull, Filter, Light )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObject3( ObjectNumber.l, Wire.l, Transparent.l, Cull.l, Filter.l, Light.l, Fog.l )
  CallCFunctionFast( *DB_Basic3D\Set3, ObjectNumber, Wire, Transparent, Cull, Filter, Light, Fog )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObject4( ObjectNumber.l, Wire.l, Transparent.l, Cull.l, Filter.l, Light.l, Fog.l, Ambient.l )
  CallCFunctionFast( *DB_Basic3D\Set4, ObjectNumber, Wire, Transparent, Cull, Filter, Light, Fog, Ambient )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCollisionObjectOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetCollisionOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCollisionObjectOn( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetCollisionOn, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCollisionObjectToBoxes( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetCollisionToBoxes, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCollisionObjectToPolygons( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetCollisionToPolygons, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCollisionObjectToSpheres( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetCollisionToSpheres, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectFrame( ObjectNumber.l, Frame.f )
  CallCFunctionFast( *DB_Basic3D\SetFrameEx, ObjectNumber, Frame )
 EndProcedure
;
; *********************************************************************
Procedure DBSetGlobalCollisionOff()
  CallCFunctionFast( *DB_Basic3D\SetGlobalCollisionOff )
 EndProcedure
;
; *********************************************************************
Procedure DBSetGlobalCollisionOn()
  CallCFunctionFast( *DB_Basic3D\SetGlobalCollisionOn )
 EndProcedure
;
; *********************************************************************
Procedure DBSetInterpolation( ObjectNumber.l, Interpolation.l )
  CallCFunctionFast( *DB_Basic3D\SetInterpolation, ObjectNumber, Interpolation )
 EndProcedure
;
; *********************************************************************
Procedure DBSetKeyFrame( ObjectNumber.l, Keyframe.l )
  CallCFunctionFast( *DB_Basic3D\SetKeyFrame, ObjectNumber, Keyframe )
 EndProcedure
;
; *********************************************************************
Procedure DBSetMipmapMode( MipmapMode.l )
  CallCFunctionFast( *DB_Basic3D\SetMipmapMode, MipmapMode )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectRotationXYZ( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetRotationXYZ, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectRotationZYX( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetRotationZYX, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectSpeed( ObjectNumber.l, Speed.l )
  CallCFunctionFast( *DB_Basic3D\SetSpeed, ObjectNumber, Speed )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectTexture( ObjectNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetTexture, ObjectNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextureMode( ObjectNumber.l, TexturingMode.l, MipmapFlag.l )
  CallCFunctionFast( *DB_Basic3D\SetTextureMode, ObjectNumber, TexturingMode, MipmapFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetToCameraOrientation( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetToCameraOrientation, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectToObjectOrientation1( ObjectNumber.l, SecondObject.l )
  CallCFunctionFast( *DB_Basic3D\SetToObjectOrientation1, ObjectNumber, SecondObject )
 EndProcedure
;
; *********************************************************************
Procedure DBShowObject( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\Show, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShowObjectLimb( ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\ShowLimb, ObjectNumber, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBStopObject( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\Stop, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBTextureLimb( ObjectNumber.l, LimbNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\TextureLimb, ObjectNumber, LimbNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnObjectLeft( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\TurnLeft, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBTurnObjectRight( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\TurnRight, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBUnGlue( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\UnGlue, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBXRotate( ObjectNumber.l, XAngle.f )
  CallCFunctionFast( *DB_Basic3D\XRotate, ObjectNumber, XAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBYRotate( ObjectNumber.l, YAngle.f )
  CallCFunctionFast( *DB_Basic3D\YRotate, ObjectNumber, YAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBZRotate( ObjectNumber.l, ZAngle.f )
  CallCFunctionFast( *DB_Basic3D\ZRotate, ObjectNumber, ZAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObject( ObjectNumber.l, MeshIndex.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\MakeObject, ObjectNumber, MeshIndex, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetBumpMap( ObjectNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetBumpMap, ObjectNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCartoonShadingOn( ObjectNumber.l, ShadeImage.l, EdgeImage.l )
  CallCFunctionFast( *DB_Basic3D\SetCartoonShadingOn, ObjectNumber, ShadeImage, EdgeImage )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSphereMap( ObjectNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetSphereMap, ObjectNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectObjectSize1( ObjectNumber.l, ActualSize.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetSizeEx, ObjectNumber, ActualSize )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbLink( ObjectNumber.l, LimbNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbLink, ObjectNumber, LimbNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionRadius( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetObjectCollisionRadius, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionCenterX( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetObjectCollisionCenterX, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionCenterY( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetObjectCollisionCenterY, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectCollisionCenterZ( ObjectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetObjectCollisionCenterZ, ObjectNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBConvert3DStoX( _3DSFilename.s, XFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @_3DSFilenamePTR.l, Len( _3DSFilename ) + 1 ) ; CreateString
  PokeS( _3DSFilenamePTR, _3DSFilename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @XFilenamePTR.l, Len( XFilename ) + 1 ) ; CreateString
  PokeS( XFilenamePTR, XFilename )
  CallCFunctionFast( *DB_Basic3D\Convert3DStoX, _3DSFilenamePTR, XFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBFlushVideoMemory()
  CallCFunctionFast( *DB_Basic3D\FlushVideoMemory )
 EndProcedure
;
; *********************************************************************
Procedure DBDisableObjectTNL()
  CallCFunctionFast( *DB_Basic3D\DisableTNL )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableObjectTNL()
  CallCFunctionFast( *DB_Basic3D\EnableTNL )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetStatistic( StatisticCode.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetStatistic, StatisticCode )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetDrawPrimTLVert()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetDrawPrimTLVertex )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBCloneObject( ObjectNumber.l, SourceObject.l )
  CallCFunctionFast( *DB_Basic3D\Clone, ObjectNumber, SourceObject )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateVertexShaderFromFile( VertexShaderNumber.l, ShaderFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ShaderFilenamePTR.l, Len( ShaderFilename ) + 1 ) ; CreateString
  PokeS( ShaderFilenamePTR, ShaderFilename )
  CallCFunctionFast( *DB_Basic3D\CreateVertexShaderFromFile, VertexShaderNumber, ShaderFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectObjectSphere1( ObjectNumber.l, Size.f, Rows.l, Columns.l )
  CallCFunctionFast( *DB_Basic3D\MakeSphere1, ObjectNumber, Size, Rows, Columns )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveObjectDown( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\MoveDown, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveObjectLeft( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\MoveLeft, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveObjectRight( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\MoveRight, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBMoveObjectUp( ObjectNumber.l, Value.f )
  CallCFunctionFast( *DB_Basic3D\MoveUp, ObjectNumber, Value )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectAmbient( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetAmbient, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCull( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetCull, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetDetailMap( ObjectNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetDetailMap, ObjectNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetFilter( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetFilter, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetFog( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetFog, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLight( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetLight, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLightMap( ObjectNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetLightMap, ObjectNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSphereRadius( ObjectNumber.l, Radius.f )
  CallCFunctionFast( *DB_Basic3D\SetSphereRadius, ObjectNumber, Radius )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTransparency( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetTransparency, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexShaderMatrix( VertexShaderNumber.l, Constant.l, Matrix4.l, ConstantCount.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexShaderMatrix, VertexShaderNumber, Constant, Matrix4, ConstantCount )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexShaderOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexShaderOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexShaderOn( ObjectNumber.l, VertexShaderNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexShaderOn, ObjectNumber, VertexShaderNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexShaderStream( VertexShaderNumber.l, Position.l, _Data.l, Datatype.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexShaderStream, VertexShaderNumber, Position, _Data, Datatype )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexShaderStreamCount( VertexShaderNumber.l, Count.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexShaderStreamCount, VertexShaderNumber, Count )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexShaderVector( VertexShaderNumber.l, Constant.l, Vector3.l, ConstantCount.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexShaderVector, VertexShaderNumber, Constant, Vector3, ConstantCount )
 EndProcedure
;
; *********************************************************************
Procedure DBSetWireframe( ObjectNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetWireframe, ObjectNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetObjectAlpha()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetAlpha )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetAlphaComparision()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetAlphaComparision )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetAnisotropicFiltering()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetAnisotropicFiltering )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetAntiAliasEdges()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetAntiAliasEdges )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetBlitSysOntoLocal()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetBlitSysOntoLocal )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetCalibrateGamma()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCalibrateGamma )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetClipAndScalePoints()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetClipAndScalePoints )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetClipTLVerts()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetClipTLVerts )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetColorPerspective()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetColorPerspective )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetColorWriteEnable()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetColorWriteEnable )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetCubeMap()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCubeMap )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetCullCCW()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCullCCW )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetCullCW()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetCullCW )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetDeviceType()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetDeviceType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetDither()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetDither )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFogRange()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetFogRange )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFogTable()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetFogTable )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFogVert()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetFogVertex )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFullScreenGamma()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetFullScreenGamma )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMaxLights()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMaxLights )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMaxPixelShaderValue()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMaxPixelShaderValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBScaleTexture1( ObjectNumber.l, Stage.l, UScale.f, VScale.f )
  CallCFunctionFast( *DB_Basic3D\ScaleTexture1, ObjectNumber, Stage, UScale, VScale )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMaxTextureHeight()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMaxTextureHeight )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMaxTextureWidth()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMaxTextureWidth )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMaxVertexShaderConstants()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMaxVertexShaderConstants )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMaxVolumeExtent()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMaxVolumeExtent )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMipCubeMap()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMipCubeMap )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMipMap()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMipMap )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMipMapLODBias()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMipMapLODBias )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMipMapVolume()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetMipMapVolume )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetNonPowerOf2Textures()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetNonPowerOf2Textures )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetPerspective()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPerspective )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPixelShaderVersion()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPixelShaderVersion )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetProjected()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetProjected )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetRenderAfterFlip()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetRenderAfterFlip )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetRenderWindowed()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetRenderWindowed )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSeparateTextureMemories()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetSeparateTextureMemories )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSquareOnly()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetSquareOnly )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTLVertexSystemMemory()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetTLVertexSystemMemory )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTLVertexVideoMemory()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetTLVertexVideoMemory )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTextureNonLocalVideoMemory()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetTextureNonLocalVideoMemory )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTextureSystemMemory()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetTextureSystemMemory )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetTextureVideoMemory()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetTextureVideoMemory )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexShaderVersion()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexShaderVersion )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVolumeMap()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVolumeMap )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetWBuffer()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetWBuffer )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetWFog()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetWFog )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetZBuffer()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetZBuffer )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetZFog()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetZFog )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteVertexShader( VertexShaderNumber.l )
  CallCFunctionFast( *DB_Basic3D\DeleteVertexShader, VertexShaderNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBVertexShaderExist( VertexShaderNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\VertexShaderExist, VertexShaderNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetCubeMap( ObjectNumber.l, Face1.l, Face2.l, Face3.l, Face4.l, Face5.l, Face6.l )
  CallCFunctionFast( *DB_Basic3D\SetCubeMap, ObjectNumber, Face1, Face2, Face3, Face4, Face5, Face6 )
 EndProcedure
;
; *********************************************************************
Procedure DBSetBlendMap( ObjectNumber.l, ImageNumber.l, BlendMode.l )
  CallCFunctionFast( *DB_Basic3D\SetBlendMap, ObjectNumber, ImageNumber, BlendMode )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveMesh( Filename.s, MeshNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\SaveMesh, FilenamePTR, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBRemoveLimb( ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\RemoveLimb, ObjectNumber, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure.f DBIntersectObject( ObjectNumber.l, X.f, Y.f, Z.f, ToX.f, ToY.f, ToZ.f )
  Retour.l = CallCFunctionFast( *DB_Basic3D\IntersectObject, ObjectNumber, X, Y, Z, ToX, ToY, ToZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBAutomaticObjectCollision( ObjectNumber.l, Radius.f, Response.l )
  CallCFunctionFast( *DB_Basic3D\AutomaticObjectCollision, ObjectNumber, Radius, Response )
 EndProcedure
;
; *********************************************************************
Procedure DBAutomaticCameraCollision( CameraNumber.l, Radius.f, Response.l )
  CallCFunctionFast( *DB_Basic3D\AutomaticCameraCollision, CameraNumber, Radius, Response )
 EndProcedure
;
; *********************************************************************
Procedure DBSetRainbowRenderingOn( ObjectNumber.l, RainbowImage.l )
  CallCFunctionFast( *DB_Basic3D\SetRainbowRenderingOn, ObjectNumber, RainbowImage )
 EndProcedure
;
; *********************************************************************
Procedure DBSetShadowOn( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetShadowOn, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetReflectionOn( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetReflectionOn, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreatePixelShaderFromFile( PixelShaderNumber.l, ShaderFilename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ShaderFilenamePTR.l, Len( ShaderFilename ) + 1 ) ; CreateString
  PokeS( ShaderFilenamePTR, ShaderFilename )
  CallCFunctionFast( *DB_Basic3D\CreatePixelShaderFromFile, PixelShaderNumber, ShaderFilenamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetPixelShaderOn( ObjectNumber.l, PixelShaderNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetPixelShaderOn, ObjectNumber, PixelShaderNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetPixelShaderOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetPixelShaderOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeletePixelShader( PixelShaderNumber.l )
  CallCFunctionFast( *DB_Basic3D\DeletePixelShader, PixelShaderNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetPixelShaderTexture( PixelShaderNumber.l, SlotNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetPixelShaderTexture, PixelShaderNumber, SlotNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBPixelShaderExist( PixelShaderNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\PixelShaderExist, PixelShaderNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextureMD3( ObjectNumber.l, H0.l, H1.l, L0.l, L1.l, L2.l, U0.l )
  CallCFunctionFast( *DB_Basic3D\SetTextureMD3, ObjectNumber, H0, H1, L0, L1, L2, U0 )
 EndProcedure
;
; *********************************************************************
Procedure DBCloneMeshToNewFormat( ObjectNumber.l, FVFFormat.l )
  CallCFunctionFast( *DB_Basic3D\CloneMeshToNewFormat, ObjectNumber, FVFFormat )
 EndProcedure
;
; *********************************************************************
Procedure DBSaveObject( Filename.s, ObjectNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\Save, FilenamePTR, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBHideObjectBounds( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\HideBounds, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShowObjectBounds( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\ShowBounds, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSmoothing( ObjectNumber.l, Percentage.f )
  CallCFunctionFast( *DB_Basic3D\SetSmoothing, ObjectNumber, Percentage )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLimbSmoothing( ObjectNumber.l, LimbNumber.l, Percentage.f )
  CallCFunctionFast( *DB_Basic3D\SetLimbSmoothing, ObjectNumber, LimbNumber, Percentage )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectObjectXSize1( ObjectNumber.l, ActualSize.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetXSizeEx, ObjectNumber, ActualSize )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBLockObjectVertexDataForLimb( ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\LockVertexDataForLimb, ObjectNumber, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLockObjectVertexDataForMesh( MeshNumber.l )
  CallCFunctionFast( *DB_Basic3D\LockVertexDataForMesh, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBUnlockVertexData()
  CallCFunctionFast( *DB_Basic3D\UnlockVertexData )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexDataUV( VertexIndex.l, U.f, V.f )
  CallCFunctionFast( *DB_Basic3D\SetVertexDataUV, VertexIndex, U, V )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexDataNormals( VertexIndex.l, NX.f, NY.f, NZ.f )
  CallCFunctionFast( *DB_Basic3D\SetVertexDataNormals, VertexIndex, NX, NY, NZ )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectaPosition( VertexIndex.l, X.f, Y.f, Z.f )
  CallCFunctionFast( *DB_Basic3D\SetVertexDataPosition, VertexIndex, X, Y, Z )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexDataDiffuse( VertexIndex.l, RGBValue.l )
  CallCFunctionFast( *DB_Basic3D\SetVertexDataDiffuse, VertexIndex, RGBValue )
 EndProcedure
;
; *********************************************************************
Procedure DBAddMeshToVertexData( MeshNumber.l )
  CallCFunctionFast( *DB_Basic3D\AddMeshToVertexData, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteMeshFromVertexData( VertexStart.l, VertexEnd.l, IndexStart.l, IndexEnd.l )
  CallCFunctionFast( *DB_Basic3D\DeleteMeshFromVertexData, VertexStart, VertexEnd, IndexStart, IndexEnd )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVertexDataVertexCount()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataVertexCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVertexDataIndexCount()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataIndexCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataPositionX( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataPositionX, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataPositionY( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataPositionY, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataPositionZ( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataPositionZ, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataNormalsX( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataNormalsX, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataNormalsY( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataNormalsY, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataNormalsZ( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataNormalsZ, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataU( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataU, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataV( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataV, VertexIndex )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVertexDataDiffuse( VertexIndex.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataDiffuse, VertexIndex )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetAlphaFactor( ObjectNumber.l, AlphaPercentage.f )
  CallCFunctionFast( *DB_Basic3D\SetAlphaFactor, ObjectNumber, AlphaPercentage )
 EndProcedure
;
; *********************************************************************
Procedure DBInstanceObject( ObjectNumber.l, SourceObject.l )
  CallCFunctionFast( *DB_Basic3D\Instance, ObjectNumber, SourceObject )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectOn( ObjectNumber.l, EffectFilename.s, TextureFlag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @EffectFilenamePTR.l, Len( EffectFilename ) + 1 ) ; CreateString
  PokeS( EffectFilenamePTR, EffectFilename )
  CallCFunctionFast( *DB_Basic3D\SetEffectOn, ObjectNumber, EffectFilenamePTR, TextureFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextureStage( ObjectNumber.l, StageNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetTextureStage, ObjectNumber, StageNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableObjectZRead( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\EnableZRead, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDisableObjectZRead( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DisableZRead, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableObjectZWrite( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\EnableZWrite, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDisableObjectZWrite( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DisableZWrite, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadEffect1( Filename.s, EffectNumber.l, TextureFlag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\LoadEffect, FilenamePTR, EffectNumber, TextureFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteEffect( EffectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DeleteEffect, EffectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectEffect( ObjectNumber.l, EffectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetObjectEffect, ObjectNumber, EffectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLimbEffect( ObjectNumber.l, LimbNumber.l, EffectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetLimbEffect, ObjectNumber, LimbNumber, EffectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectConstantF( EffectNumber.l, ConstantString.s, ConstantValue.f )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ConstantStringPTR.l, Len( ConstantString ) + 1 ) ; CreateString
  PokeS( ConstantStringPTR, ConstantString )
  CallCFunctionFast( *DB_Basic3D\SetEffectConstantF, EffectNumber, ConstantStringPTR, ConstantValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForEffectValues( EffectNumber.l )
  CallCFunctionFast( *DB_Basic3D\PerformChecklistForEffectValues, EffectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetDiffuseMaterial( ObjectNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic3D\SetDiffuseMaterial, ObjectNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAmbienceMaterial( ObjectNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic3D\SetAmbienceMaterial, ObjectNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpecularMaterial( ObjectNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic3D\SetSpecularMaterial, ObjectNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEmissiveMaterial( ObjectNumber.l, ColorValue.l )
  CallCFunctionFast( *DB_Basic3D\SetEmissiveMaterial, ObjectNumber, ColorValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpecularPower( ObjectNumber.l, Power.f )
  CallCFunctionFast( *DB_Basic3D\SetSpecularPower, ObjectNumber, Power )
 EndProcedure
;
; *********************************************************************
Procedure DBTextureLimbStage( ObjectNumber.l, LimbNumber.l, StageNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Basic3D\TextureLimbStage, ObjectNumber, LimbNumber, StageNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectEmitter( ObjectNumber.l, Size.l )
  CallCFunctionFast( *DB_Basic3D\MakeEmitter, ObjectNumber, Size )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetEffectExist( EffectNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetEffectExist, EffectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForEffectErrors()
  CallCFunctionFast( *DB_Basic3D\PerformChecklistForEffectErrors )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectTranspose( EffectNumber.l, TransposeFlag.l )
  CallCFunctionFast( *DB_Basic3D\SetEffectTranspose, EffectNumber, TransposeFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectConstantB( EffectNumber.l, ConstantString.s, ConstantValue.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ConstantStringPTR.l, Len( ConstantString ) + 1 ) ; CreateString
  PokeS( ConstantStringPTR, ConstantString )
  CallCFunctionFast( *DB_Basic3D\SetEffectConstantB, EffectNumber, ConstantStringPTR, ConstantValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectConstantI( EffectNumber.l, ConstantString.s, ConstantValue.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ConstantStringPTR.l, Len( ConstantString ) + 1 ) ; CreateString
  PokeS( ConstantStringPTR, ConstantString )
  CallCFunctionFast( *DB_Basic3D\SetEffectConstantI, EffectNumber, ConstantStringPTR, ConstantValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectConstantV( EffectNumber.l, ConstantString.s, VectorNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ConstantStringPTR.l, Len( ConstantString ) + 1 ) ; CreateString
  PokeS( ConstantStringPTR, ConstantString )
  CallCFunctionFast( *DB_Basic3D\SetEffectConstantV, EffectNumber, ConstantStringPTR, VectorNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectConstantM( EffectNumber.l, ConstantString.s, MatrixNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ConstantStringPTR.l, Len( ConstantString ) + 1 ) ; CreateString
  PokeS( ConstantStringPTR, ConstantString )
  CallCFunctionFast( *DB_Basic3D\SetEffectConstantM, EffectNumber, ConstantStringPTR, MatrixNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBPickScreenObject( ScreenX.l, ScreenY.l, ObjectStart.l, ObjectEnd.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\PickScreenObject, ScreenX, ScreenY, ObjectStart, ObjectEnd )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPickVectorX()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPickVectorX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPickVectorY()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPickVectorY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPickVectorZ()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPickVectorZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBPickScreen2D23D( ScreenX.l, ScreenY.l, Distance.f )
  CallCFunctionFast( *DB_Basic3D\PickScreen2D23D, ScreenX, ScreenY, Distance )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetPickDistance()
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetPickDistance )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBSetShadingOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetShadingOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShowObjectObjectBounds1( ObjectNumber.l, BoxOnlyFlag.l )
  CallCFunctionFast( *DB_Basic3D\ShowBoundsEx, ObjectNumber, BoxOnlyFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetEffectTechnique( EffectNumber.l, TechniqueName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @TechniqueNamePTR.l, Len( TechniqueName ) + 1 ) ; CreateString
  PokeS( TechniqueNamePTR, TechniqueName )
  CallCFunctionFast( *DB_Basic3D\SetEffectTechnique, EffectNumber, TechniqueNamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetVertexDataUV1( VertexIndex.l, Index.l, U.f, V.f )
  CallCFunctionFast( *DB_Basic3D\SetVertexDataUV1, VertexIndex, Index, U, V )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForEffectErrors1( EffectNumber.l )
  CallCFunctionFast( *DB_Basic3D\PerformChecklistForEffectErrors1, EffectNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbCollision( ObjectANumber.l, LimbANumber.l, ObjectBNumber.l, LimbBNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbCollision, ObjectANumber, LimbANumber, ObjectBNumber, LimbBNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbHit( ObjectANumber.l, LimbANumber.l, ObjectBNumber.l, LimbBNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbHit, ObjectANumber, LimbANumber, ObjectBNumber, LimbBNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBLoadObject1( Filename.s, ObjectNumber.l, DBProMode.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\Load1, FilenamePTR, ObjectNumber, DBProMode )
 EndProcedure
;
; *********************************************************************
Procedure DBExcludeObjectOn( ObjectID.l )
  CallCFunctionFast( *DB_Basic3D\ExcludeOn, ObjectID )
 EndProcedure
;
; *********************************************************************
Procedure DBExcludeObjectOff( ObjectID.l )
  CallCFunctionFast( *DB_Basic3D\ExcludeOff, ObjectID )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNormals( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetNormals, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetLimbNormals( ObjectNumber.l, LimbNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetLimbNormals, ObjectNumber, LimbNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextureModeStage( ObjectNumber.l, StageNumber.l, TexturingMode.l, MipmapFlag.l )
  CallCFunctionFast( *DB_Basic3D\SetTextureModeStage, ObjectNumber, StageNumber, TexturingMode, MipmapFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBSetFilterStage( ObjectNumber.l, StageNumber.l, Flag.l )
  CallCFunctionFast( *DB_Basic3D\SetFilterStage, ObjectNumber, StageNumber, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBLockObjectVertexDataForLimbCore( ObjectNumber.l, LimbNumber.l, LockMode.l )
  CallCFunctionFast( *DB_Basic3D\LockVertexDataForLimbCore, ObjectNumber, LimbNumber, LockMode )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectFOV( ObjectNumber.l, FOVAngle.f )
  CallCFunctionFast( *DB_Basic3D\SetObjectFOV, ObjectNumber, FOVAngle )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteObjects( _From.l, _To.l )
  CallCFunctionFast( *DB_Basic3D\Deletes, _From, _To )
 EndProcedure
;
; *********************************************************************
Procedure DBForceAutomaticEnd()
  CallCFunctionFast( *DB_Basic3D\ForceAutomaticEnd )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableObjectZBias( ObjectNumber.l, SlopeScale.f, Depth.f )
  CallCFunctionFast( *DB_Basic3D\EnableZBias, ObjectNumber, SlopeScale, Depth )
 EndProcedure
;
; *********************************************************************
Procedure DBDisableObjectZBias( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\DisableZBias, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBOffsetLimb1( ObjectNumber.l, LimbNumber.l, X.f, Y.f, Z.f, BoundsFlag.l )
  CallCFunctionFast( *DB_Basic3D\OffsetLimb1, ObjectNumber, LimbNumber, X, Y, Z, BoundsFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleLimb1( ObjectNumber.l, LimbNumber.l, XSize.f, YSize.f, ZSize.f, BoundsFlag.l )
  CallCFunctionFast( *DB_Basic3D\ScaleLimb1, ObjectNumber, LimbNumber, XSize, YSize, ZSize, BoundsFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBRotateLimb1( ObjectNumber.l, LimbNumber.l, XAngle.f, YAngle.f, ZAngle.f, BoundsFlag.l )
  CallCFunctionFast( *DB_Basic3D\RotateLimb1, ObjectNumber, LimbNumber, XAngle, YAngle, ZAngle, BoundsFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBCloneShared( ObjectNumber.l, SourceObject.l, ShareOriginalData.l )
  CallCFunctionFast( *DB_Basic3D\CloneShared, ObjectNumber, SourceObject, ShareOriginalData )
 EndProcedure
;
; *********************************************************************
Procedure DBSetObjectFrame1( ObjectNumber.l, Frame.f, RecalculateBounds.l )
  CallCFunctionFast( *DB_Basic3D\SetFrameEx1, ObjectNumber, Frame, RecalculateBounds )
 EndProcedure
;
; *********************************************************************
Procedure DBSetShadowOn1( ObjectNumber.l, MeshNumber.l, ShadowRange.l, UseShader.l )
  CallCFunctionFast( *DB_Basic3D\SetShadowOnEx, ObjectNumber, MeshNumber, ShadowRange, UseShader )
 EndProcedure
;
; *********************************************************************
Procedure DBSetShadowOff( ObjectNumber.l )
  CallCFunctionFast( *DB_Basic3D\SetShadowOff, ObjectNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetBlendMap1( ObjectNumber.l, StageIndex.l, ImageNumber.l, TexCoordMode.l, BlendMode.l )
  CallCFunctionFast( *DB_Basic3D\SetBlendMap1, ObjectNumber, StageIndex, ImageNumber, TexCoordMode, BlendMode )
 EndProcedure
;
; *********************************************************************
Procedure DBSetIndexData( IndiceIndex.l, VertexIndex.l )
  CallCFunctionFast( *DB_Basic3D\SetIndexData, IndiceIndex, VertexIndex )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetIndexData( IndexNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetIndexData, IndexNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataU1( VertexIndex.l, StageNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataU1, VertexIndex, StageNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetVertexDataV1( VertexIndex.l, StageNumber.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetVertexDataV1, VertexIndex, StageNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectObjectYSize1( ObjectNumber.l, ActualSize.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetYSizeEx, ObjectNumber, ActualSize )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBSetGlobalObjectCreationMode( CreationMode.l )
  CallCFunctionFast( *DB_Basic3D\SetGlobalObjectCreationMode, CreationMode )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetObjectObjectZSize1( ObjectNumber.l, ActualSize.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetZSizeEx, ObjectNumber, ActualSize )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBScrollTexture1( ObjectNumber.l, Stage.l, X.f, Y.f )
  CallCFunctionFast( *DB_Basic3D\ScrollTexture1, ObjectNumber, Stage, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleLimbTexture1( ObjectNumber.l, LimbNumber.l, Stage.l, UScale.f, VScale.f )
  CallCFunctionFast( *DB_Basic3D\ScaleLimbTexture1, ObjectNumber, LimbNumber, Stage, UScale, VScale )
 EndProcedure
;
; *********************************************************************
Procedure DBScrollLimbTexture1( ObjectNumber.l, LimbNumber.l, Stage.l, X.f, Y.f )
  CallCFunctionFast( *DB_Basic3D\ScrollLimbTexture1, ObjectNumber, LimbNumber, Stage, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextureStage1( ObjectNumber.l, StageNumber.l, ImageNumber.l, IgnoreSorting.l )
  CallCFunctionFast( *DB_Basic3D\SetTextureStageEx, ObjectNumber, StageNumber, ImageNumber, IgnoreSorting )
 EndProcedure
;
; *********************************************************************
Procedure DBSetDiffuseMaterial1( ObjectNumber.l, ColorValue.l, VertexDiffuseMode.l )
  CallCFunctionFast( *DB_Basic3D\SetDiffuseMaterialEx, ObjectNumber, ColorValue, VertexDiffuseMode )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadObject2( Filename.s, ObjectNumber.l, DBProMode.l, DivideTexture.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Basic3D\Load2, FilenamePTR, ObjectNumber, DBProMode, DivideTexture )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetLimbTextureName1( ObjectNumber.l, LimbNumber.l, TextureStage.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbTextureNameEx, ExtraPARAM.l, ObjectNumber, LimbNumber, TextureStage )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetLimbTexture1( ObjectNumber.l, LimbNumber.l, TextureStage.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\GetLimbTextureEx, ObjectNumber, LimbNumber, TextureStage )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBPickScreenObject1( ScreenX.l, ScreenY.l, ObjectStart.l, ObjectEnd.l, IgnoreCameraFlag.l )
  Retour.l = CallCFunctionFast( *DB_Basic3D\PickScreenObjectEx, ScreenX, ScreenY, ObjectStart, ObjectEnd, IgnoreCameraFlag )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBGlueToLimb1( ObjectNumber.l, SecondObject.l, LimbNumber.l, GlueMode.l )
  CallCFunctionFast( *DB_Basic3D\GlueToLimbEx, ObjectNumber, SecondObject, LimbNumber, GlueMode )
 EndProcedure
;
; *********************************************************************
Procedure DBConvertMeshToVertexData( MeshNumber.l )
  CallCFunctionFast( *DB_Basic3D\ConvertMeshToVertexData, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBMakeObjectObjectObjectFromLimb1( ObjectNumber.l, SecondObject.l, LimbNumber.l, AllLimbsFlag.l )
  CallCFunctionFast( *DB_Basic3D\MakeObjectFromLimbEx, ObjectNumber, SecondObject, LimbNumber, AllLimbsFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBAutomaticCameraCollision1( CameraNumber.l, Radius.f, Response.l, StandGroundMode.l )
  CallCFunctionFast( *DB_Basic3D\AutomaticCameraCollision1, CameraNumber, Radius, Response, StandGroundMode )
 EndProcedure
;

