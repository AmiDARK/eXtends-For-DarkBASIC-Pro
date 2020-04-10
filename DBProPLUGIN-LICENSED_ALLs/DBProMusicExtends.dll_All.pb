; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 13.12.05
;
Structure MusicExtendsStruct
  MSC_Init.l : MSC_Clear.l : MSC_Count.l : MSC_Delete.l
  MSC_DynamicLoad.l : 
 EndStructure
Global MusicExtends.MusicExtendsStruct

Procedure.l CheckMusicExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Musics.dll")
    MusicExtends\MSC_Init= AIsFunction( 1 , "MSC_Init" ) ; 1 MSC Initialized 
    MusicExtends\MSC_Clear= AIsFunction( 1 , "MSC_Clear" ) ; 2 MSC Clear 
    MusicExtends\MSC_Count= AIsFunction( 1 , "MSC_Count" ) ; 3 MSC Get Count 
    MusicExtends\MSC_Delete= AIsFunction( 1 , "MSC_Delete" ) ; 4 MSC Delete Music Music  Number
    MusicExtends\MSC_DynamicLoad= AIsFunction( 1 , "MSC_DynamicLoad" ) ; 5 MSC Load Music Filename$
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l MSC_Init()
  Retour.l = CallCFunctionFast( MusicExtends\MSC_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure MSC_Clear()
  CallCFunctionFast( MusicExtends\MSC_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l MSC_Count()
  Retour.l = CallCFunctionFast( MusicExtends\MSC_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MSC_Delete( MusicNumber.l )
  Retour.l = CallCFunctionFast( MusicExtends\MSC_Delete, MusicNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MSC_DynamicLoad( Filename.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( MusicExtends\MSC_DynamicLoad, FilenamePTR )
  ProcedureReturn Retour
 EndProcedure
;


; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 11
; Folding = --