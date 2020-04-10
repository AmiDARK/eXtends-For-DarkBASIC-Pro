;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC Image COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
ProcedureCDLL MSC_Clear()
  If MSCInitialized = 1
    ; On supprime tout les objets qui ne l'auraient pas été...
    If DLH_GetItemCounter() > 0
      For XLoop = DLH_GetItemCounter() To 1 Step -1
        If DBGetMusicExist( XLoop ) = 1
          DBDeleteMusic( XLoop )
         EndIf
       Next XLoop
     EndIf
    DLH_ClearList()
  EndIf
 EndProcedure
;
ProcedureCDLL.l MSC_Count()
  If MSCInitialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
;
ProcedureCDLL.l MSC_Delete( Number.l )
  If MSCInitialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier lieu, on supprime l'objet.
      If DBGetMusicExist( Number ) = 1 : DBDeleteMusic( Number ) : EndIf
      ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
      Number = DLH_FreeItem( Number )
     EndIf
   Else
    Retour = 0
   EndIf
  ProcedureReturn Number
 EndProcedure
;
ProcedureCDLL.l MSC_DynamicLoad( File.l )
  If File <> 0
    Fichier.s = MyDeleteString( File )
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    If MSCInitialized = 1
      Target.l = DLH_GetNextFreeItem()
      If Target > 0
        If DBGetMusicExist( Target ) = 0
          DBLoadMusic( Fichier , Target )
         Else
          Target = -1
         EndIf
       EndIf
     Else
      Target = 0
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 
:;
; ***************************************************************************************

; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 48
; FirstLine = 15
; Folding = -