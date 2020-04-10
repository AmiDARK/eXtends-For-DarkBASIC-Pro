; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 13.12.05
;
Structure Effects3DExtendsStruct
  Effects3D_Init.l : E3D_DynamicLoadEx.l : E3D_Delete.l : E3D_Clear.l
  E3D_Count.l
 EndStructure
Global Effects3DExtends.Effects3DExtendsStruct

Procedure.l CheckEffects3DExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Shaders3D.dll")
    Effects3DExtends\Effects3D_Init= AIsFunction( 1 , "Effects3D_Init" ) ; 1 E3D Initialized 
    Effects3DExtends\E3D_DynamicLoadEx= AIsFunction( 1 , "E3D_DynamicLoadEx" ) ; 2 E3D Load Effect FileName$, TextureFlag
    Effects3DExtends\E3D_Delete= AIsFunction( 1 , "E3D_Delete" ) ; 3 E3D Delete Effect Effect Number
    Effects3DExtends\E3D_Clear= AIsFunction( 1 , "E3D_Clear" ) ; 4 E3D Clear All Effects 
    Effects3DExtends\E3D_Count= AIsFunction( 1 , "E3D_Count" ) ; 5 E3D Get Effect Count 
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l Effects3D_Init()
  Retour.l = CallCFunctionFast( Effects3DExtends\Effects3D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l E3D_DynamicLoad( FileName.s, TextureFlag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( Effects3DExtends\E3D_DynamicLoadEx, FileNamePTR, TextureFlag )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l E3D_Delete( EffectNumber.l )
  Retour.l = CallCFunctionFast( Effects3DExtends\E3D_Delete, EffectNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure E3D_Clear()
  CallCFunctionFast( Effects3DExtends\E3D_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l E3D_Count()
  Retour.l = CallCFunctionFast( Effects3DExtends\E3D_Count )
  ProcedureReturn Retour
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = --