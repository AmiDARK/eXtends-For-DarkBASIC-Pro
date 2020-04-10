; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l Vector3_Init()
  Retour.l = CallCFunctionFast( Vector3Extends\Vector3_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D3_Delete( Vector3Number.l )
  Retour.l = CallCFunctionFast( Vector3Extends\V3D3_Delete, Vector3Number )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l V3D3_DynamicMakeVector3()
  Retour.l = CallCFunctionFast( Vector3Extends\V3D3_DynamicMakeVector3 )
  ProcedureReturn Retour
 EndProcedure
;
