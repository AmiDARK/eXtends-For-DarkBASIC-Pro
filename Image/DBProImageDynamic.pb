;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC Image COMMANDS                              *
; *                                                                                  *
; ************************************************************************************
;
;
Procedure.l DLH_GetMediaExist( MediaID.l )
  MDExist.l = DBGetImageExist( MediaID )
  ProcedureReturn MDExist
 EndProcedure
;
ProcedureCDLL IMG_Clear()
  If IMGInitialized = 1
    ; On supprime tout les objets qui ne l'auraient pas été...
    If DLH_GetItemCounter() > 0
      For XLoop = DLH_GetItemCounter() To 1 Step -1
        If DBGetImageExist( XLoop ) = 1
          DBDeleteImage( XLoop )
         EndIf
       Next XLoop
     EndIf
    DLH_ClearList()
   EndIf
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l IMG_Count()
  If IMGInitialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l IMG_Delete( Number.l )
  If IMGInitialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier lieu, on supprime l'objet.
      If DBGetImageExist( Number ) = 1
        DBDeleteImage( Number )
        Number = DLH_FreeItem( Number ) ; On supprime l'objet de la liste.
       EndIf
     EndIf
   Else
    Number = -1
   EndIf
  ProcedureReturn Number
 EndProcedure

; ***************************************************************************************
Procedure IMG_StaticLoad( File.l, ImageID.l )
  If File <> 0
    Fichier.s = MyDeleteString( File )
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
;    If IMGInitialized = 1
;      DLH_GetItem( ImageID )
;      If ImageID > 0
;        If DBGetImageExist( ImageID ) = 0
;          DBLoadImage( Fichier , ImageID )
;         EndIf
;       EndIf
;     EndIf
   EndIf
 EndProcedure 
; ***************************************************************************************
Procedure IMG_StaticLoadF( File.l , ImageID.l, Flag.l )
  If File <> 0
    Fichier.s = MyDeleteString( File )
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
;    If IMGInitialized = 1
;      DLH_GetItem( ImageID )
;      If ImageID > 0
;        If DBGetImageExist( ImageID ) = 0
;          DBLoadImage1( Fichier , ImageID , Flag )
;         EndIf
;       EndIf
;     EndIf
   EndIf
 EndProcedure 

; ***************************************************************************************
ProcedureCDLL.l IMG_DynamicLoad( File.l )
  If File <> 0
    Fichier.s = MyDeleteString( File )
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    If IMGInitialized = 1
      Target.l = DLH_GetNextFreeItem()
;      If DBGetImageExist( Target ) = 0
       DBLoadImage( Fichier , Target )
;       Else
;        Target = -1
;       EndIf
     Else
      Target = 0
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l IMG_DynamicLoadF( File.l , Flag.l )
  If File <> 0
    Fichier.s = MyDeleteString( File )
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    If IMGInitialized = 1
      Target.l = DLH_GetNextFreeItem()
;      If DBGetImageExist( Target ) = 0
        DBLoadImage1( Fichier , Target , Flag )
;       Else
;        Target = -1
;       EndIf
     Else
      Target = 0
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l IMG_GrabImage( XStart.l, YStart.l, XEnd.l, YEnd.l )
  If IMGInitialized = 1
    Target.l = DLH_GetNextFreeItem()
;    If DBGetImageExist( Target ) = 0
      DBGrabImage( Target, XStart, YStart, XEnd, YEnd )
;     Else
;      Target = -1
;     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l IMG_GrabImageF( XStart.l, YStart.l, XEnd.l, YEnd.l, Flag.l )
  If IMGInitialized = 1
    Target.l = DLH_GetNextFreeItem()
;    If DBGetImageExist( Target ) = 0
      DBGrabImage1( Target, XStart, YStart, XEnd, YEnd, Flag )
;     Else
;      Target = -1
;     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l IMG_MakeImageFromMemblock( Memblock.l )
  Target.l = 0
  If IMGInitialized = 1
    If DBMemblockExist( Memblock ) = 1
      Target = DLH_GetNextFreeItem()
;      If DBGetImageExist( Target ) = 0
        DBCreateImageFromMemblock( Target, Memblock )
;       EndIf
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l IMG_SetCameraToImage( CameraID.l, IMGWidth.l, IMGHeight.l )
  Target.l = 0
  If IMGInitialized = 1
    Target = DLH_GetNextFreeItem()
;    If DBGetImageExist( Target ) = 0
      DBSetCameraToImage( CameraID, Target, IMGWidth, IMGHeight )
;     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l IMG_SetCameraToImage1( CameraID.l, IMGWidth.l, IMGHeight.l, GenerateAlpha.l )
  Target.l = 0
  If IMGInitialized = 1
    Target = DLH_GetNextFreeItem()
;    If DBGetImageExist( Target ) = 0
      DBSetCameraToImage1( CameraID, Target, IMGWidth, IMGHeight, GenerateAlpha )
;     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************

; IDE Options = PureBasic 4.20 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 57
; FirstLine = 54
; Folding = ---
; DisableDebugger