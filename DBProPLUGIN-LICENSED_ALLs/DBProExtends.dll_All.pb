; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 13.12.05
;
Structure ExtendsStruct
  DBProExtends_Init.l : SetDebugMode.l : GetDebugMode.l : 
 EndStructure
Global Xtends.ExtendsStruct

Procedure.l CheckExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProExtends.dll")
    Xtends\DBProExtends_Init= AIsFunction( 1 , "DBProExtends_Init" ) ; 1 Extends Initialized 
    Xtends\SetDebugMode= AIsFunction( 1 , "SetDebugMode" ) ; 2 Set Extends Debug Mode Mode Integer
    Xtends\GetDebugMode= AIsFunction( 1 , "GetDebugMode" ) ; 3 Get Extends Debug Mode 
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l DBProExtends_Init()
  Retour.l = CallCFunctionFast( Xtends\DBProExtends_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SetDebugMode( ModeInteger.l )
  CallCFunctionFast( Xtends\SetDebugMode, ModeInteger )
 EndProcedure
;
; *********************************************************************
Procedure.l GetDebugMode()
  Retour.l = CallCFunctionFast( Xtends\GetDebugMode )
  ProcedureReturn Retour
 EndProcedure
;

; ExecutableFormat=
; EOF