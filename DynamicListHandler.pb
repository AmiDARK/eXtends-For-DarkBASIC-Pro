;
; Gestionnaire de listes croissantes, décroissantes, non modifiées, de nombres.
;
Global ReservedItems.l ; Give the number of used item.
Global ListLength.l ; Give the position in ListItems()
Global Dim ListItems( 65536 )

Procedure.l InsertItemInList( Value.l )
  ; On calcule la position ou l'on doit insérer l'item.
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
  ; On décale les items suivants puis on insère le nouvel item.
  For XLoop = ListLength To ActualPos + 1 Step -1
    ListItems( XLoop ) = ListItems( XLoop -1 )
   Next XLoop
  ; On insère le nouvel item dans la liste.
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
    ; Si la liste d'objets supprimés est vide, on incrémente le compteur d'objets réels et on l'utilise.
    ReservedItems = ReservedItems + 1
    FreeItem = ReservedItems
   Else
    ; Si la liste d'objets supprimés n'est pas vide, on utilise la dernière valeur et on décrémente la dimension de la liste.
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
      ; Si l'objet à enlever de la liste est le dernier du compteur réel, on décrémente simplement le compteur réel.
      ReservedItems = ReservedItems - 1
     Else
      ; Si l'objet est inférieur au compteur réel, on incrément la liste et on positionne l'objet dedans.
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