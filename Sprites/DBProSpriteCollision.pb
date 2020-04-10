Procedure.l GetPixelColor( Sprite1, XPos.l, YPos.l )
  _RESULT.l = 0
  _xs.l = DBReadMemblockDWord( SpriteCOL( Sprite1 ), 0 )
  _ys.l = DBReadMemblockDWord( SpriteCOL( Sprite1 ), 4 )
  _dp.l = DBReadMemblockDWord( SpriteCOL( Sprite1 ), 8 )
  _pixsize.l = _dp/8
  If XPos > -1 And XPos < _xs
    If YPos > -1 And YPos < _ys
      _Adress = 12 + ( YPos * _xs * _PixSize ) + ( XPos * _PixSize )
      If _Adress > -1 And _Adress < DBGetMemblockSize( SpriteCol( Sprite1 ) )
        If _dp = 8 : _RESULT = DBReadMemblockByte( SpriteCOL( Sprite1 ), _Adress ) : EndIf
        If _dp = 16 : _RESULT = DBReadMemblockWordLLL( SpriteCOL( Sprite1 ), _Adress ) : EndIf
        If _dp = 32 : _RESULT = DBReadMemblockDWord( SpriteCOL( Sprite1 ), _Adress ) : EndIf
       EndIf
     EndIf
   EndIf
  ProcedureReturn _RESULT
 EndProcedure

Procedure.l GetSpritePixel( Spr.l, XScreen.l, YScreen.l )
  ; Now we take the coordinate of the screen pixel To see If it's in the memblock image or outside.
  XPosInRot.f = XScreen - DBGetSpritePositionX( Spr )
  YPosInRot.f = YScreen - DBGetSpritePositionY( Spr )
  Angle1.f = Deg2Rad( DBGetAngle( Spr ) )
  Angle2.f = Deg2Rad( DBWrapValue( 0.0 - DBGetAngle( Spr ) ) )
  XPosInFinal.f = ( ( Cos( Angle2 ) * XPosInRot ) - ( Sin( Angle2 ) * YPosInRot ) ) / ( DBGetSpriteXScale( Spr ) / 100.0 )
  YPosInFinal.f = ( ( Sin( Angle2 ) * XPosInRot ) + ( Cos( Angle2 ) * YPosInRot ) ) / ( DBGetSpriteYScale( Spr ) / 100.0 )
  ; Update to handle Mirror sprite
  If DBGetSpriteMirrored( Spr ) = 1
    XPosInFinal = DBGetSpriteWidth( spr ) - XPosInFinal    
   EndIf
  ; Update to handle flipped sprite
  If DBGetSpriteFlipped( Spr ) = 1
    YPosInFinal = DBGetSpriteHeight( Spr ) - YPosInFinal
   EndIf
   ; Update to handle offset sprite
   XPosInFinal = XPosInFinal + DBGetSpriteXOffset( Spr )
   YPosInFinal = YPosInFinal + DBGetSpriteYOffset( Spr )
   ; Get the pixel color.
   COLOR.l = GetPixelColor( Spr, XPosInFinal, YPosInFinal )
  ProcedureReturn COLOR
 EndProcedure
;
ProcedureCDLL PrepareSpriteForCollision( Sprite1.l )
  If SPRInitialized = 1
    If Sprite1 > 0
      If DBGetSpriteExist( Sprite1 ) = 1
        SpriteImage1.l = DBGetSpriteImage( Sprite1 )
        If SpriteImage1 <> SpriteIMG( Sprite1 )
          SpriteIMG( Sprite1 ) = SpriteImage1
          If SpriteCOL( Sprite1 ) = 0
            SpriteCOL( Sprite1 ) = MBC_DynamicMakeFromImage( SpriteImage1 )
            SpritePTR( Sprite1 ) = DBGetMemblockPtr( SpriteCol( Sprite1 ) )
           Else
            DBCreateMemblockFromImage( SpriteCol( Sprite1 ), SpriteImage1 )
            SpritePTR( Sprite1 ) = DBGetMemblockPtr( SpriteCol( Sprite1 ) )
           EndIf 
         EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure
;

Procedure.l GetSpriteCollisionAdvanced( M_Sprite1, M_Sprite2, COLMODE.l )
  _PIXEL = 0
  ; Firstly, we'll calculate the 4 rounding spot positions : SPRITE#1
  XSize.f = DBGetSpriteWidth( M_Sprite1 ) ; * DBGetSpriteXScale( _Sprite1 ) / 100.0
  YSize.f = DBGetSpriteHeight( M_Sprite1 ) ; * DBGetSpriteYScale( _Sprite1 ) / 100.0
  Angle1.f = Deg2Rad( DBGetAngle( M_Sprite1 ) )
  Angle2.f = Deg2Rad( DBWrapValue( 0.0 - DBGetAngle( M_Sprite1 ) ) )
  ; Top Left
  SpotA( 1 )\XPos = 0 + DBGetSpritePositionX( M_Sprite1 )
  SpotA( 1 )\YPos = 0 + DBGetSpritePositionY( M_Sprite1 )
  ; Top Right
  SpotA( 2 )\Xpos = ( XSize * Cos( Angle1 ) ) + DBGetSpritePositionX( M_Sprite1 )
  SpotA( 2 )\Ypos = ( XSize * Sin( Angle1 ) ) + DBGetSpritePositionY( M_Sprite1 )
  ; Bottom Left
  SpotA( 3 )\XPos = ( YSize * Sin( Angle2 ) ) + DBGetSpritePositionX( M_Sprite1 )
  SpotA( 3 )\YPos = ( YSize * Cos( Angle2 ) ) + DBGetSpritePositionY( M_Sprite1 )
  ; Bottom Right
  SpotA( 4 )\Xpos = SpotA( 3 )\Xpos + ( SpotA( 2 )\Xpos - SpotA( 1 )\Xpos )
  SpotA( 4 )\Ypos = SpotA( 3 )\Ypos + ( SpotA( 2 )\Ypos - SpotA( 1 )\Ypos )

  ; Secondly, we'll calculate the 4 rounding spot positions : SPRITE#2
  XSize.f = DBGetSpriteWidth( M_Sprite2 ) ; * DBGetSpriteXScale( _Sprite2 ) / 100.0
  YSize.f = DBGetSpriteHeight( M_Sprite2 ) ; * DBGetSpriteYScale( _Sprite2 ) / 100.0
  Angle1.f = Deg2Rad( DBGetAngle( M_Sprite2 ) )
  Angle2.f = Deg2Rad( DBWrapValue( 0.0 - DBGetAngle( M_Sprite2 ) ) )
  ; Top Left
  SpotB( 1 )\XPos = 0 + DBGetSpritePositionX( M_Sprite2 )
  SpotB( 1 )\YPos = 0 + DBGetSpritePositionY( M_Sprite2 )
  ; Top Right
  SpotB( 2 )\Xpos = ( XSize * Cos( Angle1 ) ) + DBGetSpritePositionX( M_Sprite2 )
  SpotB( 2 )\Ypos = ( XSize * Sin( Angle1 ) ) + DBGetSpritePositionY( M_Sprite2 )
  ; Bottom Left
  SpotB( 3 )\XPos = ( YSize * Sin( Angle2 ) ) + DBGetSpritePositionX( M_Sprite2 )
  SpotB( 3 )\YPos = ( YSize * Cos( Angle2 ) ) + DBGetSpritePositionY( M_Sprite2 )
  ; Bottom Right
  SpotB( 4 )\Xpos = SpotB( 3 )\Xpos + ( SpotB( 2 )\Xpos - SpotB( 1 )\Xpos )
  SpotB( 4 )\Ypos = SpotB( 3 )\Ypos + ( SpotB( 2 )\Ypos - SpotB( 1 )\Ypos )

  ; We check now to know if a collision box exist between 2 boxes defined.

  XMax1.l = -1 : YMax1.l = -1 : XMax2.l = -1 : YMax2.l = -1
  XMin1.l = 8000 : YMin1.l = 8000 : XMin2.l = 8000 : YMin2.l = 8000
  For XLoop = 1 To 4
    If SpotA( XLoop )\Xpos < XMin1 : XMin1 = SpotA( XLoop )\Xpos : EndIf
    If SpotA( XLoop )\Ypos < YMin1 : YMin1 = SpotA( XLoop )\Ypos : EndIf
    If SpotA( XLoop )\Xpos > XMax1 : XMax1 = SpotA( XLoop )\Xpos : EndIf
    If SpotA( XLoop )\Ypos > YMax1 : YMax1 = SpotA( XLoop )\Ypos : EndIf
    If SpotB( XLoop )\Xpos < XMin2 : XMin2 = SpotB( XLoop )\Xpos : EndIf
    If SpotB( XLoop )\Ypos < YMin2 : YMin2 = SpotB( XLoop )\Ypos : EndIf
    If SpotB( XLoop )\Xpos > XMax2 : XMax2 = SpotB( XLoop )\Xpos : EndIf
    If SpotB( XLoop )\Ypos > YMax2 : YMax2 = SpotB( XLoop )\Ypos : EndIf
   Next XLoop
  XStart.l = -1 : YStart.l = -1 : XEnd.l = -1 : YEnd.l = -1
  If XMin1 < XMin2 : XStart = XMin2 : Else : XStart = XMin1 : EndIf
  If XMax1 < XMax2 : XEnd = XMax1 : Else : XEnd = XMax2 : EndIf
  If YMin1 < YMin2 : YStart = YMin2 : Else : YStart = YMin1 : EndIf
  If YMax1 < YMax2 : YEnd = YMax1 : Else : YEnd = YMax2 : EndIf
  If XMax1 > XMin2 And XMin1 < XMax2
    If YMax1 > YMin2 And YMin1 < YMax2
      ; SI l'on a détecté qu'une collision était possible, on update les 2 sprites : images&memblocks
      ; 4A / On Update l'image utilisée par le sprite 1.
      SpriteImage1.l = DBGetSpriteImage( M_Sprite1 )
      If SpriteImage1 <> SpriteIMG( M_Sprite1 )
        SpriteIMG( M_Sprite1 ) = SpriteImage1
        If SpriteCOL( M_Sprite1 ) = 0
          SpriteCOL( M_Sprite1 ) = MBC_DynamicMakeFromImage( SpriteImage1 )
          SpritePTR( M_Sprite1 ) = DBGetMemblockPtr( SpriteCol( M_Sprite1 ) )
         Else
          DBCreateMemblockFromImage( SpriteCol( M_Sprite1 ), SpriteImage1 )
          SpritePTR( M_Sprite1 ) = DBGetMemblockPtr( SpriteCol( M_Sprite1 ) )
         EndIf 
       EndIf
      ; 4B / Meme manipulation pour le sprite 2.
      SpriteImage2.l = DBGetSpriteImage( M_Sprite2 )
      If SpriteImage2 <> SpriteIMG( M_Sprite2 )
        SpriteIMG( M_Sprite2 ) = SpriteImage2
        If SpriteCOL( M_Sprite2 ) = 0
          SpriteCOL( M_Sprite2 ) = MBC_DynamicMakeFromImage( SpriteImage2 )
          SpritePTR( M_Sprite2 ) = DBGetMemblockPtr( SpriteCol( M_Sprite2 ) )
         Else
          DBCreateMemblockFromImage( SpriteCol( M_Sprite2 ), SpriteImage2 )
          SpritePTR( M_Sprite2 ) = DBGetMemblockPtr( SpriteCol( M_Sprite2 ) )
         EndIf 
       EndIf
      ; Maintenant on procède aux calculs de collisions ...
      YLoop = YStart : Repeat
;      For YLoop = YStart To YEnd
        XLoop = XStart : Repeat
;        For XLoop = XStart To XEnd
          Pixel1 = GetSpritePixel( M_Sprite1, XLoop, YLoop )
          Pixel2 = GetSpritePixel( M_Sprite2, XLoop, YLoop )
          ; Pixel Collision detected ?
          If Pixel1 <> 0 And Pixel2 <> 0
            _PIXEL = _PIXEL + 1
            If COLMODE = 0 : XLoop = XEnd - 1 : YLoop = YEnd - 1 : EndIf
           EndIf
;         Next XLoop
         XLoop = XLoop + 1 : Until XLoop = XEnd
;       Next YLoop
       YLoop = YLoop + 1 : Until YLoop = YEnd
     EndIf
   EndIf
  ProcedureReturn _PIXEL
 EndProcedure
;
Procedure.l GetSpriteCollisionOPT( Sprite1.l, Sprite2.l, _MODE.l )
  If SPRInitialized = 1  
    ; 1 / On saisit les coordonnées et dimensions pour vérifier si il y a collision des cadres.
    xp1.l = DBGetSpritePositionX( Sprite1 ) : yp1.l = DBGetSpritePositionY( Sprite1 )
    xs1.l = DBGetSpriteWidth( Sprite1 ) : ys1.l = DBGetSpriteHeight( Sprite1 )
    xp2.l = DBGetSpritePositionX( Sprite2 ) : yp2.l = DBGetSpritePositionY( Sprite2 )
    xs2.l = DBGetSpriteWidth( Sprite2 ) : ys2.l = DBGetSpriteHeight( Sprite2 )
    ; 2 / On calcule si il y a collision des cadres.
    If xp2 > ( xp1 + xs1 ) Or xp2 < ( xp1 - xs2 ) : _CHECK.l = 0 : Else : _CHECK = 1 : EndIf
    If yp2 > ( yp1 + ys1 ) Or yp2 < ( yp1 - ys2 ) : _CHECK = 0 : EndIf
    ; 3 / Si il y a collision des cadres, on calcule la collision au pixel près.
    If _CHECK = 1
      ; 4A / On Update l'image utilisée par le sprite 1.
      SpriteImage1.l = DBGetSpriteImage( Sprite1 )
      If SpriteImage1 <> SpriteIMG( Sprite1 )
        SpriteIMG( Sprite1 ) = SpriteImage1
        If SpriteCOL( Sprite1 ) = 0
          SpriteCOL( Sprite1 ) = MBC_DynamicMakeFromImage( SpriteImage1 )
          SpritePTR( Sprite1 ) = DBGetMemblockPtr( SpriteCol( Sprite1 ) )
         Else
          DBCreateMemblockFromImage( SpriteCol( Sprite1 ), SpriteImage1 )
          SpritePTR( Sprite1 ) = DBGetMemblockPtr( SpriteCol( Sprite1 ) )
         EndIf 
       EndIf
      ; 4B / Meme manipulation pour le sprite 2.
      SpriteImage2.l = DBGetSpriteImage( Sprite2 )
      If SpriteImage2 <> SpriteIMG( Sprite2 )
        SpriteIMG( Sprite2 ) = SpriteImage2
        If SpriteCOL( Sprite2 ) = 0
          SpriteCOL( Sprite2 ) = MBC_DynamicMakeFromImage( SpriteImage2 )
          SpritePTR( Sprite2 ) = DBGetMemblockPtr( SpriteCol( Sprite2 ) )
         Else
          DBCreateMemblockFromImage( SpriteCol( Sprite2 ), SpriteImage2 )
          SpritePTR( Sprite2 ) = DBGetMemblockPtr( SpriteCol( Sprite2 ) )
         EndIf 
       EndIf
      ; 5 / Lecture des profondeurs de pixels des 2 images originales.
      _dp1.l = PeekL( SpritePTR( Sprite1 ) + 8 ) : _pixsize1.l = _dp1 / 8
      _dp2.l = PeekL( SpritePTR( Sprite2 ) + 8 ) : _pixsize2.l = _dp2 / 8
;      _dp1.l = DBReadMemblockDWord( SpriteCol( Sprite1 ), 8 ) : _pixsize1.l = _dp1 / 8
;      _dp2.l = DBReadMemblockDWord( SpriteCol( Sprite2 ), 8 ) : _pixsize2.l = _dp2 / 8
      ; 5B / On lit les coordonnées et dimensions des parties communes des 2 sprites.
      If xp2 > xp1
        xstart1.l = xp2 - xp1 : xstart2 = 0 : xchecksize.l = xs1 - xstart1
       Else
        xstart2 = xp1 - xp2 : xstart1 = 0 : xchecksize = xs2 - xstart2
       EndIf
      If yp2 > yp1
        ystart1.l = yp2 - yp1 : ystart2 = 0 : ychecksize.l = ys1 - ystart1
       Else
        ystart2 = yp1 - yp2 : ystart1 = 0 : ychecksize = ys2 - ystart2
       EndIf
      ; 6 / Maintenant, on compare les pixels communs pour voir si il y a collision et, de combien de pixels.
;      For yloop.l = 0 To ychecksize
      YLoop = 0 : Repeat
;        For xloop.l = 0 To xchecksize
        XLoop = 0 : Repeat
          _pix1.l = 0 : _pix2.l = 0
          xpos.l = xloop + xstart1 : ypos.l = yloop + ystart1
          If xpos > -1 And xpos < xs1
            If ypos> -1 And ypos < ys1
              _Adress.l = 12 + ( ypos * xs1 * _pixsize1 ) + ( xpos * _pixsize1 )
              If _Adress > -1 And _Adress < ( DBGetMemblockSize( SpriteCol( Sprite1 ) ) - _pixsize1 )
                If _dp1 = 16 : _pix1 = PeekW( SpritePTR( Sprite1 ) + _Adress ) : EndIf
                If _dp1 = 32 : _pix1 = PeekL( SpritePTR( Sprite1 ) + _Adress ) : EndIf
;                If _dp1 = 16 : _pix1 = DBReadMemblockWordLLL( Spritecol( Sprite1 ), _Adress ) : EndIf
;                If _dp1 = 32 : _pix1 = DBReadMemblockDWord( Spritecol( Sprite1 ), _Adress ) : EndIf
               EndIf
             EndIf
           EndIf
          xpos = xloop + xstart2 : ypos = yloop + ystart2
          If xpos > -1 And xpos < xs2
            If ypos > -1 And ypos < ys2
              _Adress = 12 + ( ypos * xs2 * _pixsize2 ) + ( xpos * _pixsize2 )
              If _Adress > -1 And _Adress < ( DBGetMemblockSize( SpriteCol( Sprite2 ) ) - _pixsize2 )
                If _dp2 = 16 : _pix2 = PeekW( SpritePTR( Sprite2 ) + _Adress ) : EndIf
                If _dp2 = 32 : _pix2 = PeekL( SpritePTR( Sprite2 ) + _Adress ) : EndIf
;                If _dp2 = 16 : _pix2 = DBReadMemblockWordLLL( Spritecol( Sprite2 ), _Adress ) : EndIf
;                If _dp2 = 32 : _pix2 = DBReadMemblockDWord( Spritecol( Sprite2 ), _Adress ) : EndIf
               EndIf
             EndIf
           EndIf
          If _pix1 <> 0 And _pix2 <> 0 : _PIXEL=_PIXEL+1 : EndIf
          If _PIXEL > 0 And _MODE = 0
            xloop = xchecksize : yloop = ychecksize
           EndIf
         XLoop = XLoop + 1 : Until XLoop > xchecksize
;         Next xloop
       YLoop = YLoop + 1 : Until YLoop > ychecksize
;       Next yloop
     Else
      _PIXEL = 0
     EndIf
   EndIf
  ProcedureReturn _PIXEL
 EndProcedure

ProcedureCDLL FreeSpriteFromCollision( SpriteNum.l )
  If SPRInitialized = 1
    If SpriteNum > 0
      If DBGetSpriteExist( SpriteNum ) = 1 And SpriteCol( SpriteNum ) > 0
        SpriteCOL( SpriteNum ) = MBC_Delete( SpriteCol( SpriteNum ) )
        SpritePTR( SpriteNum ) = 0
        SpriteIMG( SpriteNum ) = 0
       EndIf
     EndIf
   EndIf
 EndProcedure

ProcedureCDLL.l GetSpritesDistance( Sprite1.l, Sprite2.l )
  _Distance = -1
  If SPRInitialized = 1
    If Sprite1 > 0 And Sprite2 > 0
      xp1.l = DBGetSpritePositionX( Sprite1 ) : yp1.l = DBGetSpritePositionY( Sprite1 )
      xsize1.l = DBGetSpriteWidth( Sprite1 ) : ysize1.l = DBGetSpriteHeight( Sprite1 )
      xp2.l = DBGetSpritePositionX( Sprite2 ) : yp2.l = DBGetSpritePositionY( Sprite2 )
      xsize2.l = DBGetSpriteWidth( Sprite2 ) : ysize2.l = DBGetSpriteHeight( Sprite2 )
      If xp1 < xp2
        xp1 = xp1 + xsize1 : If xp1 > xp2 : xp1 = xp2 : EndIf
       Else
        xp2 = xp2 + xsize2 : If xp2 > xp1 : xp2 = xp1 : EndIf
       EndIf
      If yp1 < yp2
        yp1 = yp1 + ysize1 : If yp1 > yp2 : yp1 = yp2 : EndIf
       Else
        yp2 = yp2 + ysize2 : If yp2 > yp1 : yp2 = yp1 : EndIf
       EndIf
      xdist.l = Abs( xp1 - xp2 ) : ydist.l = Abs( yp1 - yp2 )
      _distance = Sqr( ( xdist * xdist ) + ( ydist * ydist ) )
     EndIf
   EndIf
  ProcedureReturn _distance
 EndProcedure

ProcedureCDLL.l GetSpriteCollision( _Sprite1, _Sprite2, COLMODE )
  If SPRInitialized = 1
    ; Check If any rotation/scaling is applied To sprite
    If _Sprite1 > 0 And _Sprite2 > 0
      If DBGetSpriteXScale( _Sprite1 ) = 100.0 And DBGetSpriteYScale( _Sprite1 ) = 100.0
        If DBGetSpriteXScale( _Sprite2 ) = 100.0 And DBGetSpriteYScale( _Sprite2 ) = 100.0
          If DBGetAngle( _Sprite1 ) = 0 And DBGetAngle( _Sprite2 ) = 0    
;            VALUE.l = GetSpriteCollisionOPT( _sprite1, _sprite2, COLMODE )
            VALUE.l = GetSpriteCollisionAdvanced( _sprite1, _sprite2, COLMODE )
           Else
            VALUE = GetSpriteCollisionAdvanced( _sprite1, _sprite2, COLMODE )
           EndIf
         Else
          VALUE = GetSpriteCollisionAdvanced( _sprite1, _sprite2, COLMODE )
         EndIf
       Else
        VALUE = GetSpriteCollisionAdvanced( _sprite1, _sprite2, COLMODE )
       EndIf
     EndIf
   EndIf
  ProcedureReturn VALUE
 EndProcedure 


; IDE Options = PureBasic 4.50 (Windows - x86)
; CursorPosition = 23
; FirstLine = 7
; Folding = --