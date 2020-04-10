
Global Editor_MasterSkyBox.l, Editor_SkyBoxTexture.l

Structure RealTimeSky_type
  Hour.f : Minutes.f  : Secunds.f : Day.l : Year.l : YearDays.l : TimeSpeed.f : Mode.l : NewTimer.l
  CloudPercent.f : SkyHalo.l : Initialized.l : RainDelay.l : RainCycle.l : RainCount.f
  WindXSpeed.f : WindYSpeed.f : CloudPersistence.f : MistPercent.f
  SkyBoxfile.s : SkyBoxDrawer.s : SkyFile.s : CloudFile.s : StarsFile.s : SunFile.s : MoonFile.s : GetUpHalo.s : GetDownHalo.s
  Aurore1.s : Aurore2.s : FarAway.s : Ground.s
  AmbientRed.l : AmbientGreen.l : AmbientBlue.l : FogRed.l : FogGreen.l : FogBlue.l : FogDistance.f : FogControl.l
  MinAmbientRed.l : MinAmbientGreen.l : MinAmbientBlue.l : MinFogRed.l : MinFogGreen.l : MinFogBlue.l
  XView.f : YView.f : ZView.f
 EndStructure
Global RTSky.RealTimeSky_Type

Global Dim RTSObjects( 10 ) ; Objets chargés pour le système de Skybox.

Global Dim RTSTextures( 10 ) ; Images utilisées pour les textures du système de skyboxes.

Structure OldCam_Type
  XPos.f : YPos.f : ZPos.f : XAngle.f : YAngle.f : ZAngle.f : XShift.f : YShift.f : ZShift.f
 EndStructure
Global CamMemory.OldCam_Type

;
ProcedureCDLL RTS_EnableShadowShadings()
  UseShadowsOn = 1
 EndProcedure

ProcedureCDLL RTS_DisableShadowShadings()
  UseShadowsOn = 0
 EndProcedure

ProcedureCDLL RTS_SetAutoZoom( NewZoomValue.l )
  DefAutoZoom.f = PeekF( @NewZoomValue )
  If DefAutoZoom < 0.0001 : DefAutoZoom = 0.0001 : EndIf
 EndProcedure

ProcedureCDLL RTS_RealTime_SetClock( Hour.l, Minutes.l, TSpeed.l )
;  Rem définition de l'heure par défaut ...
    RTSky\Hour = Hour : RTSky\Minutes = Minutes : RTSky\Secunds = 0
    RTSky\TimeSpeed = PeekF( @TSpeed )
 EndProcedure
;
ProcedureCDLL.l RTS_GetDay()
  VALUE.l = RTSky\Day
  ProcedureReturn VALUE
 EndProcedure

ProcedureCDLL.l RTS_GetHour()
  VALUE.l = RTSky\Hour
  ProcedureReturn VALUE
 EndProcedure

ProcedureCDLL.l RTS_GetMinutes()
  VALUE.l = RTSky\Minutes
  ProcedureReturn VALUE
 EndProcedure

ProcedureCDLL.l RTS_GetSecunds()
  VALUE.l = RTSky\Secunds
  ProcedureReturn VALUE
 EndProcedure

ProcedureCDLL RTS_SetDay( VALUE.L )
  RTSky\Day = VALUE
 EndProcedure

ProcedureCDLL RTS_SetHour( VALUE.L )
  RTSky\Hour = VALUE
 EndProcedure

ProcedureCDLL RTS_SetMinutes( VALUE.L )
  RTSky\Minutes = VALUE
 EndProcedure

ProcedureCDLL RTS_SetSecunds( VALUE.L )
  RTSky\Secunds = VALUE
 EndProcedure

ProcedureCDLL RTS_SetTimeExpansion( TSpeed.l )
    RTSky\TimeSpeed = PeekF( @TSpeed )
 EndProcedure

ProcedureCDLL RTS_SetWind( XSpeed.l, ZSpeed.l ) 
  RTSky\WindXSpeed = PeekF( @XSpeed )
  RTSky\WindYSpeed = PeekF( @ZSpeed )
 EndProcedure

ProcedureCDLL RTS_CloudPersistence( Value.l )
  RTSky\CloudPercent = PeekF( @Value )
 EndProcedure

ProcedureCDLL RTS_SetMistAlpha( Value.l )
  RTSky\MistPercent = PeekF( @Value )
 EndProcedure

ProcedureCDLL RTS_SetFogControlOn()
  RTSky\FogControl = 1
 EndProcedure

ProcedureCDLL RTS_SetFogControlOff()
  RTSky\FogControl = 0
 EndProcedure

ProcedureCDLL RTS_SetFogDistance( Distance.l )
  RTSky\FogDistance = PeekF( @Distance )
 EndProcedure

ProcedureCDLL RTS_SetFogColor( Red.l, Green.l, Blue.l )
  RTSky\FogRed = Red : RTSky\FogGreen = Green : RTSky\FogBlue = Blue
  RTSky\MinFogRed = Red / 10 : RTSky\MinFogGreen = Green / 10 : RTSky\MinFogBlue = Blue / 10
 EndProcedure

ProcedureCDLL RTS_SetFogColorEx( Red.l, Green.l, Blue.l, MinRed.l, MinGreen.l, MinBlue.l )
  RTSky\FogRed = Red : RTSky\FogGreen = Green : RTSky\FogBlue = Blue
  RTSky\MinFogRed = MinRed : RTSky\MinFogGreen = MinGreen : RTSky\MinFogBlue = MinBlue
 EndProcedure

ProcedureCDLL RTS_ClearRTSkybox()
  If RTSky\Initialized = 1
    For XLoop = 10 To 0 Step -1
      If RTSObjects( XLoop ) > 0
        If DBGetObjectExist( RTSObjects( XLoop ) ) = 1
          RTSObjects( XLoop ) = B3D_Delete( RTSObjects( XLoop ) )
         EndIf
       EndIf
      If RTSTextures( XLoop ) > 0
        If DBGetImageExist( RTSTextures( XLoop ) ) = 1
          RTSTextures( XLoop ) = IMG_Delete( RTSTextures( XLoop ) )
         EndIf
       EndIf
     Next XLoop
    RTSky\Initialized = 0
   EndIf
 EndProcedure

ProcedureCDLL.l RTS_GetObjectLoaded( ID.l )
  Retour.l = RTSObjects( ID )
  ProcedureReturn Retour
 EndProcedure

ProcedureCDLL RTS_RealTimeSky()
  ; Rem Gestion des heures, minutes, secondes
  NewTime.l = DBTimerL() : Delay.f = ( NewTime - RTSky\NewTimer )
  If RTSky\NewTimer = 0 : Delay = 1.0 : EndIf
  RTSky\NewTimer = NewTime
  RTSky\Secunds = RTSky\Secunds + ( RTSky\TimeSpeed * Delay )
  If RTSky\Secunds >= 60
  RTTemp.f = Int( RTSky\Secunds / 60 )
  RTSky\Secunds = RTSky\Secunds - ( RTTemp * 60 )
    RTSky\Minutes = RTSky\Minutes + RTTemp
    If RTSky\Minutes > 59
      RTTemp = Int( RTSky\Minutes / 60 )
      RTSky\Minutes = RTSky\Minutes - ( RTTemp * 60 )
      RTSky\Hour = RTSky\Hour + RTTemp
      If RTSky\Hour > 23
        RTTemp = Int( RTSky\Hour / 24 )
        RTSky\Hour = RTSky\Hour - ( RTTemp * 24 )
        RTSky\Day = RTSky\Day  + RTTemp
       EndIf   
     EndIf
   EndIf
  ; Rem Gestion du scrolling de nuages ...
  DBScrollTexture( RTSObjects( 1 ) , RTSky\WindXSpeed * Delay , RTSky\WindXSpeed * Delay )
  ; Rem Gestion de la quantité de nuages dans la zone de jeu ...
;  If LCase( Right( RTSky\CloudFile, 4 ) ) <> ".png"
    DBSetAlphaFactor( RTSObjects( 1 ), RTSky\CloudPercent )
;   EndIf
  ; Rem Gestion de la brume pour les temps de pluies par exemple ...
  DBSetAlphaFactor( RTSObjects( 7 ) , RTSky\MistPercent )
  If RTSky\Mode > 0
    XC.f = RTSky\XView : YC.f = RTSky\YView : ZC.f = RTSky\ZView  
    XCam1.f = DBGetCameraXPosition1( RTSky\Mode ) : YCam1.f = DBGetCameraYPosition1( RTSky\Mode ) : ZCam1.f = DBGetCameraZPosition1( RTSky\Mode )
    AUTOZOOM.f = 150.0
  Else
    XC.f = DBGetCameraXPosition1( 0 ) : YC.f = DBGetCameraYPosition1( 0 ) : ZC.f = DBGetCameraZPosition1( 0 )
    XCam1.f = XC : YCam1.f = YC: ZCam1.f = ZC
    AUTOZOOM.f = 150.0
   EndIf
  ; If the movement of the camera is small, we scroll the ground texture to fit the changes .
  CamMemory\XShift = CamMemory\XPos - XCam1 : CamMemory\YShift = CamMemory\YPos - YCam1
  CamMemory\ZShift = CamMemory\ZPos - ZCam1
  CamMemory\XPos = XCam1 : CamMemory\YPos = YCam1 : CamMemory\ZPos = ZCam1
  If Abs( CamMemory\XShift ) < 100 And Abs( CamMemory\YShift ) < 100 And Abs( CamMemory\ZShift ) < 100
    DBScrollTexture( RTSObjects( 6 ), CamMemory\XShift / 1000.0 , CamMemory\ZShift / 1000.0 )
   EndIf
  ; Rem Gestion du jour et de la nuit
  RTCOUNTER.l = ( RTSky\Hour * 3600 ) + ( RTSky\Minutes * 60 ) + RTSky\Secunds
  DECA.f = RTSky\Secunds * 0.01666
  If RTSky\Hour < 4 Or RTSky\Hour > 20 : PERCENT.f = 0 : PERCENT2.f = 90.0 : EndIf
  If RTSky\Hour > 3 And RTSky\Hour < 11
    PERCENT.f = ( ( ( RTSky\Hour - 4 ) * 60 ) + RTSky\Minutes ) / 3.6
    PERCENT2.f = 90 - ( ( ( ( RTSky\Hour - 4 ) * 60 ) + RTSky\Minutes ) / 1.8 )
    If PERCENT2 < 0.0 : PERCENT2 = 0 : EndIf
   EndIf
  If RTSky\Hour > 9 And RTSky\Hour < 16 : PERCENT.f = 100 : PERCENT2.f = 0.0 : EndIf
  If RTSky\Hour > 15 And RTSky\Hour < 21
    PERCENT.f = ( ( 360.0 - ( ( ( RTSky\Hour - 15 ) * 60 ) + RTSky\Minutes ) ) + DECA ) / 3.0
    PERCENT2.f = ( ( ( RTSky\Hour - 19 ) * 60 ) + RTSky\Minutes ) / 1.33
    If PERCENT2 < 0.0 : PERCENT2 = 0.0 : EndIf
    If PERCENT2 > 90.0 : PERCENT2 = 90.0 : EndIf
   EndIf
  ; Rem Gestion du ciel ...
  DBFadeObject( RTSObjects( 0 ) , PERCENT )
  DBSetAlphaFactor( RTSObjects( 0 ) , PERCENT )
  PERCENTX.l = PERCENT : If PERCENTX < 10 : PERCENTX = 10 : EndIf
  DBFadeObject( RTSObjects( 9 ), ( PERCENTX * 8.0 ) )
  DBFadeObject( RTSObjects( 6 ), PERCENT * 4.0 )
;  DBSetAlphaFactor( RTSObjects( 6 ), PERCENT )
  ; Rem Gestion des étoiles.
  ; PERCENT2.f = ( 100.0 - PERCENT ) : If PERCENT2 > 90 : PERCENT2 = 90 : EndIf
  DBFadeObject( RTSObjects( 2 ) , 50 )
  DBSetAlphaFactor( RTSObjects( 2 ) , PERCENT2 )
  ; Rem On déplace le soleil et la lune selon l'heure du jour....
  ANGLE.f = ( ( ( RTSky\Hour * 60.0 ) + RTSky\Minutes + DECA ) / 4.0 ) + 90.0
  ANGLE = Deg2Rad( ANGLE )
  XPos.f = Cos( ANGLE ) * 50.2 * AUTOZOOM * DefAutoZoom : YPos.f = Sin( ANGLE ) * 50.2 * AUTOZOOM * DefAutoZoom
  DBPositionObject( RTSObjects( 3 ) , XC - ( XPos * 1.6 ) , YC - Ypos , ZC )
  DBPositionObject( RTSObjects( 4 ) , XC + ( Xpos * 1.6 ) , YC + Ypos , ZC )
  DBPositionObject( RTSObjects( 5 ) , XC - ( XPos * 1.65 ) , YC - ( Ypos * 1.05 ) , ZC )
  DBPositionObject( RTSObjects( 10 ) , XC - ( XPos * 1.6 ) , YC - Ypos , ZC )
  DBSetToCameraOrientation( RTSObjects( 3 ) ) : DBSetToCameraOrientation( RTSObjects( 4 ) )
  DBSetToCameraOrientation( RTSObjects( 5 ) ) : DBSetToCameraOrientation( RTSObjects( 10 ) )
  ; Essai pour fixer le problème d'angle du soleil pour le réflexion shading.
  YAngle.f = Abs( DBGetObjectYRotation( RTSObjects( 3 ) ) )
  YAngle2.f = Abs( DBGetObjectYRotation( RTSObjects( 4 ) ) )
  YAngle3.f = Abs( DBGetObjectYRotation( RTSObjects( 5 ) ) )
  YAngle4.f = Abs( DBGetObjectYRotation( RTSObjects( 10 ) ) )
  DBRotateObject( RTSObjects( 3 ) , DBGetObjectXRotation( RTSObjects( 3 ) ) , YAngle , DBGetObjectZRotation( RTSObjects( 3 ) ) )
  DBRotateObject( RTSObjects( 4 ) , DBGetObjectXRotation( RTSObjects( 4 ) ) , YAngle2 , DBGetObjectZRotation( RTSObjects( 4 ) ) )
  DBRotateObject( RTSObjects( 5 ) , DBGetObjectXRotation( RTSObjects( 5 ) ) , YAngle3 , DBGetObjectZRotation( RTSObjects( 5 ) ) )
  DBRotateObject( RTSObjects( 10 ) , DBGetObjectXRotation( RTSObjects( 10 ) ) , YAngle4 , DBGetObjectZRotation( RTSObjects( 10 ) ) )

  ; Rem Gestion du halo lumineux autour du soleil...
  If RTSky\Hour < 11 And RTSky\Hour > 3
    If RTSky\SkyHalo = 1
      If RTSObjects( 5 ) > 0
        DBSetObjectTexture( RTSObjects( 5 ) , RTSTextures( 5 ) )
       EndIf
      RTSky\SkyHalo = 0
     EndIf
    PERCENT3.f = ( ( ( RTSky\Hour - 4 ) * 60 ) + RTSky\Minutes ) / 2.1
    If PERCENT3 > 100.0 : PERCENT3 = 100.0 - ( PERCENT3 - 100.0 ) : EndIf
   EndIf
  If RTSky\Hour > 10 And RTSky\Hour < 14 : PERCENT3 = 0.0 : EndIf
  If RTSky\Hour > 13 And RTSky\Hour < 21
    If RTSky\SkyHalo = 0 
      If RTSTextures( 6 ) > 0
        DBSetObjectTexture( RTSObjects( 5 ) , RTSTextures( 6 ) )
       EndIf
      RTSky\SkyHalo = 1
     EndIf
    PERCENT3 = ( ( ( RTSky\Hour - 14 ) * 60 ) + RTSky\Minutes ) / 2.1
    If PERCENT3 > 100.0 : PERCENT3 = 100.0 - ( PERCENT3 - 100.0 ) : EndIf
   EndIf
  ; REM  Fade Object 6 , PERCENT3# * 4.0
  If PERCENT3 < 1.0 : PERCENT3 = 1.0 : EndIf
  DBScaleObject( RTSObjects( 5 ) , PERCENT3 , PERCENT3 , PERCENT3 )
  DBPositionObject( RTSObjects( 0 ) , XC , YC , ZC )
  DBPositionObject( RTSObjects( 1 ) , XC , YC , ZC )
  DBPositionObject( RTSObjects( 2 ) , XC , YC , ZC )
  DBPositionObject( RTSObjects( 6 ) , XC , YC , ZC )
  DBPositionObject( RTSObjects( 7 ) , XC , YC , ZC )
  DBPositionObject( RTSObjects( 8 ) , XC , YC , ZC )
  DBPositionObject( RTSObjects( 9 ) , XC , YC , ZC )
;  DBPositionObject( RTSObjects( 10 ) , XC , YC , ZC )
  ; On calcule le halo de luminosité du ciel au lever et coucher du soleil.
  If RTSky\Hour > 12
    DBRotateObject( RTSObjects( 8 ), 0.0, 180.0, 0.0 )
    FinalHour.f = RTSky\Hour : FinalMinutes.f = RTSky\Minutes
    FALPHA.f = 100.0 - Abs( ( ( ( FinalHour - 18.0 ) * 60.0 ) + FinalMinutes ) / 1.20 )
    If FALPHA < 0.0 : FALPHA = 0.0 : EndIf  
   Else
    DBRotateObject( RTSObjects( 8 ), 0.0, 0.0, 0.0 )
    FinalHour.f = RTSky\Hour : FinalMinutes.f = RTSky\Minutes
    FALPHA.f = 100.0 - Abs( ( ( ( FinalHour - 6.0 ) * 60.0 ) + FinalMinutes ) / 1.20 )
    If FALPHA < 0.0 : FALPHA = 0.0 : EndIf
   EndIf
  DBFadeObject( RTSObjects( 8 ), FALPHA )
  DBSetAlphaFactor( RTSObjects( 8 ), FALPHA )
  ; Rem Calcul pour le YPOS#
  If RTSky\Hour > 5 And RTSky\Hour < 18
    LANGLE.f = 180 - ( ( ( ( RTSky\Hour - 6 ) * 60 ) + RTSky\Minutes + ( RTSky\Secunds * 0.01666 ) ) / 4.0 )
    Ypos2.f = 0 - Sin( LANGLE )
   Else
    YPos2.f = 0.0
   EndIf
  If RTSky\Hour > 3 And RTSky\Hour < 20
    LANGLE.f = 270 - ( ( ( ( RTSky\Hour - 4 ) * 60 ) + RTSky\Minutes + ( RTSky\Secunds * 0.01666 ) ) / 2.66667 )
    XPos2.f = Cos( DBWrapValue( Deg2Rad( LANGLE ) ) )
   Else
    XPos2.f= 0.0
   EndIf
  If RTSky\Mode > 0
    DBPositionCamera1( 0 , RTSky\XView, RTSky\YView, RTSky\ZView )
    XAngle.f = DBGetXAngle1( RTSky\Mode ) : YAngle.f = DBGetYAngle1( RTSky\Mode )
    ZAngle.f = DBGetZAngle1( RTSky\Mode )
    DBSetCameraRotation1( 0, XAngle, YAngle, ZAngle )
   EndIf
  DBPositionLight( 0 , XCam1 - ( XPos * 12 * DefAutoZoom ) , YCam1 - ( YPos * 12 * DefAutoZoom ) , ZCam1 )
  DBPointLight( 0 , XCam1 + ( XPos * 12 ) , YCam1 + ( YPos * 12 ) , ZCam1 )
  RANGE.f = ( 512.00 * PERCENT ) * DefAutoZoom
  DBSetLightRange( 0 , RANGE )
  ; Si le contrôle du brouillard est actif.
  If RTSky\FogControl = 1
    FPERCENT.f = ( ( RTSky\Hour * 3600 ) + ( RTSky\Minutes * 60 ) + RTSky\Secunds ) / 432.0
    If FPERCENT > 100 : FPERCENT = 100 - ( FPERCENT - 100 ) : EndIf
    RVB1 = ( PERCENT * RTSky\AmbientRed ) / 100
    RVB2 = ( PERCENT * RTSky\AmbientGreen ) / 100
    RVB3 = ( PERCENT * RTSky\AmbientBlue ) / 100
    If RVB1 < RTSky\MinAmbientRed : RVB1 = RTSky\MinAmbientRed : EndIf
    If RVB2 < RTSky\MinAmbientGreen : RVB2 = RTSky\MinAmbientGreen : EndIf
    If RVB3 < RTSky\MinAmbientBlue : RVB3 = RTSky\MinAmbientBlue : EndIf
    DBSetLightColor1( 0 , RVB1 , RVB2 , RVB3 ) 
    ; On déplace l'ombre portée selon la position du soleil.
    If UseShadowsOn = 1
      ; Position the shadow at the same position than the displayed sun object.
      DBSetShadowPosition( 0-1, XC - ( XPos / 3.0 ) , YC - ( Ypos / 3.0 ) , ZC )
      Percent2.f = ( FPERCENT - 50.0 )
      If Percent2 < 0.0 : Percent2 = 0.0 : EndIf
      DBSetShadowColor( 16, 16, 16, Int( Percent2 * 5 ) )
     EndIf
    RVB1 = ( PERCENT * RTSky\FogRed ) / 100
    RVB2 = ( PERCENT * RTSky\FogGreen ) / 100
    RVB3 = ( PERCENT * RTSky\FogBlue ) / 100
    If PERCENT < 10.0 : PERCENT = 10.0 : EndIf
    DBSetFogDistance( 512 + ( ( PERCENT * RTSky\FogDistance ) / 100 ) )
    If RVB1 < RTSky\MinFogRed : RVB1 = RTSky\MinFogRed : EndIf
    If RVB2 < RTSky\MinFogGreen : RVB2 = RTSky\MinFogGreen : EndIf
    If RVB3 < RTSky\MinFogBlue : RVB3 = RTSky\MinFogBlue : EndIf
    DBSetFogColor( DBRgb( RVB1 , RVB2 , RVB3 ) )
    DBBackdropColor1( RTSky\Mode, DBRGB( RVB1, RVB2, RVB3 ) )
   EndIf
EndProcedure

ProcedureCDLL RTS_RealTimeSky_Setup( SkyBox.l, DisplayMode.l )
  RTSky\Initialized = 1
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  If SkyBox <> 0
    SkyBoxes.s = PeekS( SkyBox )
    CallCFunctionFast( *GlobPtr\CreateDeleteString , SkyBox ,0 ) ; CreateString
   EndIf
  RTSky\Mode = DisplayMode
  If RTSky\Mode > 0 : AUTOZOOM.f = 150.0 * DefAutoZoom : Else : AUTOZOOM.f = 150.0 * DefAutoZoom : EndIf
  RTSky\SkyBoxDrawer = SkyBoxes + "\"
  RTSky\SkyBoxFile = SkyBoxes + ".x4r"
  RTSky\AmbientRed = 255 : RTSky\AmbientGreen = 255 : RTSky\AmbientBlue = 255
  RTSky\FogRed = 255 : RTSky\FogGreen = 255 : RTSky\FogBlue = 255 : RTSky\FogDistance = 4096
  If OpenFile( 1 , RTSky\SkyBoxFile )
    _HEADER$=ReadString( 1 )
    If _HEADER$ = "X4 RealTime-SkyBox Definition"
      Repeat
        _DATA$=ReadString( 1 )
        Select _DATA$
          Case "CIEL:" : RTSky\SkyFile = ReadString( 1 )
          Case "NUAGES:" : RTSky\CloudFile = ReadString( 1 )
          Case "ETOILES:" : RTSky\StarsFile = ReadString( 1 )
          Case "SOLEIL:" : RTSky\SunFile = ReadString( 1 )
          Case "LUNE:" : RTSky\MoonFile = ReadString( 1 )
          Case "HALOLEVER:" : RTSky\GetUpHalo = ReadString( 1 )
          Case "HALOCOUCHER:" : RTSky\GetDownHalo = ReadString( 1 ) 
          Case "MINAMBIENT:" : RTSky\MinAmbientRed = Val( ReadString( 1 ) ) : RTSky\MinAmbientGreen = Val( ReadString( 1 ) ) : RTSky\MinAmbientBlue = Val( ReadString( 1 ) )
          Case "AMBIENT:" : RTSky\AmbientRed = Val( ReadString( 1 ) ) : RTSky\AmbientGreen = Val( ReadString( 1 ) ) : RTSky\AmbientBlue = Val( ReadString( 1 ) )
          Case "FOG:" : RTSky\FogRed = Val( ReadString( 1 ) ) : RTSky\FogGreen = Val( ReadString( 1 ) ) : RTSky\FogBlue = Val( ReadString( 1 ) )
          Case "FOGDISTANCE:" : RTSky\FogDistance = Val( ReadString( 1 ) )
          Case "AURORE:" : RTSky\Aurore1 = ReadString( 1 )
          Case "BACKGROUND:" : RTSky\FarAway = ReadString( 1 )
          Case "GROUND:" : RTSky\Ground = ReadString( 1 )
         EndSelect                
       Until _DATA$ = "ENDOFRSD" Or Eof(1)
     Else 
      RTSky\Initialized = 0
      MessageRequester( "! ! ! WARNING ! ! !" , "File does not correspond to real-time skybox" )
     EndIf   
    CloseFile(1)
   EndIf

  ; Modified Objects/Textures loading order to fit ZBUFFER priorities order.


 ; Rem Chargement d'un objet du ciel pour créer le fond d'étoiles ...
  RTSObjects( 2 ) = B3D_DynamicLoad( RTSky\SkyBoxDrawer + "Ciel.x" )
  DBScaleObject( RTSObjects( 2 ) , 30.0 * AUTOZOOM , 110.0 * AUTOZOOM , 30.0 * AUTOZOOM )
;  DBDisableObjectZWrite( RTSObjects( 2 ) )
  If DBGetFileExist( RTSky\SkyBoxDrawer + RTSky\StarsFile ) = 1
    RTSTextures( 2 ) = IMG_DynamicLoad( RTSky\SkyBoxDrawer + RTSky\StarsFile )
    DBSetObjectTexture( RTSObjects( 2 ) , RTSTextures( 2 ) )
    DBScaleTexture( RTSObjects( 2 ) , 0.5 , 0.5 )
   EndIf
  DBSetObject4( RTSObjects( 2 ) , 1 , 0 , 0 , 0 , 0 , 0 , 0 )

  ;  Rem Chargement d'un objet du ciel pour créer le fond coloré bleuté ...
  RTSObjects( 0 ) = B3D_DynamicLoad( RTSky\SkyBoxDrawer + "Ciel.x" )
  DBScaleObject( RTSObjects( 0 ) , 28.0 * AUTOZOOM , 100.0 * AUTOZOOM , 28.0 * AUTOZOOM )
  If DBGetFileExist( RTSky\SkyBoxDrawer + RTSky\SkyFile ) = 1
    RTSTextures( 0 ) = IMG_DynamicLoad( RTSky\SkyBoxDrawer + RTSky\SkyFile )
    DBSetObjectTexture( RTSObjects( 0 ), RTSTextures( 0 ) )
   EndIf
  If LCase( Right( RTSky\SkyFile, 4 ) ) = ".png"
    DBSetObject4( RTSObjects( 0 ), 1, 2, 0, 2, 0, 0, 0 )
   Else
    DBSetObject4( RTSObjects( 0 ), 1, 1, 0, 2, 0, 0, 0 )
   EndIf
  DBDisableObjectZWrite( RTSObjects( 0 ) )

; Rem On crées les objets de halos pour les lever et coucher de soleils ...
  RTSObjects( 5 ) = B3D_DynamicMakePlain( 51.2 * AUTOZOOM *1.6 , 51.2 * AUTOZOOM *1.6 )
  If DBGetFileExist( RTSky\SkyBoxDrawer + RTSky\GetUpHalo ) = 1
    RTSTextures( 5 ) = IMG_DynamicLoad( RTSky\SkyBoxDrawer + RTSky\GetUpHalo )
    DBSetObjectTexture( RTSObjects( 5 ) , RTSTextures( 5 ) )
   EndIf
  If DBGetFileExist( RTSky\SkyBoxDrawer + RTSky\GetDownHalo )
    RTSTextures( 6 ) = IMG_DynamicLoad( RTSky\SkyBoxDrawer + RTSky\GetDownHalo )
   EndIf
  If LCase( Right( RTSky\GetUpHalo, 4 ) ) = ".png"
    DBSetObject4( RTSObjects( 5 ) , 1 , 2 , 0 , 2 , 0 , 0 , 0 )
   Else
    DBSetObject4( RTSObjects( 5 ) , 1 , 1 , 0 , 2 , 0 , 0 , 0 )
    DBGhostObjectOn( RTSObjects( 5 ) )
    DBSetAlphaFactor( RTSObjects( 5 ) , 75.0 )
   EndIf
  DBDisableObjectZWrite( RTSObjects( 5 ) )

    ; Rem On crée le soleil
  RTSObjects( 3 ) = B3D_DynamicMakePlain( 6.4 * AUTOZOOM * 1.4 , 6.4 * AUTOZOOM * 1.4 )
  RTSTextures( 3 ) = IMG_DynamicLoad( RTSky\SkyBoxDrawer + RTSky\SunFile )
  DBSetObjectTexture( RTSObjects( 3 ) , RTSTextures( 3 ) )
  If LCase( Right( RTSky\SunFile, 4 ) ) = ".png"
    DBSetObject4( RTSObjects( 3 ) , 1 , 2 , 0 , 2 , 0 , 0 , 0 )
   Else
    DBSetObject4( RTSObjects( 3 ) , 1 , 4 , 0 , 2 , 0 , 0 , 0 )
    DBGhostObjectOn( RTSObjects( 3 ) )
   EndIf
  RTSObjects( 10 ) = B3D_DynamicClone( RTSObjects( 3 ) )
  DBSetObject4( RTSObjects( 10 ) , 1 , 4 , 0 , 0 , 0 , 0 , 0 )
  DBSetTRansparency( RTSObjects( 10 ), 4 )  
  DBDisableObjectZWrite( RTSObjects( 3 ) )

  ; Rem On crée la lune
  RTSObjects( 4 ) = B3D_DynamicMakePlain( 6.4 * AUTOZOOM * 1.4 , 6.4 * AUTOZOOM * 1.4 )
;  RTSObjects( 4 ) = B3D_DynamicMakePlain( 3.2 * AUTOZOOM *1.4 , 3.2 * AUTOZOOM *1.4 )
  RTSTextures( 4 ) = IMG_DynamicLoad( RTSky\SkyBoxDrawer + RTSky\MoonFile )
  DBSetObjectTexture( RTSObjects( 4 ) , RTSTextures( 4 ) )
  DBSetObject4( RTSObjects( 4 ) , 1 , 2 , 0 , 0 , 0 , 0 , 0 )
  If LCase( Right( RTSky\MoonFile, 4 ) ) = ".png"
    DBSetObject4( RTSObjects( 4 ) , 1 , 2 , 0 , 2 , 0 , 0 , 0 )
   Else
    DBSetObject4( RTSObjects( 4 ) , 1 , 1 , 0 , 2 , 0 , 0 , 0 )
   EndIf
  DBDisableObjectZWrite( RTSObjects( 4 ) )

  ; Rem Chargement de l'objet des nuages ...
  RTSObjects( 1 ) = B3D_DynamicLoad( RTSky\SkyBoxDrawer + "Ciel.x" )
  DBScaleObject( RTSObjects( 1 ) , 12.0 * AUTOZOOM , 35.0 * AUTOZOOM , 12.0 * AUTOZOOM )
  If DBGetFileExist( RTSky\SkyBoxDrawer + RTSky\CloudFile ) = 1
    RTSTextures( 1 ) = IMG_DynamicLoad( RTSky\SkyBoxDrawer + RTSky\CloudFile )
    DBSetObjectTexture( RTSObjects( 1 ) , RTSTextures( 1 ) )
    DBScaleTexture( RTSObjects( 1 ) , 0.5 , 0.5 )
   EndIf
  If LCase( Right( RTSky\CloudFile, 4 ) ) = ".png"
    DBSetObject4( RTSObjects( 1 ) , 1 , 2 , 0 , 2 , 0 , 0 , 0 )
   Else
    DBSetObject4( RTSObjects( 1 ) , 1 , 1 , 0 , 2 , 0 , 0 , 0 )
;    DBGhostObjectOn( RTSObjects( 1 ) )
    DBSetAlphaFactor( RTSObjects( 1 ) , 0.0 )
   EndIf
  DBDisableObjectZWrite( RTSObjects( 1 ) )

  ; Rem On crée l'objet pour le brouillard . . .
  RTSObjects( 7 ) = B3D_DynamicLoad( RTSky\SkyBoxDrawer + "Ciel.x" )
  DBScaleObject( RTSObjects( 7 ) , 10.0 * AUTOZOOM , 28.0 * AUTOZOOM , 10.0 * AUTOZOOM )
  If DBGetFileExist( RTSky\SkyBoxDrawer + "gris.png" ) = 1
    RTSTextures( 7 ) = IMG_DynamicLoad( RTSky\SkyBoxDrawer + "gris.png" )
    DBSetObjectTexture( RTSObjects( 7 ) , RTSTextures( 7 ) )
    DBSetObject4( RTSObjects( 7 ) , 1 , 2 , 0 , 2 , 0 , 0 , 0 )
   Else
    If DBGetFileExist( RTSky\SkyBoxDrawer + "gris.bmp" ) = 1
      RTSTextures( 7 ) = IMG_DynamicLoad( RTSky\SkyBoxDrawer + "gris.bmp" )
      DBSetObjectTexture( RTSObjects( 7 ) , RTSTextures( 7 ) )
      DBSetObject4( RTSObjects( 7 ) , 1 , 2 , 0 , 2 , 0 , 0 , 0 )
;      DBGhostObjectOn( RTSObjects( 7 ) )
      DBSetAlphaFactor( RTSObjects( 7 ) , 0.0 )
     EndIf
   EndIf
  DBDisableObjectZWrite( RTSObjects( 7 ) )
;  If LCase( Right( RTSky\CloudFile, 4 ) ) = ".png" : DBSetTransparency( RTSObjects( 7 ), 2 ) : EndIf

  ; Rem Chargement de l'objet de l'aurore....
  RTSObjects( 8 ) = B3D_DynamicLoad( RTSky\SkyBoxDrawer + "LC.x" )
  DBScaleObject( RTSObjects( 8 ) , 29.0 * AUTOZOOM , 105.0 * AUTOZOOM , 29.0 * AUTOZOOM )
  If DBGetFileExist( RTSky\SkyBoxDrawer + RTSky\Aurore1 ) = 1
    RTSTextures( 8 ) = IMG_DynamicLoad( RTSky\SkyBoxDrawer + RTSky\Aurore1 )
    DBSetObjectTexture( RTSObjects( 8 ) , RTSTextures( 8 ) )
    DBScaleTexture( RTSObjects( 8 ) , 0.5 , 0.5 )
   EndIf
  If LCase( Right( RTSky\Aurore1, 4 ) ) <> ".png"
    DBSetObject4( RTSObjects( 8 ) , 1 , 0 , 0 , 2 , 0 , 0 , 0 )
    DBGhostObjectOn( RTSObjects( 8 ) )
    DBSetLight( RTSObjects( 8 ), 1 )
   Else
    DBSetObject4( RTSObjects( 8 ) , 1 , 0 , 0 , 2 , 0 , 0 , 0 )
   EndIf
  DBDisableObjectZWrite( RTSObjects( 8 ) )

   ; Rem Chargement de l'objet pour les décors lointains. ...
  RTSObjects( 9 ) = B3D_DynamicLoad( RTSky\SkyBoxDrawer + "FarAway.x" )
  DBScaleObject( RTSObjects( 9 ) , 9.0 * AUTOZOOM , 9.0 * AUTOZOOM , 9.0 * AUTOZOOM )
;  DBGhostObjectOn( RTSObjects( 9 ) )
;  DBDisableObjectZWrite( RTSObjects( 9 ) )
  DBFadeObject( RTSObjects( 9 ), 100 )
  If DBGetFileExist( RTSky\SkyBoxDrawer + RTSky\FarAway ) = 1
    RTSTextures( 9 ) = IMG_DynamicLoad( RTSky\SkyBoxDrawer + RTSky\FarAway )
    DBSetObjectTexture( RTSObjects( 9 ) , RTSTextures( 9 ) )
   EndIf
  DBSetObject4( RTSObjects( 9 ) , 1 , 2 , 0 , 2 , 1 , 0 , 1 )

  ; Rem On crée le cache du bas
  RTSObjects( 6 ) = B3D_DynamicLoad( RTSky\SkyBoxDrawer + "Ground.x" )
  DBRotateObject( RTSObjects( 6 ) , 180 , 0 , 0 )
  DBScaleObject( RTSObjects( 6 ) , 9.0 * AUTOZOOM , 20.0 * AUTOZOOM , 9.0 * AUTOZOOM )
  DBPositionObject( RTSObjects( 6 ) , 0 , 0 , 0 )
  DBFadeObject( RTSObjects( 6 ), 100 )
  If DBGetFileExist( RTSky\SkyBoxDrawer + RTSky\Ground ) = 1
    RTSTextures( 10 ) = IMG_DynamicLoad( RTSky\SkyBoxDrawer + RTSky\Ground )
    DBSetObjectTexture( RTSObjects( 6 ) , RTSTextures( 10 ) )
   EndIf
  DBSetObject4( RTSObjects( 6 ) , 1 , 0 , 0 , 2 , 1 , 1 , 1 )

  ; On Désactive le système de collisions pour les objets utilisés.
  For Xloop = 0 To 10
    If RTSObjects( XLoop ) > 0 : DBSetCollisionObjectOff( RTSObjects( XLoop ) ) : EndIf
   Next Xloop 

  ;  Rem DEFINITION DES VALEURS ORIGINALES
  If RTSky\CloudPercent <= 0.0 : RTSky\CloudPercent = 25.0 : EndIf
;  RTSky\WindXSpeed = 0.0001 : RTSky\WindYSpeed= 0.00005
  If RTSky\Mode > 0 
    RTSky\XView = -500000.0 : RTSky\YView = -500000.0 : RTSky\ZView = -500000.0
    DBPositionCamera1( RTSky\Mode, 0.0, 0.0, 0.0 )
    DBPositionCamera1( 0, RTSky\XView, RTSky\YView, RTSky\ZView )
   Else
    RTSky\XView = 0.0 : RTSky\YView = 0.0 : RTSky\ZView = 0.0
    DBPositionCamera1( 0, 0.0, 0.0, 0.0 )
   EndIf

 EndProcedure


; IDE Options = PureBasic 4.61 (Windows - x86)
; CursorPosition = 350
; FirstLine = 345
; Folding = -----