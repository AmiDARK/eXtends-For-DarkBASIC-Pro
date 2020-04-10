; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
Procedure.l CheckCSG()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProCSGDebug.dll")
    DB_CSG\PerformCSGOnXModel= AIsFunction( 1 , "?PerformCSGOnXModel@@YAXPAD0@Z" ) ; 1 COMPILE CSG Input X File, Output X File
    DB_CSG\PerformCSGOnXModel1= AIsFunction( 1 , "?PerformCSGOnXModel@@YAXPAD0M@Z" ) ; 2 COMPILE CSG Input X File, Output X File, Epsilon
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure
