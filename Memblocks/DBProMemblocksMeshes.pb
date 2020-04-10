ProcedureCDLL.l MBC_PrepareMbc( XCount.l, ZCount.l )
  Tiles_Count.l = XCount * ZCount
  Memory_Used.l = ( Tiles_Count * 216 ) + 16
  Vertex_Count.l = Tiles_Count * 6
  Mem.l = MBC_DynamicMake( Memory_Used )
  ; Définition du format FVF
  DBWriteMemblockDWord( Mem, 0, 338 )
  ; Définition de la longueur d'un vertex
  DBWriteMemblockDWord( Mem, 4, 36 )
  ; Nombre de sommets ( = vertex, vertices ) dans la meshe )
  DBWriteMemblockDWord( Mem, 8, Vertex_Count )
  ProcedureReturn Mem
 EndProcedure

ProcedureCDLL MBC_MakeVector( Mem.l, Vector_Num.l, X1.l, Y1.l, Z1.l, Xn.l, Yn.l, Zn.l, RGBColor.l, TU.l, TV.l )
  InPos.l = 12 + ( Vector_Num * 36 )
  DBWriteMemblockFloat( Mem, Pos, PeekF( @X1 ) )
  DBWriteMemblockFloat( Mem, Pos + 4, PeekF( @Y1 ) )
  DBWriteMemblockFloat( Mem, Pos + 8, PeekF( @Z1 ) )
  DBWriteMemblockFloat( Mem, Pos + 12, PeekF( @Xn ) )
  DBWriteMemblockFloat( Mem, Pos + 16, PeekF( @Yn ) )
  DBWriteMemblockFloat( Mem, Pos + 20, PeekF( @Zn ) )
  DBWriteMemblockFloat( Mem, Pos + 24, RGBColor )
  DBWriteMemblockFloat( Mem, Pos + 28, PeekF( @TU ))
  DBWriteMemblockFloat( Mem, Pos + 32, PeekF( @TV ) )
 EndProcedure

ProcedureCDLL MBC_MakeTile( Mem.l, Tile.l, X1.l, Y1.l, Z1.l, X2.l, Y2.l, Z2.l, X3.l, Y3.l, Z3.l, X4.l, Y4.l, Z4.l )
  Vector_Number.l = Tile * 6 : _Nk = ( 255+65536 ) + (255*256 ) + 255
  MBC_MakeVector( Mem, Vector_Number + 0, X3, Y3, Z3, 0.000 , 1.000 , 0.000 , _Nk , 0.000 , 1.000 )
  MBC_MakeVector( Mem, Vector_Number + 1, X2, Y2, Y2, 0.000 , 1.000 , 0.000 , _Nk , 1.000 , 0.000 )
  MBC_MakeVector( Mem, Vector_Number + 2, X4, Y4, Y4, 0.000 , 1.000 , 0.000 , _Nk , 1.000 , 1.000 )
  MBC_MakeVector( Mem, Vector_Number + 3, X3, Y3, Y3, 0.000 , 1.000 , 0.000 , _Nk , 0.000 , 1.000 )
  MBC_MakeVector( Mem, Vector_Number + 4, X1, Y1, Y1, 0.000 , 1.000 , 0.000 , _Nk , 0.000 , 0.000 )
  MBC_MakeVector( Mem, Vector_Number + 5, X2, Y2, Y2, 0.000 , 1.000 , 0.000 , _Nk , 1.000 , 0.000 )
 EndProcedure
 
; ExecutableFormat=
; EOF