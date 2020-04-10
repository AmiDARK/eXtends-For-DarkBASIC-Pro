; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l Effects_Init()
  Retour.l = CallCFunctionFast( Effects3DExtends\Effects_Init )
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
