; DarkBasic Professional TXT2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 13.12.05
;
Structure DarkAIStruct
  AIAddContainer.l : AIAddEnemy.l : AIAddEnemy1.l : AIAddEnemy2.l
  AIAddFriendly.l : AIAddFriendly1.l : AIAddFriendly2.l : AIAddNeutral.l
  AIAddNeutral1.l : AIAddNeutral2.l : AIAddObstacleFromLevel.l : AIAddObstacleFromLevel1.l
  AIAddObstacleVert.l : AIAddPlayer.l : AIAddPlayer1.l : AIAddStaticObstacle.l
  AIAddStaticObstacle1.l : AIAddStaticObstacle2.l : AIAddViewBlockingObstacle.l : AIAddViewBlockingObstacle1.l
  AIAddViewBlockingObstacle2.l : AIAddWaypoint.l : AIAddZone.l : AIAddZone1.l
  AIClearWaypoints.l : AICompleteObstacles.l : AICompleteObstacles1.l : AIContainerExist.l
  AICountWaypoints.l : AICreateSound.l : AICreateSound1.l : AIDebugHideAvoidanceAngles.l
  AIDebugHideObstacleBounds.l : AIDebugHidePaths.l : AIDebugHideSounds.l : AIDebugHideViewArcs.l
  AIDebugHideWaypointEdges.l : AIDebugHideWaypoints.l : AIDebugShowAvoidanceAngles.l : AIDebugShowObstacleBounds.l
  AIDebugShowPaths.l : AIDebugShowSounds.l : AIDebugShowViewArcs.l : AIDebugShowWaypointEdges.l
  AIDebugShowWaypoints.l : AIDeletePath.l : AIDiscardNewObstacle.l : AIEndNewObstacle.l
  AIEndNewObstacle1.l : AIEntityAssignPatrolPath.l : AIEntityAssignZone.l : AIEntityDefendArea.l
  AIEntityDefendPoint.l : AIEntityDuck.l : AIEntityExist.l : AIEntityFollowPlayer.l
  AIEntityGoToPosition.l : AIEntityHoldPosition.l : AIEntityLookAround.l : AIEntityLookAtPosition.l
  AIEntityMoveAwayFromSound.l : AIEntityMoveClose.l : AIEntityMoveToClosestSound.l : AIEntityMoveToCover.l
  AIEntityMoveToIdlePosition.l : AIEntityRandomMove.l : AIEntityRemoveZone.l : AIEntityReset.l
  AIEntitySearchArea.l : AIEntitySeparate.l : AIEntityStand.l : AIEntityStop.l
  AIEntityStrafeTarget.l : AIGetEntityAngleY.l : AIGetEntityAvoiding.l : AIGetEntityCanFire.l
  AIGetEntityCanSee.l : AIGetEntityContainer.l : AIGetEntityCountTargets.l : AIGetEntityDestinationX.l
  AIGetEntityDestinationZ.l : AIGetEntityHeardSound.l : AIGetEntityInZone.l : AIGetEntityIsDucking.l
  AIGetEntityIsMoving.l : AIGetEntityIsTurning.l : AIGetEntityMov.l : AIGetEntityMoveZ.l
  AIGetEntityStance.l : AIGetEntityState.l : AIGetEntityTargetID.l : AIGetEntityTargetX.l
  AIGetEntityTargetZ.l : AIGetEntityTeam.l : AIGetEntityX.l : AIGetEntityZ.l
  AIGetPathPointX.l : AIGetPathPointZ.l : AIGetPlayerX.l : AIGetPlayerZ.l
  AIHideErrors.l : AIKillEntity.l : AIMakeMemblockFromPath.l : AIMakeMemblockFromWaypoints.l
  AIMakePath.l : AIMakePathBetweenPoints.l : AIMakePathBetweenPoints1.l : AIMakePathFromClosestWaypoints.l
  AIMakePathFromMemblock.l : AIMakeWaypointsFromMemblock.l : AIPathAddPoint.l : AIPathCountPoints.l
  AIRemoveContainer.l : AIRemoveObstacle.l : AIRemoveWaypoint.l : AIRemoveZone.l
  AIReset.l : AISetConsoleOutputOff.l : AISetConsoleOutputOn.l : AISetContainerActive.l
  AISetEntityActive.l : AISetEntityAggressive.l : AISetEntityCanAttack.l : AISetEntityCanDuck.l
  AISetEntityCanHear.l : AISetEntityCanRoam.l : AISetEntityCanStrafe.l : AISetEntityCollide.l
  AISetEntityContainer.l : AISetEntityControl.l : AISetEntityDefendDist.l : AISetEntityDefending.l
  AISetEntityFireArc.l : AISetEntityHearingRange.l : AISetEntityHearingThreshold.l : AISetEntityHit.l
  AISetEntityIdlePosition.l : AISetEntityNoLookAtPoint.l : AISetEntityPatrolTime.l : AISetEntityPosition.l
  AISetEntityRunAwayWhenHit.l : AISetEntitySpeed.l : AISetEntityStance.l : AISetEntityTurnSpeed.l
  AISetEntityViewArc.l : AISetEntityViewRange.l : AISetPlayerContainer.l : AISetPlayerDucking.l
  AISetPlayerPosition.l : AISetRadius.l : AISetWaypointCost.l : AIShowErrors.l
  AIStart.l : AIStartNewObstacle.l : AIStartNewObstacle1.l : AITeamFollowPlayer.l
  AITeamSeparate.l : AIUpdate.l : AIUpdate1.l : AIUpdateWaypointVisibility.l
  AIUpdateWaypointVisibility1.l : 
 EndStructure
Global DarkAI.DarkAIStruct

Procedure.l CheckDarkAI()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DarkAI.dll.")
    DarkAI\AIAddContainer= AIsFunction( 1 , "?AIAddContainer@@YAXH@Z" ) ; 1 AIAddContainer (int)
    DarkAI\AIAddEnemy= AIsFunction( 1 , "?AIAddEnemy@@YAXH@Z" ) ; 2 AIAddEnemy (int)
    DarkAI\AIAddEnemy1= AIsFunction( 1 , "?AIAddEnemy@@YAXHH@Z" ) ; 3 AIAddEnemy (int,int)
    DarkAI\AIAddEnemy2= AIsFunction( 1 , "?AIAddEnemy@@YAXHHH@Z" ) ; 4 AIAddEnemy (int,int,int)
    DarkAI\AIAddFriendly= AIsFunction( 1 , "?AIAddFriendly@@YAXH@Z" ) ; 5 AIAddFriendly (int)
    DarkAI\AIAddFriendly1= AIsFunction( 1 , "?AIAddFriendly@@YAXHH@Z" ) ; 6 AIAddFriendly (int,int)
    DarkAI\AIAddFriendly2= AIsFunction( 1 , "?AIAddFriendly@@YAXHHH@Z" ) ; 7 AIAddFriendly (int,int,int)
    DarkAI\AIAddNeutral= AIsFunction( 1 , "?AIAddNeutral@@YAXH@Z" ) ; 8 AIAddNeutral (int)
    DarkAI\AIAddNeutral1= AIsFunction( 1 , "?AIAddNeutral@@YAXHH@Z" ) ; 9 AIAddNeutral (int,int)
    DarkAI\AIAddNeutral2= AIsFunction( 1 , "?AIAddNeutral@@YAXHHH@Z" ) ; 10 AIAddNeutral (int,int,int)
    DarkAI\AIAddObstacleFromLevel= AIsFunction( 1 , "?AIAddObstacleFromLevel@@YAXHMMM@Z" ) ; 11 AIAddObstacleFromLevel (int,float,float,float)
    DarkAI\AIAddObstacleFromLevel1= AIsFunction( 1 , "?AIAddObstacleFromLevel@@YAXHMMMH@Z" ) ; 12 AIAddObstacleFromLevel (int,float,float,float,int)
    DarkAI\AIAddObstacleVert= AIsFunction( 1 , "?AIAddObstacleVertex@@YAXMM@Z" ) ; 13 AIAddObstacleVertex (float,float)
    DarkAI\AIAddPlayer= AIsFunction( 1 , "?AIAddPlayer@@YAXH@Z" ) ; 14 AIAddPlayer (int)
    DarkAI\AIAddPlayer1= AIsFunction( 1 , "?AIAddPlayer@@YAXHH@Z" ) ; 15 AIAddPlayer (int,int)
    DarkAI\AIAddStaticObstacle= AIsFunction( 1 , "?AIAddStaticObstacle@@YAXH@Z" ) ; 16 AIAddStaticObstacle (int)
    DarkAI\AIAddStaticObstacle1= AIsFunction( 1 , "?AIAddStaticObstacle@@YAXHH@Z" ) ; 17 AIAddStaticObstacle (int,int)
    DarkAI\AIAddStaticObstacle2= AIsFunction( 1 , "?AIAddStaticObstacle@@YAXHHH@Z" ) ; 18 AIAddStaticObstacle (int,int,int)
    DarkAI\AIAddViewBlockingObstacle= AIsFunction( 1 , "?AIAddViewBlockingObstacle@@YAXH@Z" ) ; 19 AIAddViewBlockingObstacle (int)
    DarkAI\AIAddViewBlockingObstacle1= AIsFunction( 1 , "?AIAddViewBlockingObstacle@@YAXHH@Z" ) ; 20 AIAddViewBlockingObstacle (int,int)
    DarkAI\AIAddViewBlockingObstacle2= AIsFunction( 1 , "?AIAddViewBlockingObstacle@@YAXHHH@Z" ) ; 21 AIAddViewBlockingObstacle (int,int,int)
    DarkAI\AIAddWaypoint= AIsFunction( 1 , "?AIAddWaypoint@@YAXHMM@Z" ) ; 22 AIAddWaypoint (int,float,float)
    DarkAI\AIAddZone= AIsFunction( 1 , "?AIAddZone@@YAXHMMMM@Z" ) ; 23 AIAddZone (int,float,float,float,float)
    DarkAI\AIAddZone1= AIsFunction( 1 , "?AIAddZone@@YAXHMMMMH@Z" ) ; 24 AIAddZone (int,float,float,float,float,int)
    DarkAI\AIClearWaypoints= AIsFunction( 1 , "?AIClearWaypoints@@YAXH@Z" ) ; 25 AIClearWaypoints (int)
    DarkAI\AICompleteObstacles= AIsFunction( 1 , "?AICompleteObstacles@@YAXH@Z" ) ; 26 AICompleteObstacles (int)
    DarkAI\AICompleteObstacles1= AIsFunction( 1 , "?AICompleteObstacles@@YAXXZ 1" ) ; 27 AICompleteObstacles (void)
    DarkAI\AIContainerExist= AIsFunction( 1 , "?AIContainerExist@@YAHH@Z" ) ; 28 AIContainerExist (int)
    DarkAI\AICountWaypoints= AIsFunction( 1 , "?AICountWaypoints@@YAHH@Z" ) ; 29 AICountWaypoints (int)
    DarkAI\AICreateSound= AIsFunction( 1 , "?AICreateSound@@YAXMMHM@Z" ) ; 30 AICreateSound (float,float,int,float)
    DarkAI\AICreateSound1= AIsFunction( 1 , "?AICreateSound@@YAXMMHMH@Z" ) ; 31 AICreateSound (float,float,int,float,int)
    DarkAI\AIDebugHideAvoidanceAngles= AIsFunction( 1 , "?AIDebugHideAvoidanceAngles@@YAXXZ 1" ) ; 32 AIDebugHideAvoidanceAngles (void)
    DarkAI\AIDebugHideObstacleBounds= AIsFunction( 1 , "?AIDebugHideObstacleBounds@@YAXH@Z" ) ; 33 AIDebugHideObstacleBounds (int)
    DarkAI\AIDebugHidePaths= AIsFunction( 1 , "?AIDebugHidePaths@@YAXXZ 1" ) ; 34 AIDebugHidePaths (void)
    DarkAI\AIDebugHideSounds= AIsFunction( 1 , "?AIDebugHideSounds@@YAXXZ 1" ) ; 35 AIDebugHideSounds (void)
    DarkAI\AIDebugHideViewArcs= AIsFunction( 1 , "?AIDebugHideViewArcs@@YAXXZ 1" ) ; 36 AIDebugHideViewArcs (void)
    DarkAI\AIDebugHideWaypointEdges= AIsFunction( 1 , "?AIDebugHideWaypointEdges@@YAXH@Z" ) ; 37 AIDebugHideWaypointEdges (int)
    DarkAI\AIDebugHideWaypoints= AIsFunction( 1 , "?AIDebugHideWaypoints@@YAXH@Z" ) ; 38 AIDebugHideWaypoints (int)
    DarkAI\AIDebugShowAvoidanceAngles= AIsFunction( 1 , "?AIDebugShowAvoidanceAngles@@YAXM@Z" ) ; 39 AIDebugShowAvoidanceAngles (float)
    DarkAI\AIDebugShowObstacleBounds= AIsFunction( 1 , "?AIDebugShowObstacleBounds@@YAXHM@Z" ) ; 40 AIDebugShowObstacleBounds (int,float)
    DarkAI\AIDebugShowPaths= AIsFunction( 1 , "?AIDebugShowPaths@@YAXM@Z" ) ; 41 AIDebugShowPaths (float)
    DarkAI\AIDebugShowSounds= AIsFunction( 1 , "?AIDebugShowSounds@@YAXM@Z" ) ; 42 AIDebugShowSounds (float)
    DarkAI\AIDebugShowViewArcs= AIsFunction( 1 , "?AIDebugShowViewArcs@@YAXM@Z" ) ; 43 AIDebugShowViewArcs (float)
    DarkAI\AIDebugShowWaypointEdges= AIsFunction( 1 , "?AIDebugShowWaypointEdges@@YAXHM@Z" ) ; 44 AIDebugShowWaypointEdges (int,float)
    DarkAI\AIDebugShowWaypoints= AIsFunction( 1 , "?AIDebugShowWaypoints@@YAXHM@Z" ) ; 45 AIDebugShowWaypoints (int,float)
    DarkAI\AIDeletePath= AIsFunction( 1 , "?AIDeletePath@@YAXH@Z" ) ; 46 AIDeletePath (int)
    DarkAI\AIDiscardNewObstacle= AIsFunction( 1 , "?AIDiscardNewObstacle@@YAXXZ 1" ) ; 47 AIDiscardNewObstacle (void)
    DarkAI\AIEndNewObstacle= AIsFunction( 1 , "?AIEndNewObstacle@@YAXHH@Z" ) ; 48 AIEndNewObstacle (int,int)
    DarkAI\AIEndNewObstacle1= AIsFunction( 1 , "?AIEndNewObstacle@@YAXHHH@Z" ) ; 49 AIEndNewObstacle (int,int,int)
    DarkAI\AIEntityAssignPatrolPath= AIsFunction( 1 , "?AIEntityAssignPatrolPath@@YAXHH@Z" ) ; 50 AIEntityAssignPatrolPath (int,int)
    DarkAI\AIEntityAssignZone= AIsFunction( 1 , "?AIEntityAssignZone@@YAXHH@Z" ) ; 51 AIEntityAssignZone (int,int)
    DarkAI\AIEntityDefendArea= AIsFunction( 1 , "?AIEntityDefendArea@@YAXHMMM@Z" ) ; 52 AIEntityDefendArea (int,float,float,float)
    DarkAI\AIEntityDefendPoint= AIsFunction( 1 , "?AIEntityDefendPoint@@YAXHMM@Z" ) ; 53 AIEntityDefendPoint (int,float,float)
    DarkAI\AIEntityDuck= AIsFunction( 1 , "?AIEntityDuck@@YAXH@Z" ) ; 54 AIEntityDuck (int)
    DarkAI\AIEntityExist= AIsFunction( 1 , "?AIEntityExist@@YAHH@Z" ) ; 55 AIEntityExist (int)
    DarkAI\AIEntityFollowPlayer= AIsFunction( 1 , "?AIEntityFollowPlayer@@YAXHM@Z" ) ; 56 AIEntityFollowPlayer (int,float)
    DarkAI\AIEntityGoToPosition= AIsFunction( 1 , "?AIEntityGoToPosition@@YAXHMM@Z" ) ; 57 AIEntityGoToPosition (int,float,float)
    DarkAI\AIEntityHoldPosition= AIsFunction( 1 , "?AIEntityHoldPosition@@YAXH@Z" ) ; 58 AIEntityHoldPosition (int)
    DarkAI\AIEntityLookAround= AIsFunction( 1 , "?AIEntityLookAround@@YAXHMM@Z" ) ; 59 AIEntityLookAround (int,float,float)
    DarkAI\AIEntityLookAtPosition= AIsFunction( 1 , "?AIEntityLookAtPosition@@YAXHMM@Z" ) ; 60 AIEntityLookAtPosition (int,float,float)
    DarkAI\AIEntityMoveAwayFromSound= AIsFunction( 1 , "?AIEntityMoveAwayFromSound@@YAXH@Z" ) ; 61 AIEntityMoveAwayFromSound (int)
    DarkAI\AIEntityMoveClose= AIsFunction( 1 , "?AIEntityMoveClose@@YAXHMMM@Z" ) ; 62 AIEntityMoveClose (int,float,float,float)
    DarkAI\AIEntityMoveToClosestSound= AIsFunction( 1 , "?AIEntityMoveToClosestSound@@YAXH@Z" ) ; 63 AIEntityMoveToClosestSound (int)
    DarkAI\AIEntityMoveToCover= AIsFunction( 1 , "?AIEntityMoveToCover@@YAXHMM@Z" ) ; 64 AIEntityMoveToCover (int,float,float)
    DarkAI\AIEntityMoveToIdlePosition= AIsFunction( 1 , "?AIEntityMoveToIdlePosition@@YAXH@Z" ) ; 65 AIEntityMoveToIdlePosition (int)
    DarkAI\AIEntityRandomMove= AIsFunction( 1 , "?AIEntityRandomMove@@YAXHMM@Z" ) ; 66 AIEntityRandomMove (int,float,float)
    DarkAI\AIEntityRemoveZone= AIsFunction( 1 , "?AIEntityRemoveZone@@YAXHH@Z" ) ; 67 AIEntityRemoveZone (int,int)
    DarkAI\AIEntityReset= AIsFunction( 1 , "?AIEntityReset@@YAXH@Z" ) ; 68 AIEntityReset (int)
    DarkAI\AIEntitySearchArea= AIsFunction( 1 , "?AIEntitySearchArea@@YAXH@Z" ) ; 69 AIEntitySearchArea (int)
    DarkAI\AIEntitySeparate= AIsFunction( 1 , "?AIEntitySeparate@@YAXH@Z" ) ; 70 AIEntitySeparate (int)
    DarkAI\AIEntityStand= AIsFunction( 1 , "?AIEntityStand@@YAXH@Z" ) ; 71 AIEntityStand (int)
    DarkAI\AIEntityStop= AIsFunction( 1 , "?AIEntityStop@@YAXH@Z" ) ; 72 AIEntityStop (int)
    DarkAI\AIEntityStrafeTarget= AIsFunction( 1 , "?AIEntityStrafeTarget@@YAXH@Z" ) ; 73 AIEntityStrafeTarget (int)
    DarkAI\AIGetEntityAngleY= AIsFunction( 1 , "?AIGetEntityAngleY@@YAKH@Z" ) ; 74 AIGetEntityAngleY (int)
    DarkAI\AIGetEntityAvoiding= AIsFunction( 1 , "?AIGetEntityAvoiding@@YAHH@Z" ) ; 75 AIGetEntityAvoiding (int)
    DarkAI\AIGetEntityCanFire= AIsFunction( 1 , "?AIGetEntityCanFire@@YAHH@Z" ) ; 76 AIGetEntityCanFire (int)
    DarkAI\AIGetEntityCanSee= AIsFunction( 1 , "?AIGetEntityCanSee@@YAHHMMH@Z" ) ; 77 AIGetEntityCanSee (int,float,float,int)
    DarkAI\AIGetEntityContainer= AIsFunction( 1 , "?AIGetEntityContainer@@YAHH@Z" ) ; 78 AIGetEntityContainer (int)
    DarkAI\AIGetEntityCountTargets= AIsFunction( 1 , "?AIGetEntityCountTargets@@YAHH@Z" ) ; 79 AIGetEntityCountTargets (int)
    DarkAI\AIGetEntityDestinationX= AIsFunction( 1 , "?AIGetEntityDestinationX@@YAKH@Z" ) ; 80 AIGetEntityDestinationX (int)
    DarkAI\AIGetEntityDestinationZ= AIsFunction( 1 , "?AIGetEntityDestinationZ@@YAKH@Z" ) ; 81 AIGetEntityDestinationZ (int)
    DarkAI\AIGetEntityHeardSound= AIsFunction( 1 , "?AIGetEntityHeardSound@@YAHH@Z" ) ; 82 AIGetEntityHeardSound (int)
    DarkAI\AIGetEntityInZone= AIsFunction( 1 , "?AIGetEntityInZone@@YAHHH@Z" ) ; 83 AIGetEntityInZone (int,int)
    DarkAI\AIGetEntityIsDucking= AIsFunction( 1 , "?AIGetEntityIsDucking@@YAHH@Z" ) ; 84 AIGetEntityIsDucking (int)
    DarkAI\AIGetEntityIsMoving= AIsFunction( 1 , "?AIGetEntityIsMoving@@YAHH@Z" ) ; 85 AIGetEntityIsMoving (int)
    DarkAI\AIGetEntityIsTurning= AIsFunction( 1 , "?AIGetEntityIsTurning@@YAHH@Z" ) ; 86 AIGetEntityIsTurning (int)
    DarkAI\AIGetEntityMov= AIsFunction( 1 , "?AIGetEntityMoveX@@YAKH@Z" ) ; 87 AIGetEntityMoveX (int)
    DarkAI\AIGetEntityMoveZ= AIsFunction( 1 , "?AIGetEntityMoveZ@@YAKH@Z" ) ; 88 AIGetEntityMoveZ (int)
    DarkAI\AIGetEntityStance= AIsFunction( 1 , "?AIGetEntityStance@@YAHH@Z" ) ; 89 AIGetEntityStance (int)
    DarkAI\AIGetEntityState= AIsFunction( 1 , "?AIGetEntityState@@YAKKH@Z" ) ; 90 AIGetEntityState (unsigned long,int)
    DarkAI\AIGetEntityTargetID= AIsFunction( 1 , "?AIGetEntityTargetID@@YAHHH@Z" ) ; 91 AIGetEntityTargetID (int,int)
    DarkAI\AIGetEntityTargetX= AIsFunction( 1 , "?AIGetEntityTargetX@@YAKH@Z" ) ; 92 AIGetEntityTargetX (int)
    DarkAI\AIGetEntityTargetZ= AIsFunction( 1 , "?AIGetEntityTargetZ@@YAKH@Z" ) ; 93 AIGetEntityTargetZ (int)
    DarkAI\AIGetEntityTeam= AIsFunction( 1 , "?AIGetEntityTeam@@YAHH@Z" ) ; 94 AIGetEntityTeam (int)
    DarkAI\AIGetEntityX= AIsFunction( 1 , "?AIGetEntityX@@YAKH@Z" ) ; 95 AIGetEntityX (int)
    DarkAI\AIGetEntityZ= AIsFunction( 1 , "?AIGetEntityZ@@YAKH@Z" ) ; 96 AIGetEntityZ (int)
    DarkAI\AIGetPathPointX= AIsFunction( 1 , "?AIGetPathPointX@@YAKHH@Z" ) ; 97 AIGetPathPointX (int,int)
    DarkAI\AIGetPathPointZ= AIsFunction( 1 , "?AIGetPathPointZ@@YAKHH@Z" ) ; 98 AIGetPathPointZ (int,int)
    DarkAI\AIGetPlayerX= AIsFunction( 1 , "?AIGetPlayerX@@YAKXZ 1" ) ; 99 AIGetPlayerX (void)
    DarkAI\AIGetPlayerZ= AIsFunction( 1 , "?AIGetPlayerZ@@YAKXZ 1" ) ; 100 AIGetPlayerZ (void)
    DarkAI\AIHideErrors= AIsFunction( 1 , "?AIHideErrors@@YAXXZ 1" ) ; 101 AIHideErrors (void)
    DarkAI\AIKillEntity= AIsFunction( 1 , "?AIKillEntity@@YAXH@Z" ) ; 102 AIKillEntity (int)
    DarkAI\AIMakeMemblockFromPath= AIsFunction( 1 , "?AIMakeMemblockFromPath@@YAXHH@Z" ) ; 103 AIMakeMemblockFromPath (int,int)
    DarkAI\AIMakeMemblockFromWaypoints= AIsFunction( 1 , "?AIMakeMemblockFromWaypoints@@YAXHH@Z" ) ; 104 AIMakeMemblockFromWaypoints (int,int)
    DarkAI\AIMakePath= AIsFunction( 1 , "?AIMakePath@@YAXH@Z" ) ; 105 AIMakePath (int)
    DarkAI\AIMakePathBetweenPoints= AIsFunction( 1 , "?AIMakePathBetweenPoints@@YAXHHMMMM@Z" ) ; 106 AIMakePathBetweenPoints (int,int,float,float,float,float)
    DarkAI\AIMakePathBetweenPoints1= AIsFunction( 1 , "?AIMakePathBetweenPoints@@YAXHMMMM@Z" ) ; 107 AIMakePathBetweenPoints (int,float,float,float,float)
    DarkAI\AIMakePathFromClosestWaypoints= AIsFunction( 1 , "?AIMakePathFromClosestWaypoints@@YAXHHMM@Z" ) ; 108 AIMakePathFromClosestWaypoints (int,int,float,float)
    DarkAI\AIMakePathFromMemblock= AIsFunction( 1 , "?AIMakePathFromMemblock@@YAXHH@Z" ) ; 109 AIMakePathFromMemblock (int,int)
    DarkAI\AIMakeWaypointsFromMemblock= AIsFunction( 1 , "?AIMakeWaypointsFromMemblock@@YAXHH@Z" ) ; 110 AIMakeWaypointsFromMemblock (int,int)
    DarkAI\AIPathAddPoint= AIsFunction( 1 , "?AIPathAddPoint@@YAXHMM@Z" ) ; 111 AIPathAddPoint (int,float,float)
    DarkAI\AIPathCountPoints= AIsFunction( 1 , "?AIPathCountPoints@@YAHH@Z" ) ; 112 AIPathCountPoints (int)
    DarkAI\AIRemoveContainer= AIsFunction( 1 , "?AIRemoveContainer@@YAXH@Z" ) ; 113 AIRemoveContainer (int)
    DarkAI\AIRemoveObstacle= AIsFunction( 1 , "?AIRemoveObstacle@@YAXH@Z" ) ; 114 AIRemoveObstacle (int)
    DarkAI\AIRemoveWaypoint= AIsFunction( 1 , "?AIRemoveWaypoint@@YAXHH@Z" ) ; 115 AIRemoveWaypoint (int,int)
    DarkAI\AIRemoveZone= AIsFunction( 1 , "?AIRemoveZone@@YAXH@Z" ) ; 116 AIRemoveZone (int)
    DarkAI\AIReset= AIsFunction( 1 , "?AIReset@@YAXXZ 1" ) ; 117 AIReset (void)
    DarkAI\AISetConsoleOutputOff= AIsFunction( 1 , "?AISetConsoleOutputOff@@YAXXZ 1" ) ; 118 AISetConsoleOutputOff (void)
    DarkAI\AISetConsoleOutputOn= AIsFunction( 1 , "?AISetConsoleOutputOn@@YAXH@Z" ) ; 119 AISetConsoleOutputOn (int)
    DarkAI\AISetContainerActive= AIsFunction( 1 , "?AISetContainerActive@@YAXHH@Z" ) ; 120 AISetContainerActive (int,int)
    DarkAI\AISetEntityActive= AIsFunction( 1 , "?AISetEntityActive@@YAXHH@Z" ) ; 121 AISetEntityActive (int,int)
    DarkAI\AISetEntityAggressive= AIsFunction( 1 , "?AISetEntityAggressive@@YAXH@Z" ) ; 122 AISetEntityAggressive (int)
    DarkAI\AISetEntityCanAttack= AIsFunction( 1 , "?AISetEntityCanAttack@@YAXHH@Z" ) ; 123 AISetEntityCanAttack (int,int)
    DarkAI\AISetEntityCanDuck= AIsFunction( 1 , "?AISetEntityCanDuck@@YAXHH@Z" ) ; 124 AISetEntityCanDuck (int,int)
    DarkAI\AISetEntityCanHear= AIsFunction( 1 , "?AISetEntityCanHear@@YAXHH@Z" ) ; 125 AISetEntityCanHear (int,int)
    DarkAI\AISetEntityCanRoam= AIsFunction( 1 , "?AISetEntityCanRoam@@YAXHH@Z" ) ; 126 AISetEntityCanRoam (int,int)
    DarkAI\AISetEntityCanStrafe= AIsFunction( 1 , "?AISetEntityCanStrafe@@YAXHH@Z" ) ; 127 AISetEntityCanStrafe (int,int)
    DarkAI\AISetEntityCollide= AIsFunction( 1 , "?AISetEntityCollide@@YAXHH@Z" ) ; 128 AISetEntityCollide (int,int)
    DarkAI\AISetEntityContainer= AIsFunction( 1 , "?AISetEntityContainer@@YAXHH@Z" ) ; 129 AISetEntityContainer (int,int)
    DarkAI\AISetEntityControl= AIsFunction( 1 , "?AISetEntityControl@@YAXHH@Z" ) ; 130 AISetEntityControl (int,int)
    DarkAI\AISetEntityDefendDist= AIsFunction( 1 , "?AISetEntityDefendDist@@YAXHM@Z" ) ; 131 AISetEntityDefendDist (int,float)
    DarkAI\AISetEntityDefending= AIsFunction( 1 , "?AISetEntityDefending@@YAXHH@Z" ) ; 132 AISetEntityDefending (int,int)
    DarkAI\AISetEntityFireArc= AIsFunction( 1 , "?AISetEntityFireArc@@YAXHM@Z" ) ; 133 AISetEntityFireArc (int,float)
    DarkAI\AISetEntityHearingRange= AIsFunction( 1 , "?AISetEntityHearingRange@@YAXHM@Z" ) ; 134 AISetEntityHearingRange (int,float)
    DarkAI\AISetEntityHearingThreshold= AIsFunction( 1 , "?AISetEntityHearingThreshold@@YAXHH@Z" ) ; 135 AISetEntityHearingThreshold (int,int)
    DarkAI\AISetEntityHit= AIsFunction( 1 , "?AISetEntityHit@@YAXHMM@Z" ) ; 136 AISetEntityHit (int,float,float)
    DarkAI\AISetEntityIdlePosition= AIsFunction( 1 , "?AISetEntityIdlePosition@@YAXHMM@Z" ) ; 137 AISetEntityIdlePosition (int,float,float)
    DarkAI\AISetEntityNoLookAtPoint= AIsFunction( 1 , "?AISetEntityNoLookAtPoint@@YAXH@Z" ) ; 138 AISetEntityNoLookAtPoint (int)
    DarkAI\AISetEntityPatrolTime= AIsFunction( 1 , "?AISetEntityPatrolTime@@YAXHM@Z" ) ; 139 AISetEntityPatrolTime (int,float)
    DarkAI\AISetEntityPosition= AIsFunction( 1 , "?AISetEntityPosition@@YAXHMM@Z" ) ; 140 AISetEntityPosition (int,float,float)
    DarkAI\AISetEntityRunAwayWhenHit= AIsFunction( 1 , "?AISetEntityRunAwayWhenHit@@YAXH@Z" ) ; 141 AISetEntityRunAwayWhenHit (int)
    DarkAI\AISetEntitySpeed= AIsFunction( 1 , "?AISetEntitySpeed@@YAXHM@Z" ) ; 142 AISetEntitySpeed (int,float)
    DarkAI\AISetEntityStance= AIsFunction( 1 , "?AISetEntityStance@@YAXHH@Z" ) ; 143 AISetEntityStance (int,int)
    DarkAI\AISetEntityTurnSpeed= AIsFunction( 1 , "?AISetEntityTurnSpeed@@YAXHM@Z" ) ; 144 AISetEntityTurnSpeed (int,float)
    DarkAI\AISetEntityViewArc= AIsFunction( 1 , "?AISetEntityViewArc@@YAXHMM@Z" ) ; 145 AISetEntityViewArc (int,float,float)
    DarkAI\AISetEntityViewRange= AIsFunction( 1 , "?AISetEntityViewRange@@YAXHM@Z" ) ; 146 AISetEntityViewRange (int,float)
    DarkAI\AISetPlayerContainer= AIsFunction( 1 , "?AISetPlayerContainer@@YAXH@Z" ) ; 147 AISetPlayerContainer (int)
    DarkAI\AISetPlayerDucking= AIsFunction( 1 , "?AISetPlayerDucking@@YAXH@Z" ) ; 148 AISetPlayerDucking (int)
    DarkAI\AISetPlayerPosition= AIsFunction( 1 , "?AISetPlayerPosition@@YAXMM@Z" ) ; 149 AISetPlayerPosition (float,float)
    DarkAI\AISetRadius= AIsFunction( 1 , "?AISetRadius@@YAXM@Z" ) ; 150 AISetRadius (float)
    DarkAI\AISetWaypointCost= AIsFunction( 1 , "?AISetWaypointCost@@YAXHHM@Z" ) ; 151 AISetWaypointCost (int,int,float)
    DarkAI\AIShowErrors= AIsFunction( 1 , "?AIShowErrors@@YAXXZ 1" ) ; 152 AIShowErrors (void)
    DarkAI\AIStart= AIsFunction( 1 , "?AIStart@@YAXXZ 1" ) ; 153 AIStart (void)
    DarkAI\AIStartNewObstacle= AIsFunction( 1 , "?AIStartNewObstacle@@YAXH@Z" ) ; 154 AIStartNewObstacle (int)
    DarkAI\AIStartNewObstacle1= AIsFunction( 1 , "?AIStartNewObstacle@@YAXXZ 1" ) ; 155 AIStartNewObstacle (void)
    DarkAI\AITeamFollowPlayer= AIsFunction( 1 , "?AITeamFollowPlayer@@YAXM@Z" ) ; 156 AITeamFollowPlayer (float)
    DarkAI\AITeamSeparate= AIsFunction( 1 , "?AITeamSeparate@@YAXXZ 1" ) ; 157 AITeamSeparate (void)
    DarkAI\AIUpdate= AIsFunction( 1 , "?AIUpdate@@YAXM@Z" ) ; 158 AIUpdate (float)
    DarkAI\AIUpdate1= AIsFunction( 1 , "?AIUpdate@@YAXXZ 1" ) ; 159 AIUpdate (void)
    DarkAI\AIUpdateWaypointVisibility= AIsFunction( 1 , "?AIUpdateWaypointVisibility@@YAXH@Z" ) ; 160 AIUpdateWaypointVisibility (int)
    DarkAI\AIUpdateWaypointVisibility1= AIsFunction( 1 , "?AIUpdateWaypointVisibility@@YAXHM@Z" ) ; 161 AIUpdateWaypointVisibility (int,float)
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure AIAddContainer( Entier1.l )
  CallCFunctionFast( DarkAI\AIAddContainer, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddEnemy( Entier1.l )
  CallCFunctionFast( DarkAI\AIAddEnemy, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddEnemy1( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIAddEnemy, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddEnemy2( Entier1.l, Entier2.l, Entier3.l )
  CallCFunctionFast( DarkAI\AIAddEnemy, Entier1, Entier2, Entier3 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddFriendly( Entier1.l )
  CallCFunctionFast( DarkAI\AIAddFriendly, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddFriendly1( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIAddFriendly, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddFriendly2( Entier1.l, Entier2.l, Entier3.l )
  CallCFunctionFast( DarkAI\AIAddFriendly, Entier1, Entier2, Entier3 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddNeutral( Entier1.l )
  CallCFunctionFast( DarkAI\AIAddNeutral, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddNeutral1( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIAddNeutral, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddNeutral2( Entier1.l, Entier2.l, Entier3.l )
  CallCFunctionFast( DarkAI\AIAddNeutral, Entier1, Entier2, Entier3 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddObstacleFromLevel( Entier1.l, Flottant2.f, Flottant3.f, Flottant4.f )
  CallCFunctionFast( DarkAI\AIAddObstacleFromLevel, Entier1, Flottant2, Flottant3, Flottant4 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddObstacleFromLevel1( Entier1.l, Flottant2.f, Flottant3.f, Flottant4.f, Entier5.l )
  CallCFunctionFast( DarkAI\AIAddObstacleFromLevel, Entier1, Flottant2, Flottant3, Flottant4, Entier5 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddObstacleVert( Flottant1.f, Flottant2.f )
  CallCFunctionFast( DarkAI\AIAddObstacleVertex, Flottant1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddPlayer( Entier1.l )
  CallCFunctionFast( DarkAI\AIAddPlayer, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddPlayer1( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIAddPlayer, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddStaticObstacle( Entier1.l )
  CallCFunctionFast( DarkAI\AIAddStaticObstacle, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddStaticObstacle1( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIAddStaticObstacle, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddStaticObstacle2( Entier1.l, Entier2.l, Entier3.l )
  CallCFunctionFast( DarkAI\AIAddStaticObstacle, Entier1, Entier2, Entier3 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddViewBlockingObstacle( Entier1.l )
  CallCFunctionFast( DarkAI\AIAddViewBlockingObstacle, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddViewBlockingObstacle1( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIAddViewBlockingObstacle, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddViewBlockingObstacle2( Entier1.l, Entier2.l, Entier3.l )
  CallCFunctionFast( DarkAI\AIAddViewBlockingObstacle, Entier1, Entier2, Entier3 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddWaypoint( Entier1.l, Flottant2.f, Flottant3.f )
  CallCFunctionFast( DarkAI\AIAddWaypoint, Entier1, Flottant2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddZone( Entier1.l, Flottant2.f, Flottant3.f, Flottant4.f, Flottant5.f )
  CallCFunctionFast( DarkAI\AIAddZone, Entier1, Flottant2, Flottant3, Flottant4, Flottant5 )
 EndProcedure
;
; *********************************************************************
Procedure AIAddZone1( Entier1.l, Flottant2.f, Flottant3.f, Flottant4.f, Flottant5.f, Entier6.l )
  CallCFunctionFast( DarkAI\AIAddZone, Entier1, Flottant2, Flottant3, Flottant4, Flottant5, Entier6 )
 EndProcedure
;
; *********************************************************************
Procedure AIClearWaypoints( Entier1.l )
  CallCFunctionFast( DarkAI\AIClearWaypoints, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AICompleteObstacles( Entier1.l )
  CallCFunctionFast( DarkAI\AICompleteObstacles, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AICompleteObstacles1()
  CallCFunctionFast( DarkAI\AICompleteObstacles )
 EndProcedure
;
; *********************************************************************
Procedure.l AIContainerExist( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIContainerExist, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AICountWaypoints( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AICountWaypoints, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure AICreateSound( Flottant1.f, Flottant2.f, Entier3.l, Flottant4.f )
  CallCFunctionFast( DarkAI\AICreateSound, Flottant1, Flottant2, Entier3, Flottant4 )
 EndProcedure
;
; *********************************************************************
Procedure AICreateSound1( Flottant1.f, Flottant2.f, Entier3.l, Flottant4.f, Entier5.l )
  CallCFunctionFast( DarkAI\AICreateSound, Flottant1, Flottant2, Entier3, Flottant4, Entier5 )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugHideAvoidanceAngles()
  CallCFunctionFast( DarkAI\AIDebugHideAvoidanceAngles )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugHideObstacleBounds( Entier1.l )
  CallCFunctionFast( DarkAI\AIDebugHideObstacleBounds, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugHidePaths()
  CallCFunctionFast( DarkAI\AIDebugHidePaths )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugHideSounds()
  CallCFunctionFast( DarkAI\AIDebugHideSounds )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugHideViewArcs()
  CallCFunctionFast( DarkAI\AIDebugHideViewArcs )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugHideWaypointEdges( Entier1.l )
  CallCFunctionFast( DarkAI\AIDebugHideWaypointEdges, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugHideWaypoints( Entier1.l )
  CallCFunctionFast( DarkAI\AIDebugHideWaypoints, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugShowAvoidanceAngles( Flottant1.f )
  CallCFunctionFast( DarkAI\AIDebugShowAvoidanceAngles, Flottant1 )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugShowObstacleBounds( Entier1.l, Flottant2.f )
  CallCFunctionFast( DarkAI\AIDebugShowObstacleBounds, Entier1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugShowPaths( Flottant1.f )
  CallCFunctionFast( DarkAI\AIDebugShowPaths, Flottant1 )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugShowSounds( Flottant1.f )
  CallCFunctionFast( DarkAI\AIDebugShowSounds, Flottant1 )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugShowViewArcs( Flottant1.f )
  CallCFunctionFast( DarkAI\AIDebugShowViewArcs, Flottant1 )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugShowWaypointEdges( Entier1.l, Flottant2.f )
  CallCFunctionFast( DarkAI\AIDebugShowWaypointEdges, Entier1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AIDebugShowWaypoints( Entier1.l, Flottant2.f )
  CallCFunctionFast( DarkAI\AIDebugShowWaypoints, Entier1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AIDeletePath( Entier1.l )
  CallCFunctionFast( DarkAI\AIDeletePath, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIDiscardNewObstacle()
  CallCFunctionFast( DarkAI\AIDiscardNewObstacle )
 EndProcedure
;
; *********************************************************************
Procedure AIEndNewObstacle( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIEndNewObstacle, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIEndNewObstacle1( Entier1.l, Entier2.l, Entier3.l )
  CallCFunctionFast( DarkAI\AIEndNewObstacle, Entier1, Entier2, Entier3 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityAssignPatrolPath( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIEntityAssignPatrolPath, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityAssignZone( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIEntityAssignZone, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityDefendArea( Entier1.l, Flottant2.f, Flottant3.f, Flottant4.f )
  CallCFunctionFast( DarkAI\AIEntityDefendArea, Entier1, Flottant2, Flottant3, Flottant4 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityDefendPoint( Entier1.l, Flottant2.f, Flottant3.f )
  CallCFunctionFast( DarkAI\AIEntityDefendPoint, Entier1, Flottant2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityDuck( Entier1.l )
  CallCFunctionFast( DarkAI\AIEntityDuck, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure.l AIEntityExist( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIEntityExist, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure AIEntityFollowPlayer( Entier1.l, Flottant2.f )
  CallCFunctionFast( DarkAI\AIEntityFollowPlayer, Entier1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityGoToPosition( Entier1.l, Flottant2.f, Flottant3.f )
  CallCFunctionFast( DarkAI\AIEntityGoToPosition, Entier1, Flottant2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityHoldPosition( Entier1.l )
  CallCFunctionFast( DarkAI\AIEntityHoldPosition, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityLookAround( Entier1.l, Flottant2.f, Flottant3.f )
  CallCFunctionFast( DarkAI\AIEntityLookAround, Entier1, Flottant2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityLookAtPosition( Entier1.l, Flottant2.f, Flottant3.f )
  CallCFunctionFast( DarkAI\AIEntityLookAtPosition, Entier1, Flottant2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityMoveAwayFromSound( Entier1.l )
  CallCFunctionFast( DarkAI\AIEntityMoveAwayFromSound, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityMoveClose( Entier1.l, Flottant2.f, Flottant3.f, Flottant4.f )
  CallCFunctionFast( DarkAI\AIEntityMoveClose, Entier1, Flottant2, Flottant3, Flottant4 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityMoveToClosestSound( Entier1.l )
  CallCFunctionFast( DarkAI\AIEntityMoveToClosestSound, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityMoveToCover( Entier1.l, Flottant2.f, Flottant3.f )
  CallCFunctionFast( DarkAI\AIEntityMoveToCover, Entier1, Flottant2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityMoveToIdlePosition( Entier1.l )
  CallCFunctionFast( DarkAI\AIEntityMoveToIdlePosition, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityRandomMove( Entier1.l, Flottant2.f, Flottant3.f )
  CallCFunctionFast( DarkAI\AIEntityRandomMove, Entier1, Flottant2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityRemoveZone( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIEntityRemoveZone, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityReset( Entier1.l )
  CallCFunctionFast( DarkAI\AIEntityReset, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntitySearchArea( Entier1.l )
  CallCFunctionFast( DarkAI\AIEntitySearchArea, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntitySeparate( Entier1.l )
  CallCFunctionFast( DarkAI\AIEntitySeparate, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityStand( Entier1.l )
  CallCFunctionFast( DarkAI\AIEntityStand, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityStop( Entier1.l )
  CallCFunctionFast( DarkAI\AIEntityStop, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIEntityStrafeTarget( Entier1.l )
  CallCFunctionFast( DarkAI\AIEntityStrafeTarget, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityAngleY( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityAngleY, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityAvoiding( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityAvoiding, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityCanFire( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityCanFire, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityCanSee( Entier1.l, Flottant2.f, Flottant3.f, Entier4.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityCanSee, Entier1, Flottant2, Flottant3, Entier4 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityContainer( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityContainer, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityCountTargets( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityCountTargets, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityDestinationX( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityDestinationX, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityDestinationZ( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityDestinationZ, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityHeardSound( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityHeardSound, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityInZone( Entier1.l, Entier2.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityInZone, Entier1, Entier2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityIsDucking( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityIsDucking, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityIsMoving( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityIsMoving, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityIsTurning( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityIsTurning, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityMov( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityMoveX, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityMoveZ( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityMoveZ, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityStance( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityStance, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityState( UEntier1.l, Entier2.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityState, UEntier1, Entier2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityTargetID( Entier1.l, Entier2.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityTargetID, Entier1, Entier2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityTargetX( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityTargetX, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityTargetZ( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityTargetZ, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityTeam( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityTeam, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityX( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityX, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetEntityZ( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetEntityZ, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetPathPointX( Entier1.l, Entier2.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetPathPointX, Entier1, Entier2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetPathPointZ( Entier1.l, Entier2.l )
  Retour.l = CallCFunctionFast( DarkAI\AIGetPathPointZ, Entier1, Entier2 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetPlayerX()
  Retour.l = CallCFunctionFast( DarkAI\AIGetPlayerX )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l AIGetPlayerZ()
  Retour.l = CallCFunctionFast( DarkAI\AIGetPlayerZ )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure AIHideErrors()
  CallCFunctionFast( DarkAI\AIHideErrors )
 EndProcedure
;
; *********************************************************************
Procedure AIKillEntity( Entier1.l )
  CallCFunctionFast( DarkAI\AIKillEntity, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIMakeMemblockFromPath( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIMakeMemblockFromPath, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIMakeMemblockFromWaypoints( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIMakeMemblockFromWaypoints, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIMakePath( Entier1.l )
  CallCFunctionFast( DarkAI\AIMakePath, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIMakePathBetweenPoints( Entier1.l, Entier2.l, Flottant3.f, Flottant4.f, Flottant5.f, Flottant6.f )
  CallCFunctionFast( DarkAI\AIMakePathBetweenPoints, Entier1, Entier2, Flottant3, Flottant4, Flottant5, Flottant6 )
 EndProcedure
;
; *********************************************************************
Procedure AIMakePathBetweenPoints1( Entier1.l, Flottant2.f, Flottant3.f, Flottant4.f, Flottant5.f )
  CallCFunctionFast( DarkAI\AIMakePathBetweenPoints, Entier1, Flottant2, Flottant3, Flottant4, Flottant5 )
 EndProcedure
;
; *********************************************************************
Procedure AIMakePathFromClosestWaypoints( Entier1.l, Entier2.l, Flottant3.f, Flottant4.f )
  CallCFunctionFast( DarkAI\AIMakePathFromClosestWaypoints, Entier1, Entier2, Flottant3, Flottant4 )
 EndProcedure
;
; *********************************************************************
Procedure AIMakePathFromMemblock( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIMakePathFromMemblock, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIMakeWaypointsFromMemblock( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIMakeWaypointsFromMemblock, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIPathAddPoint( Entier1.l, Flottant2.f, Flottant3.f )
  CallCFunctionFast( DarkAI\AIPathAddPoint, Entier1, Flottant2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure.l AIPathCountPoints( Entier1.l )
  Retour.l = CallCFunctionFast( DarkAI\AIPathCountPoints, Entier1 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure AIRemoveContainer( Entier1.l )
  CallCFunctionFast( DarkAI\AIRemoveContainer, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIRemoveObstacle( Entier1.l )
  CallCFunctionFast( DarkAI\AIRemoveObstacle, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIRemoveWaypoint( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AIRemoveWaypoint, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AIRemoveZone( Entier1.l )
  CallCFunctionFast( DarkAI\AIRemoveZone, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIReset()
  CallCFunctionFast( DarkAI\AIReset )
 EndProcedure
;
; *********************************************************************
Procedure AISetConsoleOutputOff()
  CallCFunctionFast( DarkAI\AISetConsoleOutputOff )
 EndProcedure
;
; *********************************************************************
Procedure AISetConsoleOutputOn( Entier1.l )
  CallCFunctionFast( DarkAI\AISetConsoleOutputOn, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AISetContainerActive( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetContainerActive, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityActive( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetEntityActive, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityAggressive( Entier1.l )
  CallCFunctionFast( DarkAI\AISetEntityAggressive, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityCanAttack( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetEntityCanAttack, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityCanDuck( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetEntityCanDuck, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityCanHear( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetEntityCanHear, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityCanRoam( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetEntityCanRoam, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityCanStrafe( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetEntityCanStrafe, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityCollide( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetEntityCollide, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityContainer( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetEntityContainer, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityControl( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetEntityControl, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityDefendDist( Entier1.l, Flottant2.f )
  CallCFunctionFast( DarkAI\AISetEntityDefendDist, Entier1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityDefending( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetEntityDefending, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityFireArc( Entier1.l, Flottant2.f )
  CallCFunctionFast( DarkAI\AISetEntityFireArc, Entier1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityHearingRange( Entier1.l, Flottant2.f )
  CallCFunctionFast( DarkAI\AISetEntityHearingRange, Entier1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityHearingThreshold( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetEntityHearingThreshold, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityHit( Entier1.l, Flottant2.f, Flottant3.f )
  CallCFunctionFast( DarkAI\AISetEntityHit, Entier1, Flottant2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityIdlePosition( Entier1.l, Flottant2.f, Flottant3.f )
  CallCFunctionFast( DarkAI\AISetEntityIdlePosition, Entier1, Flottant2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityNoLookAtPoint( Entier1.l )
  CallCFunctionFast( DarkAI\AISetEntityNoLookAtPoint, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityPatrolTime( Entier1.l, Flottant2.f )
  CallCFunctionFast( DarkAI\AISetEntityPatrolTime, Entier1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityPosition( Entier1.l, Flottant2.f, Flottant3.f )
  CallCFunctionFast( DarkAI\AISetEntityPosition, Entier1, Flottant2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityRunAwayWhenHit( Entier1.l )
  CallCFunctionFast( DarkAI\AISetEntityRunAwayWhenHit, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntitySpeed( Entier1.l, Flottant2.f )
  CallCFunctionFast( DarkAI\AISetEntitySpeed, Entier1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityStance( Entier1.l, Entier2.l )
  CallCFunctionFast( DarkAI\AISetEntityStance, Entier1, Entier2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityTurnSpeed( Entier1.l, Flottant2.f )
  CallCFunctionFast( DarkAI\AISetEntityTurnSpeed, Entier1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityViewArc( Entier1.l, Flottant2.f, Flottant3.f )
  CallCFunctionFast( DarkAI\AISetEntityViewArc, Entier1, Flottant2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure AISetEntityViewRange( Entier1.l, Flottant2.f )
  CallCFunctionFast( DarkAI\AISetEntityViewRange, Entier1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetPlayerContainer( Entier1.l )
  CallCFunctionFast( DarkAI\AISetPlayerContainer, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AISetPlayerDucking( Entier1.l )
  CallCFunctionFast( DarkAI\AISetPlayerDucking, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AISetPlayerPosition( Flottant1.f, Flottant2.f )
  CallCFunctionFast( DarkAI\AISetPlayerPosition, Flottant1, Flottant2 )
 EndProcedure
;
; *********************************************************************
Procedure AISetRadius( Flottant1.f )
  CallCFunctionFast( DarkAI\AISetRadius, Flottant1 )
 EndProcedure
;
; *********************************************************************
Procedure AISetWaypointCost( Entier1.l, Entier2.l, Flottant3.f )
  CallCFunctionFast( DarkAI\AISetWaypointCost, Entier1, Entier2, Flottant3 )
 EndProcedure
;
; *********************************************************************
Procedure AIShowErrors()
  CallCFunctionFast( DarkAI\AIShowErrors )
 EndProcedure
;
; *********************************************************************
Procedure AIStart()
  CallCFunctionFast( DarkAI\AIStart )
 EndProcedure
;
; *********************************************************************
Procedure AIStartNewObstacle( Entier1.l )
  CallCFunctionFast( DarkAI\AIStartNewObstacle, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIStartNewObstacle1()
  CallCFunctionFast( DarkAI\AIStartNewObstacle )
 EndProcedure
;
; *********************************************************************
Procedure AITeamFollowPlayer( Flottant1.f )
  CallCFunctionFast( DarkAI\AITeamFollowPlayer, Flottant1 )
 EndProcedure
;
; *********************************************************************
Procedure AITeamSeparate()
  CallCFunctionFast( DarkAI\AITeamSeparate )
 EndProcedure
;
; *********************************************************************
Procedure AIUpdate( Flottant1.f )
  CallCFunctionFast( DarkAI\AIUpdate, Flottant1 )
 EndProcedure
;
; *********************************************************************
Procedure AIUpdate1()
  CallCFunctionFast( DarkAI\AIUpdate )
 EndProcedure
;
; *********************************************************************
Procedure AIUpdateWaypointVisibility( Entier1.l )
  CallCFunctionFast( DarkAI\AIUpdateWaypointVisibility, Entier1 )
 EndProcedure
;
; *********************************************************************
Procedure AIUpdateWaypointVisibility1( Entier1.l, Flottant2.f )
  CallCFunctionFast( DarkAI\AIUpdateWaypointVisibility, Entier1, Flottant2 )
 EndProcedure
;

