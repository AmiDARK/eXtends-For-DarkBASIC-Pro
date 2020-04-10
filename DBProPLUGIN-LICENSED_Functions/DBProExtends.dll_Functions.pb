; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProExtends.dll")
    Extends\ExtInitialized= AIsFunction( 1 , "ExtInitialized" ) ; 1 EXT Initialized 
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure
