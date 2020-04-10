;
; ************************************************************************************
; *                                                                                  *
; *                             NEW FUNCTIONS FROM 1.6                               *
; *                                                                                  *
; ************************************************************************************
;
ProcedureCDLL B3D_FixedObjectScale( MyObject.l, ScaleX.f, ScaleY.f, ScaleZ.f )
  V.l = 0 : A.l = 0
  X.f = 0 : Y.f = 0 : Z.f = 0
  numlimbs.l = 0
;  ScaleX = ScaleX * 0.01
;  ScaleY = ScaleY * 0.01
;  ScaleZ = ScaleZ * 0.01
  
  MessageRequester( "Scale Factor To Apply : ", Str( ScaleX ) + " " + Str( ScaleY ) + " " + Str( ScaleZ ) )
  
  ; get number of limbs in object
  DBPerformChecklistForObjectLimbs( MyObject )   ; Added in eXtends 1.6
  
  MessageRequester( "Checking Object", Str( MyObject ) )
  
  numlimbs = DBChecklistQuantity()
  
  MessageRequester( "Checking Object Limb Amount", Str( numlimbs ) )
  
  ; scale each limb up double size
  For A = 0 To numlimbs - 1
    ;use flag of 2 For the last parameter To update the object's internal data
    ;so the animations use it As well
    DBLockVertexDataForLimbEx( MyObject, A, 2 )    ; Added in eXtends 1.6
    
    MessageRequester( "Checking Object Vertex Count ", Str( DBGetVertexDataVertexCount() ) )

    If DBGetVertexDataVertexCount() > 0
      For V=0 To DBGetVertexDataVertexCount() -1
        ;get the positions And multiply by 2 For double scale
        X = DBGetVertexDataPositionX( V )
        Y = DBGetVertexDataPositionY( V )
        Z = DBGetVertexDataPositionZ( V )
        MessageRequester( "Original Vertex : ", Str( X ) + " " + Str( Y ) + " " + Str( Z ) )
        X = X * ScaleX
        Y = Y * ScaleY
        Z = Z * ScaleZ
        MessageRequester( "Modified Vertex : ", Str( X ) + " " + Str( Y ) + " " + Str( Z )     )  
        ;set changes
        DBSetVertexDataPosition( V, X, Y, Z )     ; MUST BE ADDED
        X = DBGetVertexDataPositionX( V )
        Y = DBGetVertexDataPositionY( V )
        Z = DBGetVertexDataPositionZ( V )
        MessageRequester( "Reread Modified Vertex : ", Str( X ) + " " + Str( Y ) + " " + Str( Z )    )   
        
      Next V
     EndIf
    DBUnlockVertexData()
   Next A
  DBCalculateObjectBounds( MyObject )
  DBEmptyChecklist()
 EndProcedure

; IDE Options = PureBasic 4.61 (Windows - x86)
; CursorPosition = 13
; FirstLine = 1
; Folding = -
; EnableXP