;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC OBJECT COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
; ***************************************************************************************
ProcedureCDLL V3D4_Clear()
  ; On supprime tout les objets qui ne l'auraient pas été...
  If DLH_GetItemCounter() > 0
    For XLoop = DLH_GetItemCounter() To 1 Step -1
      DBDeleteVector4( XLoop )
     Next XLoop
    ObjectCount = 0
   EndIf
  ; On efface la pile des objets.
  DLH_ClearList()
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l V3D4_GetFree()
  If V3D4Initialized = 1
    ; Si on n'a aucun objet supprimés dans la pile, on ajoute simplement un objet au compteur pour l'utiliser.
    Retour.l = DLH_GetNextFreeItem()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l V3D4_Count()
  If V3D4Initialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l V3D4_Delete( Number.l )
  If V3D4Initialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier lieu, on supprime l'objet.
      DBDeleteVector4( Number )
      ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
      Number = DLH_FreeItem( Number )
     EndIf
   EndIf
  ProcedureReturn Number
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l V3D4_DynamicMakeVector4()
  If V3D4Initialized = 1
    Target.l = DLH_GetNextFreeItem()
    Null.l = DBMakeVector4( Target )
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure

; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 49
; FirstLine = 19
; Folding = -