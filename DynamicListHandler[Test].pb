 ;
; Gestionnaire de listes croissantes, décroissantes, non modifiées, de nombres.
;
Global ReservedItems.l ; Give the number of used item.
Global ListLength.l ; Give the position in ListItems()
Global Dim ListItems( 65536 )
;
Procedure.l InsertItemInList( ItemValue.l )
  ListItems( 0 ) = $1FFFFFFF ; Force Item 0 tu be as big as possible. // Limits
  ListItems( ListLength + 1 ) = 0 ; Force last item + 1 to be the smallest possible. // Limits
  FindPOS.l = 0
  Repeat
    FindPOS = FindPOS + 1
   Until ItemValue < ListItems( FindPOS - 1 ) And ItemValue >= ListItems( FindPOS )
  ; L'item doit être ajouté à la fin de la liste?
  If FindPOS = ListLength + 1
    ListLength = ListLength + 1
    ListItems( ListLength ) = ItemValue
   Else
    ; L'item doit être ajouté à l'intérieur de la liste?
    If FindPOS <= ListLength
      StartPOS.l = ListLength
      Repeat
        ListItems( StartPOS + 1 ) = ListItems( StartPOS )
        StartPOS = StartPOS - 1
       Until StartPOS = ( FindPOS - 1 )
      ListItems( FindPOS ) = ItemValue
      ListLength = ListLength + 1
     Else
      MessageRequester( "eXtends 1.2: Dynamic Handler Error #1", "Item can't be added in the list" )
     EndIf
   EndIf
;   EndIf
  ProcedureReturn FindPOS
 EndProcedure
;
Procedure RemoveItemFromList( ItemValue.l )
  ListItems( ListLength + 1 ) = 0 ; Force last item + 1 to be the smallest possible. // Limits
  If ListLength > 0
    FindPOS.l = 0
    Repeat
      FindPOS = FindPOS + 1
     Until ListItems( FindPOS ) = ItemValue Or FindPOS > ListLength
    ; Item is the last one in the list.
    If FindPOS = ListLength      
      ListItems( ListLength ) = 0
      ListLength = ListLength - 1
     Else
      If FindPOS <= ListLength
        StartPOS.l = FindPOS
        Repeat
          ListItems( StartPOS ) = ListItems( StartPOS + 1 )
          StartPOS = StartPOS + 1
         Until StartPOS = ListLength + 1
        ListLength = ListLength - 1
       Else
        MessageRequester( "eXtends 1.2: Dynamic Handler Error #3", "Can't remove item not present in the list" )
       EndIf
     EndIf
   Else
    MessageRequester( "eXtends 1.2: Dynamic Handler Error #2", "Can't remove an item from an empty list" )
   EndIf
 EndProcedure
;
Procedure DLH_ClearList()
  ReservedItems = 0
  ListLength = 0
;  Dim ListItems( 1 )
 EndProcedure
;
Procedure DLH_GetItem( ItemID.l )
  If ItemID > ReservedItems
    If ReservedItems = 0 : EndIf 
;    For XLoop = ReservedItems + 1 To ItemID -1
    XLoop.l = ReservedItems + 1
    Repeat
      If DLH_GetMediaExist( XLoop ) = 0
        InsertItemInList( XLoop )
       EndIf
;     Next XLoop
     XLoop = XLoop + 1
    Until XLoop = ItemID
    ReservedItems = ItemID
   Else
    If ItemID < ReservedItems
      If DLH_GetMediaExist( ItemID ) = 0
        RemoveItemFromList( Value.l )
       EndIf
     EndIf
   EndIf


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
    ListItems( ListLength + 1 ) = 0  
   EndIf  
  ProcedureReturn FreeItem
 EndProcedure
;
Procedure.l DLH_FreeItem( ItemNumber.l )
  If ItemNumber > 0
    If ItemNumber = ReservedItems
      ; Si l'objet à enlever de la liste est le dernier du compteur réel, on décrémente simplement le compteur réel.
      Repeat
        ReservedItems = ReservedItems - 1
        If ListItems( 1 ) = ReservedItems
          RemoveItemFromList( ReservedItems ) : RemovedOk = 1
         Else
          RemovedOk = 0
         EndIf
       Until RemovedOk = 0 Or ReservedItems = 0 Or ListLength = 0
     Else
      ; Si l'objet est inférieur au compteur réel, on incrément la liste et on positionne l'objet dedans.
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

ProcedureCDLL DLH_DebugInfos()
  DBPrintS( "eXtends Dynamic Handler DEBUG Informations" )
  DBPrintS( "------------------------------------------" )
  DBPrintS( "ReservedItems: " + Str( ReservedItems ) )
  DBPrintS( "ListLength : " + Str( ListLength ) )
  If ListLength > 0
    For XLoop = 1 To ListLength Step 2
      DBPrintS( Str( XLoop ) + ": " + Str( ListItems( XLoop ) ) + " / " + Str( XLoop +1 ) + ": " + Str( ListItems( XLoop +1 ) ) )
     Next XLoop
   EndIf
 EndProcedure
 
; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 120
; FirstLine = 83
; Folding = --