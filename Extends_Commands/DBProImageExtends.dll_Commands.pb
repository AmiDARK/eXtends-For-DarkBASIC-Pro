; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 13.12.05
;
; *********************************************************************
Procedure.l Image_Init()
  Retour.l = CallCFunctionFast( *ImageExtends\Image_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure IMG_Clear()
  CallCFunctionFast( *ImageExtends\IMG_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Count()
  Retour.l = CallCFunctionFast( *ImageExtends\IMG_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_Delete( ImageNumber.l )
  Retour.l = CallCFunctionFast( *ImageExtends\IMG_Delete, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_DynamicLoad( Filename.s, Flag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Retour.l = CallCFunctionFast( *ImageExtends\IMG_DynamicLoad, FilenamePTR, Flag )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l IMG_MakeImageFromMemblock( MemblockNumber.l )
  Retour.l = CallCFunctionFast( *ImageExtends\IMG_MakeImageFromMemblock, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
