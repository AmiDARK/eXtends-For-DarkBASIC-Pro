;
; ************************************************************************************
; *                                                                                  *
; *                          DYNAMIC Virtual Lights COMMANDS                         *
; *                                                                                  *
; ************************************************************************************
;
Structure DLightStruct
  Locked.l : VLight.l : Active.l : HaloObject.l : Range.l : Color.l
 EndStructure
Global Dim DLight.DLightStruct( 7 ) ; For real lights from 0 to 7
;
Structure CLightStruct
  VLight.l : Distance.f
 EndStructure
Global Dim CLight.CLightStruct( 7 )
;
Structure VLightStruct
  Active.l : On.l : Xpos.f : YPos.f : ZPos.f : Range.f : Red.l : Green.l : Blue.l : Style.l 
  Halo.l : XTile.l : ZTile.l : Type.l : ActualState.f
 EndStructure
Global Dim VLight.VLightStruct( 65536 )

Global VisibilityCam.l
Global VisibilityDistance.f
;
; **************************************************************
Procedure.f L3D_GetDistance( XPos.f, YPos.f, ZPos.f, XCam.f, YCam.f, ZCam.f )
  XDist.f = XCam - XPos : YDist.f = YCam - YPos : ZDist.f = ZCam - ZPos
  Distance.f = Sqr( ( XDist*XDist ) + ( YDist*YDist ) + ( ZDist*ZDist ) )
  ProcedureReturn Distance
 EndProcedure
; **************************************************************
Procedure L3D_ClearList()
  For XLoop = 0 To 7
    CLight( XLoop )\Distance = 999999.0
    CLight( XLoop )\VLight = 0
   Next XLoop
  CLight( 0 )\Distance = 0
 EndProcedure
; **************************************************************
Procedure.l L3D_CheckInListPos( NewDistance.f )
  InPos.l = 8
  For XLoop = 7 To 1 Step -1
    If NewDistance < CLight( XLoop )\Distance : InPos = XLoop : EndIf
   Next XLoop
  ProcedureReturn InPos
 EndProcedure
; **************************************************************
Procedure L3D_InsertInList( NLight.l, Distance.f , InPos.l )
  If InPos < 7
    XLoop = 6
    Repeat
      CLight( XLoop + 1 )\VLight = CLight( XLoop )\VLight
      CLight( XLoop + 1 )\Distance = CLight( XLoop )\Distance
      XLoop = XLoop - 1
     Until XLoop < InPos
   EndIf
  CLight( InPos )\VLight = NLight
  CLight( InPos )\Distance = Distance
 EndProcedure
; **************************************************************
Procedure.l L3D_RefreshTrueLight()
  InCount.l = 0 : Check.l = 1 : TotalLights.l = 0
  Repeat
    If CLight( Check )\VLight > 0
      LNumber.l = CLight( Check )\VLight
      Repeat : InCount = InCount + 1 : Until DLight( InCount )\Locked = 0 Or InCount = 8
      If InCount < 8
        TotalLights = TotalLights + 1
        If DBGetLightExist( InCount ) = 0 : DBMakeLight( InCount ) : Else : DBShowLight( InCount ) : EndIf
        DLight( InCount )\VLight = CLight( Check )\VLight
        DLight( InCount )\Active = 1
        DBPositionLight( InCount, VLight( LNumber )\XPos, VLight( LNumber )\YPos, VLight( LNumber )\ZPos )
        ; On Calcule la couleur finale selon le type de lumière.
        Red.l = VLight( LNumber )\Red : Green.l = VLight( LNumber )\Green : Blue.l = VLight( LNumber )\Blue
        Range.l = VLight( LNumber )\Range : Flash.l = 1
        Select VLight( LNumber )\Type
          Case 1
            VLight( LNumber )\ActualState = VLight( LNumber )\ActualState + 2
            If VLight( LNumber )\ActualState > 255 : VLight( LNumber )\ActualState = VLight( LNumber )\ActualState - 256 : EndIf
            If VLight( LNumber )\ActualState < 128
              Amplitude.f = ( 50.0 + ( VLight( LNumber )\ActualState / 2.56 ) ) * 0.01
             Else
              Amplitude.f = ( 50.0 + ( ( 128 + ( 128 - VLight( LNumber )\ActualState ) ) / 2.56 ) ) * 0.01
             EndIf
             Red = Red * Amplitude : Green = Green + Amplitude : Blue = Blue + Amplitude
             Range = Range * Amplitude
          Case 2
            VLight( LNumber )\ActualState = VLight( LNumber )\ActualState + 1
            If VLight( LNumber )\ActualState > 255 : VLight( LNumber )\ActualState = VLight( LNumber )\ActualState - 256 : EndIf
            If VLight( LNumber )\ActualState < 128
              Amplitude.f = ( VLight( LNumber )\ActualState / 1.28 ) * 0.01
             Else
              Amplitude.f = ( ( 128 + ( 128 - VLight( LNumber )\ActualState ) ) / 1.28 ) * 0.01
             EndIf
             Red = Red * Amplitude : Green = Green + Amplitude : Blue = Blue + Amplitude
             Range = Range * Amplitude
          Case 3
            Flash.l = Random( 2 )
            Red = Red * Flash / 2.0 : Green = Green * Flash / 2.0 : Blue = Blue * Flash / 2.0
            Range = Range * Flash / 2.0
         EndSelect
        DBSetLightColor1( InCount, Red, Green, Blue )
        DBSetLightRange( InCount, Range )
        DLight( InCount )\Color = ( Red * 65536 ) + ( Green * 256 ) + Blue
        DLight( InCount )\Range = Range
        ; On Calcule le halo lumineux si nécessaire.
        If VLight( LNumber )\Halo = 0 Or Flash = 0
          If DLight( InCount )\HaloObject > 0 : DBExcludeObjectOn( DLight( InCount )\HaloObject ) : EndIf
         Else
          If DLight( InCount )\HaloObject = 0
            DLight( InCount )\HaloObject = B3D_DynamicMakePlain( 32.0, 32.0 )
          ; DBSetObject4( ObjectNumber.l, Wire.l, Transparent.l, Cull.l, Filter.l, Light.l, Fog.l, Ambient.l )
            DBSetObject4( DLight( InCount )\HaloObject, 1, 0, 0, 1, 0, 0, 0 )
            DBGhostObjectOn( DLight( InCount )\HaloObject )
           Else
            DBExcludeObjectOff( DLight( InCount )\HaloObject )
           EndIf
          DBSetObjectTexture( DLight( InCount )\HaloObject, VLight( LNumber )\Halo )
          DBPositionObject( DLight( InCount )\HaloObject, VLight( LNumber )\XPos, VLight( LNumber )\YPos, VLight( LNumber )\ZPos )
          DBSetCurrentCamera( CameraNumber )
          DBSetToCameraOrientation( DLight( InCount )\HaloObject )
         EndIf
       EndIf
     EndIf
    Check = Check + 1 ; Next Light from the list.   
   Until Check = 8 Or InCount = 8
  ; Si il reste des lumières, on les supprime.
  InCount = InCount + 1
  If InCount < 7
    Repeat
      If DLight( InCount )\Locked = 0
        If DBGetLightExist( InCount ) = 1 : DBDeleteLight( InCount ) : EndIf
       EndIf
      InCount = InCount + 1
     Until InCount = 8
   EndIf
;  TotalLights = TotalLights - 1
  ProcedureReturn TotalLights 
 EndProcedure
; **************************************************************
Procedure L3D_TurnOffLight( LightNumber.l )
  If DBGetLightExist( LightNumber ) = 1
    DBDeleteLight( LightNumber )
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL L3D_SetDisplayCamera( CameraNumber.l )
  If L3DInitialized = 1
    If CameraNumber > 0
      VisibilityCam = CameraNumber
     EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL.l L3D_GetTrueLightColor( LightID.l )
  Retour.l = DLight( LightID )\Color
  ProcedureReturn Retour
 EndProcedure
; **************************************************************
ProcedureCDLL.l L3D_GetTrueLightRange( LightID.l )
  Retour.l = DLight( LightID )\Range
  ProcedureReturn Retour
 EndProcedure
; **************************************************************
; **************************************************************
ProcedureCDLL.l L3D_GetDisplayCamera()
  If L3DInitialized = 1
    CameraNumber.l = VisibilityCam
   Else
    CameraNumber = -1
   EndIf
  ProcedureReturn CameraNumber
 EndProcedure
; **************************************************************
ProcedureCDLL L3D_SetVisibilityDistance( Distance.l )
  If L3DInitialized = 1
    VisibilityDistance = PeekF( @Distance )
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL.l L3D_GetVisibilityDistance()
  If L3DInitialized = 1
    Distance.l = VisibilityDistance
   Else
    Distance = 0
   EndIf
  ProcedureReturn Distance
 EndProcedure
; **************************************************************
ProcedureCDLL L3D_ShowVLight( LightNumber.l )
  If L3DInitialized = 1
    If VLight( LightNumber )\Active = 1
      VLight( LightNumber )\On = 1
     EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL L3D_HideVLight( LightNumber.l )
  If L3DInitialized = 1
    If VLight( LightNumber )\Active = 1
      VLight( LightNumber )\On = 0
     EndIf
   EndIf
 EndProcedure
; **************************************************************
                                                              ; Empêche la DLL d'utiliser la lumière et la laisse libre pour l'utilisateur.
ProcedureCDLL.l L3D_LockLight( LightNumber.l )
  If L3DInitialized = 1
    If DLight( LightNumber )\Active = 1
      L3D_TurnOffLight( LightNumber )
     EndIf
    DLight( LightNumber )\Locked = 1
    DLight( LightNumber )\VLight = 0
    DLight( LightNumber )\Active = 0
   EndIf
 EndProcedure
; **************************************************************
;                                                                ; Permet à la DLL d'utiliser une lumière pour les lumières réelles.
ProcedureCDLL.l L3D_UnLockLight( LightNumber.l )
  If L3DInitialized = 1
    DLight( LightNumber )\Locked = 0
    DLight( LightNumber )\VLight = 0
    DLight( LightNumber )\Active = 0
   EndIf
 EndProcedure
; **************************************************************
;                                                                ; Renvoie le nombre de lumières pouvant être utilisées.
ProcedureCDLL.l L3D_GetTotalFreeLight()
  If L3DInitialized = 1
    LCount.l = 0
    For XLoop = 0 To 7
      If DLight( XLoop )\Locked = 0 : LCount = LCount + 1 : EndIf
     Next XLoop 
   Else
    LCount = 0
   EndIf
  ProcedureReturn LCount
 EndProcedure
; **************************************************************
;                                                                ; Renvoie 1 si la lumière est bloquée.
ProcedureCDLL.l L3D_GetLocked( LightNumber.l )
  If L3DInitialized = 1
    GLocked.l = DLight( LightNumber )\Locked
   Else
    GLocked = -1
   EndIf
  ProcedureReturn GLocked
 EndProcedure
; **************************************************************
;
ProcedureCDLL.l L3D_AddVirtualLight( XPos.l, YPos.l, ZPos.l, Range.l, Red.l, Green.l, Blue.l, Type.l )
  If L3DInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If Target > 0
      VLight( Target )\Active = 1
      VLight( Target )\On = 1
      VLight( Target )\XPos = PeekF( @XPos )
      VLight( Target )\YPos = PeekF( @YPos )
      VLight( Target )\ZPos = PeekF( @Zpos )
      VLight( Target )\Range = PeekF( @Range )
      VLight( Target )\Red = Red
      VLight( Target )\Green = Green
      VLight( Target )\Blue = Blue
      VLight( Target )\Type = Type
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; **************************************************************
;
ProcedureCDLL L3D_SetVLightColor( LightNumber.l, Red.l, Green.l, Blue.l )
  If L3DInitialized = 1
    If VLight( LightNumber )\Active = 1
      VLight( LightNumber )\Red = Red
      VLight( LightNumber )\Green = Green
      VLight( LightNumber )\Blue = Blue
     EndIf
   EndIf
 EndProcedure
; **************************************************************
;
ProcedureCDLL L3D_SetVLightRange( LightNumber.l, Range.f )
  If L3DInitialized = 1
    If VLight( LightNumber )\Active = 1
      VLight( LightNumber )\Range = PeekF( @Range )
     EndIf
   EndIf
 EndProcedure
; **************************************************************
;
ProcedureCDLL L3D_PositionVLight( LightNumber.l, XPos.l, YPos.l, ZPos.l )
  If L3DInitialized = 1
    If VLight( LightNumber )\Active = 1
      VLight( LightNumber )\XPos = PeekF( @XPos )
      VLight( LightNumber )\YPos = PeekF( @YPos )
      VLight( LightNumber )\ZPos = PeekF( @ZPos )
     EndIf
   EndIf
 EndProcedure
; **************************************************************
;
ProcedureCDLL.l L3D_DeleteVirtualLight( LightNumber.l )
  If L3DInitialized = 1
    If VLight( LightNumber )\Active = 1
      VLight( LightNumber )\Active = 0
      VLight( LightNumber )\On = 0
      VLight( LightNumber )\XPos = 0
      VLight( LightNumber )\YPos = 0
      VLight( LightNumber )\ZPos = 0
      VLight( LightNumber )\Range = 0
      VLight( LightNumber )\Red = 0
      VLight( LightNumber )\Green = 0
      VLight( LightNumber )\Blue = 0
      VLight( LightNumber )\Style = 0
     EndIf
    Target.l = DLH_FreeItem( LightNumber )
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
;
; **************************************************************
ProcedureCDLL L3D_SetVLightHalo( LightNumber.l, HaloImage.l )
  If L3DInitialized = 1
    If VLight( LightNumber )\Active = 1
      If HaloImage > 0
        If DBGetImageExist( HaloImage ) = 1 : VLight( LightNumber )\Halo = HaloImage : EndIf
       Else
        VLight( LightNumber )\Halo = 0
       EndIf
     EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL L3D_SetVLightAsFixed( LightNumber.l )
   If L3DInitialized = 1
    If VLight( LightNumber )\Active = 1
      VLight( LightNumber )\Type = 0
      EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL L3D_SetVLightAsFlame( LightNumber.l )
   If L3DInitialized = 1
    If VLight( LightNumber )\Active = 1
      VLight( LightNumber )\Type = 1
      EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL L3D_SetVLightAsPulse( LightNumber.l )
   If L3DInitialized = 1
    If VLight( LightNumber )\Active = 1
      VLight( LightNumber )\Type = 2
      EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL L3D_SetVLightAsFlashs( LightNumber.l )
   If L3DInitialized = 1
    If VLight( LightNumber )\Active = 1
      VLight( LightNumber )\Type = 3
      EndIf
   EndIf
 EndProcedure
;
; **************************************************************
; **************************************************************
; **************************************************************
; **************************************************************
;
ProcedureCDLL.l L3D_GetVirtualLightsCount()
  If L3DInitialized = 1
    Target.l = DLH_GetCount()
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
;
ProcedureCDLL L3D_ClearVirtualLights()
  If L3DInitialized = 1
    ; On Supprime la liste des lumières virtuelles.
    Count.l = DLH_GetItemCounter()
    For XLoop = Count To 0 Step -1
      VLight( XLoop )\Active = 0 : VLight( XLoop )\On = 0
      VLight( XLoop )\XPos = 0 : VLight( XLoop )\YPos = 0 : VLight( XLoop )\ZPos = 0
      VLight( XLoop )\Red = 0 : VLight( XLoop )\Green = 0 : VLight( XLoop )\Blue = 0
      VLight( XLoop )\Range = 0 : VLight( XLoop )\Style = 0
     Next XLoop
    ; On supprime tout les objets qui ne l'auraient pas été...
    DLH_ClearList()
    ; On Supprime les lumières réelles non lockées et donc potentiellement utilisées par le système.
    For XLoop = 1 To 7
      If DLight( XLoop )\Locked = 0 And DLight( XLoop )\VLight > 0
        If DBGetLightExist( XLoop ) = 1
          DBDeleteLight( XLoop )
          DLight( XLoop )\VLight = 0
          DLight( XLoop )\Active = 0
          If DLight( XLoop )\HaloObject > 0
            If DBGetObjectExist( DLight( XLoop )\HaloObject ) = 1
              DLight( XLoop )\HaloObject = B3D_Delete( DLight( XLoop )\HaloObject ) ; Suppression des HALOS lumineux.
             EndIf
           EndIf
         EndIf
       EndIf
     Next XLoop
   EndIf
 EndProcedure
;
ProcedureCDLL.l L3D_RefreshLights()
  If L3DInitialized = 1
    TILESMAX.l = 8
    ; On récupère la position de la caméra de visibilité.
    XCamPos.f = DBGetCameraXPosition1( VisibilityCam )
    YCamPos.f = DBGetCameraYPosition1( VisibilityCam )
    ZCamPos.f = DBGetCameraZPosition1( VisibilityCam )
    ; On compte le nombre de lumières réelles libres pour l'affichage des lumières virtuelles.
    LCount.l = 0
    For XLoop = 1 To 7
      If DLight( XLoop )\Locked = 0 : LCount = LCount + 1 : EndIf
     Next XLoop
    ; On va parcourir la liste pour savoir quelles sont les LCOUNT lumières les plus proches.
    VCount.l = DLH_GetItemCounter()
    L3D_ClearList()
    For XLoop = 1 To VCount + 1
      ; On ne prends en compte la lumière que si elle existe et qu'elle est activée ( = on )
      If VLight( XLoop )\Active = 1
        If VLight( XLoop )\On = 1
          NewDistance.f = L3D_GetDistance( XCamPos, YCamPos, ZCamPos, VLight( XLoop )\Xpos, VLight( XLoop )\YPos, VLight( XLoop )\Zpos )
          If NewDistance < VisibilityDistance
            LightPos.l = L3D_CheckInListPos( NewDistance )
            If LightPos < 8 : L3D_InsertInList( XLoop, NewDistance , LightPos ) : EndIf
           EndIf
         EndIf
       EndIf
     Next XLoop
    Count.l = L3D_RefreshTrueLight()
   Else
    Count = -1
   EndIf
  ProcedureReturn Count
 EndProcedure

    
; IDE Options = PureBasic v4.02 (Windows - x86)
; CursorPosition = 417
; FirstLine = 407
; Folding = ------