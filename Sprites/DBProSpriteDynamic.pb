;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC Image COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
ProcedureCDLL SPR_Clear()
  If SPRInitialized = 1
    ; On supprime tout les objets qui ne l'auraient pas été...
    If DLH_GetItemCounter() > 0
      For XLoop = DLH_GetItemCounter() To 1 Step -1
        If DBGetSpriteExist( XLoop ) = 1
          DBDeleteSprite( XLoop )
         EndIf
       Next XLoop
     EndIf
    DLH_ClearList()
  EndIf
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l SPR_Count()
  If SPRInitialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l SPR_Delete( Number.l )
  If SPRInitialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier, on supprime le memblock associé si le sprite a été préparé pour les collisions.
      If SpriteCol( Number ) > 0
        SpriteCol( Number ) = MBC_Delete( SpriteCol( Number ) )
       EndIf
      ; En second, on supprime l'objet.
      If DBGetSpriteExist( Number ) = 1 : DBDeleteSprite( Number ) : EndIf
      ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
      Number = DLH_FreeItem( Number )
     EndIf
   Else
    Number = 0
   EndIf
  ProcedureReturn Number
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l SPR_DynamicSprite( Xpos.l, YPos.l, ImageNumber.l )
  If SPRInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBGetSpriteExist( Target ) = 0
      DBSprite( Target, XPos, YPos, ImageNumber )
     Else
      Target = -1
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l SPR_DynamicAnimatedSprite( FileName.l, Across.l, Down.l, ImageNumber.l )
  If FileName <> 0
    Fichier.s = PeekS( FileName )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, FileName, 0 )
    If SPRInitialized = 1
      Target.l = DLH_GetNextFreeItem()
      If DBGetSpriteExist( Target ) = 0
        DBCreateAnimatedSprite( Target, Fichier, Across, Down, ImageNumber )
       Else
        Target = -1
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

; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 66
; FirstLine = 34
; Folding = -