; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_InputStruct
  ScanCode.l : KeyState.l : WriteToClipboard.l : GetClipboard.l
  WriteToRegistry.l : GetRegistry.l : ClearEntryBuffer.l : GetEntry.l
  GetMouseClick.l : GetMouseMoveX.l : GetMouseMoveY.l : GetMouseMoveZ.l
  GetMouseX.l : GetMouseY.l : GetMouseZ.l : HideMouse.l
  ShowMouse.l : PositionMouse.l : UpKey.l : DownKey.l
  LeftKey.l : RightKey.l : ControlKey.l : ShiftKey.l
  ReturnKey.l : EscapeKey.l : SpaceKey.l : JoystickUp.l
  JoystickDown.l : JoystickLeft.l : JoystickRight.l : JoystickX.l
  JoystickY.l : JoystickZ.l : JoystickFireA.l : JoystickFireB.l
  JoystickFireC.l : JoystickFireD.l : JoystickFireXL.l : JoystickSliderA.l
  JoystickSliderB.l : JoystickSliderC.l : JoystickSliderD.l : JoystickTwistX.l
  JoystickTwistY.l : JoystickTwistZ.l : JoystickHatAngle.l : ForceUp.l
  ForceDown.l : ForceLeft.l : ForceRight.l : ForceAngle.l
  ForceNoEffect.l : ForceWaterEffect.l : ForceShoot.l : ForceChainsaw.l
  ForceImpact.l : ForceAutoCenterOn.l : ForceAutoCenterOff.l : PerformChecklistControlDevices.l
  SetControlDevice.l : GetControlDevice.l : ControlDeviceX.l : ControlDeviceY.l
  ControlDeviceZ.l : ChangeMouse.l : WriteToRegistryS.l : GetRegistryS.l
  GetEntryEx.l : SetControlDeviceEx.l : 
 EndStructure

Procedure.l CheckInput()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProInputDebug.dll")
    DB_Input\ScanCode= AIsFunction( 1 , "?ScanCode@@YAHXZ" ) ; 1 SCANCODE 
    DB_Input\KeyState= AIsFunction( 1 , "?KeyState@@YAHH@Z" ) ; 2 KEYSTATE Scancode
    DB_Input\WriteToClipboard= AIsFunction( 1 , "?WriteToClipboard@@YAXPAD@Z" ) ; 3 WRITE TO CLIPBOARD String
    DB_Input\GetClipboard= AIsFunction( 1 , "?GetClipboard@@YAKK@Z" ) ; 4 GET CLIPBOARD$ 
    DB_Input\WriteToRegistry= AIsFunction( 1 , "?WriteToRegistry@@YAXPAD0H@Z" ) ; 5 WRITE TO REGISTRY Folder Name, Key Name, Value
    DB_Input\GetRegistry= AIsFunction( 1 , "?GetRegistry@@YAHPAD0@Z" ) ; 6 GET REGISTRY Folder Name, Key Name
    DB_Input\ClearEntryBuffer= AIsFunction( 1 , "?ClearEntryBuffer@@YAXXZ" ) ; 7 CLEAR ENTRY BUFFER 
    DB_Input\GetEntry= AIsFunction( 1 , "?GetEntry@@YAKK@Z" ) ; 8 ENTRY$ 
    DB_Input\GetMouseClick= AIsFunction( 1 , "?GetMouseClick@@YAHXZ" ) ; 9 MOUSECLICK 
    DB_Input\GetMouseMoveX= AIsFunction( 1 , "?GetMouseMoveX@@YAHXZ" ) ; 10 MOUSEMOVEX 
    DB_Input\GetMouseMoveY= AIsFunction( 1 , "?GetMouseMoveY@@YAHXZ" ) ; 11 MOUSEMOVEY 
    DB_Input\GetMouseMoveZ= AIsFunction( 1 , "?GetMouseMoveZ@@YAHXZ" ) ; 12 MOUSEMOVEZ 
    DB_Input\GetMouseX= AIsFunction( 1 , "?GetMouseX@@YAHXZ" ) ; 13 MOUSEX 
    DB_Input\GetMouseY= AIsFunction( 1 , "?GetMouseY@@YAHXZ" ) ; 14 MOUSEY 
    DB_Input\GetMouseZ= AIsFunction( 1 , "?GetMouseZ@@YAHXZ" ) ; 15 MOUSEZ 
    DB_Input\HideMouse= AIsFunction( 1 , "?HideMouse@@YAXXZ" ) ; 16 HIDE MOUSE 
    DB_Input\ShowMouse= AIsFunction( 1 , "?ShowMouse@@YAXXZ" ) ; 17 SHOW MOUSE 
    DB_Input\PositionMouse= AIsFunction( 1 , "?PositionMouse@@YAXHH@Z" ) ; 18 POSITION MOUSE X,Y
    DB_Input\UpKey= AIsFunction( 1 , "?UpKey@@YAHXZ" ) ; 19 UPKEY 
    DB_Input\DownKey= AIsFunction( 1 , "?DownKey@@YAHXZ" ) ; 20 DOWNKEY 
    DB_Input\LeftKey= AIsFunction( 1 , "?LeftKey@@YAHXZ" ) ; 21 LEFTKEY 
    DB_Input\RightKey= AIsFunction( 1 , "?RightKey@@YAHXZ" ) ; 22 RIGHTKEY 
    DB_Input\ControlKey= AIsFunction( 1 , "?ControlKey@@YAHXZ" ) ; 23 CONTROLKEY 
    DB_Input\ShiftKey= AIsFunction( 1 , "?ShiftKey@@YAHXZ" ) ; 24 SHIFTKEY 
    DB_Input\ReturnKey= AIsFunction( 1 , "?ReturnKey@@YAHXZ" ) ; 25 RETURNKEY 
    DB_Input\EscapeKey= AIsFunction( 1 , "?EscapeKey@@YAHXZ" ) ; 26 ESCAPEKEY 
    DB_Input\SpaceKey= AIsFunction( 1 , "?SpaceKey@@YAHXZ" ) ; 27 SPACEKEY 
    DB_Input\JoystickUp= AIsFunction( 1 , "?JoystickUp@@YAHXZ" ) ; 28 JOYSTICK UP 
    DB_Input\JoystickDown= AIsFunction( 1 , "?JoystickDown@@YAHXZ" ) ; 29 JOYSTICK DOWN 
    DB_Input\JoystickLeft= AIsFunction( 1 , "?JoystickLeft@@YAHXZ" ) ; 30 JOYSTICK LEFT 
    DB_Input\JoystickRight= AIsFunction( 1 , "?JoystickRight@@YAHXZ" ) ; 31 JOYSTICK RIGHT 
    DB_Input\JoystickX= AIsFunction( 1 , "?JoystickX@@YAHXZ" ) ; 32 JOYSTICK X 
    DB_Input\JoystickY= AIsFunction( 1 , "?JoystickY@@YAHXZ" ) ; 33 JOYSTICK Y 
    DB_Input\JoystickZ= AIsFunction( 1 , "?JoystickZ@@YAHXZ" ) ; 34 JOYSTICK Z 
    DB_Input\JoystickFireA= AIsFunction( 1 , "?JoystickFireA@@YAHXZ" ) ; 35 JOYSTICK FIRE A 
    DB_Input\JoystickFireB= AIsFunction( 1 , "?JoystickFireB@@YAHXZ" ) ; 36 JOYSTICK FIRE B 
    DB_Input\JoystickFireC= AIsFunction( 1 , "?JoystickFireC@@YAHXZ" ) ; 37 JOYSTICK FIRE C 
    DB_Input\JoystickFireD= AIsFunction( 1 , "?JoystickFireD@@YAHXZ" ) ; 38 JOYSTICK FIRE D 
    DB_Input\JoystickFireXL= AIsFunction( 1 , "?JoystickFireXL@@YAHH@Z" ) ; 39 JOYSTICK FIRE X Button Number
    DB_Input\JoystickSliderA= AIsFunction( 1 , "?JoystickSliderA@@YAHXZ" ) ; 40 JOYSTICK SLIDER A 
    DB_Input\JoystickSliderB= AIsFunction( 1 , "?JoystickSliderB@@YAHXZ" ) ; 41 JOYSTICK SLIDER B 
    DB_Input\JoystickSliderC= AIsFunction( 1 , "?JoystickSliderC@@YAHXZ" ) ; 42 JOYSTICK SLIDER C 
    DB_Input\JoystickSliderD= AIsFunction( 1 , "?JoystickSliderD@@YAHXZ" ) ; 43 JOYSTICK SLIDER D 
    DB_Input\JoystickTwistX= AIsFunction( 1 , "?JoystickTwistX@@YAHXZ" ) ; 44 JOYSTICK TWIST X 
    DB_Input\JoystickTwistY= AIsFunction( 1 , "?JoystickTwistY@@YAHXZ" ) ; 45 JOYSTICK TWIST Y 
    DB_Input\JoystickTwistZ= AIsFunction( 1 , "?JoystickTwistZ@@YAHXZ" ) ; 46 JOYSTICK TWIST Z 
    DB_Input\JoystickHatAngle= AIsFunction( 1 , "?JoystickHatAngle@@YAHH@Z" ) ; 47 JOYSTICK HAT ANGLE Hat Number
    DB_Input\ForceUp= AIsFunction( 1 , "?ForceUp@@YAXH@Z" ) ; 48 FORCE UP Magnitude Value
    DB_Input\ForceDown= AIsFunction( 1 , "?ForceDown@@YAXH@Z" ) ; 49 FORCE DOWN Magnitude Value
    DB_Input\ForceLeft= AIsFunction( 1 , "?ForceLeft@@YAXH@Z" ) ; 50 FORCE LEFT Magnitude Value
    DB_Input\ForceRight= AIsFunction( 1 , "?ForceRight@@YAXH@Z" ) ; 51 FORCE RIGHT Magnitude Value
    DB_Input\ForceAngle= AIsFunction( 1 , "?ForceAngle@@YAXHHH@Z" ) ; 52 FORCE ANGLE Magnitude Value, Angle Value, Delay Value
    DB_Input\ForceNoEffect= AIsFunction( 1 , "?ForceNoEffect@@YAXXZ" ) ; 53 FORCE NO EFFECT 
    DB_Input\ForceWaterEffect= AIsFunction( 1 , "?ForceWaterEffect@@YAXHH@Z" ) ; 54 FORCE WATER EFFECT Magnitude Value, Delay Value
    DB_Input\ForceShoot= AIsFunction( 1 , "?ForceShoot@@YAXHH@Z" ) ; 55 FORCE SHOOT Magnitude Value, Delay Value
    DB_Input\ForceChainsaw= AIsFunction( 1 , "?ForceChainsaw@@YAXHH@Z" ) ; 56 FORCE CHAINSAW Magnitude Value, Delay Value
    DB_Input\ForceImpact= AIsFunction( 1 , "?ForceImpact@@YAXHH@Z" ) ; 57 FORCE IMPACT Magnitude Value, Delay Value
    DB_Input\ForceAutoCenterOn= AIsFunction( 1 , "?ForceAutoCenterOn@@YAXXZ" ) ; 58 FORCE AUTO CENTER ON 
    DB_Input\ForceAutoCenterOff= AIsFunction( 1 , "?ForceAutoCenterOff@@YAXXZ" ) ; 59 FORCE AUTO CENTER OFF 
    DB_Input\PerformChecklistControlDevices= AIsFunction( 1 , "?PerformChecklistControlDevices@@YAXXZ" ) ; 60 PERFORM CHECKLIST FOR CONTROL DEVICES 
    DB_Input\SetControlDevice= AIsFunction( 1 , "?SetControlDevice@@YAXK@Z" ) ; 61 SET CONTROL DEVICE Device Name$
    DB_Input\GetControlDevice= AIsFunction( 1 , "?GetControlDevice@@YAKK@Z" ) ; 62 CONTROL DEVICE NAME$ 
    DB_Input\ControlDeviceX= AIsFunction( 1 , "?ControlDeviceX@@YAHXZ" ) ; 63 CONTROL DEVICE X 
    DB_Input\ControlDeviceY= AIsFunction( 1 , "?ControlDeviceY@@YAHXZ" ) ; 64 CONTROL DEVICE Y 
    DB_Input\ControlDeviceZ= AIsFunction( 1 , "?ControlDeviceZ@@YAHXZ" ) ; 65 CONTROL DEVICE Z 
    DB_Input\ChangeMouse= AIsFunction( 1 , "?ChangeMouse@@YAXH@Z" ) ; 66 CHANGE MOUSE Cursor Number
    DB_Input\WriteToRegistryS= AIsFunction( 1 , "?WriteToRegistryS@@YAXPAD0K@Z" ) ; 67 WRITE STRING TO REGISTRY Folder Name, Key Name, String
    DB_Input\GetRegistryS= AIsFunction( 1 , "?GetRegistryS@@YAKKPAD0@Z" ) ; 68 GET REGISTRY$ Folder Name, Key Name
    DB_Input\GetEntryEx= AIsFunction( 1 , "?GetEntryEx@@YAKKH@Z" ) ; 69 ENTRY$ Auto Backspace Mode
    DB_Input\SetControlDeviceEx= AIsFunction( 1 , "?SetControlDeviceEx@@YAXKH@Z" ) ; 70 SET CONTROL DEVICE Device Name$, Device Index
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure.l DBScanCode()
  Retour.l = CallCFunctionFast( *DB_Input\ScanCode )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBKeyState( Scancode.l )
  Retour.l = CallCFunctionFast( *DB_Input\KeyState, Scancode )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBWriteToClipboard( String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  CallCFunctionFast( *DB_Input\WriteToClipboard, StringPTR )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetClipboard()
  Retour.l = CallCFunctionFast( *DB_Input\GetClipboard, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBWriteToRegistry( FolderName.s, KeyName.s, Value.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FolderNamePTR.l, Len( FolderName ) + 1 ) ; CreateString
  PokeS( FolderNamePTR, FolderName )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @KeyNamePTR.l, Len( KeyName ) + 1 ) ; CreateString
  PokeS( KeyNamePTR, KeyName )
  CallCFunctionFast( *DB_Input\WriteToRegistry, FolderNamePTR, KeyNamePTR, Value )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetRegistry( FolderName.s, KeyName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FolderNamePTR.l, Len( FolderName ) + 1 ) ; CreateString
  PokeS( FolderNamePTR, FolderName )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @KeyNamePTR.l, Len( KeyName ) + 1 ) ; CreateString
  PokeS( KeyNamePTR, KeyName )
  Retour.l = CallCFunctionFast( *DB_Input\GetRegistry, FolderNamePTR, KeyNamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBClearEntryBuffer()
  CallCFunctionFast( *DB_Input\ClearEntryBuffer )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetEntry()
  Retour.l = CallCFunctionFast( *DB_Input\GetEntry, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouseClick()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseClick )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouseMov()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseMoveX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouseMoveY()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseMoveY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouseMoveZ()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseMoveZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouse()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouseY()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMouseZ()
  Retour.l = CallCFunctionFast( *DB_Input\GetMouseZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBHideInputMouse()
  CallCFunctionFast( *DB_Input\HideMouse )
 EndProcedure
;
; *********************************************************************
Procedure DBShowInputMouse()
  CallCFunctionFast( *DB_Input\ShowMouse )
 EndProcedure
;
; *********************************************************************
Procedure DBPositionMouse( X.l, Y.l )
  CallCFunctionFast( *DB_Input\PositionMouse, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure.l DBUpKey()
  Retour.l = CallCFunctionFast( *DB_Input\UpKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBDownKey()
  Retour.l = CallCFunctionFast( *DB_Input\DownKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBLeftKey()
  Retour.l = CallCFunctionFast( *DB_Input\LeftKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBRightKey()
  Retour.l = CallCFunctionFast( *DB_Input\RightKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBControlKey()
  Retour.l = CallCFunctionFast( *DB_Input\ControlKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBShiftKey()
  Retour.l = CallCFunctionFast( *DB_Input\ShiftKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBReturnKey()
  Retour.l = CallCFunctionFast( *DB_Input\ReturnKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBEscapeKey()
  Retour.l = CallCFunctionFast( *DB_Input\EscapeKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBSpaceKey()
  Retour.l = CallCFunctionFast( *DB_Input\SpaceKey )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickUp()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickUp )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickDown()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickDown )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickLeft()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickLeft )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickRight()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickRight )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickX()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickY()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickZ()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickFireA()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickFireA )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickFireB()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickFireB )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickFireC()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickFireC )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickFireD()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickFireD )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickFireXL( ButtonNumber.l )
  Retour.l = CallCFunctionFast( *DB_Input\JoystickFireXL, ButtonNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickSliderA()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickSliderA )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickSliderB()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickSliderB )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickSliderC()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickSliderC )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickSliderD()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickSliderD )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickTwistX()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickTwistX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickTwistY()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickTwistY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickTwistZ()
  Retour.l = CallCFunctionFast( *DB_Input\JoystickTwistZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBJoystickHatAngle( HatNumber.l )
  Retour.l = CallCFunctionFast( *DB_Input\JoystickHatAngle, HatNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBForceUp( MagnitudeValue.l )
  CallCFunctionFast( *DB_Input\ForceUp, MagnitudeValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceDown( MagnitudeValue.l )
  CallCFunctionFast( *DB_Input\ForceDown, MagnitudeValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceLeft( MagnitudeValue.l )
  CallCFunctionFast( *DB_Input\ForceLeft, MagnitudeValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceRight( MagnitudeValue.l )
  CallCFunctionFast( *DB_Input\ForceRight, MagnitudeValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceAngle( MagnitudeValue.l, AngleValue.l, DelayValue.l )
  CallCFunctionFast( *DB_Input\ForceAngle, MagnitudeValue, AngleValue, DelayValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceNoEffect()
  CallCFunctionFast( *DB_Input\ForceNoEffect )
 EndProcedure
;
; *********************************************************************
Procedure DBForceWaterEffect( MagnitudeValue.l, DelayValue.l )
  CallCFunctionFast( *DB_Input\ForceWaterEffect, MagnitudeValue, DelayValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceShoot( MagnitudeValue.l, DelayValue.l )
  CallCFunctionFast( *DB_Input\ForceShoot, MagnitudeValue, DelayValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceChainsaw( MagnitudeValue.l, DelayValue.l )
  CallCFunctionFast( *DB_Input\ForceChainsaw, MagnitudeValue, DelayValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceImpact( MagnitudeValue.l, DelayValue.l )
  CallCFunctionFast( *DB_Input\ForceImpact, MagnitudeValue, DelayValue )
 EndProcedure
;
; *********************************************************************
Procedure DBForceAutoCenterOn()
  CallCFunctionFast( *DB_Input\ForceAutoCenterOn )
 EndProcedure
;
; *********************************************************************
Procedure DBForceAutoCenterOff()
  CallCFunctionFast( *DB_Input\ForceAutoCenterOff )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistControlDevices()
  CallCFunctionFast( *DB_Input\PerformChecklistControlDevices )
 EndProcedure
;
; *********************************************************************
Procedure DBSetControlDevice( DeviceName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DeviceNamePTR.l, Len( DeviceName ) + 1 ) ; CreateString
  PokeS( DeviceNamePTR, DeviceName )
  CallCFunctionFast( *DB_Input\SetControlDevice, DeviceNamePTR )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetControlDevice()
  Retour.l = CallCFunctionFast( *DB_Input\GetControlDevice, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBControlDevic()
  Retour.l = CallCFunctionFast( *DB_Input\ControlDeviceX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBControlDeviceY()
  Retour.l = CallCFunctionFast( *DB_Input\ControlDeviceY )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBControlDeviceZ()
  Retour.l = CallCFunctionFast( *DB_Input\ControlDeviceZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBChangeMouse( CursorNumber.l )
  CallCFunctionFast( *DB_Input\ChangeMouse, CursorNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteToRegistryS( FolderName.s, KeyName.s, String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FolderNamePTR.l, Len( FolderName ) + 1 ) ; CreateString
  PokeS( FolderNamePTR, FolderName )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @KeyNamePTR.l, Len( KeyName ) + 1 ) ; CreateString
  PokeS( KeyNamePTR, KeyName )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  CallCFunctionFast( *DB_Input\WriteToRegistryS, FolderNamePTR, KeyNamePTR, StringPTR )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetRegistryS( FolderName.s, KeyName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FolderNamePTR.l, Len( FolderName ) + 1 ) ; CreateString
  PokeS( FolderNamePTR, FolderName )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @KeyNamePTR.l, Len( KeyName ) + 1 ) ; CreateString
  PokeS( KeyNamePTR, KeyName )
  Retour.l = CallCFunctionFast( *DB_Input\GetRegistryS, ExtraPARAM.l, FolderNamePTR, KeyNamePTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetEntry1( AutoBackspaceMode.l )
  Retour.l = CallCFunctionFast( *DB_Input\GetEntryEx, ExtraPARAM.l, AutoBackspaceMode )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBSetControlDevice1( DeviceName.s, DeviceIndex.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DeviceNamePTR.l, Len( DeviceName ) + 1 ) ; CreateString
  PokeS( DeviceNamePTR, DeviceName )
  CallCFunctionFast( *DB_Input\SetControlDeviceEx, DeviceNamePTR, DeviceIndex )
 EndProcedure
;

