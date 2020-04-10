;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC OBJECT COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
; ***************************************************************************************
ProcedureCDLL B3D_Clear()
  ; On supprime tout les objets qui ne l'auraient pas été...
  If DLH_GetItemCounter() > 0
    For XLoop = DLH_GetItemCounter() To 1 Step -1
      If DBGetObjectExist( XLoop ) = 1
        DBDeleteObject( XLoop )
       EndIf
     Next XLoop
   EndIf
  ; On efface la pile des objets.
  DLH_ClearList()
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l B3D_GetFree()
  If B3DInitialized = 1
    ; Si on n'a aucun objet supprimés dans la pile, on ajoute simplement un objet au compteur pour l'utiliser.
    Retour.l = DLH_GetNextFreeItem()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l B3D_Count()
  If B3DInitialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l B3D_Delete( Number.l )
  If B3DInitialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier lieu, on supprime l'objet.
      If DBGetObjectExist( Number ) = 1 : DBDeleteObject( Number ) : EndIf
      ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
      Number = DLH_FreeItem( Number )
     EndIf
   EndIf
  Number = 0
  ProcedureReturn Number
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicLoad( File.l )
  If File <> 0
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    Fichier.s = MyDeleteString( File )
    If B3DInitialized = 1
      Target.l = DLH_GetNextFreeItem()
      If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
      DBLoadObject( Fichier , Target )
     Else
      Target = 0
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicLoadEx( File.l, Flag.l )
  If File <> 0
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    Fichier.s = MyDeleteString( File )
    If B3DInitialized = 1
      Target.l = DLH_GetNextFreeItem()
      If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
      DBLoadObject1( Fichier , Target, Flag )
     Else
      Target = 0
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicLoadEx2( File.l, Flag.l, TextureReducer.l )
  If File <> 0
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    Fichier.s = MyDeleteString( File )
    If B3DInitialized = 1
      Target.l = DLH_GetNextFreeItem()
      If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
      DBLoadObject2( Fichier , Target, Flag, TextureReducer )
     Else
      Target = 0
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicClone( Source.l )
  If B3DInitialized = 1
    If Source > 0
      If DBGetObjectExist( Source ) = 1
        Target.l = DLH_GetNextFreeItem()
        If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
        DBCloneObject( Target , Source )
       EndIf
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicInstance( Source.l )
  If B3DInitialized = 1
    If Source > 0
      If DBGetObjectExist( Source ) = 1
        Target.l = DLH_GetNextFreeItem()
        If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
        DBInstanceObject( Target , Source )
       EndIf
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicMake( Meshe.l , Texture.l )
  If B3DInitialized = 1
    If DBGetMeshExist( Meshe ) = 1
      Target.l = DLH_GetNextFreeItem()
      If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
      DBMakeObject( Target , Meshe , Texture )
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicMakePlain( XSize.f , YSize.f )
  If B3DInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
    DBMakeObjectPlane( Target , XSize , YSize )
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicMakeBox( Width.f , Height.f , Depth.f )
  If B3DInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
    DBMakeObjectBox( Target , Width , Height , Depth )
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicMakeCone( Size.f )
  If B3DInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
    DBMakeObjectCone( Target , Size )
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicMakeCube( Size.f )
  If B3DInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
    DBMakeObjectCube( Target , Size )
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicMakeCylinder( Size.f )
  If B3DInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
    DBMakeObjectCylinder( Target , Size )
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicMakeSphere( Size.f )
  If B3DInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
    DBMakeObjectSphere( Target , Size )
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l B3D_DynamicMakeTriangle( X1.f , Y1.f , Z1.f , X2.f , Y2.f , Z2.f , X3.f , Y3.f , Z3.f )
  If B3DInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
    DBMakeObjectTriangle( Target , X1 , Y1 , Z1 , X2 , Y2 , Z2 , X3 , Y3 , Z3 )
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l B3D_MakeFromLimb( Object.l , Limb.l )
  If B3DInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBGetObjectExist( Target ) = 1 : MessageRequester( "DBProBasic3DeXtends.dll Error Message", "Warning, Object Already Exist" ) : EndIf
    DBMakeObjectFromLimb( Target, Object, Limb )
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************

; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 94
; FirstLine = 90
; Folding = ----