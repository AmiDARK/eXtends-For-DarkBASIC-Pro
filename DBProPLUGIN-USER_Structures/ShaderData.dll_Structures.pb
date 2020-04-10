; DarkBasic Professional RC2PBIncludes Ver 1.0 File - STRUCTURES SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_ShaderDataStruct
  GetObjectEffect.l : SaveEffect.l : GetTextureStageInUse.l : GetEffectTextureCount.l
  GetExternalParameterColumns.l : GetExternalParameterRows.l : CountExternalParameters.l : ReleaseEffectPointer.l
  GetExternalParameterName.l : GetExternalParameterType.l : GetExternalParameterSemantic.l : GetExternalParameterAnnotationCount.l
  GetEffectDescription.l : GetEffectImage.l : SetMatrix4.l : GetMatrix4.l
  GetEffectParameterFloatValue.l : GetEffectParameterVectorValue.l : DebugCompileEffect.l : GetEffectErrorString.l
  Render.l : ReleaseErrorPointer.l : FindDefaultTechnique.l : FindLightTechnique.l
  SetEffectConstantVectorElement.l : MakeDynamicCubeMap.l : DeleteDynamicCubeMap.l : RenderDynamicCubeMap.l
  ApplyCubeMapToObject.l : OnResetDevice.l : ApplyCubeMapToObject1.l : GetEffectTextureName.l
  MakeDynamicCubeMap1.l : GetEffectParameterCount.l : RemoveCameraFromImage.l : DynamicCubeMapExist.l
  GetParameterAnnotationString.l : GetParameterAnnotationFloat.l : LoadCameraEffect.l : DeleteCameraEffect.l
  SetCameraEffect.l : RemoveCameraEffect.l : SyncCamera.l : SetCameraToSurface.l
  CameraEffectExist.l : GetCameraEffect.l : SetCameraEffectConstantFloat.l : SetCameraEffectConstantInt.l
  SetCameraEffectConstantVector.l : CheckData.l : IsLightingShader.l : IsDynamicTexture.l
  GetDynamicTextureName.l : IsAlphaMappingShader.l : GetTextureType.l : GetParameterAnnotationExist.l
  GetVertexShaderVersion.l : GetPixelShaderVersion.l : GetTextureFileName.l : OnResetDevice1.l
 EndStructure

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 3
; Folding = -