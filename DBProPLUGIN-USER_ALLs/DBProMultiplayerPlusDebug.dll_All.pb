; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_MultiplayerPlusStruct
  MultiplayerStart.l : MultiplayerSetDebugState.l : MultiplayerDisplayDebug.l : MultiplayerCreateTCPServer.l
  MultiplayerCreateTCPServer1.l : MultiplayerConnectToTCPServer.l : MultiplayerConnectToTCPServer1.l : MultiplayerDisconnect.l
  MultiplayerSendFromPlayer.l : MultiplayerSendMessageInteger.l : MultiplayerSendMessageFloat.l : MultiplayerSendMessageString.l
  MultiplayerSendMessageMemblock.l : MultiplayerMessageExists.l : MultiplayerGetMessage.l : MultiplayerGetMessageType.l
  MultiplayerGetMessageInteger.l : MultiplayerGetMessageFloat.l : MultiplayerGetMessageString.l : MultiplayerGetMessageMemblock.l
  MultiplayerGetMessagePlayerFrom.l : MultiplayerGetPlayerCount.l : MultiplayerGetPlayerName.l : MultiplayerGetPlayerID.l
  MultiplayerGetID.l : MultiplayerSendMessageInteger1.l : MultiplayerSendMessageFloat1.l : MultiplayerSendMessageString1.l
  MultiplayerSendMessageMemblock1.l : MultiplayerGetIPAddress.l : MultiplayerGetConnection.l : MultiplayerStartVoiceServer.l
  MultiplayerGetQueueSize.l : MultiplayerSendMessageMemblock2.l : MultiplayerSendToPlayer.l : 
 EndStructure

Procedure.l CheckMultiplayerPlus()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProMultiplayerPlusDebug.dll")
    DB_MultiplayerPlus\MultiplayerStart= AIsFunction( 1 , "?MultiplayerStart@@YAXXZ" ) ; 1 MULTIPLAYER START 
    DB_MultiplayerPlus\MultiplayerSetDebugState= AIsFunction( 1 , "?MultiplayerSetDebugState@@YAXH@Z" ) ; 2 MULTIPLAYER SET DEBUG STATE 
    DB_MultiplayerPlus\MultiplayerDisplayDebug= AIsFunction( 1 , "?MultiplayerDisplayDebug@@YAXPAD@Z" ) ; 3 MULTIPLAYER DISPLAY DEBUG 
    DB_MultiplayerPlus\MultiplayerCreateTCPServer= AIsFunction( 1 , "?MultiplayerCreateTCPServer@@YAXPAD@Z" ) ; 4 MULTIPLAYER CREATE TCP SERVER 
    DB_MultiplayerPlus\MultiplayerCreateTCPServer1= AIsFunction( 1 , "?MultiplayerCreateTCPServer@@YAXPADK@Z" ) ; 5 MULTIPLAYER CREATE TCP SERVER 
    DB_MultiplayerPlus\MultiplayerConnectToTCPServer= AIsFunction( 1 , "?MultiplayerConnectToTCPServer@@YAXPAD0@Z" ) ; 6 MULTIPLAYER CONNECT TO TCP SERVER 
    DB_MultiplayerPlus\MultiplayerConnectToTCPServer1= AIsFunction( 1 , "?MultiplayerConnectToTCPServer@@YAXPAD0K@Z" ) ; 7 MULTIPLAYER CONNECT TO TCP SERVER 
    DB_MultiplayerPlus\MultiplayerDisconnect= AIsFunction( 1 , "?MultiplayerDisconnect@@YAXXZ" ) ; 8 MULTIPLAYER DISCONNECT %
    DB_MultiplayerPlus\MultiplayerSendFromPlayer= AIsFunction( 1 , "?MultiplayerSendFromPlayer@@YAXK@Z" ) ; 9 MULTIPLAYER SEND FROM PLAYER 
    DB_MultiplayerPlus\MultiplayerSendMessageInteger= AIsFunction( 1 , "?MultiplayerSendMessageInteger@@YAXH@Z" ) ; 10 MULTIPLAYER SEND MESSAGE INTEGER 
    DB_MultiplayerPlus\MultiplayerSendMessageFloat= AIsFunction( 1 , "?MultiplayerSendMessageFloat@@YAXM@Z" ) ; 11 MULTIPLAYER SEND MESSAGE FLOAT 
    DB_MultiplayerPlus\MultiplayerSendMessageString= AIsFunction( 1 , "?MultiplayerSendMessageString@@YAXPAD@Z" ) ; 12 MULTIPLAYER SEND MESSAGE STRING 
    DB_MultiplayerPlus\MultiplayerSendMessageMemblock= AIsFunction( 1 , "?MultiplayerSendMessageMemblock@@YAXH@Z" ) ; 13 MULTIPLAYER SEND MESSAGE MEMBLOCK 
    DB_MultiplayerPlus\MultiplayerMessageExists= AIsFunction( 1 , "?MultiplayerMessageExists@@YAHXZ" ) ; 14 MULTIPLAYER MESSAGE EXISTS 
    DB_MultiplayerPlus\MultiplayerGetMessage= AIsFunction( 1 , "?MultiplayerGetMessage@@YAXXZ" ) ; 15 MULTIPLAYER GET MESSAGE 
    DB_MultiplayerPlus\MultiplayerGetMessageType= AIsFunction( 1 , "?MultiplayerGetMessageType@@YAHXZ" ) ; 16 MULTIPLAYER GET MESSAGE TYPE 
    DB_MultiplayerPlus\MultiplayerGetMessageInteger= AIsFunction( 1 , "?MultiplayerGetMessageInteger@@YAHXZ" ) ; 17 MULTIPLAYER GET MESSAGE INTEGER 
    DB_MultiplayerPlus\MultiplayerGetMessageFloat= AIsFunction( 1 , "?MultiplayerGetMessageFloat@@YAMXZ" ) ; 18 MULTIPLAYER GET MESSAGE FLOAT 
    DB_MultiplayerPlus\MultiplayerGetMessageString= AIsFunction( 1 , "?MultiplayerGetMessageString@@YAKK@Z" ) ; 19 MULTIPLAYER GET MESSAGE STRING 
    DB_MultiplayerPlus\MultiplayerGetMessageMemblock= AIsFunction( 1 , "?MultiplayerGetMessageMemblock@@YAXH@Z" ) ; 20 MULTIPLAYER GET MESSAGE MEMBLOCK 
    DB_MultiplayerPlus\MultiplayerGetMessagePlayerFrom= AIsFunction( 1 , "?MultiplayerGetMessagePlayerFrom@@YAKXZ" ) ; 21 MULTIPLAYER GET MESSAGE PLAYER FROM 
    DB_MultiplayerPlus\MultiplayerGetPlayerCount= AIsFunction( 1 , "?MultiplayerGetPlayerCount@@YAHXZ" ) ; 22 MULTIPLAYER GET PLAYER COUNT 
    DB_MultiplayerPlus\MultiplayerGetPlayerName= AIsFunction( 1 , "?MultiplayerGetPlayerName@@YAKKH@Z" ) ; 23 MULTIPLAYER GET PLAYER NAME 
    DB_MultiplayerPlus\MultiplayerGetPlayerID= AIsFunction( 1 , "?MultiplayerGetPlayerID@@YAKH@Z" ) ; 24 MULTIPLAYER GET PLAYER ID 
    DB_MultiplayerPlus\MultiplayerGetID= AIsFunction( 1 , "?MultiplayerGetID@@YAKXZ" ) ; 25 MULTIPLAYER GET ID 
    DB_MultiplayerPlus\MultiplayerSendMessageInteger1= AIsFunction( 1 , "?MultiplayerSendMessageInteger@@YAXHH@Z" ) ; 26 MULTIPLAYER SEND MESSAGE INTEGER 
    DB_MultiplayerPlus\MultiplayerSendMessageFloat1= AIsFunction( 1 , "?MultiplayerSendMessageFloat@@YAXMH@Z" ) ; 27 MULTIPLAYER SEND MESSAGE FLOAT 
    DB_MultiplayerPlus\MultiplayerSendMessageString1= AIsFunction( 1 , "?MultiplayerSendMessageString@@YAXPADH@Z" ) ; 28 MULTIPLAYER SEND MESSAGE STRING 
    DB_MultiplayerPlus\MultiplayerSendMessageMemblock1= AIsFunction( 1 , "?MultiplayerSendMessageMemblock@@YAXHH@Z" ) ; 29 MULTIPLAYER SEND MESSAGE MEMBLOCK 
    DB_MultiplayerPlus\MultiplayerGetIPAddress= AIsFunction( 1 , "?MultiplayerGetIPAddress@@YAKXZ" ) ; 30 MULTIPLAYER GET IP ADDRESS 
    DB_MultiplayerPlus\MultiplayerGetConnection= AIsFunction( 1 , "?MultiplayerGetConnection@@YAHXZ" ) ; 31 MULTIPLAYER GET CONNECTION 
    DB_MultiplayerPlus\MultiplayerStartVoiceServer= AIsFunction( 1 , "?MultiplayerStartVoiceServer@@YAXXZ" ) ; 32 MULTIPLAYER START VOICE SERVER 
    DB_MultiplayerPlus\MultiplayerGetQueueSize= AIsFunction( 1 , "?MultiplayerGetQueueSize@@YAHH@Z" ) ; 33 MULTIPLAYER GET QUEUE SIZE 
    DB_MultiplayerPlus\MultiplayerSendMessageMemblock2= AIsFunction( 1 , "?MultiplayerSendMessageMemblock@@YAXHHH@Z" ) ; 34 MULTIPLAYER SEND MESSAGE MEMBLOCK 
    DB_MultiplayerPlus\MultiplayerSendToPlayer= AIsFunction( 1 , "?MultiplayerSendToPlayer@@YAXH@Z" ) ; 35 MULTIPLAYER SEND MESSAGE TO 
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBMultiplayerStart()
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerStart )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSetDebugState( Param0.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSetDebugState, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerDisplayDebug( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerDisplayDebug, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerCreateTCPServer( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerCreateTCPServer, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerCreateTCPServer1( Param0.s, Param1.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerCreateTCPServer1, Param0PTR, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerConnectToTCPServer( Param0.s, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerConnectToTCPServer, Param0PTR, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerConnectToTCPServer1( Param0.s, Param1.s, Param2.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerConnectToTCPServer1, Param0PTR, Param1PTR, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerDisconnect()
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerDisconnect )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendFromPlayer( Param0.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendFromPlayer, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageInteger( Param0.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageInteger, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageFloat( Param0.f )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageFloat, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageString( Param0.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageString, Param0PTR )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageMemblock( Param0.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageMemblock, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerMessageExists()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerMessageExists )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerGetMessage()
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessage )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetMessageType()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessageType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetMessageInteger()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessageInteger )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBMultiplayerGetMessageFloat()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessageFloat )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBMultiplayerGetMessageString()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessageString, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerGetMessageMemblock( Param0.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessageMemblock, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetMessagePlayerFrom()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetMessagePlayerFrom )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetPlayerCount()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetPlayerCount )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBMultiplayerGetPlayerName( Param1.l )
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetPlayerName, ExtraPARAM.l, Param1 )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetPlayerID( Param1.l )
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetPlayerID, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetID()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetID )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageInteger1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageInteger1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageFloat1( Param0.f, Param1.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageFloat1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageString1( Param0.s, Param1.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param0PTR.l, Len( Param0 ) + 1 ) ; CreateString
  PokeS( Param0PTR, Param0 )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageString1, Param0PTR, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageMemblock1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageMemblock1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.s DBMultiplayerGetIPAddress()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetIPAddress, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetConnection()
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetConnection )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerStartVoiceServer()
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerStartVoiceServer )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMultiplayerGetQueueSize( Param1.l )
  Retour.l = CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerGetQueueSize, Param1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendMessageMemblock2( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendMessageMemblock2, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBMultiplayerSendToPlayer( Param0.l )
  CallCFunctionFast( *DB_MultiplayerPlus\MultiplayerSendToPlayer, Param0 )
 EndProcedure
;

