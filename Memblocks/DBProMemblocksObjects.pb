;
ProcedureCDLL.l PrepareMeshMemblock( TriangleCount.l )
  Size.l = ( ( 36 * 3 ) * TriangleCount ) + 16
  MemblockNumber.l = MBC_DynamicMake( Size )
  ; D�finition du format FVF
  DBWriteMemblockDWord( MemblockNumber , 0 , 338 )
  ; D�finition de la longueur d'un Vertex
  DBWriteMemblockDWord( MemblockNumber , 4 , 36 )
  ; Combien de sommets ( = Vertex = Vertices ) sont pr�sents ?
  DBWriteMemblockDWord( MemblockNumber , 8 , TriangleCount )
  ProcedureReturn MemblockNumber
 EndProcedure
;

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 13
; Folding = -