; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_SpritesStruct
  Sprite.l : SetSprite.l : Size.l : Scale.l
  Stretch.l : Offset.l : Mirror.l : Flip.l
  Delete.l : Paste.l : Hide.l : Show.l
  HideAllSprites.l : ShowAllSprites.l : GetExist.l : GetX.l
  GetY.l : GetXOffset.l : GetYOffset.l : GetWidth.l
  GetHeight.l : GetImage.l : GetXScale.l : GetYScale.l
  GetMirrored.l : GetFlipped.l : GetHit.l : GetCollision.l
  Rotate.l : SetAlpha.l : SetDiffuse.l : CreateAnimatedSprite.l
  SetTextureCoordinates.l : Play.l : SetFrame.l : SetImage.l
  Clone.l : GetAngle.l : GetAlpha.l : GetRed.l
  GetGreen.l : GetBlue.l : GetFrame.l : Move.l
  SetPriority.l : GetVisible.l : SetSpriteResize.l : GetPriority.l
 EndStructure

Procedure.l CheckSprites()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProSpritesDebug.dll")
    DB_Sprites\Sprite= AIsFunction( 1 , "?Sprite@@YAXHHHH@Z" ) ; 1 SPRITE Sprite Number, XPos, YPos, Image Number
    DB_Sprites\SetSprite= AIsFunction( 1 , "?SetSprite@@YAXHHH@Z" ) ; 2 SET SPRITE Sprite Number, Backsave, Transparency
    DB_Sprites\Size= AIsFunction( 1 , "?Size@@YAXHHH@Z" ) ; 3 SIZE SPRITE Sprite Number, XSize, YSize
    DB_Sprites\Scale= AIsFunction( 1 , "?Scale@@YAXHM@Z" ) ; 4 SCALE SPRITE Sprite Number, Scale
    DB_Sprites\Stretch= AIsFunction( 1 , "?Stretch@@YAXHHH@Z" ) ; 5 STRETCH SPRITE Sprite Number, XScale, YScale
    DB_Sprites\Offset= AIsFunction( 1 , "?Offset@@YAXHHH@Z" ) ; 6 OFFSET SPRITE Sprite Number, XOffset, YOffset
    DB_Sprites\Mirror= AIsFunction( 1 , "?Mirror@@YAXH@Z" ) ; 7 MIRROR SPRITE Sprite Number
    DB_Sprites\Flip= AIsFunction( 1 , "?Flip@@YAXH@Z" ) ; 8 FLIP SPRITE Sprite Number
    DB_Sprites\Delete= AIsFunction( 1 , "?Delete@@YAXH@Z" ) ; 9 DELETE SPRITE Sprite Number
    DB_Sprites\Paste= AIsFunction( 1 , "?Paste@@YAXHHH@Z" ) ; 10 PASTE SPRITE Sprite Number, XPos, YPos
    DB_Sprites\Hide= AIsFunction( 1 , "?Hide@@YAXH@Z" ) ; 11 HIDE SPRITE Sprite Number
    DB_Sprites\Show= AIsFunction( 1 , "?Show@@YAXH@Z" ) ; 12 SHOW SPRITE Sprite Number
    DB_Sprites\HideAllSprites= AIsFunction( 1 , "?HideAllSprites@@YAXXZ" ) ; 13 HIDE ALL SPRITES 
    DB_Sprites\ShowAllSprites= AIsFunction( 1 , "?ShowAllSprites@@YAXXZ" ) ; 14 SHOW ALL SPRITES 
    DB_Sprites\GetExist= AIsFunction( 1 , "?GetExist@@YAHH@Z" ) ; 15 SPRITE EXIST Sprite Number
    DB_Sprites\GetX= AIsFunction( 1 , "?GetX@@YAHH@Z" ) ; 16 SPRITE X Sprite Number
    DB_Sprites\GetY= AIsFunction( 1 , "?GetY@@YAHH@Z" ) ; 17 SPRITE Y Sprite Number
    DB_Sprites\GetXOffset= AIsFunction( 1 , "?GetXOffset@@YAHH@Z" ) ; 18 SPRITE OFFSET X Sprite Number
    DB_Sprites\GetYOffset= AIsFunction( 1 , "?GetYOffset@@YAHH@Z" ) ; 19 SPRITE OFFSET Y Sprite Number
    DB_Sprites\GetWidth= AIsFunction( 1 , "?GetWidth@@YAHH@Z" ) ; 20 SPRITE WIDTH Sprite Number
    DB_Sprites\GetHeight= AIsFunction( 1 , "?GetHeight@@YAHH@Z" ) ; 21 SPRITE HEIGHT Sprite Number
    DB_Sprites\GetImage= AIsFunction( 1 , "?GetImage@@YAHH@Z" ) ; 22 SPRITE IMAGE Sprite Number
    DB_Sprites\GetXScale= AIsFunction( 1 , "?GetXScale@@YAHH@Z" ) ; 23 SPRITE SCALE X Sprite Number
    DB_Sprites\GetYScale= AIsFunction( 1 , "?GetYScale@@YAHH@Z" ) ; 24 SPRITE SCALE Y Sprite Number
    DB_Sprites\GetMirrored= AIsFunction( 1 , "?GetMirrored@@YAHH@Z" ) ; 25 SPRITE MIRRORED Sprite Number
    DB_Sprites\GetFlipped= AIsFunction( 1 , "?GetFlipped@@YAHH@Z" ) ; 26 SPRITE FLIPPED Sprite Number
    DB_Sprites\GetHit= AIsFunction( 1 , "?GetHit@@YAHHH@Z" ) ; 27 SPRITE HIT Sprite Number, Target Sprite Number
    DB_Sprites\GetCollision= AIsFunction( 1 , "?GetCollision@@YAHHH@Z" ) ; 28 SPRITE COLLISION Sprite Number, Target Sprite Number
    DB_Sprites\Rotate= AIsFunction( 1 , "?Rotate@@YAXHM@Z" ) ; 29 ROTATE SPRITE Sprite Number, Angle
    DB_Sprites\SetAlpha= AIsFunction( 1 , "?SetAlpha@@YAXHH@Z" ) ; 30 SET SPRITE ALPHA Sprite Number, Alpha Value
    DB_Sprites\SetDiffuse= AIsFunction( 1 , "?SetDiffuse@@YAXHHHH@Z" ) ; 31 SET SPRITE DIFFUSE Sprite Number, Red Value, Green Value, Blue Value
    DB_Sprites\CreateAnimatedSprite= AIsFunction( 1 , "?CreateAnimatedSprite@@YAXHPADHHH@Z" ) ; 32 CREATE ANIMATED SPRITE Sprite Number, Filename, Across, Down, Image Number
    DB_Sprites\SetTextureCoordinates= AIsFunction( 1 , "?SetTextureCoordinates@@YAXHHMM@Z" ) ; 33 SET SPRITE TEXTURE COORD Sprite Number, Vertex Index, UValue, VValue
    DB_Sprites\Play= AIsFunction( 1 , "?Play@@YAXHHHH@Z" ) ; 34 PLAY SPRITE Sprite Number, Start Frame, End Frame, Delay Value
    DB_Sprites\SetFrame= AIsFunction( 1 , "?SetFrame@@YAXHH@Z" ) ; 35 SET SPRITE FRAME Sprite Number, Frame Value
    DB_Sprites\SetImage= AIsFunction( 1 , "?SetImage@@YAXHH@Z" ) ; 36 SET SPRITE IMAGE Sprite Number, Image Number
    DB_Sprites\Clone= AIsFunction( 1 , "?Clone@@YAXHH@Z" ) ; 37 CLONE SPRITE Sprite Number, Destination Sprite Number
    DB_Sprites\GetAngle= AIsFunction( 1 , "?GetAngle@@YAKH@Z" ) ; 38 SPRITE ANGLE Sprite Number
    DB_Sprites\GetAlpha= AIsFunction( 1 , "?GetAlpha@@YAHH@Z" ) ; 39 SPRITE ALPHA Sprite Number
    DB_Sprites\GetRed= AIsFunction( 1 , "?GetRed@@YAHH@Z" ) ; 40 SPRITE RED Sprite Number
    DB_Sprites\GetGreen= AIsFunction( 1 , "?GetGreen@@YAHH@Z" ) ; 41 SPRITE GREEN Sprite Number
    DB_Sprites\GetBlue= AIsFunction( 1 , "?GetBlue@@YAHH@Z" ) ; 42 SPRITE BLUE Sprite Number
    DB_Sprites\GetFrame= AIsFunction( 1 , "?GetFrame@@YAHH@Z" ) ; 43 SPRITE FRAME Sprite Number
    DB_Sprites\Move= AIsFunction( 1 , "?Move@@YAXHM@Z" ) ; 44 MOVE SPRITE Sprite Number, Velocity
    DB_Sprites\SetPriority= AIsFunction( 1 , "?SetPriority@@YAXHH@Z" ) ; 45 SET SPRITE PRIORITY Sprite Number, Priority
    DB_Sprites\GetVisible= AIsFunction( 1 , "?GetVisible@@YAHH@Z" ) ; 46 SPRITE VISIBLE Sprite Number
    DB_Sprites\SetSpriteResize= AIsFunction( 1 , "?SetSpriteResize@@YAXH@Z" ) ; 47 SET SPRITE RESIZE Mode
    DB_Sprites\GetPriority= AIsFunction( 1 , "?GetPriority@@YAHH@Z" ) ; 48 SPRITE PRIORITY Sprite Number
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBSprite( SpriteNumber.l, XPos.l, YPos.l, ImageNumber.l )
  CallCFunctionFast( *DB_Sprites\Sprite, SpriteNumber, XPos, YPos, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSprite( SpriteNumber.l, Backsave.l, Transparency.l )
  CallCFunctionFast( *DB_Sprites\SetSprite, SpriteNumber, Backsave, Transparency )
 EndProcedure
;
; *********************************************************************
Procedure DBSizeSprite( SpriteNumber.l, XSize.l, YSize.l )
  CallCFunctionFast( *DB_Sprites\Size, SpriteNumber, XSize, YSize )
 EndProcedure
;
; *********************************************************************
Procedure DBScaleSprite( SpriteNumber.l, Scale.f )
  CallCFunctionFast( *DB_Sprites\Scale, SpriteNumber, Scale )
 EndProcedure
;
; *********************************************************************
Procedure DBStretchSprite( SpriteNumber.l, XScale.l, YScale.l )
  CallCFunctionFast( *DB_Sprites\Stretch, SpriteNumber, XScale, YScale )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpriteOffset( SpriteNumber.l, XOffset.l, YOffset.l )
  CallCFunctionFast( *DB_Sprites\Offset, SpriteNumber, XOffset, YOffset )
 EndProcedure
;
; *********************************************************************
Procedure DBMirrorSprite( SpriteNumber.l )
  CallCFunctionFast( *DB_Sprites\Mirror, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBFlipSprite( SpriteNumber.l )
  CallCFunctionFast( *DB_Sprites\Flip, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteSprite( SpriteNumber.l )
  CallCFunctionFast( *DB_Sprites\Delete, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPasteSprite( SpriteNumber.l, XPos.l, YPos.l )
  CallCFunctionFast( *DB_Sprites\Paste, SpriteNumber, XPos, YPos )
 EndProcedure
;
; *********************************************************************
Procedure DBHideSprite( SpriteNumber.l )
  CallCFunctionFast( *DB_Sprites\Hide, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBShowSprite( SpriteNumber.l )
  CallCFunctionFast( *DB_Sprites\Show, SpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBHideAllSprites()
  CallCFunctionFast( *DB_Sprites\HideAllSprites )
 EndProcedure
;
; *********************************************************************
Procedure DBShowAllSprites()
  CallCFunctionFast( *DB_Sprites\ShowAllSprites )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteExist( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetExist, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpritePositionX( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetX, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpritePositionY( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetY, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteXOffset( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetXOffset, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteYOffset( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetYOffset, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteWidth( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetWidth, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteHeight( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetHeight, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteImage( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetImage, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteXScale( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetXScale, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteYScale( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetYScale, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteMirrored( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetMirrored, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteFlipped( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetFlipped, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteHit( SpriteNumber.l, TargetSpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetHit, SpriteNumber, TargetSpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteCollision( SpriteNumber.l, TargetSpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetCollision, SpriteNumber, TargetSpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBRotateSprite( SpriteNumber.l, Angle.f )
  CallCFunctionFast( *DB_Sprites\Rotate, SpriteNumber, Angle )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpriteAlpha( SpriteNumber.l, AlphaValue.l )
  CallCFunctionFast( *DB_Sprites\SetAlpha, SpriteNumber, AlphaValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpriteDiffuse( SpriteNumber.l, RedValue.l, GreenValue.l, BlueValue.l )
  CallCFunctionFast( *DB_Sprites\SetDiffuse, SpriteNumber, RedValue, GreenValue, BlueValue )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateAnimatedSprite( SpriteNumber.l, Filename.s, Across.l, Down.l, ImageNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Sprites\CreateAnimatedSprite, SpriteNumber, FilenamePTR, Across, Down, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetTextureCoordinates( SpriteNumber.l, VertexIndex.l, UValue.f, VValue.f )
  CallCFunctionFast( *DB_Sprites\SetTextureCoordinates, SpriteNumber, VertexIndex, UValue, VValue )
 EndProcedure
;
; *********************************************************************
Procedure DBPlaySprite( SpriteNumber.l, StartFrame.l, EndFrame.l, DelayValue.l )
  CallCFunctionFast( *DB_Sprites\Play, SpriteNumber, StartFrame, EndFrame, DelayValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpriteFrame( SpriteNumber.l, FrameValue.l )
  CallCFunctionFast( *DB_Sprites\SetFrame, SpriteNumber, FrameValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpriteImage( SpriteNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Sprites\SetImage, SpriteNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCloneSprite( SpriteNumber.l, DestinationSpriteNumber.l )
  CallCFunctionFast( *DB_Sprites\Clone, SpriteNumber, DestinationSpriteNumber )
 EndProcedure
;
; *********************************************************************
Procedure.f DBGetAngle( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetAngle, SpriteNumber )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteAlpha( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetAlpha, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteRed( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetRed, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteGreen( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetGreen, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteBlue( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetBlue, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpriteFrame( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetFrame, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMoveSprite( SpriteNumber.l, Velocity.f )
  CallCFunctionFast( *DB_Sprites\Move, SpriteNumber, Velocity )
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpritePriority( SpriteNumber.l, Priority.l )
  CallCFunctionFast( *DB_Sprites\SetPriority, SpriteNumber, Priority )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetVisible( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetVisible, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetSpriteResize( Mode.l )
  CallCFunctionFast( *DB_Sprites\SetSpriteResize, Mode )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetSpritePriority( SpriteNumber.l )
  Retour.l = CallCFunctionFast( *DB_Sprites\GetPriority, SpriteNumber )
  ProcedureReturn Retour
 EndProcedure
;

