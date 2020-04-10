;
; ************************************************************************************
; *                                                                                  *
; *                                PARTICLES COMMANDS                                *
; *                                                                                  *
; ************************************************************************************
;
; **************************************************************
Declare P3D_UpdateDefault( ParticleID.l )
Declare P3D_UpdateFlames( ParticleID.l )
Declare P3D_UpdateSmoke( ParticleID.l )
Declare P3D_UpdateRain( ParticleID.l )
Declare P3D_UpdateSnow( ParticleID.l )
Declare P3D_UpdateSparkles( ParticleID.l )
; ***************************************************************************************
ProcedureCDLL P3D_SetParticleImage( ParticleID.l, ImageID.l )
  If P3DInitialized = 1
    If ParticleSystem( ParticleID )\Exist = 1
      If ImageID > 0
        If DBGetImageExist( ImageID ) = 1
          For PLoop = 1 To ParticleSystem( ParticleID )\Count
            Object.l = ParticleObject( ParticleID , PLoop )\Number
            If Object > 0 : DBSetObjectTexture( Object, ImageID ) : EndIf
           Next PLoop
         EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure
; ***************************************************************************************
ProcedureCDLL P3D_HideParticle( ParticleID.l )
  If P3DInitialized = 1
    If ParticleSystem( ParticleID )\Hide = 0
      ParticleSystem( ParticleID )\Hide = 1
      For XLoop = 0 To ParticleSystem( ParticleID )\Count
        DBExcludeObjectOn( ParticleObject( ParticleID , XLoop )\Number )
       Next XLoop
     EndIf
   EndIf
 EndProcedure
; ***************************************************************************************
ProcedureCDLL P3D_ShowParticle( ParticleID.l )
  If P3DInitialized = 1
    If ParticleSystem( ParticleID )\Hide = 1
      ParticleSystem( ParticleID )\Hide = 0
      For XLoop = 0 To ParticleSystem( ParticleID )\Count
        DBExcludeObjectOff( ParticleObject( ParticleID , XLoop )\Number )
       Next XLoop
     EndIf
   EndIf
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l P3D_GetParticleExist( ParticleID.l )
  If P3DInitialized = 1
    Retour.l = ParticleSystem( ParticleID )\Exist
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l P3D_DeleteParticle( ParticleID.l )
  If P3DInitialized = 1
    If ParticleSystem( ParticleID )\Exist = 1
      If ParticleSystem( ParticleID )\Hide = 1
        P3D_ShowParticle( ParticleID )
       EndIf
      ParticleSystem( ParticleID )\Exist = 0
      ParticleSystem( ParticleID )\Type = 0
      ParticleSystem( ParticleID )\Count = 0
      ParticleSystem( ParticleID )\Size = 0
      ; Update to handle internal graphics for custom presets.
      If ParticleSystem( ParticleID )\UseInternal = 1
        ParticleSystem( ParticleID )\LoadedImage = IMG_Delete( ParticleSystem( ParticleID )\LoadedImage )
       EndIf
      ParticleSystem( ParticleID )\UseInternal = 0
      ParticleID = DLH_FreeItem( ParticleID )
     Else
      ParticleID = 0
     EndIf
   Else
    ParticleID = 0
   EndIf
  ProcedureReturn ParticleID
 EndProcedure
; ***************************************************************************************
ProcedureCDLL P3D_Clear()
  If P3DInitialized = 1
    ; On supprime tout les objets qui ne l'auraient pas été...
    If DLH_GetItemCounter() > 0
      For XLoop = DLH_GetItemCounter() To 1 Step -1
        If P3D_GetParticleExist( XLoop ) = 1
         Null.l = P3D_DeleteParticle( XLoop )
         EndIf
       Next XLoop
      ObjectCount = 0
     EndIf
    ; On efface la pile des objets.
    DLH_ClearList()
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL.l P3D_AddParticles( ParticleCount.l , ParticleImage.l , ParticleSiz.f )
  ParticleSize.f = PeekF( @ParticleSiz ) : ParticleID.l = 0
  If P3DInitialized = 1
    ParticleID = DLH_GetNextFreeItem()
    If ParticleID > 0 And ParticleID < 256 And ParticleCount > 8 And ParticleSize > 0.0
      ; Si le groupement de particules n'existe pas, on le crée
      If ParticleSystem( ParticleID )\Exist = 0
        ParticleSystem( ParticleID )\Exist = 1
        ParticleSystem( ParticleID )\Type = 0
        ParticleSystem( ParticleID )\Count = ParticleCount
        ParticleSystem( ParticleID )\Size = Int( ParticleSize )
        If ParticleImage > 0
          If DBGetImageExist( ParticleImage ) <> 0
            ParticleSystem( ParticleID )\LoadedImage = ParticleImage
           Else
            ParticleSystem( ParticleID )\LoadedImage = 0
            ParticleImage = 0
           EndIf
         Else
          ParticleSystem( ParticleID )\LoadedImage = 0
          ParticleImage = 0
         EndIf
        For XLoop = 1 To ParticleCount
          Objet.l = B3D_DynamicMakePlain( ParticleSize, ParticleSize )
          DBSetCollisionObjectOff( Objet )
          ParticleObject( ParticleID , XLoop )\Number = Objet
          If Objet > 0
            If ParticleImage > 0
              If DBGetImageExist( ParticleImage ) <> 0
                DBSetObjectTexture( Objet , ParticleImage)
               EndIf
             EndIf
            ParticleObject( ParticleID , XLoop )\XPos = 0
            ParticleObject( ParticleID , XLoop )\YPos = 0
            ParticleObject( ParticleID , XLoop )\ZPos = 0
            B3D_AddBillBoardToList( Objet )
           EndIf
         Next XLoop
       EndIf
     EndIf
   EndIf
  ProcedureReturn ParticleID
 EndProcedure 
; **************************************************************
ProcedureCDLL P3D_PositionParticles( ParticleID.l , XPos.l , YPos.l , ZPos.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        ParticleSystem( ParticleID )\XEmitter = XPos
        ParticleSystem( ParticleID )\YEmitter = YPos
        ParticleSystem( ParticleID )\ZEmitter = ZPos
        If ParticleSystem( ParticleID )\XSize > 0 And ParticleSystem( ParticleID )\YSize > 0 And ParticleSystem( ParticleID )\ZSize > 0
          XSize.l = ParticleSystem( ParticleID )\XSize
          YSize.l = ParticleSystem( ParticleID )\YSize
          ZSize.l = ParticleSystem( ParticleID )\ZSize
          ParticleSystem( ParticleID )\XMin = ParticleSystem( ParticleID )\XEmitter - ( Xsize / 2 )
          ParticleSystem( ParticleID )\XMax = ParticleSystem( ParticleID )\XEmitter + ( Xsize / 2 )
          ParticleSystem( ParticleID )\YMin = ParticleSystem( ParticleID )\YEmitter - ( Ysize / 2 )
          ParticleSystem( ParticleID )\YMax = ParticleSystem( ParticleID )\YEmitter + ( Ysize / 2 )
          ParticleSystem( ParticleID )\ZMin = ParticleSystem( ParticleID )\ZEmitter - ( Zsize / 2 )
          ParticleSystem( ParticleID )\ZMax = ParticleSystem( ParticleID )\ZEmitter + ( Zsize / 2 )
         EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL P3D_SetEmitterRange( ParticleID.l , XSize.l , YSize.l , ZSize.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        ParticleSystem( ParticleID )\XSize = XSize
        ParticleSystem( ParticleID )\YSize = YSize
        ParticleSystem( ParticleID )\ZSize = ZSize
        ParticleSystem( ParticleID )\XMin = ParticleSystem( ParticleID )\XEmitter - ( Xsize / 2 )
        ParticleSystem( ParticleID )\XMax = ParticleSystem( ParticleID )\XEmitter + ( Xsize / 2 )
        ParticleSystem( ParticleID )\YMin = ParticleSystem( ParticleID )\YEmitter - ( Ysize / 2 )
        ParticleSystem( ParticleID )\YMax = ParticleSystem( ParticleID )\YEmitter + ( Ysize / 2 )
        ParticleSystem( ParticleID )\ZMin = ParticleSystem( ParticleID )\ZEmitter - ( Zsize / 2 )
        ParticleSystem( ParticleID )\ZMax = ParticleSystem( ParticleID )\ZEmitter + ( Zsize / 2 )
       EndIf
     EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL P3D_SetParticlePath( ParticleID.l , XMove.l , YMove.l , ZMove.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        Move1.f = PeekF( @XMove ) : ParticleSystem( ParticleID )\XMove = Move1
        Move1.f = PeekF( @YMove ) : ParticleSystem( ParticleID )\YMove = Move1
        Move1.f = PeekF( @ZMove ) : ParticleSystem( ParticleID )\ZMove = Move1
       EndIf
     EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL.l P3D_GetParticleXPath( ParticleID.l )
  PokeF( @Retour.l, ParticleSystem( ParticleId )\XMove )
  ProcedureReturn Retour
 EndProcedure
; **************************************************************
ProcedureCDLL.l P3D_GetParticleYPath( ParticleID.l )
  PokeF( @Retour.l, ParticleSystem( ParticleId )\YMove )
  ProcedureReturn Retour
 EndProcedure
; **************************************************************
ProcedureCDLL.l P3D_GetParticleZPath( ParticleID.l )
  PokeF( @Retour.l, ParticleSystem( ParticleId )\ZMove )
  ProcedureReturn Retour
 EndProcedure
; **************************************************************
ProcedureCDLL P3D_SetAsPrimitive( ParticleID.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        ParticleSystem( ParticleID )\Type = 0
       EndIf
     EndIf
   EndIf
 EndProcedure
;
Procedure P3DInt_CreateParticleImage( ParticleID.l, Source.l, Leng.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        ; Si aucune image n'est utilisée pour la flamme, on utilise celle contenue dans la DLL.
        If ParticleSystem( ParticleID )\LoadedImage = 0
          Memb.l = MBC_DynamicMake( Leng )
          If Memb > 0
            MembPtr = DBGetMemblockPtr( Memb )
            If MembPtr <> 0
              CopyMemory( Source , MembPtr, Leng )
              Img.l = IMG_MakeImageFromMemblock( Memb )
              ParticleSystem( ParticleID )\LoadedImage = Img
              ParticleSystem( ParticleID )\UseInternal = 1
              If DBGetImageExist( Img ) = 1
                For XLoop = 1 To ParticleSystem( ParticleID )\Count
                  DBSetObjectTexture( ParticleObject( ParticleID , XLoop )\Number , Img )
                 Next XLoop
               EndIf
             EndIf
            Memb = MBC_Delete( Memb )
           EndIf
         EndIf
       EndIf
     EndIf
   EndIf
 EndProcedure
;
; **************************************************************
ProcedureCDLL P3D_SetAsFlames( ParticleID.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        ParticleSystem( ParticleID )\Type = 1
        ;
        P3DInt_CreateParticleImage( ParticleID, ?FLAMEPARTICLES, 262156 )
        ;
        For XLoop = 1 To ParticleSystem( ParticleID )\Count
          FLAMESTEP.f = 200.0 / ParticleSystem( ParticleID )\Count
          ; We Apply object properties to all entities to make a true flame
          DBGhostObjectOn1( ParticleObject( ParticleID , XLoop )\Number , 2 )
;          DBSetAlphaFactor( ParticleObject( ParticleID , XLoop )\Number , 255 )
          DBSetTransparency( ParticleObject( ParticleID , XLoop )\Number , 1 )
          DBSetObjectAmbient( ParticleObject( ParticleID , XLoop )\Number , 1 )
          DBSetLight( ParticleObject( ParticleID , XLoop )\Number , 1 )
          DBSetFog( ParticleObject( ParticleID , XLoop )\Number , 1 )
          DBDisableObjectZWrite( ParticleObject( ParticleID , XLoop )\Number )
          B3D_EnableYRot( ParticleObject( ParticleID , XLoop )\Number )
          ; We position the flames for default settings.
          ParticleObject( ParticleID , XLoop )\Duration = FLAMESTEP * XLoop
          XRand.l = Random( ParticleSystem( ParticleID )\XSize - ParticleSystem( ParticleID )\Size )
          ZRand.l = Random( ParticleSystem( ParticleID )\ZSize - ParticleSystem( ParticleID )\Size )
          ParticleObject( ParticleID , XLoop )\Xpos = ParticleSystem( ParticleID )\XMin + XRand + ( ParticleSystem( ParticleID )\Size / 2 )
          ParticleObject( ParticleID , XLoop )\Ypos = ParticleObject( ParticleID , XLoop )\Duration * 0.1
          ParticleObject( ParticleID , XLoop )\Zpos = ParticleSystem( ParticleID )\ZMin + ZRand + ( ParticleSystem( ParticleID )\Size / 2 )
         Next XLoop        
        ParticleSystem( ParticleID )\XMove = 0.0
        ParticleSystem( ParticleID )\YMove = 0.25
        ParticleSystem( ParticleID )\ZMove = 0.0
        ParticleSystem( ParticleID )\Duration = ParticleSystem( ParticleID )\YSize
       EndIf
     EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL P3D_SetAsSmoke( ParticleID.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        ParticleSystem( ParticleID )\Type = 2
        ;
        P3DInt_CreateParticleImage( ParticleID, ?FLAMEPARTICLES, 262156 )
        ;
        For XLoop = 1 To ParticleSystem( ParticleID )\Count
          SMOKESTEP.f = 200.0 / ParticleSystem( ParticleID )\Count
          DBGhostObjectOn( ParticleObject( ParticleID , XLoop )\Number )
          DBSetAlphaFactor( ParticleObject( ParticleID , XLoop )\Number , 33 )
          DBSetTransparency( ParticleObject( ParticleID , XLoop )\Number , 0 )
          DBSetObjectAmbient( ParticleObject( ParticleID , XLoop )\Number , 1 )
          DBSetLight( ParticleObject( ParticleID , XLoop )\Number , 1 )
          DBSetFog( ParticleObject( ParticleID , XLoop )\Number , 1 )
          DBDisableObjectZWrite( ParticleObject( ParticleID , XLoop )\Number )
          B3D_EnableYRot( ParticleObject( ParticleID , XLoop )\Number )
          ParticleObject( ParticleID , XLoop )\Duration = SMOKESTEP * XLoop
          XRand.l = Random( ParticleSystem( ParticleID )\XSize - ParticleSystem( ParticleID )\Size )
          ZRand.l = Random( ParticleSystem( ParticleID )\ZSize - ParticleSystem( ParticleID )\Size )
          ParticleObject( ParticleID , XLoop )\Xpos = ParticleSystem( ParticleID )\XMin + XRand + ( ParticleSystem( ParticleID )\Size / 2 )
          ParticleObject( ParticleID , XLoop )\Ypos = ParticleObject( ParticleID , XLoop )\Duration * 0.1
          ParticleObject( ParticleID , XLoop )\Zpos = ParticleSystem( ParticleID )\ZMin + ZRand + ( ParticleSystem( ParticleID )\Size / 2 )
         Next XLoop
        ParticleSystem( ParticleID )\XMove = 0.0
        ParticleSystem( ParticleID )\YMove = 0.025
        ParticleSystem( ParticleID )\ZMove = 0.0
        ParticleSystem( ParticleID )\Duration = ParticleSystem( ParticleID )\YSize
       EndIf
     EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL P3D_SetAsRain( ParticleID.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        ParticleSystem( ParticleID )\Type = 3
        ;
        P3DInt_CreateParticleImage( ParticleID, ?RAINPARTICLES, 16396 )
        ;
        For XLoop = 1 To ParticleSystem( ParticleID )\Count
          DBGhostObjectOn( ParticleObject( ParticleID , XLoop )\Number )
          DBDisableObjectZWrite( ParticleObject( ParticleID , XLoop )\Number )
          DBSetLight( ParticleObject( ParticleID , XLoop )\Number , 0 )
          DBSetObjectAmbient( ParticleObject( ParticleID , XLoop )\Number , 0 )
          B3D_DisableYRot( ParticleObject( ParticleID , XLoop )\Number )
          XRand.l = Random( ParticleSystem( ParticleID )\XSize - ParticleSystem( ParticleID )\Size )
          YRand.l = Random( ParticleSystem( ParticleID )\YSize - ParticleSystem( ParticleID )\Size )
          ZRand.l = Random( ParticleSystem( ParticleID )\ZSize - ParticleSystem( ParticleID )\Size )
          ParticleObject( ParticleID , XLoop )\XPos = ParticleSystem( ParticleID )\XMin + XRand
          ParticleObject( ParticleID , XLoop )\YPos = ParticleSystem( ParticleID )\YMin + YRand
          ParticleObject( ParticleID , XLoop )\ZPos = ParticleSystem( ParticleID )\ZMin + ZRand
         Next XLoop
        ParticleSystem( ParticleID )\XMove = 0.0
        ParticleSystem( ParticleID )\YMove = 0.5
        ParticleSystem( ParticleID )\ZMove = 0.0
        ParticleSystem( ParticleID )\Duration = 0.0
       EndIf
     EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL P3D_SetAsSnow( ParticleID.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        ParticleSystem( ParticleID )\Type = 4
        ;
        P3DInt_CreateParticleImage( ParticleID, ?SNOWPARTICLES, 4108 )
        ;
        For XLoop = 1 To ParticleSystem( ParticleID )\Count
          DBGhostObjectOn( ParticleObject( ParticleID , XLoop )\Number )
          DBDisableObjectZWrite( ParticleObject( ParticleID , XLoop )\Number )
          DBSetLight( ParticleObject( ParticleID , XLoop )\Number , 0 )
          DBSetObjectAmbient( ParticleObject( ParticleID , XLoop )\Number , 0 )
          B3D_EnableYRot( ParticleObject( ParticleID , XLoop )\Number )
          XRand.l = Random( ParticleSystem( ParticleID )\XSize - ParticleSystem( ParticleID )\Size )
          YRand.l = Random( ParticleSystem( ParticleID )\YSize - ParticleSystem( ParticleID )\Size )
          ZRand.l = Random( ParticleSystem( ParticleID )\ZSize - ParticleSystem( ParticleID )\Size )
          ParticleObject( ParticleID , XLoop )\XPos = ParticleSystem( ParticleID )\XMin + XRand
          ParticleObject( ParticleID , XLoop )\YPos = ParticleSystem( ParticleID )\YMin + YRand
          ParticleObject( ParticleID , XLoop )\ZPos = ParticleSystem( ParticleID )\ZMin + ZRand
         Next XLoop
        ParticleSystem( ParticleID )\XMove = 0.0
        ParticleSystem( ParticleID )\YMove = 0.0625
        ParticleSystem( ParticleID )\ZMove = 0.0
        ParticleSystem( ParticleID )\Duration = 0.0
       EndIf
     EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL P3D_SetAsSparkle( ParticleID.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        ParticleSystem( ParticleID )\Type = 5
        ;
        P3DInt_CreateParticleImage( ParticleID, ?SPARKLEPARTICLES, 262156 )
        ;
        For XLoop = 1 To ParticleSystem( ParticleID )\Count
          DBGhostObjectOn( ParticleObject( ParticleID , XLoop )\Number )
          DBSetAlphaFactor( ParticleObject( ParticleID , XLoop )\Number , 255 )
          DBSetTransparency( ParticleObject( ParticleID , XLoop )\Number , 0 )
          DBSetObjectAmbient( ParticleObject( ParticleID , XLoop )\Number , 1 )
          DBSetLight( ParticleObject( ParticleID , XLoop )\Number , 1 )
          DBSetFog( ParticleObject( ParticleID , XLoop )\Number , 1 )
          DBDisableObjectZWrite( ParticleObject( ParticleID , XLoop )\Number )
          B3D_EnableYRot( ParticleObject( ParticleID , XLoop )\Number )
          XRand.l = Random( ParticleSystem( ParticleID )\XSize - ParticleSystem( ParticleID )\Size )
          YRand.l = Random( ParticleSystem( ParticleID )\YSize - ParticleSystem( ParticleID )\Size )
          ZRand.l = Random( ParticleSystem( ParticleID )\ZSize - ParticleSystem( ParticleID )\Size )
          ParticleObject( ParticleID , XLoop )\XPos = ParticleSystem( ParticleID )\XMin + XRand
          ParticleObject( ParticleID , XLoop )\YPos = ParticleSystem( ParticleID )\YMin + YRand
          ParticleObject( ParticleID , XLoop )\ZPos = ParticleSystem( ParticleID )\ZMin + ZRand
          ParticleObject( ParticleID , XLoop )\Duration = Random( 200.0 ) + 50.0
         Next XLoop
        ParticleSystem( ParticleID )\XMove = 0.0
        ParticleSystem( ParticleID )\YMove = 0.0
        ParticleSystem( ParticleID )\ZMove = 0.0
        ParticleSystem( ParticleID )\Duration = 250.0
       EndIf
     EndIf
   EndIf
 EndProcedure
; **************************************************************
ProcedureCDLL P3D_UpdateParticles()
  If P3DInitialized = 1
    ActualTime = DBTimerL() : TimeChange.f = ActualTime - OldTime
    If TimeChange > 60 : TimeChange = 60 : EndIf
    TimeFactor = TimeChange / 2.0 : OldTime = ActualTime
    For ParticleID = 1 To 256 
      If ParticleSystem( ParticleID )\Exist = 1 And ParticleSystem( ParticleID )\Hide = 0
        Select ParticleSystem( ParticleID )\Type
          Case 0 : P3D_UpdateDefault( ParticleID )
          Case 1 : P3D_UpdateFlames( ParticleID )
          Case 2 : P3D_UpdateSmoke( ParticleID )
          Case 3 : P3D_UpdateRain( ParticleID )
          Case 4 : P3D_UpdateSnow( ParticleID )
          Case 5 : P3D_UpdateSparkles( ParticleID )
         EndSelect
       EndIf
     Next ParticleID
   EndIf
 EndProcedure
; **************************************************************
Procedure P3D_UpdateDefault( ParticleID.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        For XLoop = 1 To ParticleSystem( ParticleID )\Count
          ; We move the particle component to its next position.
          ParticleObject( ParticleID , XLoop )\Xpos = ParticleObject( ParticleID , XLoop )\Xpos + ParticleSystem( ParticleID )\XMove
          ParticleObject( ParticleID , XLoop )\Ypos = ParticleObject( ParticleID , XLoop )\Ypos + ParticleSystem( ParticleID )\YMove
          ParticleObject( ParticleID , XLoop )\Zpos = ParticleObject( ParticleID , XLoop )\Zpos + ParticleSystem( ParticleID )\ZMove
          ; Checking for X limits
          If ParticleObject( ParticleID , XLoop )\Xpos < ParticleSystem( ParticleID )\XMin
            ParticleObject( ParticleID , XLoop )\Xpos = ParticleSystem( ParticleID )\XMax
           EndIf
          If ParticleObject( ParticleID , XLoop )\Xpos > ParticleSystem( ParticleID )\XMax
            ParticleObject( ParticleID , XLoop )\Xpos = ParticleSystem( ParticleID )\XMin
           EndIf
          ; Checking for Y limits
          If ParticleObject( ParticleID , XLoop )\Ypos < ParticleSystem( ParticleID )\YMin
            ParticleObject( ParticleID , XLoop )\Ypos = ParticleSystem( ParticleID )\YMax
           EndIf
          If ParticleObject( ParticleID , XLoop )\Ypos > ParticleSystem( ParticleID )\YMax
            ParticleObject( ParticleID , XLoop )\Ypos = ParticleSystem( ParticleID )\YMin
           EndIf
          ; Checking for Z limits
          If ParticleObject( ParticleID , XLoop )\Zpos < ParticleSystem( ParticleID )\ZMin
            ParticleObject( ParticleID , XLoop )\Zpos = ParticleSystem( ParticleID )\ZMax
           EndIf
          If ParticleObject( ParticleID , XLoop )\Zpos > ParticleSystem( ParticleID )\ZMax
            ParticleObject( ParticleID , XLoop )\Zpos = ParticleSystem( ParticleID )\ZMin
           EndIf
          ; We finalize the object position changes.
          DBPositionObject( ParticleObject( ParticleID , XLoop )\Number , ParticleObject( ParticleID , XLoop )\Xpos , ParticleObject( ParticleID , XLoop )\Ypos , ParticleObject( ParticleID , XLoop )\Zpos )
         Next XLoop
       EndIf
     EndIf
   EndIf
 EndProcedure
; **************************************************************
Procedure P3D_UpdateFlames( ParticleID.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        For XLoop = 1 To ParticleSystem( ParticleID )\Count
          If ParticleObject( ParticleID , XLoop )\Number > 0
            If ParticleObject( ParticleID , XLoop )\Duration > 0
              ParticleObject( ParticleID , XLoop )\Duration = ParticleObject( ParticleID , XLoop )\Duration - ( 0.5 * TimeFactor )
              If ParticleObject( ParticleID , XLoop )\Duration < 0 : ParticleObject( ParticleID , XLoop )\Duration = 0 : EndIf
              Red.f = 255.0
              Green.f = ParticleObject( ParticleID , XLoop )\Duration * 1.28
              Blue.f = ParticleObject( ParticleID , XLoop )\Duration * 0.64
              If ParticleObject( ParticleID , XLoop )\Duration < 200
                Mult.f = ParticleObject( ParticleID , XLoop )\Duration / ParticleSystem( ParticleID )\YSize
                If Mult < 0.0 : Mult = 0 : EndIf
                DBSetEmissiveMaterial( ParticleObject( ParticleID , XLoop )\Number , DBRgb( Red * Mult , Green * Mult , Blue * Mult ) )
               Else
                Mult.f = Abs( 200 - ParticleObject( ParticleID , Xloop )\Duration )
                If Mult < 0.0 : Mult = 0 : EndIf
                DBSetEmissiveMaterial( ParticleObject( ParticleID , XLoop )\Number , DBRgb( 255 * Mult , 255 * Mult , 255 * Mult ) )
               EndIf
              ParticleObject( ParticleID , XLoop )\Xpos = ParticleObject( ParticleID , XLoop )\Xpos + XWind + ( ParticleSystem( ParticleID )\XMove * TimeFactor )
              ParticleObject( ParticleID , XLoop )\Zpos = ParticleObject( ParticleID , XLoop )\Zpos + ZWind + ( ParticleSystem( ParticleID )\ZMove * TimeFactor )
              ParticleObject( ParticleID , XLoop )\YPos = ParticleObject( ParticleID , XLoop )\YPos + ( ParticleSystem( ParticleID )\YMove * TimeFactor )
              DBPositionObject( ParticleObject( ParticleID , XLoop )\Number , ParticleObject( ParticleID , XLoop )\Xpos , ParticleObject( ParticleID , XLoop )\Ypos , ParticleObject( ParticleID , XLoop )\Zpos )
              If ParticleObject( ParticleID , XLoop )\Duration <= 0
                DBHideObject( ParticleObject( ParticleID , XLoop )\Number )
                If NextFlame = 0 : NextFlame = XLoop : EndIf
               EndIf
             Else
              If NextFlame = 0 : NextFlame = XLoop : EndIf
             EndIf
           EndIf
         Next XLoop 
        If NextFlame > 0
          ParticleObject( ParticleID , NextFlame )\Duration = ParticleSystem( ParticleID )\Duration
          XRand.l = Random( ParticleSystem( ParticleID )\XSize - ParticleSystem( ParticleID )\Size )
          ZRand.l = Random( ParticleSystem( ParticleID )\ZSize - ParticleSystem( ParticleID )\Size )
          ParticleObject( ParticleID , NextFlame )\Xpos = ParticleSystem( ParticleID )\XMin + XRand + ( ParticleSystem( ParticleID )\Size / 2 )
          ParticleObject( ParticleID , NextFlame )\Ypos = ParticleSystem( ParticleID )\YMin - 8
          ParticleObject( ParticleID , NextFlame )\Zpos = ParticleSystem( ParticleID )\ZMin + ZRand + ( ParticleSystem( ParticleID )\Size / 2 )
          DBPositionObject( ParticleObject( ParticleID , NextFlame )\Number , ParticleObject( ParticleID , NextFlame )\Xpos , ParticleObject( ParticleID , NextFlame )\Ypos , ParticleObject( ParticleID , NextFlame )\Zpos )
          DBShowObject( ParticleObject( ParticleID , NextFlame )\Number )
          NextFlame = 0
         EndIf
       EndIf
     EndIf
   EndIf          
 EndProcedure
; **************************************************************
Procedure P3D_UpdateSmoke( ParticleID.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        For XLoop = 1 To ParticleSystem( ParticleID )\Count
          If ParticleObject( ParticleID , XLoop )\Number > 0
            If ParticleObject( ParticleID , XLoop )\Duration > 0
              ParticleObject( ParticleID , XLoop )\Duration = ParticleObject( ParticleID , XLoop )\Duration - ( 0.05 * TimeFactor )
              If ParticleObject( ParticleID , XLoop )\Duration < 0 : ParticleObject( ParticleID , Xloop )\Duration = 0 : EndIf
              If ParticleObject( ParticleID , XLoop )\Duration < 200
                DBFadeObject( ParticleObject( ParticleID , XLoop )\Number , Int( ParticleObject( ParticleID , XLoop )\Duration ) )
               Else
                Value.l = Abs( 200 - ParticleObject( ParticleID , Xloop )\Duration ) : Value = ( 50 - Value ) * 2.0
                DBFadeObject( ParticleObject( ParticleID , XLoop )\Number , Value )
               EndIf
              ParticleObject( ParticleID , XLoop )\YPos = ParticleObject( ParticleID , XLoop )\YPos + ( ParticleSystem( ParticleID )\YMove * TimeFactor )
              DBPositionObject( ParticleObject( ParticleID , XLoop )\Number , ParticleObject( ParticleID , XLoop )\Xpos , ParticleObject( ParticleID , XLoop )\Ypos , ParticleObject( ParticleID , XLoop )\Zpos )
              If ParticleObject( ParticleID , XLoop )\Duration <= 0 
                DBHideObject( ParticleObject( ParticleID , XLoop )\Number )
                If NextSmoke = 0 : NextSmoke = XLoop : EndIf
               EndIf
             Else
              If NextSmoke = 0 : NextSmoke = XLoop : EndIf
             EndIf
           EndIf
         Next XLoop             
        If NextSmoke > 0
          ParticleObject( ParticleID , NextSmoke )\Duration = ParticleSystem( ParticleID )\Duration
          XRand.l = Random( ParticleSystem( ParticleID )\XSize - ParticleSystem( ParticleID )\Size )
          ZRand.l = Random( ParticleSystem( ParticleID )\ZSize - ParticleSystem( ParticleID )\Size )
          ParticleObject( ParticleID , NextSmoke )\Xpos = ParticleSystem( ParticleID )\XMin + XRand + ( ParticleSystem( ParticleID )\Size / 2 )
          ParticleObject( ParticleID , NextSmoke )\Ypos = ParticleSystem( ParticleID )\YMin - 8
          ParticleObject( ParticleID , NextSmoke )\Zpos = ParticleSystem( ParticleID )\ZMin + ZRand + ( ParticleSystem( ParticleID )\Size / 2 )
          DBPositionObject( ParticleObject( ParticleID , NextSmoke )\Number , ParticleObject( ParticleID , NextSmoke )\Xpos , ParticleObject( ParticleID , NextSmoke )\Ypos , ParticleObject( ParticleID , NextSmoke )\Zpos )
          DBShowObject( ParticleObject( ParticleID , NextSmoke )\Number )
          NextSmoke = 0
         EndIf
       EndIf
     EndIf
   EndIf          
 EndProcedure
; **************************************************************
Procedure P3D_UpdateSnow( ParticleID.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        For XLoop = 1 To ParticleSystem( ParticleID )\Count
          If ParticleObject( ParticleID , XLoop )\Number > 0
            XShift.f = TimeFactor * ( ( Random ( 10 ) - 5.0 ) / 100.0 )
            ZShift.f = TimeFactor * ( ( Random ( 10 ) - 5.0 ) / 100.0 )
            ParticleObject( ParticleID , XLoop )\Xpos = ParticleObject( ParticleID , XLoop )\Xpos + XShift
            ParticleObject( ParticleID , XLoop )\Zpos = ParticleObject( ParticleID , XLoop )\Zpos + ZShift 
            ParticleObject( ParticleID , XLoop )\YPos = ParticleObject( ParticleID , XLoop )\YPos - ( ParticleSystem( ParticleID )\YMove * TimeFactor )
            If ParticleObject( ParticleID , XLoop )\Xpos < ParticleSystem( ParticleID )\XMin
              ParticleObject( ParticleID , Xloop )\Xpos = ParticleSystem( ParticleID )\XMax - 4
             Else
              If ParticleObject( ParticleId , Xloop )\Xpos > ParticleSystem( ParticleId )\XMax
                ParticleObject( ParticleId , Xloop )\Xpos = ParticleSystem( ParticleID )\Xmin + 4
               EndIf
             EndIf
            If ParticleObject( ParticleID , XLoop )\YPos < ParticleSystem( ParticleID )\YMin
              ParticleObject( ParticleID , XLoop )\YPos = ParticleSystem( ParticleID )\YMax
              XRand.l = Random( ParticleSystem( ParticleID )\XSize - ParticleSystem( ParticleID )\Size )
              ZRand.l = Random( ParticleSystem( ParticleID )\ZSize - ParticleSystem( ParticleID )\Size )
              ParticleObject( ParticleID , XLoop )\XPos = ParticleSystem( ParticleID )\XMin + Xrand
              ParticleObject( ParticleID , XLoop )\ZPos = ParticleSystem( ParticleID )\ZMin + Zrand
             Else
              If ParticleObject( ParticleID , XLoop )\YPos > ParticleSystem( ParticleID )\YMax
                ParticleObject( ParticleID , XLoop )\YPos = ParticleSystem( ParticleID )\YMax
                XRand.l = Random( ParticleSystem( ParticleID )\XSize - ParticleSystem( ParticleID )\Size )
                ZRand.l = Random( ParticleSystem( ParticleID )\ZSize - ParticleSystem( ParticleID )\Size )
                ParticleObject( ParticleID , XLoop )\XPos = ParticleSystem( ParticleID )\XMin + Xrand
                ParticleObject( ParticleID , XLoop )\ZPos = ParticleSystem( ParticleID )\ZMin + Zrand
               EndIf
             EndIf
            If ParticleObject( ParticleID , XLoop )\Zpos < ParticleSystem( ParticleID )\ZMin
              ParticleObject( ParticleID , Xloop )\Zpos = ParticleSystem( ParticleID )\ZMax - 4
             Else
              If ParticleObject( ParticleId , Xloop )\Zpos > ParticleSystem( ParticleId )\ZMax
                ParticleObject( ParticleId , Xloop )\Zpos = ParticleSystem( ParticleID )\Zmin + 4
               EndIf
             EndIf
            DBPositionObject( ParticleObject( ParticleID , Xloop )\Number , ParticleObject( ParticleID , Xloop )\Xpos , ParticleObject( ParticleID , Xloop )\Ypos , ParticleObject( ParticleID , Xloop )\Zpos )
           EndIf
         Next XLoop
       EndIf
     EndIf
   EndIf          
 EndProcedure
; **************************************************************
Procedure P3D_UpdateRain( ParticleID.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        For XLoop = 1 To ParticleSystem( ParticleID )\Count
          If ParticleObject( ParticleID , XLoop )\Number > 0
;            XShift.f = TimeFactor * ( ( Random ( 10 ) - 5.0 ) / 100.0 )
;            ZShift.f = TimeFactor * ( ( Random ( 10 ) - 5.0 ) / 100.0 )
;            ParticleObject( ParticleID , XLoop )\Xpos = ParticleObject( ParticleID , XLoop )\Xpos + XShift
;            ParticleObject( ParticleID , XLoop )\Zpos = ParticleObject( ParticleID , XLoop )\Zpos + ZShift 
            ParticleObject( ParticleID , XLoop )\YPos = ParticleObject( ParticleID , XLoop )\YPos - ( ParticleSystem( ParticleID )\YMove * TimeFactor )
            If ParticleObject( ParticleID , XLoop )\Xpos < ParticleSystem( ParticleID )\XMin
              ParticleObject( ParticleID , Xloop )\Xpos = ParticleSystem( ParticleID )\XMax - 4
             Else
              If ParticleObject( ParticleId , Xloop )\Xpos > ParticleSystem( ParticleId )\XMax
                ParticleObject( ParticleId , Xloop )\Xpos = ParticleSystem( ParticleID )\Xmin + 4
               EndIf
             EndIf
            If ParticleObject( ParticleID , XLoop )\YPos < ParticleSystem( ParticleID )\YMin
              ParticleObject( ParticleID , XLoop )\YPos = ParticleSystem( ParticleID )\YMax
              XRand.l = Random( ParticleSystem( ParticleID )\XSize - ParticleSystem( ParticleID )\Size )
              ZRand.l = Random( ParticleSystem( ParticleID )\ZSize - ParticleSystem( ParticleID )\Size )
              ParticleObject( ParticleID , XLoop )\XPos = ParticleSystem( ParticleID )\XMin + Xrand
              ParticleObject( ParticleID , XLoop )\ZPos = ParticleSystem( ParticleID )\ZMin + Zrand
             EndIf
            If ParticleObject( ParticleID , XLoop )\Zpos < ParticleSystem( ParticleID )\ZMin
              ParticleObject( ParticleID , Xloop )\Zpos = ParticleSystem( ParticleID )\ZMax - 4
             Else
              If ParticleObject( ParticleId , Xloop )\Zpos > ParticleSystem( ParticleId )\ZMax
                ParticleObject( ParticleId , Xloop )\Zpos = ParticleSystem( ParticleID )\Zmin + 4
               EndIf
             EndIf
            DBPositionObject( ParticleObject( ParticleID , Xloop )\Number , ParticleObject( ParticleID , Xloop )\Xpos , ParticleObject( ParticleID , Xloop )\Ypos , ParticleObject( ParticleID , Xloop )\Zpos )
           EndIf
         Next XLoop
       EndIf
     EndIf
   EndIf          
 EndProcedure
; **************************************************************
Procedure P3D_UpdateSparkles( ParticleID.l )
  If P3DInitialized = 1
    If ParticleID > 0 And ParticleID < 256 
      If ParticleSystem( ParticleID )\Exist = 1
        For XLoop = 1 To ParticleSystem( ParticleID )\Count
          ParticleObject( ParticleID, XLoop )\Duration = ParticleObject( ParticleID, XLoop )\Duration - TimeFactor
          If ParticleObject( ParticleID, XLoop )\Duration < 0
            ; On recrée la particule dans l'espace prévu pour.
            ParticleObject( ParticleID, XLoop )\Duration = ParticleSystem( ParticleID )\Duration
            XRand.l = Random( ParticleSystem( ParticleID )\XSize - ParticleSystem( ParticleID )\Size )
            YRand.l = Random( ParticleSystem( ParticleID )\YSize - ParticleSystem( ParticleID )\Size )
            ZRand.l = Random( ParticleSystem( ParticleID )\ZSize - ParticleSystem( ParticleID )\Size )
            ParticleObject( ParticleID , XLoop )\XPos = ParticleSystem( ParticleID )\XMin + XRand
            ParticleObject( ParticleID , XLoop )\YPos = ParticleSystem( ParticleID )\YMin + YRand
            ParticleObject( ParticleID , XLoop )\ZPos = ParticleSystem( ParticleID )\ZMin + ZRand     
           Else
            ; On met à jour les Sparkles ...
            ParticlePhase.f = ( ParticleObject( ParticleID, XLoop )\Duration / ParticleSystem( ParticleID )\Duration ) * 100.0
            If ParticlePhase < 75.0
              ; Phase 2 - Descendante
              Percent.f = ( ParticlePhase * 4.0 ) / 3.0
             Else
              ; Phase 1 - Ascendante
              Percent.f = ( 25.0 - Abs( 75 - ParticlePhase ) ) * 4.0
             EndIf
            DBFadeObject( ParticleObject( ParticleID , XLoop )\Number , Percent * 3.0 )
            DBPositionObject( ParticleObject( ParticleID , Xloop )\Number , ParticleObject( ParticleID , Xloop )\Xpos , ParticleObject( ParticleID , Xloop )\Ypos , ParticleObject( ParticleID , Xloop )\Zpos )
           EndIf
         Next XLoop
       EndIf
     EndIf
   EndIf          
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l P3D_GetParticleXRange( ParticleID.l )
  If P3DInitialized = 1
    Range.l = ParticleSystem( ParticleID )\XSize
   Else
    Range = -1
   EndIf
  ProcedureReturn Range
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l P3D_GetParticleYRange( ParticleID.l )
  If P3DInitialized = 1
    Range.l = ParticleSystem( ParticleID )\YSize
   Else
    Range = -1
   EndIf
  ProcedureReturn Range
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l P3D_GetParticleZRange( ParticleID.l )
  If P3DInitialized = 1
    Range.l = ParticleSystem( ParticleID )\ZSize
   Else
    Range = -1
   EndIf
  ProcedureReturn Range
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l P3D_GetParticleXPosition( ParticleID.l )
  If P3DInitialized = 1
    Range.l = ParticleSystem( ParticleID )\XEmitter
   Else
    Range = -1
   EndIf
  ProcedureReturn Range
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l P3D_GetParticleYPosition( ParticleID.l )
  If P3DInitialized = 1
    Range.l = ParticleSystem( ParticleID )\YEmitter
   Else
    Range = -1
   EndIf
  ProcedureReturn Range
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l P3D_GetParticleZPosition( ParticleID.l )
  If P3DInitialized = 1
    Range.l = ParticleSystem( ParticleID )\ZEmitter
   Else
    Range = -1
   EndIf
  ProcedureReturn Range
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l P3D_GetParticleCount( ParticleID.l )
  If P3DInitialized = 1
    Range.l = ParticleSystem( ParticleID )\Count
   Else
    Range = -1
   EndIf
  ProcedureReturn Range
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l P3D_GetParticleType( ParticleID.l )
  If P3DInitialized = 1
    Range.l = ParticleSystem( ParticleID )\Type
   Else
    Range = -1
   EndIf
  ProcedureReturn Range
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l P3D_GetParticleSize( ParticleID.l )
  If P3DInitialized = 1
    Range.l = ParticleSystem( ParticleID )\Size
   Else
    Range = -1
   EndIf
  ProcedureReturn Range
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l P3D_GetParticleDuration( ParticleID.l )
  If P3DInitialize = 1
    PokeF( @Temp.l, ParticleSystem( ParticleID )\Duration )
   Else
    PokeF( @Temp.l, 0.0 )
   EndIf
  ProcedureReturn Temp
 EndProcedure
; IDE Options = PureBasic 4.30 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 8
; Folding = -------
; Executable = ..\..\..\PurePLUGIN - 2DPlugKIT\2DPlugKIT [Developpement]\PurePLUGIN Development\2DPlugKIT\2DPlugKIT.dll