;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC OBJECT COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
ProcedureCDLL B2D_Clear()
  ; On supprime tout les objets qui ne l'auraient pas été...
  If ObjectCount > 0
    For XLoop = 1 To ObjectCount
      If DBObjectExist( XLoop ) = 1
        DBDeleteObject( XLoop )
       EndIf
     Next XLoop
    ObjectCount = 0
   EndIf
  ; On efface la pile des objets.
  If ObjectStackPos > 0
    For XLoop = 1 To ObjectStackPos
      ObjectStack( XLoop ) = 0
     Next XLoop
    ObjectStackPos = 0
   EndIf
 EndProcedure
;
ProcedureCDLL.l B2D_GetFree()
  ; Si on n'a aucun objet supprimés dans la pile, on ajoute simplement un objet au compteur pour l'utiliser.
  If ObjectStackPos = 0
    ObjectCount = ObjectCount + 1
    ; On vérifie tout de même que l'objet n'existe pas
    If DBObjectExist( ObjectCount ) = 0
      Retour.l = ObjectCount
     Else
      ; Si l'objet existe déjà, on envoie une recherche manuelle.
      Retour.l = 0
      Repeat
        Retour = Retour + 1
       Until DBObjectExist( Retour ) = 0
     EndIf
   Else
    ; Si la pile contient des élements, on utilise le dernier élement entré pour l'utiliser.
    Retour = ObjectStack( ObjectStackPos )
    If DBObjectExist( Retour ) = 0
      ObjectStackPos = ObjectStackPos - 1
     Else
      ; Si l'objet existe déjà, on envoie une recherche manuelle.
      Retour.l = 0
      Repeat
        Retour = Retour + 1
       Until DBObjectExist( Retour ) = 0
     EndIf
   EndIf
  ProcedureReturn Retour
 EndProcedure 
;
ProcedureCDLL.l B2D_Count()
  Retour.l = ObjectCount - ObjectStackPos
  ProcedureReturn Retour
 EndProcedure
;
ProcedureCDLL.l B2D_Delete( Number.l )
  ; Le numéro de l'objet est-il correct.
  If Number > 0
    ; En tout premier lieu, on supprime l'objet.
    If DBObjectExist( Number ) = 1 : DBDeleteObject( Number ) : EndIf
    ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
    If Number.l = ObjectCount
      ObjectCount = ObjectCount - 1
     Else
      ObjectStackPos = ObjectStackPos + 1
      ObjectStack( ObjectStackPos ) = Number
     EndIf
   EndIf
  ProcedureReturn 0
 EndProcedure
;
ProcedureCDLL.l B2D_DynamicLoad( File.l )
  Fichier.s = PeekS( File )
  Target.l = B2D_GetFree()
  If Target > 0
    If DBFileExist( Fichier ) = 1 And DBObjectExist( Target ) = 0
      DBLoadObject( Fichier , Target )
     Else
      Target = -1
     EndIf
   EndIf
  ProcedureReturn Target
 EndProcedure 
;
ProcedureCDLL.l B2D_DynamicClone( Source.l )
  Target.l = B2D_GetFree()
  If Source > 0
    If DBObjectExist( Source ) = 1
      DBCloneObject( Target , Source )
     EndIf
   EndIf
  ProcedureReturn Target
 EndProcedure 
;
ProcedureCDLL.l B2D_DynamicInstance( Source.l )
  Target.l = B2D_GetFree()
  If Source > 0
    If DBObjectExist( Source ) = 1
      DBInstanceObject( Target , Source )
     EndIf
   EndIf
  ProcedureReturn Target
 EndProcedure 

; IDE Options = PureBasic 5.62 (Windows - x64)
; CursorPosition = 109
; FirstLine = 60
; Folding = --
; EnableXP