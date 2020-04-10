; Dark Basic Personnal.dll
Global Dim Scores.l( 32 ) : Global Dim Names$( 32 ) : Global Dim Levels.l( 32 )
Global StringOut.l : Global TextOut.s

ProcedureCDLL DSK_AddHighScore( Score.l, nomme.l , Level.l )
;  If nomme <> 0
;    TempName.s = PeekS( nomme )
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, nomme , 0 )
;   Else
;    TempName = "--------"
;   EndIf
  TempName.s = MyDeleteString( nomme )
  If TempName = "" : TempName ="--------" : EndIf
  If DSKInitialized = 1
    Position.l = 0
    Repeat
      Position = Position + 1
     Until Score.l > Scores( Position ) Or Position = 33
    If Position < 33
      If Position < 31
        For XLoop = 31 To Position Step - 1
          Scores( XLoop ) = Scores( XLoop - 1 )
          Names$( XLoop ) = Names$( XLoop - 1 )
          Levels( XLoop ) = Levels( XLoop - 1 ) 
         Next XLoop
       Else
        Scores( 32 ) = Scores( 31 )
        Names$( 32 ) = Names$( 31 )
        Levels( 32 ) = Levels( 31 )
       EndIf
      Scores( Position ) = Score
      Names$( Position ) = TempName
      Levels( Position ) = Level
     Else
      NULL$ = PeekS( nomme )
     EndIf   
   EndIf
 EndProcedure

ProcedureCDLL.l DSK_GetHighScore( Position.l )
  If DSKInitialized = 1
    If Position > 0 And Position < 33
      Result = Scores( Position )
     Else
      Result = -1
     EndIf
   Else
    Result = -1
   EndIf
  ProcedureReturn Result
 EndProcedure

ProcedureCDLL.l DSK_GetHighScoreName( Test.l, temp1.l )
;  If Test <> 0
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, Test, 0 ) ; CreateString
;   EndIf
  TestNULL.s = MyDeleteString( Test )
  Temp.l = 0
  If DSKInitialized = 1
    If temp1< 1 Or temp1> 32 : temp1= 0 : EndIf
    TextOut.s = Names$( temp1 )
    If TextOut = "" : TextOut = "--------" : EndIf
    CallCFunctionFast(*GlobPtr\CreateDeleteString, @Temp, Len( TextOut ) + 1 ) ; CreateString
    PokeS( temp , TextOut )
   Else
    SError.s = "DBProExtends.DLL : File DLL Not Initialized"
    CallCFunctionFast( *GlobPtr\CreateDeleteString, @Temp, Len( SError ) + 1 )
    PokeS( temp , SError )
   EndIf
  ProcedureReturn temp
 EndProcedure

ProcedureCDLL.l DSK_GetHighScoreLevel( Position.l )
  If DSKInitialized = 1
    If Position > 0 And Position < 33
      Result = Levels( Position )
     Else
      Result = -1
     EndIf
   Else
    Result = -1
   EndIf
  ProcedureReturn Result
 EndProcedure

ProcedureCDLL DSK_SaveHighScore( Fichier.l )
  If Fichier <> 0
    TextOut.s = MyDeleteString( Fichier )
;    TextOut = PeekS( Fichier )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, Fichier , 0 )
    If DSKInitialized = 1
      If TextOut = "" : TextOut = "highscores.dat" : EndIf
      OpenFile( 1, TextOut )
      WriteStringN( 1, "DBPExtendsPack_highscores" )
      For XLoop = 1 To 32
        WriteLong( 1, Scores( XLoop ) )
        WriteLong( 1, Levels( XLoop ) )
        WriteStringN( 1, Names$( XLoop ) )
       Next XLoop
      WriteStringN( 1, "_EOF" )
      CloseFile(1)
     EndIf
   EndIf
 EndProcedure
 
ProcedureCDLL DSK_LoadHighScore( Fichier.l )
  If Fichier <> 0
    TextOut.s = MyDeleteString( Fichier )
;    TextOut = PeekS( Fichier )
;    CallCFunctionFast(*GlobPtr\CreateDeleteString, Fichier , 0 )
    If DSKInitialized = 1
      If TextOut = "" : TextOut = "highscores.dat" : EndIf
      If ReadFile( 1, TextOut )
        _HEADER$ = ReadString( 1 )
        If _HEADER$ = "DBPExtendsPack_highscores"
          For XLoop = 1 To 32
            Scores( XLoop ) = ReadLong( 1 )
            Levels( XLoop ) = ReadLong( 1 )
            Names$( XLoop ) = ReadString( 1 )
           Next XLoop
         EndIf
        CloseFile( 1 )
       EndIf
     EndIf
   EndIf
 EndProcedure

ProcedureCDLL DSK_ClearHighScore()
  If DSKInitialized = 1
    For XLoop = 1 To 32
      Scores( XLoop ) = 0
      Levels( XLoop ) = 0
      Names$( XLoop ) = "--------"
     Next XLoop
   EndIf
 EndProcedure
 

; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 12
; FirstLine = 10
; Folding = --