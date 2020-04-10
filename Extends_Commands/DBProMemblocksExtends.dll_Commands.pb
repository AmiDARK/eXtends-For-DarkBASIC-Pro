; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 13.12.05
;
; *********************************************************************
Procedure.l BMP_Init1()
  Retour.l = CallCFunctionFast( *MemblocksExtends\BMP_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure BMP_Clear1()
  CallCFunctionFast( *MemblocksExtends\BMP_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_Count1()
  Retour.l = CallCFunctionFast( *MemblocksExtends\BMP_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_Delete1( MemblockNumber.l )
  Retour.l = CallCFunctionFast( *MemblocksExtends\BMP_Delete, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_CloneMemblock()
  Retour.l = CallCFunctionFast( *MemblocksExtends\BMP_CloneMemblock )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l BMP_DynamicMake1( BytesSize.l )
  Retour.l = CallCFunctionFast( *MemblocksExtends\BMP_DynamicMake, BytesSize )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromArray( ArrayName0 )
  Retour.l = CallCFunctionFast( *MemblocksExtends\MBC_DynamicMakeFromArray, ArrayName0 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromBitmap( BitmapNumber.l )
  Retour.l = CallCFunctionFast( *MemblocksExtends\MBC_DynamicMakeFromBitmap, BitmapNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromImage( ImageNumber.l )
  Retour.l = CallCFunctionFast( *MemblocksExtends\MBC_DynamicMakeFromImage, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromMesh( MeshNumber.l )
  Retour.l = CallCFunctionFast( *MemblocksExtends\MBC_DynamicMakeFromMesh, MeshNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l MBC_DynamicMakeFromSound( SoundNumber.l )
  Retour.l = CallCFunctionFast( *MemblocksExtends\MBC_DynamicMakeFromSound, SoundNumber )
  ProcedureReturn Retour
 EndProcedure
;
