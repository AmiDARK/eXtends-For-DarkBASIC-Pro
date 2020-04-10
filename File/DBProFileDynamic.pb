;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC Image COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
ProcedureCDLL DSK_CloseAllFiles()
  If DSKInitialized = 1
    ; On supprime tout les objets qui ne l'auraient pas été...
    If DLH_GetItemCounter() > 0
      For XLoop = DLH_GetItemCounter() To 1 Step -1
        If DBFileOpen( XLoop ) = 1
          DBCloseFile( XLoop )
          EndIf
       Next XLoop
     EndIf
    DLH_ClearList()
   EndIf
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l DSK_Count()
  If DSKInitialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l DSK_CloseFile( Number.l )
  If DSKInitialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier lieu, on supprime l'objet.
      If DBFileOpen( Number ) = 1 : DBCloseFile( Number ) : EndIf
      ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
      Number = DLH_FreeItem( Number )
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Number
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l DSK_DynamicOpenToRead( File.l )
  If File <> 0
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    Fichier.s = MyDeleteString( File )
    If DSKInitialized = 1
      Target.l = DLH_GetNextFreeItem()
      If Target > 0
        DBOpenToRead( Target, Fichier )
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
ProcedureCDLL.l DSK_DynamicOpenToWrite( File.l )
  If File <> 0
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    Fichier.s = MyDeleteString( File )
    If DSKInitialized = 1
      Target.l = DLH_GetNextFreeItem()
      If Target > 0
        DBOpenToWrite( Target, Fichier )
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

; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 48
; FirstLine = 30
; Folding = -