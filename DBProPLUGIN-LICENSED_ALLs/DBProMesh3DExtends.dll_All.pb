; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure Mesh3DExtendsStruct
  Mesh3D_Init.l : M3D_DynamicLoad.l : M3D_Delete.l : M3D_DynamicMakeFromObject.l
  M3D_DynamicMakeFromMemblock.l
 EndStructure
Global Mesh3DExtends.Mesh3DExtendsStruct

Procedure.l CheckMesh3DExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Meshes3D.dll")
    Mesh3DExtends\Mesh3D_Init= AIsFunction( 1 , "Mesh3D_Init" ) ; 1 M3D Initialized 
    Mesh3DExtends\M3D_DynamicLoad= AIsFunction( 1 , "M3D_DynamicLoad" ) ; 2 M3D Load Mesh FileName$
    Mesh3DExtends\M3D_Delete= AIsFunction( 1 , "M3D_Delete" ) ; 3 M3D Delete Mesh Mesh Number
    Mesh3DExtends\M3D_DynamicMakeFromObject= AIsFunction( 1 , "M3D_DynamicMakeFromObject" ) ; 4 M3D Make Mesh From Object Source Object
    Mesh3DExtends\M3D_DynamicMakeFromMemblock= AIsFunction( 1 , "M3D_DynamicMakeFromMemblock" ) ; 5 M3D Make Mesh From Memblock Source Memblock
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l Mesh3D_Init()
  Retour.l = CallCFunctionFast( Mesh3DExtends\Mesh3D_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l M3D_DynamicLoad( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( Mesh3DExtends\M3D_DynamicLoad, FileNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l M3D_Delete( MeshNumber.l )
  Retour.l = CallCFunctionFast( Mesh3DExtends\M3D_Delete, MeshNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l M3D_DynamicMakeFromObject( SourceObject.l )
  Retour.l = CallCFunctionFast( Mesh3DExtends\M3D_DynamicMakeFromObject, SourceObject )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l M3D_DynamicMakeFromMemblock( SourceMemblock.l )
  Retour.l = CallCFunctionFast( Mesh3DExtends\M3D_DynamicMakeFromMemblock, SourceMemblock )
  ProcedureReturn Retour
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = --