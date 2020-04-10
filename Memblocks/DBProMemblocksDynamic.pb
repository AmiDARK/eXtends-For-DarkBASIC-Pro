;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC Bitmap COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
ProcedureCDLL MBC_Clear()
  If MBCInitialized = 1
    ; On supprime tout les objets qui ne l'auraient pas été...
    If DLH_GetItemCounter() > 0
      For XLoop = DLH_GetItemCounter() To 1 Step -1
        If DBMemblockExist( XLoop ) = 1
          DBDeleteMemblock( XLoop )
         EndIf
       Next XLoop
     EndIf
    DLH_ClearList()
   EndIf
 EndProcedure
;
ProcedureCDLL.l MBC_Count()
  If MBCInitialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
;
ProcedureCDLL.l MBC_Delete( Number.l )
  If MBCInitialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier lieu, on supprime l'objet.
      If DBMemblockExist( Number ) = 1 : DBDeleteMemblock( Number ) : EndIf
      ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
      Number = DLH_FreeItem( Number )
     EndIf
   Else
    Number = 0
   EndIf
  ProcedureReturn Number
 EndProcedure
;
ProcedureCDLL.l MBC_DynamicMake( Size.l )
  If MBCInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBMemblockExist( Target ) = 0
      DBMakeMemblock( Target, Size )
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
;
ProcedureCDLL.l MBC_DynamicMakeFromArray( ArrayName0.l )
  If MBCInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBMemblockExist( Target ) = 0
      DBCreateMemblockFromArray( Target, ArrayName0 )
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
;
ProcedureCDLL.l MBC_DynamicMakeFromBitmap( BitmapNumber.l )
  If MBCInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBMemblockExist( Target ) = 0 And DBBitmapExist( BitmapNumber ) = 1
      DBCreateMemblockFromBitmap( Target, BitmapNumber )
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
;
ProcedureCDLL.l MBC_DynamicMakeFromImage( ImageNumber.l )
  If MBCInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBMemblockExist( Target ) = 0
      DBCreateMemblockFromImage( Target, ImageNumber )
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
;
ProcedureCDLL.l MBC_DynamicMakeFromMesh( MeshNumber.l )
  If MBCInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBMemblockExist( Target ) = 0
      DBCreateMemblockFromMesh( Target, MeshNumber )
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
;
ProcedureCDLL.l MBC_DynamicMakeFromSound( SoundNumber.l )
  If MBCInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBMemblockExist( Target ) = 0
      DBCreateMemblockFromSound( Target, SoundNumber )
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
;
ProcedureCDLL.l MBC_CloneMemblock( Memblock.l )
  Target.l = 0 : NULL.l = 0
  If MBCInitialized = 1
    If DBMemblockExist( Memblock ) = 1
      Target.l = DLH_GetNextFreeItem()
      If DBMemblockExist( Target ) = 0
        Size.l = DBGetMemblockSize( Memblock )
        DBMakeMemblock( Target, Size )
        DBCopyMemblock( Memblock, Target, NULL, NULL, Size )
       EndIf
     EndIf
   EndIf
  ProcedureReturn Target
 EndProcedure

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 97
; FirstLine = 48
; Folding = --