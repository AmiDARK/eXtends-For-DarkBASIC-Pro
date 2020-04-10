; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_AnimationStruct
  LoadAnimation.l : PlayAnimation.l : LoopAnimation.l : DeleteAnimation.l
  StopAnimation.l : PauseAnimation.l : ResumeAnimation.l : PlayAnimation1.l
  PlayAnimation2.l : PlayAnimationToBitmap.l : LoopAnimationToBitmap.l : PlaceAnimation.l
  AnimationExist.l : AnimationHeight.l : AnimationLooping.l : AnimationPaused.l
  AnimationPlaying.l : AnimationPositionX.l : AnimationPositionY.l : AnimationWidth.l
  SetAnimationVolume.l : SetAnimationSpeed.l : AnimationVolume.l : AnimationSpeed.l
  PlayAnimationToImage.l : LoadDVDAnimation.l : SetDVDChapter.l : TotalDVDChapters.l
 EndStructure

Procedure.l CheckAnimation()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProAnimationDebug.dll")
    DB_Animation\LoadAnimation= AIsFunction( 1 , "?LoadAnimation@@YAXKH@Z" ) ; 1 LOAD ANIMATION Filename,Animation Number
    DB_Animation\PlayAnimation= AIsFunction( 1 , "?PlayAnimation@@YAXH@Z" ) ; 2 PLAY ANIMATION Animation Number
    DB_Animation\LoopAnimation= AIsFunction( 1 , "?LoopAnimation@@YAXH@Z" ) ; 3 LOOP ANIMATION Animation Number
    DB_Animation\DeleteAnimation= AIsFunction( 1 , "?DeleteAnimation@@YAXH@Z" ) ; 4 DELETE ANIMATION Animation Number
    DB_Animation\StopAnimation= AIsFunction( 1 , "?StopAnimation@@YAXH@Z" ) ; 5 STOP ANIMATION Animation Number
    DB_Animation\PauseAnimation= AIsFunction( 1 , "?PauseAnimation@@YAXH@Z" ) ; 6 PAUSE ANIMATION Animation Number
    DB_Animation\ResumeAnimation= AIsFunction( 1 , "?ResumeAnimation@@YAXH@Z" ) ; 7 RESUME ANIMATION Animation Number
    DB_Animation\PlayAnimation1= AIsFunction( 1 , "?PlayAnimation@@YAXHHH@Z" ) ; 8 PLAY ANIMATION Animation Number,X,Y
    DB_Animation\PlayAnimation2= AIsFunction( 1 , "?PlayAnimation@@YAXHHHHH@Z" ) ; 9 PLAY ANIMATION Animation Number,X,Y,X,Y
    DB_Animation\PlayAnimationToBitmap= AIsFunction( 1 , "?PlayAnimationToBitmap@@YAXHHHHHH@Z" ) ; 10 PLAY ANIMATION Animation Number,Bitmap Number,X,Y,X,Y
    DB_Animation\LoopAnimationToBitmap= AIsFunction( 1 , "?LoopAnimationToBitmap@@YAXHHHHHH@Z" ) ; 11 LOOP ANIMATION Animation Number,Bitmap Number,X,Y,X,Y
    DB_Animation\PlaceAnimation= AIsFunction( 1 , "?PlaceAnimation@@YAXHHHHH@Z" ) ; 12 PLACE ANIMATION Animation Number,X,Y,X,Y
    DB_Animation\AnimationExist= AIsFunction( 1 , "?AnimationExist@@YAHH@Z" ) ; 13 ANIMATION EXIST Animation Number
    DB_Animation\AnimationHeight= AIsFunction( 1 , "?AnimationHeight@@YAHH@Z" ) ; 14 ANIMATION HEIGHT Animation Number
    DB_Animation\AnimationLooping= AIsFunction( 1 , "?AnimationLooping@@YAHH@Z" ) ; 15 ANIMATION LOOPING Animation Number
    DB_Animation\AnimationPaused= AIsFunction( 1 , "?AnimationPaused@@YAHH@Z" ) ; 16 ANIMATION PAUSED Animation Number
    DB_Animation\AnimationPlaying= AIsFunction( 1 , "?AnimationPlaying@@YAHH@Z" ) ; 17 ANIMATION PLAYING Animation Number
    DB_Animation\AnimationPositionX= AIsFunction( 1 , "?AnimationPositionX@@YAHH@Z" ) ; 18 ANIMATION POSITION X Animation Number
    DB_Animation\AnimationPositionY= AIsFunction( 1 , "?AnimationPositionY@@YAHH@Z" ) ; 19 ANIMATION POSITION Y Animation Number
    DB_Animation\AnimationWidth= AIsFunction( 1 , "?AnimationWidth@@YAHH@Z" ) ; 20 ANIMATION WIDTH Animation Number
    DB_Animation\SetAnimationVolume= AIsFunction( 1 , "?SetAnimationVolume@@YAXHH@Z" ) ; 21 SET ANIMATION VOLUME Animation Number, Volume
    DB_Animation\SetAnimationSpeed= AIsFunction( 1 , "?SetAnimationSpeed@@YAXHH@Z" ) ; 22 SET ANIMATION SPEED Animation Number, Speed
    DB_Animation\AnimationVolume= AIsFunction( 1 , "?AnimationVolume@@YAHH@Z" ) ; 23 ANIMATION VOLUME Animation Number
    DB_Animation\AnimationSpeed= AIsFunction( 1 , "?AnimationSpeed@@YAHH@Z" ) ; 24 ANIMATION SPEED Animation Number
    DB_Animation\PlayAnimationToImage= AIsFunction( 1 , "?PlayAnimationToImage@@YAXHHHHHH@Z" ) ; 25 PLAY ANIMATION TO IMAGE Animation Number,Image,Left,Top,Right,Bottom
    DB_Animation\LoadDVDAnimation= AIsFunction( 1 , "?LoadDVDAnimation@@YAXH@Z" ) ; 26 LOAD DVD ANIMATION Animation Number
    DB_Animation\SetDVDChapter= AIsFunction( 1 , "?SetDVDChapter@@YAXHHH@Z" ) ; 27 SET DVD CHAPTER Animation Number, Title Number, Chapter Number
    DB_Animation\TotalDVDChapters= AIsFunction( 1 , "?TotalDVDChapters@@YAHHH@Z" ) ; 28 TOTAL DVD CHAPTERS Animation Number, Title Number
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBLoadAnimation( Filename.s, AnimationNumber.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Animation\LoadAnimation, FilenamePTR, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\PlayAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\LoopAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\DeleteAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBStopAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\StopAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPauseAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\PauseAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBResumeAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\ResumeAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayAnimation1( AnimationNumber.l, X.l, Y.l )
  CallCFunctionFast( *DB_Animation\PlayAnimation1, AnimationNumber, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayAnimation2( AnimationNumber.l, X.l, Y.l, X.l, Y.l )
  CallCFunctionFast( *DB_Animation\PlayAnimation2, AnimationNumber, X, Y, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBPlayAnimationToBitmap( AnimationNumber.l, BitmapNumber.l, X.l, Y.l, X.l, Y.l )
  CallCFunctionFast( *DB_Animation\PlayAnimationToBitmap, AnimationNumber, BitmapNumber, X, Y, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBLoopAnimationToBitmap( AnimationNumber.l, BitmapNumber.l, X.l, Y.l, X.l, Y.l )
  CallCFunctionFast( *DB_Animation\LoopAnimationToBitmap, AnimationNumber, BitmapNumber, X, Y, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure DBPlaceAnimation( AnimationNumber.l, X.l, Y.l, X.l, Y.l )
  CallCFunctionFast( *DB_Animation\PlaceAnimation, AnimationNumber, X, Y, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationExist( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationExist, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationHeight( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationHeight, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationLooping( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationLooping, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationPaused( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationPaused, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationPlaying( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationPlaying, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationPositionX( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationPositionX, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationPositionY( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationPositionY, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationWidth( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationWidth, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSetAnimationVolume( AnimationNumber.l, Volume.l )
  CallCFunctionFast( *DB_Animation\SetAnimationVolume, AnimationNumber, Volume )
 EndProcedure
;
; *********************************************************************
Procedure DBSetAnimationSpeed( AnimationNumber.l, Speed.l )
  CallCFunctionFast( *DB_Animation\SetAnimationSpeed, AnimationNumber, Speed )
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationVolume( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationVolume, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBAnimationSpeed( AnimationNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\AnimationSpeed, AnimationNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBPlayAnimationToImage( AnimationNumber.l, Image.l, Left.l, Top.l, Right.l, Bottom.l )
  CallCFunctionFast( *DB_Animation\PlayAnimationToImage, AnimationNumber, Image, Left, Top, Right, Bottom )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadDVDAnimation( AnimationNumber.l )
  CallCFunctionFast( *DB_Animation\LoadDVDAnimation, AnimationNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBSetDVDChapter( AnimationNumber.l, TitleNumber.l, ChapterNumber.l )
  CallCFunctionFast( *DB_Animation\SetDVDChapter, AnimationNumber, TitleNumber, ChapterNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBTotalDVDChapters( AnimationNumber.l, TitleNumber.l )
  Retour.l = CallCFunctionFast( *DB_Animation\TotalDVDChapters, AnimationNumber, TitleNumber )
  ProcedureReturn Retour
 EndProcedure
;

