; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_CSGStruct
  PerformCSGOnXModel.l : PerformCSGOnXModel1.l : 
 EndStructure

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

; *********************************************************************
Procedure DBPerformCSGOnXModel( InputXFile.s, OutputXFile.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @InputXFilePTR.l, Len( InputXFile ) + 1 ) ; CreateString
  PokeS( InputXFilePTR, InputXFile )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @OutputXFilePTR.l, Len( OutputXFile ) + 1 ) ; CreateString
  PokeS( OutputXFilePTR, OutputXFile )
  CallCFunctionFast( *DB_CSG\PerformCSGOnXModel, InputXFilePTR, OutputXFilePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformCSGOnXModel1( InputXFile.s, OutputXFile.s, Epsilon.f )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @InputXFilePTR.l, Len( InputXFile ) + 1 ) ; CreateString
  PokeS( InputXFilePTR, InputXFile )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @OutputXFilePTR.l, Len( OutputXFile ) + 1 ) ; CreateString
  PokeS( OutputXFilePTR, OutputXFile )
  CallCFunctionFast( *DB_CSG\PerformCSGOnXModel1, InputXFilePTR, OutputXFilePTR, Epsilon )
 EndProcedure
;

