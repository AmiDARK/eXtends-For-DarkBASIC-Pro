; ************************************************
; *                                              *
; * 3DMapEditor Maps Load/Save/Refresh Functions *
; *                                              *
; ************************************************

; VARIABLES UTILISES PAR 3DMapEditor Ver 2.31+ :
; ----------------------------------------------------------------------------------------------------------------
; Dim _obj(16383,27) : Dim _Textures$(256) : Dim _Lights(256,16) : Dim _LightActive(8)
; Dim _DirectXObject$(256) : Dim _3DSound$(256) : Dim _fichier$(256) : Dim _FilesPath$(16)
; Dim _zone_info(256,17) : Dim _zone_filename$(256) : Dim _zone_inside(256) : Dim _zone_sortance(256)
; Dim _zone_entrance(256) : Dim _zone_active(256) : Dim _zone_data(16) : Dim _skybox_object(16)
; Dim _3dme_temp(256) : Dim _Matrix(256,16) : Dim _Matrix_Height(256,64,64) : Dim _Matrix_Tile(256,64,64)
; Dim _Matrix_RealTile(256,64,64) : Dim _matrix_tilelist(64) : Dim _Image_X(65535) : Dim _Image_Y(65535)
; #include "_3dmapeditor_functions.dba"
; _3DME_Initialize()
; ----------------------------------------------------------------------------------------------------------------

; FUNCTIONS LIST :
; _3DME_Initialize()                                                Initialize all Data ( paths , And more . . . )
; _3DME_SetSplashImage(Fichier$)                              Crée un splash screen pendant le chargement de maps.
; _3DME_Refresh_Map()                                         Retrace all objects And datas To make world useable.
; _3DME_Clear_Map()                                                   Efface tout ce qui était utilisé par la map.
; _3DME_Load_Map(_mapfile$,_FirstTextureImage)                                   Load a map from file ( If exist )
; _3DME_initialize_camera()                                                       Initialize camera Data position.
; _3DME_initialize_ambient_light()                                                    Initialize all lights datas.
; _3DME_checkFor7Lights(_ForceAutoClear,_DistanceMax,_HowManyLights)                           Refresh all lights.
; _3DME_Refresh_Object(refobj)                                                                  Refresh an object.
; _3DME_Refresh_Matrix(_matrix)                                                            Refresh a Map's Matrix.
; _3DME_initialize_skybox()                                                              Initialize Sky Box datas.
; =_3DME_Check_for_ground(xpos#,ypos#,zpos#,ysize#)                         Check ground If player is on a matrix.
; _3DME_set_fog(RED,GREEN,BLUE,DISTANCE)                                      Define Fog value ( And save states )
;
; _3DMESys_initialize_zones() [SYSTEM]                                   Initialize all zones ( including SkyBox )
; _3DMESys_initialize_skybox() [SYSTEM]
; _3DMESys_position_skybox() [SYSTEM]                                      Reposition skybox around player vision.
; _3DMESys_check_zone_inout() [SYSTEM]                                      check If player enter Or leave a zone.
; _3DMESys_check_zone_action(_check) [SYSTEM]                                                 Active zone effects.
; _3DMESys_enter_water_zone(_zone_number) [SYSTEM]
; _3DMESys_inside_water_zone() [SYSTEM]
; _3DMESys_leave_water_zone() [SYSTEM]
; _3DMESys_enter_music_zone(_zone_number) [SYSTEM]
; _3DMESys_enter_sound_zone(_zone_number) [SYSTEM]
; _3DMESys_inside_light_zone(_zone_number) [SYSTEM]
; _3DMESys_inside_fog_zone(_zone_number) [SYSTEM]
;
;  Fonctions For Editor Only :
; ----------------------------
; _replace_skyobject()
;
; _zone_data(1)=_last_zone
; _zone_data(2)=_skybox_zone
; _zone_data(3)=_skybox_object
;
;
;
; ****************************************************************************************************************
ProcedureCDLL _3DME_Load_Map( DossierP.l, MapFileP.l )
  Dossier.s = PeekS( @DossierP ) : MapFile.s = PeekS( @MapFileP )
  _LoadPath.s = _FilesPath( 1 ) : _MapPath.s = _FilesPath( 2 ) : _TexturePath.s = _FilesPath( 3 )
  _3DObjectPath.s = _FilesPath( 4 ) : _3DSoundPath.s = _FilesPath( 5 )
  If DBFileExist( MapFile ) = 1 : _Fichier.s = MapFile : EndIf
  If DBFileExist( _MapPath + MapFile ) = 1 : _Fichier = _MapPath + MapFile : EndIf
  If DBFileExist( Dossier + MapFile ) = 1 : _Fichier = Dossier + MapFile : EndIf
  If _Fichier <> "" : _Loaded = 1 : Else : _Loaded = 0 : EndIf
  If _Loaded = 1
    OpenFile( 1, _Fichier )
    File1.s = ReadString( 1 )
    MapVersionFile.l = ReadUByte( 1 )
    MapRevisionFile.l = ReadUByte( 1 )
    File2.s = ReadString( 1 )
    For XLoop = 1 To 16
      _Obj( 1, XLoop ) = ReadLong( 1 )
     Next XLoop
    File3.s = ReadString( 1 )
    NewObj.l = _Obj( 1, 1 )
    LastObject.l = NewObj
    For BLoop = 2 To NewObj
      For SLoop = 1 To 16
        _Obj( BLoop, SLoop ) = ReadLong( 1 )
       Next SLoop
      If MapVersionFile > 0 And MapRevisionfile > 4
        _Obj( BLoop, 17 ) = ReadLong( 1 )
        _Obj( BLoop, 18 ) = ReadLong( 1 )
       EndIf
      If MapVersionfile > 0 And MapRevisionFile > 6
        For SLoop = 19 To 25
          _Obj( BLoop, SLoop ) = ReadLong( 1 )
         Next SLoop
       Else
        _Obj( BLoop, 19 ) = 1 ; WIREFRAME
        _Obj( BLoop, 20 ) = 1 ; ACTIVE BLACK IS TRANSPARENCY Or Not
        _Obj( BLoop, 21 ) = 0 ; CULL ( SHOW HIDDEN FACES )
        _Obj( BLoop, 22 ) = 1 ; TEXTURE FILTERING
        _Obj( BLoop, 23 ) = 1 ; SENSITIVE To LIGHTS
        _Obj( BLoop, 24 ) = 1 ; SENSITIVE To FOG
        _Obj( BLoop, 25 ) = 1 ; SENSITIVE To AMBIENT LIGHT
       EndIf
      If MapVersionFile > 0 And MapRevisionFile > 7
        _Obj( BLoop, 26 ) = ReadLong( 1 )
        _Obj( BLoop, 27 ) = ReadLong( 1 )
       Else
        _Obj( BLoop, 26 ) = 0 : ; OBJET CACHE = FALSE
        _Obj( BLoop, 27 ) = 1 : ; OBJET COLLISIONS = TRUE
       EndIf
     Next BLoop
; 2ème version de la carte , GESTION DES TEXTURES.
    If MapVersionFile > 0 And MapRevisionfile > 1
      File4.s = ReadString( 1 )
      _TextureNum.l = _Obj( 1, 8 )
      For BLoop = 1 To _TextureNum
        _Textures( BLoop ) = ReadString( 1 )
       Next BLoop
; Ver 1.3 Gestion des lumières
    If MapVersionFile > 0 And MapRevisionFile > 2
      File5.s = ReadString( 1 )
      _LightNum = _Obj( 1, 16 )
      If _LightNum > 0
        For BLoop = 1 To _LightNum
          For SLoop = 1 To 16 
            _Lights( BLoop, SLoop ) = ReadLong( 1 )
           Next SLoop
         Next BLoop
       EndIf
     EndIf
; Ver 1.4 Gestion des objets 3D Direct X ( .x )
    If MapVersionFile > 0 And MapRevisionFile > 3
      File6.s = ReadString( 1 )
      _DirectXObject.l = ReadLong( 1 )
      If _DirectXObject > 0
        For BLoop = 1 To _DirectXObject
          _DirectXObject( BLoop ) = ReadString( 1 )
         Next BLoop
       EndIf
     EndIf
; Ver 1.6 Gestion des sons 3D
    If MapVersionFile>0 And MapRevisionFile>5
      File7.s = ReadString( 1 )
      _3DSoundObject.l = ReadLong( 1 )
      If _3DSoundObject>0
        For boucle=1 To _3DSoundObject
          _3DSound$(boucle) = ReadString( 1 )
         Next boucle
       EndIf
     EndIf
; Ver 1.9 Gestions des zones d'action.
    If MapVersionFile>0 And MapRevisionFile>8
      File8.s = ReadString( 1 )
      _last_zone.l = ReadLong( 1 )
      _zone_data(1) = _last_zone : _current_zone.l = _last_zone
      If _last_zone>0
        For boucle=1 To _last_zone
          For sousboucle=1 To 16
            _Zone_Info(boucle,sousboucle) = ReadLong( 1 )
           Next sousboucle
          If MapVersionFile>0 And MapRevisionFile>9 : _Zone_Info(boucle,17) = ReadLong( 1 ) : EndIf
          If MapVersionFile>0 And MapRevisionFile>10 : _Zone_Filename$(boucle) = ReadString( 1 ) : EndIf
         Next boucle
       EndIf
     EndIf
; Ajout pour les matrices Ver2.30+
    If MapVersionFile>0 And MapRevisionFile>11
      File9.s = ReadString( 1 )
      _LastMatrix.l = ReadLong( 1 )
      _Matrix(0,0)=_LastMatrix : _CurrentMatrix=_LastMatrix
      If _LastMatrix>0
        For Boucle=1 To _LastMatrix
          For _mdat=1 To 16
            Read long 1,_Matrix(Boucle,_mdat)
           Next _mdat
          For zbcl=0 To _Matrix(Boucle,5)
            For xbcl=0 To _Matrix(Boucle,4)
              Read long 1,_Matrix_Height(Boucle,Xbcl,Zbcl)
              Read long 1,_Matrix_Tile(boucle,xbcl,zbcl)
             Next xbcl
           Next zbcl
         Next boucle
       EndIf
     EndIf
; End OF .MAP FILE
    Read string 1,file9$
    close file 1
    If _TextureNum>0
      For bouclet=1 To _TextureNum+1
        If image exist(_FirstTextureImage+bouclet)=1 then delete image _FirstTextureImage+bouclet
        If file exist(_texturepath$+_textures$(bouclet))=1
          _Load_Image(_texturepath$+_Textures$(bouclet),_FirstTextureImage+bouclet)
         Else
          If file exist(_textures$(bouclet))=1
            _Load_Image(_Textures$(bouclet),_FirstTextureImage+bouclet)
           EndIf
         EndIf
       Next bouclet
     EndIf
   EndIf
 endfunction _loaded
;
;
;
; ****************************************************************************************************************
; Définition des chemins d'accès par défaut
Function _3DMe_Initialize()
  _defpath$=get dir$() : _edpath$=_defpath$ : _MapPath$=_EdPath$+"\Maps\"
  _TutorialMapPath$=_MapPath$+"Tutorials_Maps\" : _TexturePath$=_EdPath$+"\Textures\"
  _3DObjectPath$=_EdPath$+"\Objects_Library\" : _3DSoundPath$=_EdPath$+"\3DSound\"
  _muspath$=_edpath$+"\musics\" : _soundpath$=_edpath$+"\sounds\"
  _FilesPath$(1)=_edpath$ : _FilesPath$(2)=_mappath$ : _FilesPath$(3)=_TexturePath$
  _FilesPath$(4)=_3DObjectPath$ : _FilesPath$(5)=_3DSoundPath$ : _FilesPath$(6)=_muspath$
  _FilesPath$(7)=_soundpath$
 EndFunction
;
;
; ****************************************************************************************************************
Function _3DME_Refresh_Map()
  lastobject=_obj(1,1) : newobj=lastobject
  _FirstTextureImage=_Obj(1,0) : _texturenum=_Obj(1,8)
  For boucle=2 To lastobject
    _3DME_Refresh_Object(boucle)
   Next boucle
  _LastMatrix=_Matrix(0,0)
  If _LastMatrix>0
    For boucle=1 To _lastmatrix
      _3DMe_Refresh_Matrix(boucle)
     Next boucle
   EndIf
  _3DME_initialize_camera()
  _3DME_initialize_ambient_light()
  _3DME_set_fog(0,0,0,2000)
  color backdrop RGB(0,0,0)
  _3DME_initialize_zones()
 EndFunction
;
;
; ****************************************************************************************************************
Function _3DME_Clear_Map()
  _3DME_quit_all_zones()
  lastobject=_obj(1,1) : newobj=lastobject
  _FirstTextureImage=_Obj(1,0) : _texturenum=_Obj(1,8)
  ; Clear all 3D objects.
  For boucle=2 To lastobject
    If object exist(boucle)=1 then delete object boucle
    If sound exist(boucle)=1 then delete sound boucle
   Next boucle
  _LastMatrix=_Matrix(0,0)
  ; Clear all images.
  For boucle=_FirstTextureImage To _FirstTextureImage+_TextureNum
    If image exist(boucle)=1 then delete image boucle
   Next boucle
  ; Clear all matrixes.
  If _LastMatrix>0
    For boucle=1 To _lastmatrix
      If matrix exist(boucle)=1 then delete matrix boucle
     Next boucle
   EndIf
  _3DME_initialize_camera()
  _3DME_initialize_ambient_light()
  _3DME_set_fog(0,0,0,2000)
  color backdrop RGB(0,0,0)
  _3DME_initialize_zones()
 EndFunction
;
;
;
;
; ****************************************************************************************************************
function _3DME_initialize_camera()
  xcam=_obj(1,2)
  ycam=_obj(1,3)
  zcam=_obj(1,4)
  xang=_obj(1,5)
  yang=_obj(1,6)
  zang=_obj(1,7)
  position camera xcam,ycam,zcam
  rotate camera xang,yang,zang
 endfunction
;
;
; ****************************************************************************************************************
function _3DME_initialize_ambient_light()
  _AmbientRed=_Obj(1,9)
  _AmbientGreen=_Obj(1,10)
  _AmbientBlue=_Obj(1,11)
  _AmbientLight=_Obj(1,12)
  _AmbientX=_Obj(1,13)
  _AmbientY=_Obj(1,14)
  _AmbientZ=_Obj(1,15)
  color ambient light RGB(_AmbientRed,_AmbientGreen,_AmbientBlue)
  set ambient light _AmbientLight
  set directional light 0,_AmbientX,_AmbientY,_AmbientZ
  _3dme_temp(4)=_AmbientRed : _3dme_temp(5)=_AmbienGreen : _3dme_temp(6)=_AmbientBlue
  _3dme_temp(7)=_AmbientLight
 endfunction
;
;
; ****************************************************************************************************************
function _3DME_checkFor7Lights(_forceautoclear,_fogdistance,_lightnum)
  If _forceautoclear=0
    ; 1> On vérifie si aucune des 7 lumières existantes (?) ne sortent pas de la distance de vue.
    For boucle=1 To 7
      If light exist(boucle)=1
        DistanceX=Abs(camera position x()-light position x(boucle))
        DistanceY=Abs(camera position y()-light position y(boucle))
        DistanceZ=Abs(camera position z()-light position z(boucle))
        Distance=Sqrt((Distancex^2)+(Distancey^2)+(distancez^2))
        If Distance>_fogdistance+512
          delete light boucle
          _LightActive(boucle)=0
         EndIf
       EndIf
     Next boucle
   Else
    For boucle=1 To 7
      If light exist(boucle)=1 then delete light boucle
      _LightActive(boucle)=0
     Next boucle
   EndIf
  ; 2> On vérifie si aucune autre lumière n'est rentrée dans le champ de vue.
  If _Lightnum>0
    For boucle=1 To _LightNum
      DistanceX=Abs(camera position x()-_Lights(boucle,1))
      DistanceY=Abs(camera position y()-_lights(boucle,2))
      DistanceZ=Abs(camera position z()-_lights(boucle,3))
      Distance=Sqrt((Distancex^2)+(Distancey^2)+(distancez^2))
      lt=0
      If Distance<2000
        ; On cherche la p;ière lumière libre.
        Repeat
          inc lt
          If _LightActive(lt)=boucle then lt=8 : ; si cette lumière existe déja , ne pas dupliquer.
         Until _LightActive(lt)=0 Or lt=8
        ; Si il existe un emplacement lumière de libre , on la crée.
        If lt<8
          _LightActive(lt)=boucle
          make light lt
          set point light lt,_Lights(boucle,1)+_Lights(boucle,9),_Lights(boucle,2)+_Lights(boucle,10),_Lights(boucle,3)+_Lights(boucle,11)
          Color light lt,RGB(_Lights(boucle,4),_Lights(boucle,5),_Lights(boucle,6))
          Set light range lt,_Lights(boucle,8)
          Position light lt,_Lights(boucle,1),_Lights(boucle,2),_Lights(boucle,3)
          Show Light lt
         EndIf
       EndIf
     Next boucle
   EndIf
 endfunction
;
;
; ****************************************************************************************************************
function _3DME_Refresh_Object(refobj)
  _FirstTextureImage=_Obj(1,0) : _texturenum=_Obj(1,8)
  _loadpath$=_FilesPath$(1) : _mappath$=_FilesPath$(2) : _TexturePath$=_FilesPath$(3)
  _3DObjectPath$=_FilesPath$(4) : _3DSoundPath$=_FilesPath$(5)
  lastobject=_obj(1,1) : newobj=lastobject
  If lastobject=1 Or refobj>lastobject then Return
  xpos=_obj(refobj,1) : ypos=_obj(refobj,2) : zpos=_obj(refobj,3)
  xsize=_obj(refobj,4) : ysize=_obj(refobj,5) : zsize=_obj(refobj,6)
  ObjRed=_Obj(refobj,8) : ObjGreen=_Obj(refobj,15) : ObjBlue=_Obj(refobj,16)
  kind=_obj(refobj,7) : attrib=_obj(refobj,9) : textre=_obj(refobj,10)
  xrot=_obj(refobj,11) : yrot=_obj(refobj,12) : zrot=_obj(refobj,13)
  XScalet=_Obj(refobj,17) : YScalet=_Obj(refobj,18)
  ; Addition from version 2.23
  _WireFrame=_Obj(refobj,19) : _Transparency=_Obj(refobj,20) : _Cull=_Obj(refobj,21)
  _TextureFiltering=_Obj(refobj,22) : _LightSensitive=_Obj(refobj,23) : _FogSensitive=_Obj(refobj,24)
  _AmbientSensitive=_Obj(refobj,25) : _HiddenObject=_Obj(refobj,26) : _ObjectCollisions=_Obj(refobj,27)
  If object exist(refobj)=1
    If sound exist(refobj)=1 then stop sound refobj
    delete object refobj
   EndIf
  If kind=1 then make object sphere refobj,xsize
  If kind=2 then make object cube refobj,xsize
  If kind=3 then make object box refobj,xsize,ysize,zsize
  If kind=4 then make object cylinder refobj,xsize
  If kind=5 then make object cone refobj,xsize
  If kind=6 then make object plain refobj,xsize,ysize
  If kind=8
    make object plain refobj,8,8
    hide object refobj
   EndIf
  If kind=9
    make object plain refobj,8,8
    hide object refobj
    _loaded=0
    If file exist(_3DSoundpath$+_3DSound$(_Obj(refobj,14)))=1
      load 3dsound _3DSoundpath$+_3DSound$(_Obj(refobj,14)),refobj
      _loaded=1
     Else
      If file exist(_3DSound$(_Obj(refobj,14)))=1
        load 3dsound _3DSound$(_Obj(refobj,14)),refobj
        _loaded=1
       EndIf
     EndIf
    If _loaded=1
      set sound volume refobj,32
      position sound refobj,xpos,ypos,zpos
      loop sound refobj : play sound refobj : loop sound refobj
      _loaded=0
     EndIf
   EndIf
  If kind>10
    If file exist(_3DObjectPath$+_DirectXObject$(kind-10))=1
      load object _3DObjectPath$+_DirectXObject$(kind-10),refobj
     Else
      If file exist(_DirectXObject$(kind-10))=1
        load object _DirectXObject$(kind-10),refobj
       EndIf
     EndIf
   EndIf
  Set Object Rotation ZYX refobj
  position object refobj,xpos,ypos,zpos
  rotate object refobj,xrot,yrot,zrot
  If xsize>0 And ysize>0 And zsize>0 And (kind=1 Or kind=4 Or kind=5 Or kind>10)
    Scale object refobj,xsize,ysize,zsize
   EndIf
  If textre>0
    texture object refobj,textre+_FirstTextureImage
    If XScalet>0
      XScalet_final#=XScalet
     Else
      XScalet_final#=1.0+(XScalet*0.01)
     EndIf
    If YScalet>0
      YScalet_final#=YScalet
     Else
      YScalet_final#=1.0+(YScalet*0.01)
     EndIf
    If XScalet=0 then XSCalet_final#=xsize/128.0
    If YScalet=0 then YSCalet_final#=ysize/128.0
    If xscalet_final#=1.0 then xscalet_final#=1.0000000001
    If yscalet_final#=1.0 then yscalet_final#=1.0000000001
    scale object texture refobj,XScalet_final#,YScalet_final#
   EndIf
;  SET OBJECT TEXTURE refobj,0,1
  fade object refobj,1500
  If _HiddenObject=1 then hide object refobj
  If _ObjectCollisions=0 Or kind=8 Or kind=9 then set object collision off refobj
;  set object refobj,_Wireframe,_Transparency,_Cull,_TextureFiltering,_LightSensitive,_FogSensitive,_AmbientSensitive
;  If _cull=1 then set object cull refobj,1 Else set object cull refobj,0
;  If _WireFrame=1 then Set Object wireFrame refobj,0 Else Set Object wireFrame refobj,1
;  set object transparency refobj,_Transparency
;  set object filter refobj,_TextureFiltering
;  set object ambient refobj,_AmbientSensitive
;  set object light refobj,_lightsensitive
;  set object fog refobj,_fogsensitive
  If attrib>0 then ghost object on refobj
;  sync
 endfunction
;
;
; ****************************************************************************************************************
Function _3DME_Check_for_ground(xpos#,ypos#,zpos#,ysize#)
  _lastmatrix=_Matrix(0,0)
  ysize#=ysize#/2.0
  ; On initialize les valeurs de l'objet en cours pour le calcul.
  If _lastmatrix>0
    For boucle=1 To _lastmatrix
      xpm=_Matrix(boucle,1) : zpm=_Matrix(boucle,3)
      xmax=xpm+(_Matrix(boucle,4)*_Matrix(boucle,6))
      zmax=zpm+(_Matrix(boucle,5)*_Matrix(boucle,7))
      ; On vérifie si les coordonnées du joueur se trouvent sur la matrice
      ; et si les collisions de celle-ci sont activées.
      If xpos#>xpm And xpos#<xmax And zpos#>zpm And zpos#<xmax And _Matrix(boucle,16)=1
        _ymat#=get ground height(boucle,Int(xpos#)-xpm,Int(zpos#)-zpm)
        If ypos#>_ymat
          ; Checking si la camera ou l'objet est en dessus de la matrice ( = SOL )
          If Int(ypos#-_ymat#)<ysize# then ypos#=_ymat#+ysize#
         Else
          ; Checking si la camera ou l'objet est en dessous de la matrice ( = PLAFOND )
          If Int(_ymat#-ypos#)<ysize# then ypos#=_ymat#-ysize#
         EndIf
       EndIf
     Next boucle
   EndIf
 EndFunction ypos#
;
;
; ****************************************************************************************************************
Function _3DMe_Refresh_Matrix(_matrix)
  _FirstTextureImage=_Obj(1,0) : _TextureNum=_Obj(1,8)
  If matrix exist(_MATRIX)=1 then delete matrix _MATRIX : sync
; On met au point la liste des textures à utiliser pour les tiles.
  _how_many=0
  xtiles=_matrix(_matrix,4) : ztiles=_matrix(_matrix,5)
  xsize=_matrix(_matrix,6) : zsize=_matrix(_matrix,7)
  For zbcl=0 To ztiles
    For xbcl=0 To xtiles
      img=_Matrix_Tile(_MATRIX,xbcl,zbcl)
If img=0 then img=1
      If img>0
        If _how_many=0
          _how_many=1
          _matrix_tilelist(_how_many)=img
          _matrix_realtile(_Matrix,xbcl,zbcl)=1
         Else
          _exist=0
          For boucle=1 To _how_many
            If _matrix_tilelist(boucle)=img
              _exist=1
              _matrix_realtile(_Matrix,xbcl,zbcl)=boucle
             EndIf
           Next boucle
          If _exist=0
            inc _how_many,1
            _matrix_tilelist(_how_many)=img
            _matrix_realtile(_Matrix,xbcl,zbcl)=_how_many
           EndIf
         EndIf
       EndIf
     Next xbcl
   Next zbcl
; On crée maintenant l'image qui servira à faire les tiles pour la matrice
  If _how_many=1 then _mode=1
  If _how_many>1 And _how_many<5 then _mode=2
  If _how_many>4 And _how_many<10 then _mode=3
  If _how_many>9 And _how_many<17 then _mode=4
  create bitmap 2,1024,768 : set current bitmap 2
  If _TextureNum>0
    If _mode<3
;      If _matrix_tilelist(1)>0 then _Paste_scaled_Image(_matrix_tilelist(1)+_FirstTextureImage,0,0,xsize,zsize,2)
      If _matrix_tilelist(1)>0 then Paste Image _matrix_tilelist(1)+_FirstTextureImage,0,0
     EndIf
    If _mode=2
;      If _matrix_tilelist(2)>0 then _Paste_scaled_Image(_matrix_tilelist(2)+_FirstTextureImage,xsize,0,xsize*2,zsize,2)
;      If _matrix_tilelist(3)>0 then _Paste_scaled_Image(_matrix_tilelist(3)+_FirstTextureImage,0,zsize,xsize,zsize*2,2)
;      If _matrix_tilelist(4)>0 then _Paste_scaled_Image(_matrix_tilelist(4)+_FirstTextureImage,xsize,zsize,xsize*2,zsize*2,2)
      If _matrix_tilelist(2)>0 then Paste Image _matrix_tilelist(2)+_FirstTextureImage,xsize,0
      If _matrix_tilelist(3)>0 then Paste Image _matrix_tilelist(3)+_FirstTextureImage,0,zsize
      If _matrix_tilelist(4)>0 then Paste Image _matrix_tilelist(4)+_FirstTextureImage,xsize,zsize
     EndIf
    If _mode=3
      xpos=0 : ypos=0
      For _til=1 To 9
;        If _matrix_tilelist(_til)>0 then _Paste_scaled_Image(_matrix_tilelist(_til)+_FirstTextureImage,xpos,ypos,xpos+xsize,ypos+zsize,2)
        If _matrix_tilelist(_til)>0 then Paste Image _matrix_tilelist(_til)+_FirstTextureImage,xpos,ypos
        inc xpos,xsize : If xpos=xsize*3 then xpos=0 : inc ypos,zsize
       Next _til
     EndIf
    If _mode=4
      xpos=0 : ypos=0
      For _til=1 To 16
        If _matrix_tilelist(_til)>0 then _Paste_scaled_Image(_matrix_tilelist(_til)+_FirstTextureImage,xpos,ypos,xpos+xsize,ypos+zsize,2)
        inc xpos,xsize : If xpos=xsize*4 then xpos=0 : inc ypos,zsize
       Next _til
     EndIf
   EndIf
  _img=65536
  If _mode=0 then _mode=1 : ; Force à saisir l'image même vide pour les textures.
  get image _img-_matrix,0,0,xsize*_mode,xsize*_mode
  set current bitmap 0
;  sync
  xt=_Matrix(_MATRIX,4) : zt=_Matrix(_MATRIX,5) : xs=_Matrix(_MATRIX,6) : zs=_Matrix(_MATRIX,7)
  ; Création de la matrice . . .
  make matrix _MATRIX,(xt*xs),(zt*zs),xt,zt
  ; Positionnement . . .
  position matrix _MATRIX,_Matrix(_MATRIX,1),_Matrix(_MATRIX,2),_Matrix(_MATRIX,3)
  ; Addition from version 2.30
  _ghostMode=_Matrix(_MATRIX,8) : _WireFrame=_Matrix(_MATRIX,9)
  _Transparency=_Matrix(_MATRIX,10) : _Cull=_Matrix(_MATRIX,11)
  _TextureFiltering=_Matrix(_MATRIX,12) : _LightSensitive=_Matrix(_MATRIX,13)
  _FogSensitive=_Matrix(_MATRIX,14) : _AmbientSensitive=_Matrix(_MATRIX,15)
  _ObjectCollisions=_Matrix(_MATRIX,16)
  ; Mise en place des textures pour la matrice.
  prepare matrix texture _MATRIX,_img-_matrix,_mode,_mode
;  If _texturenum>0
    If _mode>0
      For xbcl=0 To xtiles-1
        For zbcl=0 To ztiles-1
          _tile=_matrix_realtile(_Matrix,xbcl,zbcl)
          If _tile=0 then _tile=1
          set matrix tile _Matrix,xbcl,zbcl,1
         Next zbcl
       Next xbcl
     EndIf
;   EndIf
  ; Définition des hauteurs des points .
  For xbcl=0 To xtiles
    For zbcl=0 To ztiles
      _ypos=_Matrix_Height(_matrix,xbcl,zbcl)
      set matrix height _matrix,xbcl,zbcl,_ypos
     Next zbcl
   Next xbcl
  update matrix _MATRIX
  set matrix _MATRIX,1-_WireFrame,_Transparency,_Cull,1-_TextureFiltering,_LightSensitive,_FogSensitive,_AmbientSensitive
;  If _ghostmode=1 then ghost matrix on _MATRIX Else ghost matrix off _MATRIX
;  If _WireFrame=1 then Set matrix wireFrame off _MATRIX Else Set matrix wireFrame on _MATRIX
;  update matrix _MATRIX
  position camera xc,yc,zc
  rotate camera xa,ya,za
  If bitmap exist(2)=1 then delete bitmap 2
;  If image exist(65536-_Matrix)=1 then delete image 65536-_Matrix
 EndFunction
;
;
; ****************************************************************************************************************
Function _Load_Image(_Fichier$,_Img)
  _num=31
  If bitmap exist(_num)=1 then delete bitmap _num : sync
  If file exist(_fichier$)=1
    load bitmap _fichier$,_num : sync
    set current bitmap _num
    _image_x(_Img)=bitmap width(_num)
    _image_y(_Img)=bitmap height(_num)
;    get image _Img,0,0,_image_x(_Img),_image_y(_Img),1
    Load Image _fichier$,_Img,1
    delete bitmap _num
    set current bitmap 0
   EndIf
 EndFunction
;
;
; ****************************************************************************************************************
Function _Paste_scaled_Image(_img,X,Y,X2,Y2,target)
  If bitmap exist(3)=1 then delete bitmap 3
  create bitmap 3,512,512 : set current bitmap 3
  paste image _img,0,0
  xs=_image_x(_img) : If xs<1 then xs=16
  ys=_image_y(_img) : If ys<1 then ys=16
  copy bitmap 3,0,0,xs,ys,target,x,y,x2,y2
  sync : delete bitmap 3 : sync
 EndFunction
;
;
;
; ****************************************************************************************************************
function _3DME_set_fog(R,G,B,DIST)
  _3dme_temp(8)=R : _3dme_temp(9)=G : _3dme_temp(10)=B : _3dme_temp(11)=DIST
  fog on
  fog color RGB(R,G,B)
  fog distance DIST
 endfunction
;
;
; ****************************************************************************************************************
function _3DME_initialize_zones()
  ; Sauvegarde des valeurs de FOG par défaut
  _3dme_temp(4)=_obj(1,9) : _3dme_temp(5)=_obj(1,10) : _3dme_temp(6)=_obj(1,11) : _3dme_temp(7)=_obj(1,12)
  _3DME_initialize_skybox()
 endfunction
;
;
; ****************************************************************************************************************
function _3DME_check_all_zones()
  _check=_3DME_check_zone_inout()
  If _check>0 then _3DME_check_zone_action(_check)
  _3DME_position_skybox()
 endfunction
;
;
; ****************************************************************************************************************
function _3DME_quit_all_zones()
  For boucle=1 To _last_zone
    If _zone_inside(boucle)=1
      _zone_inside(boucle)=0
      _zone_entrance(boucle)=0
      _zone_sortance(boucle)=1
     EndIf
   Next boucle
  _sortance=1
  _3DME_check_zone_action(2) : ; on force la sortie de toute les zones.
  For boucle=1 To _last_zone
    _zone_sortance(boucle)=0
   Next boucle
 endfunction
;
;
; ****************************************************************************************************************
function _3DME_initialize_skybox()
  _skybox_zone=0
  For bcl=1 To _zone_data(1)
    If _zone_info(bcl,1)=6 then _skybox_zone=bcl
   Next bcl
  ; SI IL EXISTE UNE ZONE DE SKYBOX_ZONE ALORS ON NOTE LES 16 OBJETS ( MAX QU'ELLE CONTIENT )
  If _skybox_zone>0
    xzp=_zone_info(_skybox_zone,2) : yzp=_zone_info(_skybox_zone,3) : zzp=_zone_info(_skybox_zone,4)
    xzs=_zone_info(_skybox_zone,5) : yzs=_zone_info(_skybox_zone,6) : zzs=_zone_info(_skybox_zone,7)
    _sky_object=0
    For boucle=2 To _obj(1,1)
      xop=_obj(boucle,1) : yop=_obj(boucle,2) : zop=_obj(boucle,3)
      If xop>(xzp-(xzs/2)) And xop<(xzp+(xzs/2))
        If yop>(yzp-(yzs/2)) And yop<(yzp+(yzs/2))
          If zop>(zzp-(zzs/2)) And zop<(zzp+(zzs/2))
            If _sky_object<16
              inc _sky_object
              _skybox_object(_sky_object)=boucle
              ; SET OBJECT Object Number, Wireframe, Transparency, Cull, Filter, Light, Fog, Ambient
;              set object boucle,1,1,0,0,0,1,0
             EndIf
           EndIf
         EndIf
       EndIf
     Next boucle
    _zone_data(2)=_skybox_zone
    _zone_data(3)=_sky_object
   EndIf
 endfunction
;
;
; ****************************************************************************************************************
function _3DME_position_skybox()
  If _zone_data(2)>0
    set cursor 0,0
    ink RGB(255,255,255),RGB(0,0,0)
    xzp=_zone_info(_zone_data(2),2) : yzp=_zone_info(_zone_data(2),3) : zzp=_zone_info(_zone_data(2),4)
    If _zone_data(3)>0
      For boucle=1 To _zone_data(3)
        _sky_obj=_skybox_object(boucle)
        xop=_obj(_sky_obj,1) : yop=_obj(_sky_obj,2) : zop=_obj(_sky_obj,3)
        xop=xop-xzp : yop=yop-yzp : zop=zop-zzp
        xop=xop+camera position x()
        yop=yop+camera position y()
        zop=zop+camera position z()
        position object _sky_obj,xop,yop,zop
      Next boucle
     EndIf
   EndIf
 endfunction
;
;
; ****************************************************************************************************************
function _3DME_check_zone_inout()
  _entrance=0 : _sortance=0
  If _zone_data(1)>0
    xc=camera position x() : yc=camera position y() : zc=camera position z()
    For bcl=1 To _zone_data(1)
      xzp=_zone_info(bcl,2) : yzp=_zone_info(bcl,3) : zzp=_zone_info(bcl,4)
      xzs=_zone_info(bcl,5) : yzs=_zone_info(bcl,6) : zzs=_zone_info(bcl,7)
      ; Si on est dans une zone , calcule si on viens juste d'en sortir.
      _zone_sortance(bcl)=0
      If _zone_inside(bcl)=1
        If xc<(xzp-(xzs/2)) Or xc>(xzp+(xzs/2))
          _zone_sortance(bcl)=1 : _zone_inside(bcl)=0 : _zone_entrance(bcl)=0 : _sortance=1
         EndIf
        If yc<(yzp-(yzs/2)) Or yc>(yzp+(yzs/2))
          _zone_sortance(bcl)=1 : _zone_inside(bcl)=0 : _zone_entrance(bcl)=0 : _sortance=1
         EndIf
        If zc<(zzp-(zzs/2)) Or zc>(zzp+(zzs/2))
          _zone_sortance(bcl)=1 : _zone_inside(bcl)=0 : _zone_entrance(bcl)=0 : _sortance=1
         EndIf
       EndIf
      ; Si on viens juste de rentrer dans une zone , on reste dedans mais on désactive le flag d'entrée.
      If _zone_entrance(bcl)=1
        _zone_entrance(bcl)=0
        _zone_inside(bcl)=1
       EndIf
      ; Calcule si l'on rentre dans une zone d'action.
      If _zone_inside(bcl)=0
        If xc>(xzp-(xzs/2)) And xc<(xzp+(xzs/2))
          If yc>(yzp-(yzs/2)) And yc<(yzp+(yzs/2))
            If zc>(zzp-(zzs/2)) And zc<(zzp+(zzs/2))
              _zone_entrance(bcl)=1 : _entrance=1
             EndIf
           EndIf
         EndIf
       EndIf
      If _zone_inside(bcl)=1 then _inside=1
     Next boucle
   EndIf
   _retour=_entrance+(_sortance*2)+(_inside*4)
 endfunction _retour
;
;
; ****************************************************************************************************************
; Activate action For dedicaced zones.
function _3DME_check_zone_action(_check)
  _entrance=0 : _sortance=0
  If _zone_data(1)>0
    If _check>3
      _inside=1 : _check=_check-4
     EndIf
    If _check>1
      _sortance=1 : _check=_check-2
     EndIf
    _entrance=_check
    ; ON VERIFIE ET EXECUTE LES FONCTIONS D'ENTREE DE ZONES NECESSAIRES.
    For boucle=1 To _zone_data(1)
      If _zone_entrance(boucle)=1
        _zone_number=boucle
        If _zone_info(boucle,1)=2 then _3DMESys_enter_water_zone(_zone_number)
        If _zone_info(boucle,1)=3 then _3DMESys_enter_music_zone(_zone_number)
        If _zone_info(boucle,1)=4 then _3DMESys_enter_sound_zone(_zone_number)
       EndIf
      If _zone_inside(boucle)=1
        _zone_number=boucle
        If _zone_info(boucle,1)=1 then _3DMESys_inside_fog_zone(_zone_number)
        If _zone_info(boucle,1)=2 then _3DMESys_inside_water_zone()
        If _zone_info(boucle,1)=5 then _3DMESys_inside_light_zone(_zone_number)
       EndIf
      If _zone_sortance(boucle)=1
        _zone_number=boucle
        If _zone_info(boucle,1)=2 then _3DMESys_leave_water_zone()
       EndIf
     Next boucle
   EndIf
 endfunction
;
;
; ****************************************************************************************************************
; Set of 3 functions that control water effects ( entering zone , leaving zone , inside zone )
function _3DMESys_enter_water_zone(_zone_number)
  wat=65535-256
  If object exist(wat)=1 then delete object wat
  xpos=camera position x() : ypos=camera position y() : zpos=camera position z()
  make object sphere wat,64
  position object wat,xpos,ypos,zpos
  color object wat,RGB(_zone_info(_zone_number,8),_zone_info(_zone_number,9),_zone_info(_zone_number,10))
  ghost object on wat
  fade object wat,3000
  disable object zdepth wat
  set object collision off wat
  ; Texturage de l'objet d'eau
  If _zone_info(_zone_number,17)>0
    imgnum=_zone_info(_zone_number,17)+_3dme_temp(12)
    If image exist(imgnum)=1 then texture object wat,imgnum
   EndIf
  ; SET OBJECT Object Number, Wireframe, Transparency, Cull, Filter, Light, Fog, Ambient
  set object wat,1,1,0
 endfunction
function _3DMESys_inside_water_zone
  wat=65535-256
  xdec=_3dme_temp(1) : ydec=_3dme_temp(2) : zdec=_3dme_temp(3)
  xdec=wrapvalue(xdec+1) : ydec=wrapvalue(ydec+1) : zdec=wrapvalue(zdec+2)
  xpos=camera position x() : ypos=camera position y() : zpos=camera position z()
  position object wat,xpos,ypos,zpos
  _3dme_temp(1)=xdec : _3dme_temp(2)=ydec : _3dme_temp(3)=zdec
  xdec=wrapvalue(camera angle x()+xdec)
  ydec=wrapvalue(camera angle y()+ydec)
  zdec=wrapvalue(camera angle z()+zdec)
  rotate object wat,xdec,ydec,zdec
 endfunction
function _3DMESys_leave_water_zone
  wat=65535-256
  If object exist(wat)=1 then delete object wat
 endfunction
;
;
; ****************************************************************************************************************
; Set of function For Music Zome
function _3DMESys_enter_music_zone(_zone_number)
  ; On désactive la musique qui est actuellement jouée.
  If music exist(1)=1
    stop music 1
    delete music 1
   EndIf
  If file exist(_FilesPath$(6)+_zone_filename$(_zone_number))=1
    load music _FilesPath$(6)+_zone_filename$(_zone_number),1
    play music 1
   EndIf
 endfunction
;
;
; ****************************************************************************************************************
; Set of function For Sound Zome
function _3DMESys_enter_sound_zone(_zone_number)
  If sound exist(1)=1
    stop sound 1
    delete sound 1
   EndIf
  If file exist(_FilesPath$(7)+_zone_filename$(_zone_number))=1
    load sound _FilesPath$(7)+_zone_filename$(_zone_number),1
    play sound 1
   EndIf
 endfunction
;
;
; ****************************************************************************************************************
; Set of function For Light Zone
function _3DMESys_inside_light_zone(_zone_number)
  redz=_zone_info(_zone_number,8) : greenz=_zone_info(_zone_number,9) : bluez=_zone_info(_zone_number,10)
  ligz=_zone_info(_zone_number,11)
  red=_3dme_temp(4) : green=_3dme_temp(5) : blue=_3dme_temp(6) : lig=_3dme_temp(7)
  If red=redz And green=greenz And blue=bluez And lig=ligz then changes=0 Else changes=1
  If red>redz then dec red,1
  If red<redz then inc red,1
  If green>greenz then dec green,1
  If green<greenz then inc green,1
  If blue>bluez then dec blue,1
  If blue<bluez then inc blue,1
  If lig>ligz then dec lig,1
  If lig<ligz then inc lig,1
  If changes=1
    color ambient light RGB(red,green,blue)
    set ambient light lig
   EndIf
  _3dme_temp(4)=red : _3dme_temp(5)=green : _3dme_temp(6)=blue : _3dme_temp(7)=lig
 endfunction
;
;
; ****************************************************************************************************************
; Sets of functions For Fog Zone
function _3DMESys_inside_fog_zone(_zone_number)
  redz=_zone_info(_zone_number,8) : greenz=_zone_info(_zone_number,9) : bluez=_zone_info(_zone_number,10)
  disz=_zone_info(_zone_number,11)
  red=_3dme_temp(8) : green=_3dme_temp(9) : blue=_3dme_temp(10) : dis=_3dme_temp(11)
  If red=redz And green=greenz And blue=bluez And dis=disz then changes=0 Else changes=1
  If red>redz then dec red,1
  If red<redz then inc red,1
  If green>greenz then dec green,1
  If green<greenz then inc green,1
  If blue>bluez then dec blue,1
  If blue<bluez then inc blue,1
  If dis>disz then dec dis,1
  If dis<disz then inc dis,1
  If changes=1
    fog color RGB(red,green,blue)
    fog distance dis
   EndIf
  _3dme_temp(8)=red : _3dme_temp(9)=green : _3dme_temp(10)=blue : _3dme_temp(11)=dis
 endfunction
;
;
; ****************************************************************************************************************
Function _3DMESys_replace_skyobject()
  _skybox_zone=_zone_data(2)
  _skybox_object=_zone_data(3)
  If _skybox_zone>0
    xzp=_zone_info(_skybox_zone,2) : yzp=_zone_info(_skybox_zone,3) : zzp=_zone_info(_skybox_zone,4)
    If _skybox_object>0
      For boucle=1 To _skybox_object
        _sky_object=_skybox_object(boucle)
        xop=_obj(_sky_object,1) : yop=_obj(_sky_object,2) : zop=_obj(_sky_object,3)
        position object _sky_object,xop,yop,zop
       Next boucle
     EndIf
   EndIf
 EndFunction

; function save_bmp(bmp_number,filename$)
;    current = current bitmap()
;    set current bitmap bmp_number
;    lock pixels
;    call dll 1,"save_bmp",filename$,get pixels pointer(), bitmap width(bmp_number),bitmap height(bmp_number),bitmap depth(bmp_number),get pixels pitch()
;    unlock pixels
;    set current bitmap current
; endfunction

; IDE Options = PureBasic v4.00 (Windows - x86)
; CursorPosition = 163
; FirstLine = 127
; Folding = -