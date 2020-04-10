; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS INITIALIZING
; By Frederic Cordier - 07.02.13
;
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

; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 5
; Folding = -