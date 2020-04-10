;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC Bitmap COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
ProcedureCDLL MTX_Clear()
  If MTXInitialized = 1
    ; On supprime tout les objets qui ne l'auraient pas été...
    If DLH_GetItemCounter() > 0
      For XLoop = DLH_GetItemCounter() To 1 Step -1
        If DBGetMatrixExist( XLoop ) = 1 : DBDeleteMatrix1( XLoop ) : EndIf
       Next XLoop
     EndIf
    DLH_ClearList()
   EndIf
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l MTX_Count()
  If MTXInitialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = -1
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l MTX_Delete( Number.l )
  If MTXInitialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier lieu, on supprime l'objet.
      If DBGetMatrixExist( Number ) = 1 : DBDeleteMatrix1( Number ) : EndIf
      ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
      Number = DLH_FreeItem( Number )
     EndIf
   Else
    Number = -1
   EndIf
  ProcedureReturn Number
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l MTX_DynamicMake( LWidth.l, LHeight.l, XSegments.l, ZSegments.l )
  Width.f = PeekF( @LWidth ) : Height.f = PeekF( @LHeight )
  If MTXInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    DBMakeMatrix( Target, Width, Height, XSegments, ZSegments )
   Else
    Target = -1
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 33
; FirstLine = 5
; Folding = -