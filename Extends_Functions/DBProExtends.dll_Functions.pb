; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 13.12.05
;
Procedure.l CheckExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProExtends.dll")
    Extends\DBProExtends_Init= AIsFunction( 1 , "DBProExtends_Init" ) ; 1 Extends Initialized 
    Extends\SetDebugMode= AIsFunction( 1 , "SetDebugMode" ) ; 2 Set Extends Debug Mode Mode Integer
    Extends\GetDebugMode= AIsFunction( 1 , "GetDebugMode" ) ; 3 Get Extends Debug Mode 
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure
