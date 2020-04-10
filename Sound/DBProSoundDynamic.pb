;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC Image COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
ProcedureCDLL SND_Clear()
  If SNDInitialized = 1
    ; On supprime tout les objets qui ne l'auraient pas été...
    If DLH_GetItemCounter() > 0
      For XLoop = DLH_GetItemCounter() To 1 Step -1
        If DBGetSoundExist( XLoop ) = 1
          DBDeleteSound( XLoop )
         EndIf
       Next XLoop
     EndIf
    DLH_ClearList()
  EndIf
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l SND_Count()
  If SNDInitialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l SND_Delete( Number.l )
  If SNDInitialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier lieu, on supprime l'objet.
      If DBGetSoundExist( Number ) = 1 : DBDeleteSound( Number ) : EndIf
      ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
      Number = DLH_FreeItem( Number )
     EndIf
   Else
    Number = 0
   EndIf
  ProcedureReturn Number
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l SND_DynamicLoad( File.l )
  If File <> 0
    Fichier.s = MyDeleteString( File )
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    If SNDInitialized = 1
      Target.l = DLH_GetNextFreeItem()
      If Target > 0
        If DBGetSoundExist( Target ) = 0
          DBLoadSound( Fichier , Target )
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
; ***************************************************************************************
ProcedureCDLL.l SND_DynamicLoad3D( File.l )
  If File <> 0
    Fichier.s = MyDeleteString( File )
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    If SNDInitialized = 1
      Target.l = DLH_GetNextFreeItem()
      If Target > 0
        If DBGetSoundExist( Target ) = 0
          DBLoad3DSound( Fichier , Target )
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
; ***************************************************************************************
ProcedureCDLL.l SND_MakeSoundFromMemblock( Memblock.l )
   If SNDInitialized = 1
   Target.l = 0
    If DBMemblockExist( Memblock ) = 1
      Target = DLH_GetNextFreeItem()
      If DBGetSoundExist( Target ) = 0
        DBCreateSoundFromMemblock( Target, Memblock )
       EndIf
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure

; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 49
; FirstLine = 46
; Folding = --