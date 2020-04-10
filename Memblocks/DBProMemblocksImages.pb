ProcedureCDLL.l MakeMemblockImage( MWidth.l, MHeight.l, MDepth.l )
  If MWidth > 0 And MHeight > 0
    Select MDepth
      Case 32 : Lgt.l = 4
      Case 16 : Lgt = 2
      Case 8 : Lgt = 1
     EndSelect
    FSize.l = 12 + ( MWidth * MHeight * Lgt )
    MNumber.l = MBC_DynamicMake( FSize )
    DBWriteMemblockDWord( MNumber, 0, MWidth )
    DBWriteMemblockDWord( MNumber, 4, MHeight )
    DBWriteMemblockDWord( MNumber, 8, MDepth )
   Else
    MNumber = 0
   EndIf
  ProcedureReturn MNumber
 EndProcedure

ProcedureCDLL IMPlot( Memblok.l, XPos.l, YPos.l, RGBColor.l )
  If Memblok > 0
    If DBMemblockExist( Memblok ) = 1
      XSize.l = DBReadMemblockDWord( Memblok, 0 )
      YSize.l = DBReadMemblockDWord( Memblok, 4 )
      Depth.l = DBReadMemblockDWord( Memblok, 8 ) / 8
      If XPos < XSize And YPos < YSize
        If XPos > -1 And YPos > -1
          Adr.l = 12 + ( XPos * Depth ) + ( YPos * Xsize * Depth )
          Select Depth
            Case 1 : DBWriteMemblockByte( Memblok, Adr, RGBColor )
            Case 2 : DBWriteMemblockWord( Memblok, Adr, RGBColor )
            Case 4 : DBWriteMemblockDWord( Memblok, Adr, RGBColor )
           EndSelect
         EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure

ProcedureCDLL.l IMGetPixel( Memblok.l, XPos.l, YPos.l )
  RGBColor.l = 0
  If Memblok > 0
    If DBMemblockExist( Memblok ) = 1
      XSize.l = DBReadMemblockDWord( Memblok, 0 )
      YSize.l = DBReadMemblockDWord( Memblok, 4 )
      Depth.l = DBReadMemblockDWord( Memblok, 8 ) / 8
      If XPos < XSize And YPos < YSize
        If XPos > -1 And YPos > -1
          Adr.l = 12 + ( XPos * Depth ) + ( YPos * Xsize * Depth )
          Select Depth
            Case 1 : RGBColor = DBReadMemblockByte( Memblok, Adr )
            Case 2 : RGBColor = DBReadMemblockWordLLL( Memblok, Adr )
            Case 4 : RGBColor = DBReadMemblockDWord( Memblok, Adr )
           EndSelect
         EndIf
       EndIf
     EndIf
   EndIf
  ProcedureReturn RGBColor
 EndProcedure

ProcedureCDLL IMCircle( Memblok.l, XPos.l, YPos.l, Radius.l, RGBColor.l, Mode.l )
  If Memblok > 0
    If DBMemblockExist( Memblok ) = 1
      If Radius > 0
        Select Mode
          Case 0
            For Angle = 0 To 360 Step 1
              XIn.l = Xpos + ( Cos( Angle ) * ( Radius / 2.0 ) )
              YIn.l = YPos + ( Sin( Angle ) * ( Radius / 2.0 ) )
              IMPlot( Memblok, XIn, YIn, RGBColor )
             Next Angle
          Case 1
            Size.f = Radius
            Repeat
              AngleF.f = 0.0
              Repeat
                XIn = XPos + ( Cos( AngleF ) * ( Size / 2.0 ) )
                YIn = YPos + ( Sin( AngleF ) * ( Size / 2.0 ) )
                IMPlot( Memblok, XIn, YIn, RGBColor )
               AngleF = AngleF + 0.5 : Until AngleF > 360.0
             Size = Size - 0.5 : Until Size = 0
            IMPlot( Memblok, XPos, YPos, RGBColor )
         EndSelect
       EndIf
     EndIf
   EndIf
 EndProcedure

ProcedureCDLL IMCube( Memblok.l, XPos.l, YPos.l, XYSize.l, RGBColor.l, Mode.l )
  If Memblok > 0
    If DBMemblockExist( Memblok ) = 1
      If XYSize > 1
        Select Mode
          Case 0
            For XYLoop = XPos To XPos + XYSize - 1
              IMPlot( Memblok, XYLoop, YPos, RGBColor ) ; Top Line
              IMPlot( Memblok, XPos, XYLoop, RGBColor ) ; Left Line
              IMPlot( Memblok, XYLoop, YPos + XYSize -1, RGBColor ) ; Bottom Line
              IMPlot( Memblok, XPos + XYSize -1, XYLoop, RGBColor ) ; Right Line
             Next XYLoop
          Case 1
            For XLoop = XPos To XPos + XYSize -1
              For YLoop = YPos To YPos + XYSize -1
                IMPlot( Memblok, XLoop, YLoop, RGBColor )
               Next YLoop
             Next XLoop
         EndSelect
       Else
        If XYSize = 1 : IMPlot( Memblok, XPos, YPos, RGBColor ) : EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure

ProcedureCDLL IMBox( Memblok.l, XPos.l, YPos.l, XRight.l, YDown.l, RGBColor.l, Mode.l )
  If Memblok > 0
    If DBMemblockExist( Memblok ) = 1
      If XYSize > 1
        Select Mode
          Case 0
            For XLoop = Xpos To XRight
              IMPlot( Memblok, XLoop, YPos, RGBColor )  ; Top Line
              IMPlot( Memblok, XLoop, YDown, RGBColor ) ; Bottom Line
             Next XLoop
            For YLoop = YPos To YDown
              IMPlot( Memblok, XPos, YLoop, RGBColor )   ; Left Line
              IMPlot( Memblok, XRight, YLoop, RGBColor ) ; Right Line
             Next YLoop
          Case 1
            For XLoop = XPos To XRight
              For YLoop = YPos To YDown
                IMPlot( Memblok, XLoop, YLoop, RGBColor )
               Next YLoop
             Next XLoop
         EndSelect
       Else
        If XYSize = 1 : IMPlot( Memblok, XPos, YPos, RGBColor ) : EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure

ProcedureCDLL IMStretch( SourceMBC, TargetMBC )
  If SourceMBC > 0 And TargetMBC > 0
    If DBMemblockExist( SourceMBC ) = 1 And DBMemblockExist( TargetMBC ) = 1
      XSize1.l = DBReadMemblockDWord( SourceMBC, 0 ) : YSize1.l = DBReadMemblockDWord( SourceMBC, 4 )
      Depth1.l = DBReadMemblockDWord( SourceMBC, 8 )
      XSize2.l = DBReadMemblockDWord( TargetMBC, 0 ) : YSize2.l = DBReadMemblockDWord( TargetMBC, 4 )
      Depth2.l = DBReadMemblockDWord( TargetMBC, 8 )
      XScaling.f = XSize1 / XSize2 : YScaling.f = YSize1 / YSize2      
      For YLoop = 0 To YSize2 -1
        For XLoop = 0 To XSize2 -1
          RGBColor = IMGetPixel( SourceMBC, XLoop * XScaling, YLoop * YScaling )
          IMPlot( TargetMBC, XLoop, YLoop, RGBColor )
         Next XLoop
       Next YLoop
     EndIf
   EndIf
 EndProcedure

ProcedureCDLL.l IMStretch2( SourceMBC, XSize.l, YSize.l )
  DepthSRC.l = DBReadMemblockDWord( SourceMBC, 8 ) ; Read original depth to use the same.
  TargetMBC = MakeMemblockImage( XSize, YSize, DepthSRC )
  If SourceMBC > 0 And XSize > 0 And YSize > 0
    If DBMemblockExist( SourceMBC ) = 1 And DBMemblockExist( TargetMBC ) = 1
      XSize1.l = DBReadMemblockDWord( SourceMBC, 0 ) : YSize1.l = DBReadMemblockDWord( SourceMBC, 4 )
      Depth1.l = DBReadMemblockDWord( SourceMBC, 8 )
      XSize2.l = DBReadMemblockDWord( TargetMBC, 0 ) : YSize2.l = DBReadMemblockDWord( TargetMBC, 4 )
      Depth2.l = DBReadMemblockDWord( TargetMBC, 8 )
      XScaling.f = XSize1 / XSize2 : YScaling.f = YSize1 / YSize2      
      For YLoop = 0 To YSize2 -1
        For XLoop = 0 To XSize2 -1
          RGBColor = IMGetPixel( SourceMBC, XLoop * XScaling, YLoop * YScaling )
          IMPlot( TargetMBC, XLoop, YLoop, RGBColor )
         Next XLoop
       Next YLoop
     EndIf
   EndIf
  ProcedureReturn TargetMBC
 EndProcedure

ProcedureCDLL CopyMemblockImage( SourceMBC.l, X.l, Y.l, Width.l, Height.l, TargetMBC.l, X2.l, Y2.l )
  If SourceMBC > 0 And TargetMBC > 0
    If DBMemblockExist( SourceMBC ) = 1 And DBMemblockExist( TargetMBC ) = 1
      XSize1.l = DBReadMemblockDWord( SourceMBC, 0 ) : YSize1.l = DBReadMemblockDWord( SourceMBC, 4 )
      Depth1.l = DBReadMemblockDWord( SourceMBC, 8 )
      XSize2.l = DBReadMemblockDWord( TargetMBC, 0 ) : YSize2.l = DBReadMemblockDWord( TargetMBC, 4 )
      Depth2.l = DBReadMemblockDWord( TargetMBC, 8 )
      If Width <= XSize1 And Width <= XSize2
        If Height <= YSize1 And Height <= YSize2
          ; On checke si la zone à copier déborde du cadre ... Si c'est le cas, on réduit.
          If X < 0 : Width = Width + X : X = 0 : EndIf ; Si X < 0 On réduit la 
          If Y < 0 : Height = Height + Y : Y = 0 : EndIf
          If X + Width > XSize1
            Reduce.l = ( X + Width ) - XSize1
            Width = Width - Reduce
           EndIf
          If Y + Height > YSize1
            Reduce.l = ( Y + Height ) - YSize1
            Height = Height - Reduce
           EndIf
          ; On checke si la zone copiée sortira du cadre cible ... Si c'est le cas, on réduit.
          If X2 < 0 : X = X + X2 : Width = Width + X2 : X2 = 0 : EndIf
          If Y2 < 0 : Y = Y + Y2 : Height = Height + Y2 : Y2 = 0 : EndIf
          If X2 + Width > XSize2
            Reduce.l = ( X2 + Width ) - XSize2
            Width = Width - Reduce
           EndIf
          If Y2 + Height > YSize2
            Reduce.l = ( Y2 + Height ) - YSize2
            Height = Height - Reduce
           EndIf
          ; On vérifie qu'après tout les checking, il reste un morceau de bloc à copier...
          If Width > 0 And Height > 0
            ; On défini les variables nécessaires à la copie du bloc final nécessaire.
            BytesPerCycle.l = Width * 4              ; Nombre d'octets à copier par lignes.
            ReadSkip.l = ( XSize1 - Width ) * 4      ; Nombre d'octets à skipper par lignes.
            WriteSkip.l = ( XSize2 - Width ) * 4   ; Nombre d'octets à skipper par lignes.
            SourcePTR.l = DBGetMemblockPtr( SourceMBC ) + ( X * 4 ) + ( Y * XSize1 * 4 ) + 12
            TargetPTR.l = DBGetMemblockPtr( TargetMBC ) + ( X2 * 4 ) + ( Y2 * XSize2 * 4 ) + 12
            CopyMemoryM( SourcePTR, TargetPTR, BytesPerCycle, ReadSkip, WriteSkip, Height) 
           EndIf
         EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure
 
; IDE Options = PureBasic 4.10 Beta 2 (Windows - x86)
; CursorPosition = 39
; FirstLine = 18
; Folding = --