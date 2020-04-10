;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC OBJECT COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
; ***************************************************************************************
ProcedureCDLL M3D_Clear()
  ; On supprime tout les objets qui ne l'auraient pas été...
  If DLH_GetItemCounter() > 0
    For XLoop = DLH_GetItemCounter() To 1 Step -1
      If DBGetMeshExist( XLoop ) = 1
        DBDeleteMesh( XLoop )
       EndIf
     Next XLoop
    ObjectCount = 0
   EndIf
  ; On efface la pile des objets.
  DLH_ClearList()
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l M3D_GetFree()
  If M3DInitialized = 1
    ; Si on n'a aucun objet supprimés dans la pile, on ajoute simplement un objet au compteur pour l'utiliser.
    Retour.l = DLH_GetNextFreeItem()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l M3D_Count()
  If M3DInitialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l M3D_Delete( Number.l )
  If M3DInitialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier lieu, on supprime l'objet.
      If DBGetMeshExist( Number ) = 1 : DBDeleteMesh( Number ) : EndIf
      ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
      Number = DLH_FreeItem( Number )
     EndIf
   EndIf
  Number = 0
  ProcedureReturn Number
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l M3D_DynamicLoad( File.l )
  If File <> 0
    Fichier.s = MyDeleteString( File )
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    If M3DInitialized = 1
      Target.l = DLH_GetNextFreeItem()
      If Target > 0
        DBLoadMesh( Fichier , Target )
       EndIf
     Else
      Target = 0
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l M3D_DynamicMakeFromObject( Object.l )
  If M3DInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBGetMeshExist( Target ) = 0
      DBMakeMeshFromObject( Target , Object )
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l M3D_DynamicMakeFromMemblock( Memblock.l )
  If M3DInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBGetMeshExist( Target ) = 0
      DBCreateMeshFromMemblock( Target , Memblock )
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************

; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 59
; FirstLine = 45
; Folding = --