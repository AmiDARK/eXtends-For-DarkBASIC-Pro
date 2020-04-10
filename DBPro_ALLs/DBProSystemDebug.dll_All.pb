; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_SystemStruct
  EmptyChecklist.l : ChecklistQuantity.l : ChecklistValueA.l : ChecklistValueB.l
  ChecklistValueC.l : ChecklistValueD.l : ChecklistString.l : TMEMAvailable.l
  DMEMAvailable.l : SMEMAvailable.l : DisableEscapeKey.l : EnableEscapeKey.l
  DisableSystemKeys.l : EnableSystemKeys.l : ExitPrompt.l : ChecklistFValueA.l
  ChecklistFValueB.l : ChecklistFValueC.l : ChecklistFValueD.l : 
 EndStructure

Procedure.l CheckSystem()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProSystemDebug.dll")
    DB_System\EmptyChecklist= AIsFunction( 1 , "?EmptyChecklist@@YAXXZ" ) ; 1 EMPTY CHECKLIST 
    DB_System\ChecklistQuantity= AIsFunction( 1 , "?ChecklistQuantity@@YAHXZ" ) ; 2 CHECKLIST QUANTITY 
    DB_System\ChecklistValueA= AIsFunction( 1 , "?ChecklistValueA@@YAHH@Z" ) ; 3 CHECKLIST VALUE A 
    DB_System\ChecklistValueB= AIsFunction( 1 , "?ChecklistValueB@@YAHH@Z" ) ; 4 CHECKLIST VALUE B 
    DB_System\ChecklistValueC= AIsFunction( 1 , "?ChecklistValueC@@YAHH@Z" ) ; 5 CHECKLIST VALUE C 
    DB_System\ChecklistValueD= AIsFunction( 1 , "?ChecklistValueD@@YAHH@Z" ) ; 6 CHECKLIST VALUE D 
    DB_System\ChecklistString= AIsFunction( 1 , "?ChecklistString@@YAKKH@Z" ) ; 7 CHECKLIST STRING$ 
    DB_System\TMEMAvailable= AIsFunction( 1 , "?TMEMAvailable@@YAHXZ" ) ; 32 SYSTEM TMEM AVAILABLE 
    DB_System\DMEMAvailable= AIsFunction( 1 , "?DMEMAvailable@@YAHXZ" ) ; 33 SYSTEM DMEM AVAILABLE 
    DB_System\SMEMAvailable= AIsFunction( 1 , "?SMEMAvailable@@YAHXZ" ) ; 34 SYSTEM SMEM AVAILABLE 
    DB_System\DisableEscapeKey= AIsFunction( 1 , "?DisableEscapeKey@@YAXXZ" ) ; 35 DISABLE ESCAPEKEY 
    DB_System\EnableEscapeKey= AIsFunction( 1 , "?EnableEscapeKey@@YAXXZ" ) ; 36 ENABLE ESCAPEKEY 
    DB_System\DisableSystemKeys= AIsFunction( 1 , "?DisableSystemKeys@@YAXXZ" ) ; 37 DISABLE SYSTEMKEYS 
    DB_System\EnableSystemKeys= AIsFunction( 1 , "?EnableSystemKeys@@YAXXZ" ) ; 38 ENABLE SYSTEMKEYS 
    DB_System\ExitPrompt= AIsFunction( 1 , "?ExitPrompt@@YAXKK@Z" ) ; 39 EXIT PROMPT Message String, Caption String
    DB_System\ChecklistFValueA= AIsFunction( 1 , "?ChecklistFValueA@@YAKH@Z" ) ; 43 CHECKLIST FVALUE A Index
    DB_System\ChecklistFValueB= AIsFunction( 1 , "?ChecklistFValueB@@YAKH@Z" ) ; 44 CHECKLIST FVALUE B Index
    DB_System\ChecklistFValueC= AIsFunction( 1 , "?ChecklistFValueC@@YAKH@Z" ) ; 45 CHECKLIST FVALUE C Index
    DB_System\ChecklistFValueD= AIsFunction( 1 , "?ChecklistFValueD@@YAKH@Z" ) ; 46 CHECKLIST FVALUE D Index
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBEmptyChecklist()
  CallCFunctionFast( *DB_System\EmptyChecklist )
 EndProcedure
;
; *********************************************************************
Procedure.l DBChecklistQuantity()
  Retour.l = CallCFunctionFast( *DB_System\ChecklistQuantity )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBChecklistValueA( Param1.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistValueA, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBChecklistValueB( Param1.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistValueB, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBChecklistValueC( Param1.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistValueC, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBChecklistValueD( Param1.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistValueD, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBChecklistString( Param1.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistString, ExtraPARAM.l, Param1 )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBTMEMAvailable()
  Retour.l = CallCFunctionFast( *DB_System\TMEMAvailable )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBDMEMAvailable()
  Retour.l = CallCFunctionFast( *DB_System\DMEMAvailable )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBSMEMAvailable()
  Retour.l = CallCFunctionFast( *DB_System\SMEMAvailable )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBDisableSystemEscapeKey()
  CallCFunctionFast( *DB_System\DisableEscapeKey )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableSystemEscapeKey()
  CallCFunctionFast( *DB_System\EnableEscapeKey )
 EndProcedure
;
; *********************************************************************
Procedure DBDisableSystemSystemKeys()
  CallCFunctionFast( *DB_System\DisableSystemKeys )
 EndProcedure
;
; *********************************************************************
Procedure DBEnableSystemSystemKeys()
  CallCFunctionFast( *DB_System\EnableSystemKeys )
 EndProcedure
;
; *********************************************************************
Procedure DBExitPrompt( MessageString.s, CaptionString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MessageStringPTR.l, Len( MessageString ) + 1 ) ; CreateString
  PokeS( MessageStringPTR, MessageString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CaptionStringPTR.l, Len( CaptionString ) + 1 ) ; CreateString
  PokeS( CaptionStringPTR, CaptionString )
  CallCFunctionFast( *DB_System\ExitPrompt, MessageStringPTR, CaptionStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure.f DBChecklistFValueA( Index.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistFValueA, Index )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBChecklistFValueB( Index.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistFValueB, Index )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBChecklistFValueC( Index.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistFValueC, Index )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBChecklistFValueD( Index.l )
  Retour.l = CallCFunctionFast( *DB_System\ChecklistFValueD, Index )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;

