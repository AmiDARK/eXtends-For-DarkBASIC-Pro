; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure rDataStruct
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
Global rData.rDataStruct

Procedure.l CheckrData()
  SUCCESS.l = 1
  If OpenLibrary( 1, "ShaderData.dll")
    rData\GetObjectEffect= AIsFunction( 1 , "?GetObjectEffect@@YAHHH@Z" ) ; 101 Get Object Effect 
    rData\SaveEffect= AIsFunction( 1 , "?SaveEffect@@YAXPAD@Z" ) ; 102 Save Effect 
    rData\GetTextureStageInUse= AIsFunction( 1 , "?GetTextureStageInUse@@YAHHHH@Z" ) ; 103 Get Texture Stage In Use 
    rData\GetEffectTextureCount= AIsFunction( 1 , "?GetEffectTextureCount@@YAHXZ" ) ; 104 Get Effect Texture Count 
    rData\GetExternalParameterColumns= AIsFunction( 1 , "?GetExternalParameterColumns@@YAHH@Z" ) ; 105 Get External Parameter Columns 
    rData\GetExternalParameterRows= AIsFunction( 1 , "?GetExternalParameterRows@@YAHH@Z" ) ; 106 Get External Parameter Rows 
    rData\CountExternalParameters= AIsFunction( 1 , "?CountExternalParameters@@YAHXZ" ) ; 107 Count External Parameters 
    rData\ReleaseEffectPointer= AIsFunction( 1 , "?ReleaseEffectPointer@@YAXXZ" ) ; 108 Release Effect Pointer 
    rData\GetExternalParameterName= AIsFunction( 1 , "?GetExternalParameterName@@YAKKH@Z" ) ; 109 Get External Parameter Name 
    rData\GetExternalParameterType= AIsFunction( 1 , "?GetExternalParameterType@@YAHH@Z" ) ; 110 Get External Parameter Type 
    rData\GetExternalParameterSemantic= AIsFunction( 1 , "?GetExternalParameterSemantic@@YAKKH@Z" ) ; 111 Get External Parameter Semantic 
    rData\GetExternalParameterAnnotationCount= AIsFunction( 1 , "?GetExternalParameterAnnotationCount@@YAHH@Z" ) ; 112 Get External Parameter Annotation Count 
    rData\GetEffectDescription= AIsFunction( 1 , "?GetEffectDescription@@YAKK@Z" ) ; 113 Get Effect Description 
    rData\GetEffectImage= AIsFunction( 1 , "?GetEffectImage@@YAKK@Z" ) ; 114 Get Effect Image 
    rData\SetMatrix4= AIsFunction( 1 , "?SetMatrix4@@YAXHHHM@Z" ) ; 115 Set Matrix4 
    rData\GetMatrix4= AIsFunction( 1 , "?GetMatrix4@@YAKHHH@Z" ) ; 116 Get Matrix4 
    rData\GetEffectParameterFloatValue= AIsFunction( 1 , "?GetEffectParameterFloatValue@@YAKK@Z" ) ; 117 Get Effect Parameter Float Value 
    rData\GetEffectParameterVectorValue= AIsFunction( 1 , "?GetEffectParameterVectorValue@@YAXKH@Z" ) ; 118 Get Effect Parameter Vector Value 
    rData\DebugCompileEffect= AIsFunction( 1 , "?DebugCompileEffect@@YAHK@Z" ) ; 119 Debug Compile Effect 
    rData\GetEffectErrorString= AIsFunction( 1 , "?GetEffectErrorString@@YAKKH@Z" ) ; 120 Get Effect Error String 
    rData\Render= AIsFunction( 1 , "?Render@@YAXXZ" ) ; 121 Render 
    rData\ReleaseErrorPointer= AIsFunction( 1 , "?ReleaseErrorPointer@@YAXXZ" ) ; 122 Release Error Pointer 
    rData\FindDefaultTechnique= AIsFunction( 1 , "?FindDefaultTechnique@@YAKK@Z" ) ; 123 Find Default Technique 
    rData\FindLightTechnique= AIsFunction( 1 , "?FindLightTechnique@@YAKKH@Z" ) ; 124 Find Light Technique 
    rData\SetEffectConstantVectorElement= AIsFunction( 1 , "?SetEffectConstantVectorElement@@YAXKHH@Z" ) ; 125 Set Effect Constant Vector Element 
    rData\MakeDynamicCubeMap= AIsFunction( 1 , "?MakeDynamicCubeMap@@YAXHH@Z" ) ; 126 Make Dynamic Cube Map 
    rData\DeleteDynamicCubeMap= AIsFunction( 1 , "?DeleteDynamicCubeMap@@YAXH@Z" ) ; 127 Delete Dynamic Cube Map 
    rData\RenderDynamicCubeMap= AIsFunction( 1 , "?RenderDynamicCubeMap@@YAXHHMMM@Z" ) ; 128 Render Dynamic Cube Map 
    rData\ApplyCubeMapToObject= AIsFunction( 1 , "?ApplyCubeMapToObject@@YAXHHH@Z" ) ; 129 Apply Cube Map To Object 
    rData\OnResetDevice= AIsFunction( 1 , "?OnResetDevice@@YAXXZ" ) ; 130 On Reset Device 
    rData\ApplyCubeMapToObject1= AIsFunction( 1 , "?ApplyCubeMapToObject@@YAXHHHH@Z" ) ; 131 Apply Cube Map To Object 
    rData\GetEffectTextureName= AIsFunction( 1 , "?GetEffectTextureName@@YAKKH@Z" ) ; 132 Get Effect Texture Name 
    rData\MakeDynamicCubeMap1= AIsFunction( 1 , "?MakeDynamicCubeMap@@YAXHHH@Z" ) ; 133 Make Dynamic Cube Map 
    rData\GetEffectParameterCount= AIsFunction( 1 , "?GetEffectParameterCount@@YAHXZ" ) ; 134 Get Effect Parameter Count 
    rData\RemoveCameraFromImage= AIsFunction( 1 , "?RemoveCameraFromImage@@YAXH@Z" ) ; 135 Remove Camera From Image 
    rData\DynamicCubeMapExist= AIsFunction( 1 , "?DynamicCubeMapExist@@YAHH@Z" ) ; 136 Dynamic Cube Map Exist 
    rData\GetParameterAnnotationString= AIsFunction( 1 , "?GetParameterAnnotationString@@YAKKKK@Z" ) ; 137 Get Parameter Annotation String 
    rData\GetParameterAnnotationFloat= AIsFunction( 1 , "?GetParameterAnnotationFloat@@YAKKK@Z" ) ; 138 Get Parameter Annotation Float 
    rData\LoadCameraEffect= AIsFunction( 1 , "?LoadCameraEffect@@YAXPADHH@Z" ) ; 139 Load Camera Effect 
    rData\DeleteCameraEffect= AIsFunction( 1 , "?DeleteCameraEffect@@YAXH@Z" ) ; 140 Delete Camera Effect 
    rData\SetCameraEffect= AIsFunction( 1 , "?SetCameraEffect@@YAXHHH@Z" ) ; 141 Set Camera Effect 
    rData\RemoveCameraEffect= AIsFunction( 1 , "?RemoveCameraEffect@@YAXH@Z" ) ; 142 Remove Camera Effect 
    rData\SyncCamera= AIsFunction( 1 , "?SyncCamera@@YAXH@Z" ) ; 143 Sync Camera 
    rData\SetCameraToSurface= AIsFunction( 1 , "?SetCameraToSurface@@YAXH@Z" ) ; 144 Set Camera To Surface 
    rData\CameraEffectExist= AIsFunction( 1 , "?CameraEffectExist@@YAHH@Z" ) ; 145 Camera Effect Exist 
    rData\GetCameraEffect= AIsFunction( 1 , "?GetCameraEffect@@YAHH@Z" ) ; 146 Get Camera Effect 
    rData\SetCameraEffectConstantFloat= AIsFunction( 1 , "?SetCameraEffectConstantFloat@@YAXHPADM@Z" ) ; 147 Set Camera Effect Constant Float 
    rData\SetCameraEffectConstantInt= AIsFunction( 1 , "?SetCameraEffectConstantInt@@YAXHPADH@Z" ) ; 148 Set Camera Effect Constant Integer 
    rData\SetCameraEffectConstantVector= AIsFunction( 1 , "?SetCameraEffectConstantVector@@YAXHPADH@Z" ) ; 149 Set Camera Effect Constant Vector 
    rData\CheckData= AIsFunction( 1 , "?CheckData@@YAXXZ" ) ; 150 Check Data 
    rData\IsLightingShader= AIsFunction( 1 , "?IsLightingShader@@YAHXZ" ) ; 151 Is Lighting Shader 
    rData\IsDynamicTexture= AIsFunction( 1 , "?IsDynamicTexture@@YAHH@Z" ) ; 152 Is Dynamic Texture 
    rData\GetDynamicTextureName= AIsFunction( 1 , "?GetDynamicTextureName@@YAKKH@Z" ) ; 153 Get Dynamic Texture Name 
    rData\IsAlphaMappingShader= AIsFunction( 1 , "?IsAlphaMappingShader@@YAHXZ" ) ; 154 Is Alpha Mapping Shader 
    rData\GetTextureType= AIsFunction( 1 , "?GetTextureType@@YAHK@Z" ) ; 155 Get Texture Type 
    rData\GetParameterAnnotationExist= AIsFunction( 1 , "?GetParameterAnnotationExist@@YAHKK@Z" ) ; 156 Get Parameter Annotation Exist 
    rData\GetVertexShaderVersion= AIsFunction( 1 , "?GetVertexShaderVersion@@YAHXZ" ) ; 157 Get Effect VS Version 
    rData\GetPixelShaderVersion= AIsFunction( 1 , "?GetPixelShaderVersion@@YAHXZ" ) ; 158 Get Effect PS Version 
    rData\GetTextureFileName= AIsFunction( 1 , "?GetTextureFileName@@YAKKHHH@Z" ) ; 159 Get Model Texture Name 
    rData\OnResetDevice1= AIsFunction( 1 , "?OnResetDevice@@YAXXZ" ) ; 160 Reload Display Pointer 
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l GetObjectEffect( Param1.l, Param2.l )
  Retour.l = CallCFunctionFast( rData\GetObjectEffect, Param1, Param2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SaveEffect( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( rData\SaveEffect, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure.l GetTextureStageInUse( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( rData\GetTextureStageInUse, Param1, Param2, Param3 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetEffectTextureCount()
  Retour.l = CallCFunctionFast( rData\GetEffectTextureCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetExternalParameterColumns( Param1.l )
  Retour.l = CallCFunctionFast( rData\GetExternalParameterColumns, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetExternalParameterRows( Param1.l )
  Retour.l = CallCFunctionFast( rData\GetExternalParameterRows, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l CountExternalParameters()
  Retour.l = CallCFunctionFast( rData\CountExternalParameters )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure ReleaseEffectPointer()
  CallCFunctionFast( rData\ReleaseEffectPointer )
 EndProcedure
;
; *********************************************************************
Procedure.s GetExternalParameterName( Param1.l )
  Retour.l = CallCFunctionFast( rData\GetExternalParameterName, ExtraPARAM.l, Param1 )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l GetExternalParameterType( Param1.l )
  Retour.l = CallCFunctionFast( rData\GetExternalParameterType, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetExternalParameterSemantic( Param1.l )
  Retour.l = CallCFunctionFast( rData\GetExternalParameterSemantic, ExtraPARAM.l, Param1 )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l GetExternalParameterAnnotationCount( Param1.l )
  Retour.l = CallCFunctionFast( rData\GetExternalParameterAnnotationCount, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetEffectDescription()
  Retour.l = CallCFunctionFast( rData\GetEffectDescription, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s GetEffectImage()
  Retour.l = CallCFunctionFast( rData\GetEffectImage, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure SetMatrix4( Param0.l, Param1.l, Param2.l, Param3.f )
  CallCFunctionFast( rData\SetMatrix4, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure.f GetMatrix4( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( rData\GetMatrix4, Param1, Param2, Param3 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f GetEffectParameterFloatValue( Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( rData\GetEffectParameterFloatValue, Param1PTR )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure GetEffectParameterVectorValue( Param0.s, Param1.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( rData\GetEffectParameterVectorValue, Param0PTR, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.l DebugCompileEffect( Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( rData\DebugCompileEffect, Param1PTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetEffectErrorString( Param1.l )
  Retour.l = CallCFunctionFast( rData\GetEffectErrorString, ExtraPARAM.l, Param1 )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure Render()
  CallCFunctionFast( rData\Render )
 EndProcedure
;
; *********************************************************************
Procedure ReleaseErrorPointer()
  CallCFunctionFast( rData\ReleaseErrorPointer )
 EndProcedure
;
; *********************************************************************
Procedure.s FindDefaultTechnique()
  Retour.l = CallCFunctionFast( rData\FindDefaultTechnique, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s FindLightTechnique( Param1.l )
  Retour.l = CallCFunctionFast( rData\FindLightTechnique, ExtraPARAM.l, Param1 )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure SetEffectConstantVectorElement( Param0.s, Param1.l, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( rData\SetEffectConstantVectorElement, Param0PTR, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure MakerDataDynamicCubeMap( Param0.l, Param1.l )
  CallCFunctionFast( rData\MakeDynamicCubeMap, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DeleteDynamicCubeMap( Param0.l )
  CallCFunctionFast( rData\DeleteDynamicCubeMap, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure RenderDynamicCubeMap( Param0.l, Param1.l, Param2.f, Param3.f, Param4.f )
  CallCFunctionFast( rData\RenderDynamicCubeMap, Param0, Param1, Param2, Param3, Param4 )
 EndProcedure
;
; *********************************************************************
Procedure ApplyCubeMapToObject( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( rData\ApplyCubeMapToObject, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure OnResetDevice()
  CallCFunctionFast( rData\OnResetDevice )
 EndProcedure
;
; *********************************************************************
Procedure ApplyCubeMapToObject1( Param0.l, Param1.l, Param2.l, Param3.l )
  CallCFunctionFast( rData\ApplyCubeMapToObject1, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure.s GetEffectTextureName( Param1.l )
  Retour.l = CallCFunctionFast( rData\GetEffectTextureName, ExtraPARAM.l, Param1 )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure MakerDatarDataDynamicCubeMap1( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( rData\MakeDynamicCubeMap1, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure.l GetEffectParameterCount()
  Retour.l = CallCFunctionFast( rData\GetEffectParameterCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure RemoveCameraFromImage( Param0.l )
  CallCFunctionFast( rData\RemoveCameraFromImage, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DynamicCubeMapExist( Param1.l )
  Retour.l = CallCFunctionFast( rData\DynamicCubeMapExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetParameterAnnotationString( Param1.s, Param2.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param2PTR.l, Len( Param2 ) + 1 ) ; CreateString
  PokeS( Param2PTR, Param2 )
  Retour.l = CallCFunctionFast( rData\GetParameterAnnotationString, ExtraPARAM.l, Param1PTR, Param2PTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.f GetParameterAnnotationFloat( Param1.s, Param2.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param2PTR.l, Len( Param2 ) + 1 ) ; CreateString
  PokeS( Param2PTR, Param2 )
  Retour.l = CallCFunctionFast( rData\GetParameterAnnotationFloat, Param1PTR, Param2PTR )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure LoadCameraEffect( Param0.s, Param1.l, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( rData\LoadCameraEffect, Param0PTR, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DeleteCameraEffect( Param0.l )
  CallCFunctionFast( rData\DeleteCameraEffect, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure SetCameraEffect( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( rData\SetCameraEffect, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure RemoveCameraEffect( Param0.l )
  CallCFunctionFast( rData\RemoveCameraEffect, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure SyncCamera( Param0.l )
  CallCFunctionFast( rData\SyncCamera, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure SetCameraToSurface( Param0.l )
  CallCFunctionFast( rData\SetCameraToSurface, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l CameraEffectExist( Param1.l )
  Retour.l = CallCFunctionFast( rData\CameraEffectExist, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetCameraEffect( Param1.l )
  Retour.l = CallCFunctionFast( rData\GetCameraEffect, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SetCameraEffectConstantFloat( Param0.l, Param1.s, Param2.f )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( rData\SetCameraEffectConstantFloat, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure SetCameraEffectConstantInt( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( rData\SetCameraEffectConstantInt, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure SetCameraEffectConstantVector( Param0.l, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( rData\SetCameraEffectConstantVector, Param0, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure CheckData()
  CallCFunctionFast( rData\CheckData )
 EndProcedure
;
; *********************************************************************
Procedure.l IsLightingShader()
  Retour.l = CallCFunctionFast( rData\IsLightingShader )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IsDynamicTexture( Param1.l )
  Retour.l = CallCFunctionFast( rData\IsDynamicTexture, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetDynamicTextureName( Param1.l )
  Retour.l = CallCFunctionFast( rData\GetDynamicTextureName, ExtraPARAM.l, Param1 )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l IsAlphaMappingShader()
  Retour.l = CallCFunctionFast( rData\IsAlphaMappingShader )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetTextureType( Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  Retour.l = CallCFunctionFast( rData\GetTextureType, Param1PTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetParameterAnnotationExist( Param1.s, Param2.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param2PTR.l, Len( Param2 ) + 1 ) ; CreateString
  PokeS( Param2PTR, Param2 )
  Retour.l = CallCFunctionFast( rData\GetParameterAnnotationExist, Param1PTR, Param2PTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetVertexShaderVersion()
  Retour.l = CallCFunctionFast( rData\GetVertexShaderVersion )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l GetPixelShaderVersion()
  Retour.l = CallCFunctionFast( rData\GetPixelShaderVersion )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetTextureFileName( Param1.l, Param2.l, Param3.l )
  Retour.l = CallCFunctionFast( rData\GetTextureFileName, ExtraPARAM.l, Param1, Param2, Param3 )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure OnResetDevice1()
  CallCFunctionFast( rData\OnResetDevice1 )
 EndProcedure
;

