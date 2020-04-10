; DarkBasic Professional RC2PBIncludes Ver 1.0 File - STRUCTURES SETUP
; By Frederic Cordier - 07.02.13
;
Structure Basic3DExtendsStruct
  Basic3D_Init.l : B3D_DynamicLoad.l : B3D_Delete.l : B3D_DynamicMake.l
  B3D_DynamicMakeBox.l : B3D_DynamicMakeCone.l : B3D_DynamicMakeCube.l : B3D_DynamicMakeCylinder.l
  B3D_DynamicMakeSphere.l : B3D_DynamicMakeTriangle.l : B3D_DynamicMakePlain.l : B3D_MakeFromLimb.l
  B3D_DynamicClone.l : B3D_DynamicInstance.l : B3D_AddBillBoardToList.l : B3D_RemoveBillBoardFromList.l
  B3D_DisableYRot.l : B3D_EnableYRot.l : B3D_RefreshBillBoards.l : B3D_GetPointsDistance.l
  B3D_GetDistanceFromCamera.l : B3D_GetObjectsDistance.l : B3D_GetPointDistancetoObject.l : B3D_GetPointDistancetoCamera.l
  B3D_SetBBCameraControl.l : B3D_DynamicLoadEx.l : B3D_ClearBillBoardList.l : B3D_GetBillBoardCount.l
  B3D_DynamicLoadEx1.l : B3D_DynamicLoadEx2.l : B3D_FixedObjectScale.l
 EndStructure
Global Basic3DExtends.Basic3DExtendsStruct

; IDE Options = PureBasic 4.61 (Windows - x86)
; CursorPosition = 11
; EnableXP