; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure.l SPR_Init()
  Retour.l = CallCFunctionFast( SpriteExtends\SPR_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SPR_Clear()
  CallCFunctionFast( SpriteExtends\SPR_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l SPR_Count()
  Retour.l = CallCFunctionFast( SpriteExtends\SPR_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SPR_Delete( ImageNumber.l )
  Retour.l = CallCFunctionFast( SpriteExtends\SPR_Delete, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SPR_DynamicSprite( Xpos.l, YPos.l, ImageNumber.l )
  Retour.l = CallCFunctionFast( SpriteExtends\SPR_DynamicSprite, Xpos, YPos, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SPR_DynamicAnimatedSprite( FileName.s, Across.l, Down.l, ImageNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( SpriteExtends\SPR_DynamicAnimatedSprite, FileNamePTR, Across, Down, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure PrepareSpriteForCollision( SpriteNumber.l )
  CallCFunctionFast( SpriteExtends\PrepareSpriteForCollision, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l GetSpriteCollision( Sprite1.l, Sprite2.l, Mode.l )
  Retour.l = CallCFunctionFast( SpriteExtends\GetSpriteCollision, Sprite1, Sprite2, Mode )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure FreeSpriteFromCollision( SpriteNumber.l )
  CallCFunctionFast( SpriteExtends\FreeSpriteFromCollision, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l GetSpritesDistance( Sprite1.l, Sprite2.l )
  Retour.l = CallCFunctionFast( SpriteExtends\GetSpritesDistance, Sprite1, Sprite2 )
  ProcedureReturn Retour
 EndProcedure
;
