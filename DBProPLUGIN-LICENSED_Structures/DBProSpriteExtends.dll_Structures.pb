; DarkBasic Professional RC2PBIncludes Ver 1.0 File - STRUCTURES SETUP
; By Frederic Cordier - 07.02.13
;
Structure SpriteExtendsStruct
  SPR_Init.l : SPR_Clear.l : SPR_Count.l : SPR_Delete.l
  SPR_DynamicSprite.l : SPR_DynamicAnimatedSprite.l : PrepareSpriteForCollision.l : GetSpriteCollision.l
  FreeSpriteFromCollision.l : GetSpritesDistance.l : 
 EndStructure
Global SpriteExtends.SpriteExtendsStruct
