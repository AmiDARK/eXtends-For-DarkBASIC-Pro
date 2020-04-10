;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC Bitmap COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
ProcedureCDLL CMR_Clear()
  If CMRInitialized = 1
    ; On supprime tout les objets qui ne l'auraient pas été...
    If DLH_GetItemCounter() > 0
      For XLoop = DLH_GetItemCounter() To 1 Step -1
        DBDeleteCamera( XLoop )
       Next XLoop
     EndIf
    DLH_ClearList()
   EndIf
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l CMR_Count()
  If CMRInitialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = -1
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l CMR_Delete( Number.l )
  If CMRInitialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier lieu, on supprime l'objet.
      DBDeleteCamera( Number )
      ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
      Number = DLH_FreeItem( Number )
     EndIf
   Else
    Number = -1
   EndIf
  ProcedureReturn Number
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l CMR_DynamicMake()
  If CMRInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    DBMakeCamera( Target )
   Else
    Target = -1
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l CMR_DynamicClone( Camera1.l )
  If CMRInitialized = 1
    Target = DLH_GetNextFreeItem()
    DBMakeCamera( Target )
    XPos.f = DBGetCameraXPosition1( Camera1 ) : YPos.f = DBGetCameraYPosition1( Camera1 )
    ZPos.f = DBGetCameraZPosition1( Camera1 )
    DBPositionCamera1( Target, XPos, YPos, ZPos )
    XPos.f = DBGetXAngle1( Camera1 ) : YPos.f = DBGetYAngle1( Camera1 ) : ZPos.f = DBGetZAngle1( Camera1 )
    DBSetCameraRotation1( Target, XPos, YPos, ZPos )
   Else
    Target = -1
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************

; ExecutableFormat=
; EOF