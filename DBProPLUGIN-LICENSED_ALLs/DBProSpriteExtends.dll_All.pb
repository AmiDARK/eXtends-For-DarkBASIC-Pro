; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure XtSpritesStruct
  SPR_Init.l : SPR_Clear.l : SPR_Count.l : SPR_Delete.l
  SPR_DynamicSprite.l : SPR_DynamicAnimatedSprite.l : PrepareSpriteForCollision.l : GetSpriteCollision.l
  FreeSpriteFromCollision.l : GetSpritesDistance.l : 
 EndStructure
Global XtSprites.XtSpritesStruct

Procedure.l CheckSpriteExtends()
  SUCCESS.l = 1
  If OpenLibrary( 1, "eXtends_Sprites.dll")
    XtSprites\SPR_Init= AIsFunction( 1 , "SPR_Init" ) ; 1 SPR Initialized 
    XtSprites\SPR_Clear= AIsFunction( 1 , "SPR_Clear" ) ; 2 SPR Clear 
    XtSprites\SPR_Count= AIsFunction( 1 , "SPR_Count" ) ; 3 SPR Get Count 
    XtSprites\SPR_Delete= AIsFunction( 1 , "SPR_Delete" ) ; 4 SPR Delete Sprite ImageNumber
    XtSprites\SPR_DynamicSprite= AIsFunction( 1 , "SPR_DynamicSprite" ) ; 5 SPR Sprite Xpos, YPos, ImageNumber
    XtSprites\SPR_DynamicAnimatedSprite= AIsFunction( 1 , "SPR_DynamicAnimatedSprite" ) ; 6 SPR Make Animated Sprite FileName$, Across, Down, ImageNumber
    XtSprites\PrepareSpriteForCollision= AIsFunction( 1 , "PrepareSpriteForCollision" ) ; 7 SPR Prepare Collision SpriteNumber
    XtSprites\GetSpriteCollision= AIsFunction( 1 , "GetSpriteCollision" ) ; 8 SPR Get Collision Sprite1, Sprite2, Mode
    XtSprites\FreeSpriteFromCollision= AIsFunction( 1 , "FreeSpriteFromCollision" ) ; 9 SPR Free Collision SpriteNumber
    XtSprites\GetSpritesDistance= AIsFunction( 1 , "GetSpritesDistance" ) ; 10 SPR Get Distance Sprite1, Sprite2
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l SPR_Init()
  Retour.l = CallCFunctionFast( XtSprites\SPR_Init )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SPR_Clear()
  CallCFunctionFast( XtSprites\SPR_Clear )
 EndProcedure
;
; *********************************************************************
Procedure.l SPR_Count()
  Retour.l = CallCFunctionFast( XtSprites\SPR_Count )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SPR_Delete( ImageNumber.l )
  Retour.l = CallCFunctionFast( XtSprites\SPR_Delete, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SPR_DynamicSprite( Xpos.l, YPos.l, ImageNumber.l )
  Retour.l = CallCFunctionFast( XtSprites\SPR_DynamicSprite, Xpos, YPos, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l SPR_DynamicAnimatedSprite( FileName.s, Across.l, Down.l, ImageNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FileNamePTR.l, Len( FileName ) + 1 ) ; CreateString
  PokeS( FileNamePTR, FileName )
  Retour.l = CallCFunctionFast( XtSprites\SPR_DynamicAnimatedSprite, FileNamePTR, Across, Down, ImageNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure PrepareSpriteForCollision( SpriteNumber.l )
  CallCFunctionFast( XtSprites\PrepareSpriteForCollision, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l GetSpriteCollision( Sprite1.l, Sprite2.l, Mode.l )
  Retour.l = CallCFunctionFast( XtSprites\GetSpriteCollision, Sprite1, Sprite2, Mode )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure FreeSpriteFromCollision( SpriteNumber.l )
  CallCFunctionFast( XtSprites\FreeSpriteFromCollision, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l GetSpritesDistance( Sprite1.l, Sprite2.l )
  Retour.l = CallCFunctionFast( XtSprites\GetSpritesDistance, Sprite1, Sprite2 )
  ProcedureReturn Retour
 EndProcedure
;


; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 10
; Folding = --