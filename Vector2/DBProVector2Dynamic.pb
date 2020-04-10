;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC OBJECT COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
; ***************************************************************************************
ProcedureCDLL V3D2_Clear()
  ; On supprime tout les objets qui ne l'auraient pas été...
  If DLH_GetItemCounter() > 0
    For XLoop = DLH_GetItemCounter() To 1 Step -1
      DBDeleteVector2( XLoop )
     Next XLoop
    ObjectCount = 0
   EndIf
  ; On efface la pile des objets.
  DLH_ClearList()
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l V3D2_GetFree()
  If V3D2Initialized = 1
    ; Si on n'a aucun objet supprimés dans la pile, on ajoute simplement un objet au compteur pour l'utiliser.
    Retour.l = DLH_GetNextFreeItem()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l V3D2_Count()
  If V3D2Initialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l V3D2_Delete( Number.l )
  If V3D2Initialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier lieu, on supprime l'objet.
      DBDeleteVector2( Number )
      ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
      Number = DLH_FreeItem( Number )
     EndIf
   EndIf
  ProcedureReturn 0
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l V3D2_DynamicMakeVector2()
  If V3D2Initialized = 1
    Target.l = DLH_GetNextFreeItem()
    Null.l = DBMakeVector2( Target )
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure

; IDE Options = PureBasic v4.00 (Windows - x86)
; Folding = -