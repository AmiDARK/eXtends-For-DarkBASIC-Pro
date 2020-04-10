; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l Vector4_Init()
  Retour.l = CallCFunctionFast( Vector4Extends\Vector4_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D4_Delete( Vector4Number.l )
  Retour.l = CallCFunctionFast( Vector4Extends\V3D4_Delete, Vector4Number )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D4_DynamicMakeVector4()
  Retour.l = CallCFunctionFast( Vector4Extends\V3D4_DynamicMakeVector4 )
  ProcedureReturn Retour
 EndProcedure
;
