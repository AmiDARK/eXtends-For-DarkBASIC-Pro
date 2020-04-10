; **************************************************************
ProcedureCDLL.l B3D_GetPointsDistance( XP1.l, YP1.l, ZP1.l, XC1.l, YC1.l, ZC1.l )
  If B3DInitialized = 1
    XDist.f = PeekF( @XC1 ) - PeekF( @XP1 )
    YDist.f = PeekF( @YC1 ) - PeekF( @YP1 )
    ZDist.f = PeekF( @ZC1 ) - PeekF( @ZP1 )
    Dist.f = Sqr( ( XDist*XDist ) + ( YDist*YDist ) + ( ZDist*ZDist ) )
   Else
    Dist = 0.0
   EndIf
  PokeF( @Distance.l, Dist )
  ProcedureReturn Distance
 EndProcedure
; **************************************************************
ProcedureCDLL.l B3D_GetDistanceFromCamera( ObjectNumber.l )
  If B3DInitialized = 1
    XCam.f = DBGetCameraXPosition() : XPos.f = DBGetObjectXPosition1( ObjectNumber )
    YCam.f = DBGetCameraYPosition() : YPos.f = DBGetObjectYPosition1( ObjectNumber )
    ZCam.f = DBGetCameraZPosition() : ZPos.f = DBGetObjectZPosition1( ObjectNumber )
    XDist.f = XCam - XPos : YDist.f = YCam - YPos : ZDist.f = ZCam - ZPos
    Dist.f = Sqr( ( XDist*XDist ) + ( YDist*YDist ) + ( ZDist*ZDist ) )
   Else
    Dist = 0.0
   EndIf
  PokeF( @Distance.l, Dist )
  ProcedureReturn Distance
 EndProcedure
; **************************************************************
ProcedureCDLL.l B3D_GetObjectsDistance( Object1.l, Object2.l )
  If B3DInitialized = 1
    XCam.f = DBGetObjectXPosition1( Object2 ) : XPos.f = DBGetObjectXPosition1( ObjectNumber )
    YCam.f = DBGetObjectYPosition1( Object2 ) : YPos.f = DBGetObjectYPosition1( ObjectNumber )
    ZCam.f = DBGetObjectZPosition1( Object2 ) : ZPos.f = DBGetObjectZPosition1( ObjectNumber )
    XDist.f = XCam - XPos : YDist.f = YCam - YPos : ZDist.f = ZCam - ZPos
    Dist.f = Sqr( ( XDist*XDist ) + ( YDist*YDist ) + ( ZDist*ZDist ) )
   Else
    Dist = 0.0
   EndIf
  PokeF( @Distance, Dist )
  ProcedureReturn Distance
 EndProcedure
; **************************************************************
ProcedureCDLL.l B3D_GetPointDistancetoObject( ObjectNumber.l, XP1.l, YP1.l, ZP1.l )
  If B3DInitialized = 1
    XPos.f = DBGetObjectXPosition1( ObjectNumber )
    YPos.f = DBGetObjectYPosition1( ObjectNumber )
    ZPos.f = DBGetObjectZPosition1( ObjectNumber )
    XDist = XPos - PeekF( @XP1 )
    YDist = YPos - PeekF( @YP1 )
    ZDist = ZPos - PeekF( @ZP1 )
    Dist = Sqr( ( XDist*XDist ) + ( YDist*YDist ) + ( ZDist*ZDist ) )
   Else
    Dist = 0.0
   EndIf
  PokeF( @Distance, Dist )
  ProcedureReturn Distance
 EndProcedure
; **************************************************************
ProcedureCDLL.l B3D_GetPointDistancetoCamera( XP1.l, YP1.l, ZP1.l )
  If B3DInitialized = 1
    XCam.f = DBGetCameraXPosition()
    YCam.f = DBGetCameraYPosition()
    ZCam.f = DBGetCameraZPosition()
    XDist = XCam - PeekF( @XP1 )
    YDist = YCam - PeekF( @YP1 )
    ZDist = ZCam - PeekF( @ZP1 )
    Dist = Sqr( ( XDist*XDist ) + ( YDist*YDist ) + ( ZDist*ZDist ) )
   Else
    Dist = 0.0
   EndIf
  PokeF( @Distance, Dist )
  ProcedureReturn Distance
 EndProcedure
; **************************************************************

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 38
; FirstLine = 25
; Folding = -