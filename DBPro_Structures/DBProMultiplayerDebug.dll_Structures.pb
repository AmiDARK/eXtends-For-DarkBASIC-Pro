; DarkBasic Professional RC2PBIncludes Ver 1.0 File - STRUCTURES SETUP
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
  NetBufferSize.l
 EndStructure

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 14
; Folding = -