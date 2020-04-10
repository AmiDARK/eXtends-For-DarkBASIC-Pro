;
; ************************************************************************************
; *                                                                                  *
; *                               BILLBOARDS COMMANDS                                *
; *                                                                                  *
; ************************************************************************************
;
ProcedureCDLL B3D_ClearBillBoardList()
  If B3DInitialized  = 1
    BBCount = 0
   EndIf
 EndProcedure
;
ProcedureCDLL B3D_AddBillBoardToList( ObjectNumber.l )
  If B3DInitialized  = 1
    If BBCount < 65536
      BBCount = BBCount + 1
      BBList( BBCount ) = ObjectNumber
      BBYRot( BBCount ) = 0
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL B3D_RemoveBillBoardFromList( ObjectNumber.l )
  If B3DInitialized = 1
    If BBCount > 1
      XLoop = 0
      ; Check to know in which position the object is.
      Repeat
        XLoop = XLoop + 1
       Until BBList( XLoop ) = ObjectNumber Or XLoop > BBCount
      ; If object isn't in last position
      If XLoop < BBCount
        ; We shift the list after the object to remove to 1 step left.
        For BLoop = XLoop To BBCount - 1
          BBList( BLoop ) = BBList( BLoop + 1 )
         Next BLoop
        BBList( BBCount ) = 0 : BBYRot( BBCount ) = 0
        BBCount = BBCount - 1
       Else
        ; If Object is in last position.
        If XLoop = BBCount
          BBList( BBCount ) = 0 : BBYRot( BBCount ) = 0
          BBCount = BBCount - 1
         EndIf
       EndIf   
     Else
      ; if there is only 1 Billboard object and it's the choosen one.
      If BBCount = 1 And BBList( 1 ) = ObjectNumber
        BBCount = 0 : BBList( 1 ) = 0 : BBYRot( 1 ) = 0
       EndIf
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL B3D_RefreshBillBoards()
  If B3DInitialized = 1
    ; On met à jour les orientations de objects.
    If BBCount > 0
      DBSetCurrentCamera( BBCamera )
      XRot.f = DBGetXAngle()
      YRot.f = DBGetYAngle()
      ZRot.f = DBGetZAngle()
      For XLoop = 1 To BBCount
;        DBSetToCameraOrientation( BBList( XLoop ) )
;        If BBYrot( XLoop ) = 1 : DBXRotate( BBList( XLoop ) , 0 ) : EndIf          
        If BBYrot( XLoop ) = 1 : XRot = 0.0 : EndIf          
         DBRotateObject( BBList( XLoop ), XRot, YRot, ZRot )
       Next XLoop
     EndIf
   EndIf
 EndProcedure
;
ProcedureCDLL B3D_DisableYRot( ObjectNumber.l )
  BLoop = 0
  Repeat
    BLoop = BLoop + 1
   Until BBList( BLoop ) = ObjectNumber Or BLoop > BBCount
  If BLoop <= BBCount : BBYRot( BLoop ) = 1 : EndIf
 EndProcedure
;
ProcedureCDLL B3D_EnableYRot( ObjectNumber.l )
  BLoop = 0
  Repeat
    BLoop = BLoop + 1
   Until BBList( BLoop ) = ObjectNumber Or BLoop > BBCount
  If BLoop <= BBCount : BBYRot( BLoop ) = 0 : EndIf
 EndProcedure
;
ProcedureCDLL B3D_SetBBCameraControl( CameraNumber.l )
  BBCamera = CameraNumber
 EndProcedure

ProcedureCDLL.l B3D_GetBillBoardCount()
  Value.l = BBCount
  ProcedureReturn BBCount
 EndProcedure
; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 66
; FirstLine = 16
; Folding = --