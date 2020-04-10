;
; Gestionnaire de listes croissantes, d�croissantes, non modifi�es, de nombres.
;
Global ReservedItems.l ; Give the number of used item.
Global ListLength.l ; Give the position in ListItems()
Global Dim ListItems( 65536 )

Procedure.l InsertItemInList( Value.l )
  ; On calcule la position ou l'on doit ins�rer l'item.
  ActualPos.l = 0
  ListItems( 0 ) = 1000000
  Repeat
    ActualPos = ActualPos + 1
    If ActualPos = 1
      Left.l = Value + 1
     Else
      Left.l = ListItems( ActualPos - 1 )
     EndIf
    Right.l = ListItems( ActualPos )
   Until ( Value < Left And Value > Right ) Or ActualPos > ( ListLength - 1 )
  ; On d�cale les items suivants puis on ins�re le nouvel item.
  For XLoop = ListLength To ActualPos + 1 Step -1
    ListItems( XLoop ) = ListItems( XLoop -1 )
   Next XLoop
  ; On ins�re le nouvel item dans la liste.
  ListItems( ActualPos ) = Value
  ; Fin D'insertion.
  ProcedureReturn ActualPos
 EndProcedure
;
Procedure DLH_ClearList()
  ReservedItems = 0
  ListLength = 0
;  Dim ListItems( 1 )
 EndProcedure
;
Procedure.l DLH_GetNextFreeItem()
  FreeItem.l = 0
  If ListLength = 0
    ; Si la liste d'objets supprim�s est vide, on incr�mente le compteur d'objets r�els et on l'utilise.
    ReservedItems = ReservedItems + 1
    FreeItem = ReservedItems
   Else
    ; Si la liste d'objets supprim�s n'est pas vide, on utilise la derni�re valeur et on d�cr�mente la dimension de la liste.
    FreeItem = ListItems( ListLength )
    ListLength = ListLength - 1
;    Dim ListItems( ListLength )
   EndIf  
  ProcedureReturn FreeItem
 EndProcedure
;
Procedure.l DLH_FreeItem( ItemNumber.l )
  If ItemNumber > 0
    If ItemNumber = ReservedItems
      ; Si l'objet � enlever de la liste est le dernier du compteur r�el, on d�cr�mente simplement le compteur r�el.
      ReservedItems = ReservedItems - 1
     Else
      ; Si l'objet est inf�rieur au compteur r�el, on incr�ment la liste et on positionne l'objet dedans.
      ListLength = ListLength + 1
;      Dim ListItems( ListLength )
      ListItems( ListLength ) = 0
      TruePos.l = InsertItemInList( ItemNumber )
     EndIf
   EndIf
  ProcedureReturn 0
 EndProcedure

Procedure.l DLH_GetCount()
  ItemCount.l = ReservedItems - ListLength
  ProcedureReturn ItemCount
 EndProcedure

Procedure.l DLH_GetItemCounter()
  ProcedureReturn ReservedItems
 EndProcedure

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 5
; Folding = --