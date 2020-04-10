; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 13.12.05
;
; *********************************************************************
Procedure.l DBProExtends_Init()
  Retour.l = CallCFunctionFast( *Extends\DBProExtends_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SetDebugMode( ModeInteger.l )
  CallCFunctionFast( *Extends\SetDebugMode, ModeInteger )
 EndProcedure
;
; *********************************************************************
Procedure.l GetDebugMode()
  Retour.l = CallCFunctionFast( *Extends\GetDebugMode )
  ProcedureReturn Retour
 EndProcedure
;
