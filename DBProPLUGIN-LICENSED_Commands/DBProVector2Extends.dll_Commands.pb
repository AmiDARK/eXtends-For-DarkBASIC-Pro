; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l Vector4_Init1()
  Retour.l = CallCFunctionFast( Vector2Extends\Vector4_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D2_Delete( Vector2Number.l )
  Retour.l = CallCFunctionFast( Vector2Extends\V3D2_Delete, Vector2Number )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D2_DynamicMakeVector2()
  Retour.l = CallCFunctionFast( Vector2Extends\V3D2_DynamicMakeVector2 )
  ProcedureReturn Retour
 EndProcedure
;
