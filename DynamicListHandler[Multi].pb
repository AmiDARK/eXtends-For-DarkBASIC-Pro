;
; Gestionnaire de listes croissantes, d�croissantes, non modifi�es, de nombres.
;
Global Dim ReservedItems( 8 ) ; Give the number of used item.
Global Dim ListLength( 8 ) ; Give the position in ListItems()
Global Dim ListItems( 8, 65536 )

Procedure.l DLH_InsertItemInList( InList.l , Value.l )
  ; On calcule la position ou l'on doit ins�rer l'item.
  ActualPos.l = 0
  ListItems( InList, 0 ) = 1000000
  Repeat
    ActualPos = ActualPos + 1
    If ActualPos = 1
      Left.l = Value + 1
     Else
      Left.l = ListItems( InList, ActualPos - 1 )
     EndIf
    Right.l = ListItems( InList, ActualPos )
   Until ( Value < Left And Value > Right ) Or ActualPos > ( ListLength( InList ) - 1 )
  ; On d�cale les items suivants puis on ins�re le nouvel item.
  For XLoop = ListLength( InList ) To ActualPos + 1 Step -1
    ListItems( InList, XLoop ) = ListItems( InList, XLoop -1 )
   Next XLoop
  ; On ins�re le nouvel item dans la liste.
  ListItems( InList, ActualPos ) = Value
  ; Fin D'insertion.
  ProcedureReturn ActualPos
 EndProcedure
;
Procedure DLH_ClearList( InList.l )
  ReservedItems( InList ) = 0
  ListLength( InList ) = 0
;  Dim ListItems( 1 )
 EndProcedure
;
Procedure.l DLH_GetNextFreeItem( InList )
  FreeItem.l = 0
  If ListLength( InList ) = 0
    ; Si la liste d'objets supprim�s est vide, on incr�mente le compteur d'objets r�els et on l'utilise.
    ReservedItems( InList ) = ReservedItems( InList ) + 1
    FreeItem = ReservedItems( InList )
   Else
    ; Si la liste d'objets supprim�s n'est pas vide, on utilise la derni�re valeur et on d�cr�mente la dimension de la liste.
    FreeItem = ListItems( InList , ListLength( InList ) )
    ListLength( InList ) = ListLength( InList ) - 1
;    Dim ListItems( ListLength )
   EndIf  
  ProcedureReturn FreeItem
 EndProcedure
;
Procedure.l DLH_FreeItem( InList.l, ItemNumber.l )
  If ItemNumber > 0
    If ItemNumber = ReservedItems( InList )
      ; Si l'objet � enlever de la liste est le dernier du compteur r�el, on d�cr�mente simplement le compteur r�el.
      ReservedItems( InList ) = ReservedItems( InList ) - 1
     Else
      ; Si l'objet est inf�rieur au compteur r�el, on incr�ment la liste et on positionne l'objet dedans.
      ListLength( InList ) = ListLength( InList ) + 1
;      Dim ListItems( ListLength )
      ListItems( InList, ListLength ) = 0
      TruePos.l = DLH_InsertItemInList( InList, ItemNumber )
     EndIf
   EndIf
  ItemNumber = 0
  ProcedureReturn ItemNumber
 EndProcedure

Procedure.l DLH_GetCount( InList.l )
  ItemCount.l = ReservedItems( InList ) - ListLength( InList )
  ProcedureReturn ItemCount
 EndProcedure

Procedure.l DLH_GetItemCounter( InList.l )
  Retour.l = ReservedItems( InList )
  ProcedureReturn Retour
 EndProcedure

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 60
; FirstLine = 8
; Folding = --