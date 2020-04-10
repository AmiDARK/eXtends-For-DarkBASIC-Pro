; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_MultiplayerStruct
  PerformChecklistForNetConnections.l : SetNetConnections.l : SetNetConnectionsEx.l : PerformChecklistForNetSessions.l
  CreateNetGame.l : CreateNetGameEx.l : JoinNetGame.l : CloseNetGame.l
  PerformChecklistForNetPlayers.l : CreatePlayer.l : CreatePlayerEx.l : DestroyPlayer.l
  SendNetMsgL.l : SendNetMsgF.l : SendNetMsgS.l : SendNetMsgMemblock.l
  SendNetMsgMemblockEx.l : SendNetMsgImage.l : SendNetMsgBitmap.l : SendNetMsgSound.l
  SendNetMsgMesh.l : GetNetMsg.l : NetMsgInteger.l : NetMsgFloat.l
  NetMsgString.l : NetMsgImage.l : NetMsgMesh.l : NetMsgSound.l
  NetMsgMemblock.l : NetMsgBitmap.l : NetSessionExists.l : NetSessionIsNowHosting.l
  NetSessionLost.l : NetMsgExists.l : NetMsgPlayerFrom.l : NetMsgPlayerTo.l
  NetMsgType.l : NetPlayerDestroyed.l : NetPlayerCreated.l : MagicNetGame.l
  NetBufferSize.l : 
 EndStructure

Procedure.l CheckMultiplayer()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProMultiplayerDebug.dll")
    DB_Multiplayer\PerformChecklistForNetConnections= AIsFunction( 1 , "?PerformChecklistForNetConnections@@YAXXZ" ) ; 1 PERFORM CHECKLIST FOR NET CONNECTIONS 
    DB_Multiplayer\SetNetConnections= AIsFunction( 1 , "?SetNetConnections@@YAXH@Z" ) ; 2 SET NET CONNECTION Connection Number
    DB_Multiplayer\SetNetConnectionsEx= AIsFunction( 1 , "?SetNetConnectionsEx@@YAXHPAD@Z" ) ; 3 SET NET CONNECTION Connection Number,Address Data
    DB_Multiplayer\PerformChecklistForNetSessions= AIsFunction( 1 , "?PerformChecklistForNetSessions@@YAXXZ" ) ; 4 PERFORM CHECKLIST FOR NET SESSIONS 
    DB_Multiplayer\CreateNetGame= AIsFunction( 1 , "?CreateNetGame@@YAXPAD0H@Z" ) ; 5 CREATE NET GAME Gamename, Playername, Number Of Players
    DB_Multiplayer\CreateNetGameEx= AIsFunction( 1 , "?CreateNetGameEx@@YAXPAD0HH@Z" ) ; 6 CREATE NET GAME Gamename, Playername, Number Of Players, Flag
    DB_Multiplayer\JoinNetGame= AIsFunction( 1 , "?JoinNetGame@@YAXHPAD@Z" ) ; 7 JOIN NET GAME Session Number, Playername
    DB_Multiplayer\CloseNetGame= AIsFunction( 1 , "?CloseNetGame@@YAXXZ" ) ; 8 FREE NET GAME 
    DB_Multiplayer\PerformChecklistForNetPlayers= AIsFunction( 1 , "?PerformChecklistForNetPlayers@@YAXXZ" ) ; 9 PERFORM CHECKLIST FOR NET PLAYERS 
    DB_Multiplayer\CreatePlayer= AIsFunction( 1 , "?CreatePlayer@@YAXPAD@Z" ) ; 10 CREATE NET PLAYER Playername
    DB_Multiplayer\CreatePlayerEx= AIsFunction( 1 , "?CreatePlayerEx@@YAHPAD@Z" ) ; 11 CREATE NET PLAYER Playername
    DB_Multiplayer\DestroyPlayer= AIsFunction( 1 , "?DestroyPlayer@@YAXH@Z" ) ; 12 FREE NET PLAYER Player Number
    DB_Multiplayer\SendNetMsgL= AIsFunction( 1 , "?SendNetMsgL@@YAXHH@Z" ) ; 13 SEND NET MESSAGE INTEGER Player Number, Integer Value
    DB_Multiplayer\SendNetMsgF= AIsFunction( 1 , "?SendNetMsgF@@YAXHK@Z" ) ; 14 SEND NET MESSAGE FLOAT Player Number, Float Value
    DB_Multiplayer\SendNetMsgS= AIsFunction( 1 , "?SendNetMsgS@@YAXHPAD@Z" ) ; 15 SEND NET MESSAGE STRING Player Number, String
    DB_Multiplayer\SendNetMsgMemblock= AIsFunction( 1 , "?SendNetMsgMemblock@@YAXHH@Z" ) ; 16 SEND NET MESSAGE MEMBLOCK Player Number, Memblock Number
    DB_Multiplayer\SendNetMsgMemblockEx= AIsFunction( 1 , "?SendNetMsgMemblockEx@@YAXHHH@Z" ) ; 17 SEND NET MESSAGE MEMBLOCK Player Number, Memblock Number, Guarentee Packet
    DB_Multiplayer\SendNetMsgImage= AIsFunction( 1 , "?SendNetMsgImage@@YAXHHH@Z" ) ; 18 SEND NET MESSAGE IMAGE Player Number, Image Number, Guarentee Packet
    DB_Multiplayer\SendNetMsgBitmap= AIsFunction( 1 , "?SendNetMsgBitmap@@YAXHHH@Z" ) ; 19 SEND NET MESSAGE BITMAP Player Number, Bitmap Number, Guarentee Packet
    DB_Multiplayer\SendNetMsgSound= AIsFunction( 1 , "?SendNetMsgSound@@YAXHHH@Z" ) ; 20 SEND NET MESSAGE SOUND Player Number, Sound Number, Guarentee Packet
    DB_Multiplayer\SendNetMsgMesh= AIsFunction( 1 , "?SendNetMsgMesh@@YAXHHH@Z" ) ; 21 SEND NET MESSAGE MESH Player Number, Mesh Number, Guarentee Packet
    DB_Multiplayer\GetNetMsg= AIsFunction( 1 , "?GetNetMsg@@YAXXZ" ) ; 22 GET NET MESSAGE 
    DB_Multiplayer\NetMsgInteger= AIsFunction( 1 , "?NetMsgInteger@@YAHXZ" ) ; 23 NET MESSAGE INTEGER 
    DB_Multiplayer\NetMsgFloat= AIsFunction( 1 , "?NetMsgFloat@@YAKXZ" ) ; 24 NET MESSAGE FLOAT 
    DB_Multiplayer\NetMsgString= AIsFunction( 1 , "?NetMsgString@@YAKK@Z" ) ; 25 NET MESSAGE STRING$ 
    DB_Multiplayer\NetMsgImage= AIsFunction( 1 , "?NetMsgImage@@YAXH@Z" ) ; 26 NET MESSAGE IMAGE Image Number
    DB_Multiplayer\NetMsgMesh= AIsFunction( 1 , "?NetMsgMesh@@YAXH@Z" ) ; 27 NET MESSAGE MESH Mesh Number
    DB_Multiplayer\NetMsgSound= AIsFunction( 1 , "?NetMsgSound@@YAXH@Z" ) ; 28 NET MESSAGE SOUND Sound Number
    DB_Multiplayer\NetMsgMemblock= AIsFunction( 1 , "?NetMsgMemblock@@YAXH@Z" ) ; 29 NET MESSAGE MEMBLOCK Memblock Number
    DB_Multiplayer\NetMsgBitmap= AIsFunction( 1 , "?NetMsgBitmap@@YAXH@Z" ) ; 30 NET MESSAGE BITMAP Bitmap Number
    DB_Multiplayer\NetSessionExists= AIsFunction( 1 , "?NetSessionExists@@YAHXZ" ) ; 31 NET GAME EXISTS 
    DB_Multiplayer\NetSessionIsNowHosting= AIsFunction( 1 , "?NetSessionIsNowHosting@@YAHXZ" ) ; 32 NET GAME NOW HOSTING 
    DB_Multiplayer\NetSessionLost= AIsFunction( 1 , "?NetSessionLost@@YAHXZ" ) ; 33 NET GAME LOST 
    DB_Multiplayer\NetMsgExists= AIsFunction( 1 , "?NetMsgExists@@YAHXZ" ) ; 34 NET MESSAGE EXISTS 
    DB_Multiplayer\NetMsgPlayerFrom= AIsFunction( 1 , "?NetMsgPlayerFrom@@YAHXZ" ) ; 35 NET MESSAGE PLAYER FROM 
    DB_Multiplayer\NetMsgPlayerTo= AIsFunction( 1 , "?NetMsgPlayerTo@@YAHXZ" ) ; 36 NET MESSAGE PLAYER TO 
    DB_Multiplayer\NetMsgType= AIsFunction( 1 , "?NetMsgType@@YAHXZ" ) ; 37 NET MESSAGE TYPE 
    DB_Multiplayer\NetPlayerDestroyed= AIsFunction( 1 , "?NetPlayerDestroyed@@YAHXZ" ) ; 38 NET PLAYER DESTROYED 
    DB_Multiplayer\NetPlayerCreated= AIsFunction( 1 , "?NetPlayerCreated@@YAHXZ" ) ; 39 NET PLAYER CREATED 
    DB_Multiplayer\MagicNetGame= AIsFunction( 1 , "?MagicNetGame@@YAHKKHH@Z" ) ; 40 DEFAULT NET GAME Gamename, Playername, Number Of Players, Game Type
    DB_Multiplayer\NetBufferSize= AIsFunction( 1 , "?NetBufferSize@@YAHXZ" ) ; 41 NET BUFFER SIZE 
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBPerformChecklistForNetConnections()
  CallCFunctionFast( *DB_Multiplayer\PerformChecklistForNetConnections )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNetConnections( ConnectionNumber.l )
  CallCFunctionFast( *DB_Multiplayer\SetNetConnections, ConnectionNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetNetConnections1( ConnectionNumber.l, AddressData.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @AddressDataPTR.l, Len( AddressData ) + 1 ) ; CreateString
  PokeS( AddressDataPTR, AddressData )
  CallCFunctionFast( *DB_Multiplayer\SetNetConnectionsEx, ConnectionNumber, AddressDataPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForNetSessions()
  CallCFunctionFast( *DB_Multiplayer\PerformChecklistForNetSessions )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateNetGame( Gamename.s, Playername.s, NumberOfPlayers.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @GamenamePTR.l, Len( Gamename ) + 1 ) ; CreateString
  PokeS( GamenamePTR, Gamename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PlayernamePTR.l, Len( Playername ) + 1 ) ; CreateString
  PokeS( PlayernamePTR, Playername )
  CallCFunctionFast( *DB_Multiplayer\CreateNetGame, GamenamePTR, PlayernamePTR, NumberOfPlayers )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateNetGame1( Gamename.s, Playername.s, NumberOfPlayers.l, Flag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @GamenamePTR.l, Len( Gamename ) + 1 ) ; CreateString
  PokeS( GamenamePTR, Gamename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PlayernamePTR.l, Len( Playername ) + 1 ) ; CreateString
  PokeS( PlayernamePTR, Playername )
  CallCFunctionFast( *DB_Multiplayer\CreateNetGameEx, GamenamePTR, PlayernamePTR, NumberOfPlayers, Flag )
 EndProcedure
;
; *********************************************************************
Procedure DBJoinNetGame( SessionNumber.l, Playername.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PlayernamePTR.l, Len( Playername ) + 1 ) ; CreateString
  PokeS( PlayernamePTR, Playername )
  CallCFunctionFast( *DB_Multiplayer\JoinNetGame, SessionNumber, PlayernamePTR )
 EndProcedure
;
; *********************************************************************
Procedure DBCloseNetGame()
  CallCFunctionFast( *DB_Multiplayer\CloseNetGame )
 EndProcedure
;
; *********************************************************************
Procedure DBPerformChecklistForNetPlayers()
  CallCFunctionFast( *DB_Multiplayer\PerformChecklistForNetPlayers )
 EndProcedure
;
; *********************************************************************
Procedure DBCreatePlayer( Playername.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PlayernamePTR.l, Len( Playername ) + 1 ) ; CreateString
  PokeS( PlayernamePTR, Playername )
  CallCFunctionFast( *DB_Multiplayer\CreatePlayer, PlayernamePTR )
 EndProcedure
;
; *********************************************************************
Procedure.l DBCreatePlayer1( Playername.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PlayernamePTR.l, Len( Playername ) + 1 ) ; CreateString
  PokeS( PlayernamePTR, Playername )
  Retour.l = CallCFunctionFast( *DB_Multiplayer\CreatePlayerEx, PlayernamePTR )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBDestroyPlayer( PlayerNumber.l )
  CallCFunctionFast( *DB_Multiplayer\DestroyPlayer, PlayerNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgL( PlayerNumber.l, IntegerValue.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgL, PlayerNumber, IntegerValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgF( PlayerNumber.l, FloatValue.f )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgF, PlayerNumber, FloatValue )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgS( PlayerNumber.l, String.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringPTR.l, Len( String ) + 1 ) ; CreateString
  PokeS( StringPTR, String )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgS, PlayerNumber, StringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgMemblock( PlayerNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgMemblock, PlayerNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgMemblock1( PlayerNumber.l, MemblockNumber.l, GuarenteePacket.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgMemblockEx, PlayerNumber, MemblockNumber, GuarenteePacket )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgImage( PlayerNumber.l, ImageNumber.l, GuarenteePacket.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgImage, PlayerNumber, ImageNumber, GuarenteePacket )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgBitmap( PlayerNumber.l, BitmapNumber.l, GuarenteePacket.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgBitmap, PlayerNumber, BitmapNumber, GuarenteePacket )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgSound( PlayerNumber.l, SoundNumber.l, GuarenteePacket.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgSound, PlayerNumber, SoundNumber, GuarenteePacket )
 EndProcedure
;
; *********************************************************************
Procedure DBSendNetMsgMesh( PlayerNumber.l, MeshNumber.l, GuarenteePacket.l )
  CallCFunctionFast( *DB_Multiplayer\SendNetMsgMesh, PlayerNumber, MeshNumber, GuarenteePacket )
 EndProcedure
;
; *********************************************************************
Procedure DBGetNetMsg()
  CallCFunctionFast( *DB_Multiplayer\GetNetMsg )
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetMsgInteger()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgInteger )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBNetMsgFloat()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgFloat )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBNetMsgString()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgString, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBNetMsgImage( ImageNumber.l )
  CallCFunctionFast( *DB_Multiplayer\NetMsgImage, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBNetMsgMesh( MeshNumber.l )
  CallCFunctionFast( *DB_Multiplayer\NetMsgMesh, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBNetMsgSound( SoundNumber.l )
  CallCFunctionFast( *DB_Multiplayer\NetMsgSound, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBNetMsgMemblock( MemblockNumber.l )
  CallCFunctionFast( *DB_Multiplayer\NetMsgMemblock, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBNetMsgBitmap( BitmapNumber.l )
  CallCFunctionFast( *DB_Multiplayer\NetMsgBitmap, BitmapNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetSessionExists()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetSessionExists )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetSessionIsNowHosting()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetSessionIsNowHosting )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetSessionLost()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetSessionLost )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetMsgExists()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgExists )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetMsgPlayerFrom()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgPlayerFrom )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetMsgPlayerTo()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgPlayerTo )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetMsgType()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetMsgType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetPlayerDestroyed()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetPlayerDestroyed )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetPlayerCreated()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetPlayerCreated )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMagicNetGame( Gamename.s, Playername.s, NumberOfPlayers.l, GameType.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @GamenamePTR.l, Len( Gamename ) + 1 ) ; CreateString
  PokeS( GamenamePTR, Gamename )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PlayernamePTR.l, Len( Playername ) + 1 ) ; CreateString
  PokeS( PlayernamePTR, Playername )
  Retour.l = CallCFunctionFast( *DB_Multiplayer\MagicNetGame, GamenamePTR, PlayernamePTR, NumberOfPlayers, GameType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBNetBufferSize()
  Retour.l = CallCFunctionFast( *DB_Multiplayer\NetBufferSize )
  ProcedureReturn Retour
 EndProcedure
;

