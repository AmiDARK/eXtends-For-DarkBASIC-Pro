;
; Image manipulation effects.
;
Global Dim WE_Wobble( 6 )
; WE_Wobble(1)=Amplitude
; WE_Wobble(2)=Speed
; WE_Wobble(3)=Step
; WE_Wobble(4)=SYSTEM DO NOT MODIFY
; WE_Wobble(5)=Image XSize
; WE_Wobble(6)=Image YSize
;
;
;
Procedure.l IMG_Mosaic( SourceImage.l, Factor.l, RandMode.l, TargetImage.l )
  If IMGInitialized = 1
    If DBGetImageExist( SourceImage ) = 1
      ; Prepare memblock and get image informations.
      _Memblock.l = MBC_DynamicMakeFromImage( SourceImage )
      XSize.l = DBReadMemblockWordLLL( _Memblock, 0 )
      YSize.l = DBReadMemblockWordLLL( _Memblock, 4 )
      Depth.l = DBReadMemblockWordLLL( _Memblock, 8 ) : Mult.l = Depth / 8
      Lengt.l = DBGetMemblockSize( _Memblock )
      ; Main Mosaic loop
;     For YPos.l = 0 To YSize - Factor Step Factor
      YPos.l = 0 : Repeat
;       For XPos.l = 0 To XSize - Factor Step Factor
        XPos.l = 0 : Repeat
          ; Find pixel to read
          _Read.l = 12 + ( XPos * Mult ) + ( YPos * XSize * Mult )
          If RandMode = 0
            _Rea2.l = _Read
           Else
            XPos2.l = XPos + Random( Factor ) : YPos2.l = Ypos + Random( Factor )
            If XPos2 > XSize - 1 : XPos2 = XSize - 1 : EndIf
            If YPos2 > YSize - 1 : YPos2 = YSize - 1 : EndIf
            _Rea2 = 12 + ( XPos2 * Mult ) + ( YPos2 * XSize * Mult )
           EndIf

          ; Read Source Pixel
          If Mult = 2
            _Pixel.l = DBReadMemblockWordLLL( _Memblock, _Rea2 )
           Else
             If Mult = 4 : _Pixel = DBReadMemblockDWord( _Memblock, _Rea2 ) : EndIf
           EndIf

          ; Write target pixel.
          If Factor = 2
            If Mult = 2
              DBWriteMemblockWord( _Memblock, _Read + Mult, _Pixel )
              DBWriteMemblockWord( _Memblock, _Read + ( XSize * Mult ), _Pixel )
              DBWriteMemblockWord( _Memblock, _Read + ( XSize * Mult ) + Mult, _Pixel )
             Else
              If Mult = 4
                DBWriteMemblockDWord( _Memblock, _Read + Mult, _Pixel )
                DBWriteMemblockDWord( _Memblock, _Read + ( XSize * Mult ), _Pixel )
                DBWriteMemblockDWord( _Memblock, _Read + ( XSize * Mult ) + Mult, _Pixel )
               EndIf
             EndIf
           Else
            If Factor > 2
              For Ysb.l = 0 To Factor - 1
                For Xsb.l = 0 To Factor - 1
                  _Write.l = _Read + ( Xsb * Mult ) + ( Ysb * XSize * Mult )
                  If Mult = 2
                    DBWriteMemblockWord( _Memblock, _Write, _Pixel )
                   Else
                    If Mult = 4 : DBWriteMemblockDWord( _Memblock, _Write, _Pixel ) : EndIf
                   EndIf
                 Next Xsb
               Next Ysb
             EndIf
           EndIf
;        Next XPos
         XPos = XPos + Factor : Until XPos >= XSize - Factor
;      Next YPos
       YPos = YPos + Factor : Until YPos >= YSize - Factor

      ; Create the brand new mosaiced image from the memblock.
      If TargetImage < 1
        TargetImage.l = IMG_MakeImageFromMemblock( _Memblock )
       Else
        DBCreateImageFromMemblock( TargetImage, _Memblock )
       EndIf
      _Memblock = MBC_Delete( _Memblock )
     EndIf
   Else
    TargetImage = -1
   EndIf
  ; Return new image
  ProcedureReturn TargetImage
 EndProcedure

ProcedureCDLL.l IMG_Mosaic1( Source.l, SFactor.l, Rand.l )
  TargetImage.l = IMG_Mosaic( Source, SFactor, Rand, 0 )
  ProcedureReturn TargetImage
 EndProcedure

ProcedureCDLL.l IMG_Mosaic2( Source.l, SFactor.l, Rand.l, Target.l )
  TargetImage.l = IMG_Mosaic( Source, SFactor, Rand, Target )
  ProcedureReturn TargetImage
 EndProcedure

Procedure.l IMG_WobbleFX( SourceImage.l, TargeTimage.l )
  If IMGInitialized = 1
    If DBGetImageExist( SourceImage ) = 1
      ; Create Original image memblock.
      _Memblock1.l = MBC_DynamicMakeFromImage( SourceImage )
      _Length.l = DBGetMemblockSize( _Memblock1 )
      ; Create Target memblock.
      _Memblock2.l = MBC_DynamicMake( _Length )
      XSize.l = DBReadMemblockWordLLL( _Memblock1, 0 ) : DBWriteMemblockWord( _Memblock2, 0, XSize )
      YSize.l = DBReadMemblockWordLLL( _Memblock1, 4 ) : DBWriteMemblockWord( _Memblock2, 4, YSize ) 
      Depth.l = DBReadMemblockWordLLL( _Memblock1, 8 ) : DBWriteMemblockWord( _Memblock2, 8, Depth )
      WE_Wobble( 5 ) = XSize : WE_Wobble( 6 ) = YSize
      _Len.l = Depth / 8
      ; Create the Wobble Effect now.
      _Amp.l = WE_Wobble( 1 ) : _Speed.l = WE_Wobble( 2 ) : _Step.l = WE_Wobble( 3 ) : _Cos.l = WE_Wobble( 4 )
      If _Amp < 1 : _Amp = 1 : EndIf
      If _Speed < 1 : _Speed = 1 : EndIf
      If _Step < 1 : _Step = 1 : EndIf
      If _Cos < 0 Or _cos > 359 : _cos = 0 : EndIf
      WE_Wobble( 4 ) = DBWrapValue( _Cos + _Step ) ; We save the next image starting line.

      For Boucle.l = 0 To YSize - 1
        YLineStart.l = 12 + ( Boucle * XSize * _Len )
        YDecalage.l = Int( Cos( Deg2Rad( _Cos ) ) * _Amp )
        XSizeFinal = XSize - Abs( YDecalage )
        _Cos = DBWrapValue( _Cos + _Speed )
        If YDecalage = 0
;         Rem If shift value If 0 then we simply copy 1 line .
          DBCopyMemblock( _Memblock1, _Memblock2, YLineStart, YLineStart, XSize * _Len )
         Else
;         Rem If shift is positive then we copy the desired part shifted To right of target.
          If YDecalage > 0
            DBCopyMemblock( _Memblock1, _Memblock2, YLineStart, YLineStart + ( YDecalage * _Len ), XSizeFinal * _Len )
           Else
            If YDecalage < 0
              DBCopyMemblock( _Memblock1, _Memblock2, YLineStart - ( YDecalage* _Len ), YLineStart, XSizeFinal * _Len )
             EndIf
           EndIf
         EndIf
       Next Boucle
      ; Create the brand new mosaiced image from the memblock.
      If TargetImage < 1
        TargetImage.l = IMG_MakeImageFromMemblock( _Memblock2 )
       Else
        DBCreateImageFromMemblock( TargetImage, _Memblock2 )
       EndIf
      _Memblock2 = MBC_Delete( _Memblock2 )
      _Memblock1 = MBC_Delete( _Memblock1 )
     Else
      TargetImage = 0
     EndIf
   Else
    TargetImage = -1
   EndIf
  ; Return new image
  ProcedureReturn TargetImage
 EndProcedure

ProcedureCDLL.l IMG_Wobble1( SourceImage.l )
  TargetImage.l = IMG_WobbleFX( SourceImage, 0 )
  ProcedureReturn TargetImage
 EndProcedure

ProcedureCDLL.l IMG_Wobble2( SourceImage.l, TargetImage.l )
  TargetImage.l = IMG_WobbleFX( SourceImage, TargetImage )
  ProcedureReturn TargetImage
 EndProcedure

ProcedureCDLL IMG_SetWobble( Amplitude.l, Speed.l, Pas.l )
  If Amplitude < 1 : Amplitude = 1 : EndIf
  WE_Wobble( 1 ) = Amplitude
  If Speed < 1 : Speed = 1 : EndIf
  WE_Wobble( 2 ) = Speed
  If Pas < 1 : Pas = 1 : EndIf
  WE_Wobble( 3 ) = Pas
 EndProcedure

Procedure DOT3WritePixel( MBC.l, XPos.l, YPos.l, PixelF.l )
  IMG_XSize = PeekL( MBC_TargetPTR )
  IMG_Depth = PeekL( MBC_TargetPTR + 8 ) / 8
  Adr.l = 12 + ( XPos * IMG_Depth ) + ( YPos * IMG_Depth * IMG_XSize )
  If IMG_Depth = 40.
    PokeL( MBC_TargetPTR + Adr, PixelF )
   Else
    PokeW( MBC_TargetPTR + Adr, PixelF )
   EndIf
 EndProcedure

Procedure.l DOT3GetPixel( MBC.l, XPos.l, YPos.l )
  IMG_XSize = PeekL( MBC_SourcePTR )
  IMG_Depth = PeekL( MBC_SourcePTR + 8 ) / 8
  Adr.l = 12 + ( XPos * IMG_Depth ) + ( YPos * IMG_Depth * IMG_XSize )
  If IMG_Depth = 4
    PixelF.l = PeekL( MBC_SourcePTR + Adr )
   Else
    PixelF = PeekW( MBC_SourcePTR + Adr )
   EndIf
  ProcedureReturn PixelF
 EndProcedure

Procedure.l DOT3GetHeightMap( MBC, X, Y )
  Pixel0 = DOT3GetPixel( MBC, X-1, Y-1 )
  HeightMap.l = DBRGBR( Pixel0 ) + DBRGBG( Pixel0 ) + DBRGBB( Pixel0 )
  ProcedureReturn HeightMap
 EndProcedure

ProcedureCDLL.l IMG_DOT3Generate( IMG_Source.l, Smooth.l, Steep.l )
  IMG_Target.l = 0
  If IMG_Source > 0
    If DBGetImageExist( IMG_Source ) = 1
      MBC_Source.l = MBC_DynamicMakeFromImage( IMG_Source )
      If MBC_Source > 0
        MBC_SourcePTR = DBGetMemblockPtr( MBC_Source )
        IMG_XSize.l = PeekL( MBC_SourcePTR ) : IMG_YSize.l = PeekL( MBC_SourcePTR + 4 )
        MBC_Target.l = MBC_DynamicMake( 12 + ( IMG_XSize * IMG_YSize * 4 ) )
        MBC_TargetPTR = DBGetMemblockPtr( MBC_Target )
        PokeL( MBC_TargetPTR, IMG_XSize ) : PokeL( MBC_TargetPTR + 4, IMG_YSize ) : PokeL( MBC_TargetPTR + 8, 32 )
        For xloop=1 To IMG_XSize 
          For yloop=1 To IMG_YSize 
            tempx=0: tempy=0 
            For iloop=1 To smooth 
              xpi=xloop+iloop: xmi=xloop-iloop: ypi=yloop+iloop: ymi=yloop-iloop 
              If xpi > IMG_XSize : xpi = xpi - IMG_XSize : EndIf
              If xmi < 1 : xmi = xmi + IMG_XSize : EndIf
              If ypi > IMG_YSize : ypi = ypi - IMG_YSize : EndIf
              If ymi < 1 : ymi = ymi + IMG_YSize : EndIf
              tempx = tempx + DOT3GetHeightMap( MBC_Source , xpi , yloop ) - DOT3GetHeightMap( MBC_Source , xmi , yloop )
              tempy = tempy + DOT3GetHeightMap( MBC_Source , xloop , ypi ) - DOT3GetHeightMap( MBC_Source , xloop , ymi )
             Next iloop 
            nx.f = -tempx : ny.f = -tempy : nz.f =( 1024.0 * ( smooth + 1 ) ) / steep 
            factor.f = 127.0 / Sqr( ( nx * nx ) + ( ny * ny ) + ( nz * nz ) ) 
            red = 128 + (factor * nx) : green = 128 + (factor * ny) : blue = 128 + (factor * nz)
            DOT3WritePixel( MBC_Target, xloop-1,yloop-1,DBRGB(red,green,blue) )
           Next yloop 
         Next xloop 
        IMG_Target = IMG_MakeImageFromMemblock( MBC_Target )
        MBC_Source = MBC_Delete( MBC_Source )
        MBC_Target = MBC_Delete( MBC_Target )
       EndIf
     EndIf
   EndIf
  ProcedureReturn IMG_Target
 EndProcedure

ProcedureCDLL.l IMG_GREYGenerate( IMG_Source.l )
  IMG_Target.l = 0
  If IMG_Source > 0
    If DBGetImageExist( IMG_Source ) = 1
      ; Create a memblock from image and use it to create the final image.
      MBC_Source.l = MBC_DynamicMakeFromImage( IMG_Source )
      MBC_SourcePTR = DBGetMemblockPtr( MBC_Source )
      IMG_XSize.l = PeekL( MBC_SourcePTR ) : IMG_YSize.l = PeekL( MBC_SourcePTR + 4 )
      MBC_Target.l = MBC_DynamicMake( 12 + ( IMG_XSize * IMG_YSize * 4 ) )
      MBC_TargetPTR = DBGetMemblockPtr( MBC_Target )
      PokeL( MBC_TargetPTR, IMG_XSize ) : PokeL( MBC_TargetPTR + 4, IMG_YSize ) : PokeL( MBC_TargetPTR + 8, 32 )    
      For YLoop.l = 0 To IMG_YSize -1
        For XLoop.l = 0 To IMG_XSize -1
          PixelC.l = DOT3GetPixel( MBC_SourcePTR, XLoop, YLoop )
          Medium.l = ( DBRGBR( PixelC ) + DBRGBG( PixelC ) + DBRGBB( PixelC ) ) / 3
          PixelF.l = DBRGB( Medium, Medium, Medium )
          DOT3WritePixel( MBC_TargetPTR, XLoop, YLoop, PixelF )
         Next XLoop
       Next YLoop
      IMG_Target = IMG_MakeImageFromMemblock( MBC_Target )
      MBC_Source = MBC_Delete( MBC_Source )
      MBC_Target = MBC_Delete( MBC_Target )
     EndIf
   EndIf
  ProcedureReturn IMG_Target
 EndProcedure
 
; IDE Options = PureBasic v4.02 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 189
; FirstLine = 230
; Folding = ---