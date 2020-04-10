; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure CoreStruct
  PrintR.l : PrintO.l : CeilFF.l : FloorFF.l
  PrintS.l : Print0.l : PrintCR.l : PrintCO.l
  PrintCS.l : Cls.l : SetCursor.l : InputR.l
  InputO.l : InputS.l : RndLL.l : GetDXVer.l
  TimerL.l : CosFF.l : InkeyS.l : SyncSleep.l
  SyncOn.l : SyncOff.l : Sync.l : SyncRate.l
  RestoreD.l : ReadR.l : ReadO.l : ReadS.l
  AcosFF.l : AsinFF.l : AtanFF.l : Atan2FFF.l
  SinFF.l : TanFF.l : HcosFF.l : HsinFF.l
  HtanFF.l : SqrtFF.l : Randomize.l : AbsFF.l
  Cl.l : GetDate.l : GetTime.l : IntLF.l
  SleepL.l : WaitForKey.l : WaitForKey1.l : WaitForMouse.l
  WaitForMouse1.l : SleepL1.l : ExpFF.l : SaveArray.l
  LoadArray.l : ReadL.l : ReadF.l : ReadB.l
  ReadB1.l : ReadW.l : ReadD.l : FastSync.l
  PrintR1.l : PrintCR1.l : CurveValueFFFF.l : WrapValueFF.l
  NewXValueFFFF.l : NewYValueFFFF.l : NewZValueFFFF.l : CurveAngleFFFF.l
  ArrayIndexToBottom.l : ArrayIndexToTop.l : ArrayIndexValid.l : NextArrayIndex.l
  PreviousArrayIndex.l : ArrayCount.l : ArrayInsertAtBottom.l : ArrayInsertAtBottom1.l
  ArrayInsertAtTop.l : ArrayInsertAtTop1.l : ArrayInsertAtElement.l : ArrayDeleteElement.l
  ArrayDeleteElement1.l : EmptyArray.l : AddToQueue.l : RemoveFromQueue.l
  PushToStack.l : PopFromStack.l : ArrayIndexToQueue.l : ArrayIndexToStack.l
  DrawToBack.l : DrawToFront.l : DrawSpritesFirst.l : DrawSpritesLast.l
  FillByteMemory.l : CopyByteMemory.l : MakeByteMemory.l : DeleteByteMemory.l
  Break.l : BreakS.l : Restore.l : FreeStringSS.l
  AlwaysActiveOn.l : AlwaysActiveOff.l : PerformanceTimer.l : 
 EndStructure
Global Core.CoreStruct

Procedure.l CheckCore()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProCore.dll")
    Core\PrintR= AIsFunction( 1 , "?PrintR@@YAX_J@Z" ) ; 1 PRINT Print Statements
    Core\PrintO= AIsFunction( 1 , "?PrintO@@YAXN@Z" ) ; 2 PRINT Print Statements
    Core\CeilFF= AIsFunction( 1 , "?CeilFF@@YAKM@Z" ) ; 3 CEIL Value
    Core\FloorFF= AIsFunction( 1 , "?FloorFF@@YAKM@Z" ) ; 4 FLOOR Value
    Core\PrintS= AIsFunction( 1 , "?PrintS@@YAXPAD@Z" ) ; 5 PRINT Print Statements
    Core\Print0= AIsFunction( 1 , "?Print0@@YAXXZ" ) ; 6 PRINT 
    Core\PrintCR= AIsFunction( 1 , "?PrintCR@@YAX_J@Z" ) ; 7 PRINTC Print Statements
    Core\PrintCO= AIsFunction( 1 , "?PrintCO@@YAXN@Z" ) ; 8 PRINTC Print Statements
    Core\PrintCS= AIsFunction( 1 , "?PrintCS@@YAXPAD@Z" ) ; 9 PRINTC Print Statements
    Core\Cls= AIsFunction( 1 , "?Cls@@YAXXZ" ) ; 10 CLS 
    Core\SetCursor= AIsFunction( 1 , "?SetCursor@@YAXHH@Z" ) ; 11 SET CURSOR X,Y
    Core\InputR= AIsFunction( 1 , "?InputR@@YA_JXZ" ) ; 12 INPUT Variable
    Core\InputO= AIsFunction( 1 , "?InputO@@YANXZ" ) ; 13 INPUT Variable
    Core\InputS= AIsFunction( 1 , "?InputS@@YAKK@Z" ) ; 14 INPUT Variable
    Core\RndLL= AIsFunction( 1 , "?RndLL@@YAHH@Z" ) ; 16 RND Range Value
    Core\GetDXVer= AIsFunction( 1 , "?GetDXVer$@@YAKK@Z" ) ; 17 GET DX VERSION$ 
    Core\TimerL= AIsFunction( 1 , "?TimerL@@YAHXZ" ) ; 18 TIMER 
    Core\CosFF= AIsFunction( 1 , "?CosFF@@YAKM@Z" ) ; 19 COS Value
    Core\InkeyS= AIsFunction( 1 , "?InkeyS@@YAKK@Z" ) ; 21 INKEY$ 
    Core\SyncSleep= AIsFunction( 1 , "?SyncSleep@@YAXH@Z" ) ; 22 SYNC SLEEP Flag Processor Friendly
    Core\SyncOn= AIsFunction( 1 , "?SyncOn@@YAXXZ" ) ; 23 SYNC ON 
    Core\SyncOff= AIsFunction( 1 , "?SyncOff@@YAXXZ" ) ; 24 SYNC OFF 
    Core\Sync= AIsFunction( 1 , "?Sync@@YAXXZ" ) ; 25 SYNC 
    Core\SyncRate= AIsFunction( 1 , "?SyncRate@@YAXH@Z" ) ; 26 SYNC RATE Rate
    Core\RestoreD= AIsFunction( 1 , "?RestoreD@@YAXK@Z" ) ; 53 RESTORE String
    Core\ReadR= AIsFunction( 1 , "?ReadR@@YA_JXZ" ) ; 60 READ Varable
    Core\ReadO= AIsFunction( 1 , "?ReadO@@YANXZ" ) ; 61 READ Varable
    Core\ReadS= AIsFunction( 1 , "?ReadS@@YAKK@Z" ) ; 62 READ Varable
    Core\AcosFF= AIsFunction( 1 , "?AcosFF@@YAKM@Z" ) ; 64 ACOS Value
    Core\AsinFF= AIsFunction( 1 , "?AsinFF@@YAKM@Z" ) ; 65 ASIN Value
    Core\AtanFF= AIsFunction( 1 , "?AtanFF@@YAKM@Z" ) ; 66 ATAN Value
    Core\Atan2FFF= AIsFunction( 1 , "?Atan2FFF@@YAKMM@Z" ) ; 67 ATANFULL Distance X, Distance Y
    Core\SinFF= AIsFunction( 1 , "?SinFF@@YAKM@Z" ) ; 68 SIN Value
    Core\TanFF= AIsFunction( 1 , "?TanFF@@YAKM@Z" ) ; 69 TAN Value
    Core\HcosFF= AIsFunction( 1 , "?HcosFF@@YAKM@Z" ) ; 70 HCOS Value
    Core\HsinFF= AIsFunction( 1 , "?HsinFF@@YAKM@Z" ) ; 71 HSIN Value
    Core\HtanFF= AIsFunction( 1 , "?HtanFF@@YAKM@Z" ) ; 72 HTAN Value
    Core\SqrtFF= AIsFunction( 1 , "?SqrtFF@@YAKM@Z" ) ; 73 SQRT Value
    Core\Randomize= AIsFunction( 1 , "?Randomize@@YAXH@Z" ) ; 74 RANDOMIZE Seed Value
    Core\AbsFF= AIsFunction( 1 , "?AbsFF@@YAKM@Z" ) ; 75 ABS Value
    Core\Cl= AIsFunction( 1 , "?Cl$@@YAKK@Z" ) ; 76 CL$ 
    Core\GetDate= AIsFunction( 1 , "?GetDate$@@YAKK@Z" ) ; 77 GET DATE$ 
    Core\GetTime= AIsFunction( 1 , "?GetTime$@@YAKK@Z" ) ; 78 GET TIME$ 
    Core\IntLF= AIsFunction( 1 , "?IntLF@@YAKM@Z" ) ; 79 INT Value
    Core\SleepL= AIsFunction( 1 , "?SleepL@@YAXH@Z" ) ; 80 SLEEP Number
    Core\WaitForKey= AIsFunction( 1 , "?WaitForKey@@YAXXZ" ) ; 81 WAIT KEY 
    Core\WaitForKey1= AIsFunction( 1 , "?WaitForKey@@YAXXZ" ) ; 82 SUSPEND FOR KEY 
    Core\WaitForMouse= AIsFunction( 1 , "?WaitForMouse@@YAXXZ" ) ; 83 WAIT MOUSE 
    Core\WaitForMouse1= AIsFunction( 1 , "?WaitForMouse@@YAXXZ" ) ; 84 SUSPEND FOR MOUSE 
    Core\SleepL1= AIsFunction( 1 , "?SleepL@@YAXH@Z" ) ; 85 WAIT 
    Core\ExpFF= AIsFunction( 1 , "?ExpFF@@YAKM@Z" ) ; 87 EXP Value
    Core\SaveArray= AIsFunction( 1 , "?SaveArray@@YAXPADK@Z" ) ; 90 SAVE ARRAY Filename, Array Name(0)
    Core\LoadArray= AIsFunction( 1 , "?LoadArray@@YAXPADK@Z" ) ; 91 LOAD ARRAY Filename, Array Name(0)
    Core\ReadL= AIsFunction( 1 , "?ReadL@@YAKXZ" ) ; 93 READ Value
    Core\ReadF= AIsFunction( 1 , "?ReadF@@YAKXZ" ) ; 94 READ Value
    Core\ReadB= AIsFunction( 1 , "?ReadB@@YAEXZ" ) ; 95 READ Value
    Core\ReadB1= AIsFunction( 1 , "?ReadB@@YAEXZ" ) ; 96 READ Variable
    Core\ReadW= AIsFunction( 1 , "?ReadW@@YAGXZ" ) ; 97 READ Variable
    Core\ReadD= AIsFunction( 1 , "?ReadD@@YAKXZ" ) ; 98 READ Variable
    Core\FastSync= AIsFunction( 1 , "?FastSync@@YAXXZ" ) ; 99 FASTSYNC 
    Core\PrintR1= AIsFunction( 1 , "?PrintR@@YAX_J@Z" ) ; 100 PRINT 
    Core\PrintCR1= AIsFunction( 1 , "?PrintCR@@YAX_J@Z" ) ; 101 PRINTC 
    Core\CurveValueFFFF= AIsFunction( 1 , "?CurveValueFFFF@@YAKMMM@Z" ) ; 102 CURVEVALUE Destination Value, Current Value, Speed Value
    Core\WrapValueFF= AIsFunction( 1 , "?WrapValueFF@@YAKM@Z" ) ; 103 WRAPVALUE Angle Value
    Core\NewXValueFFFF= AIsFunction( 1 , "?NewXValueFFFF@@YAKMMM@Z" ) ; 104 NEWXVALUE Current X Value, Angle Value, Step Value
    Core\NewYValueFFFF= AIsFunction( 1 , "?NewYValueFFFF@@YAKMMM@Z" ) ; 105 NEWYVALUE Current Y Value, Angle Value, Step Value
    Core\NewZValueFFFF= AIsFunction( 1 , "?NewZValueFFFF@@YAKMMM@Z" ) ; 106 NEWZVALUE Current Z Value, Angle Value, Step Value
    Core\CurveAngleFFFF= AIsFunction( 1 , "?CurveAngleFFFF@@YAKMMM@Z" ) ; 107 CURVEANGLE Destination Value, Current Value, Speed Value
    Core\ArrayIndexToBottom= AIsFunction( 1 , "?ArrayIndexToBottom@@YAXK@Z" ) ; 109 ARRAY INDEX TO BOTTOM Array Name(0)
    Core\ArrayIndexToTop= AIsFunction( 1 , "?ArrayIndexToTop@@YAXK@Z" ) ; 110 ARRAY INDEX TO TOP Array Name(0)
    Core\ArrayIndexValid= AIsFunction( 1 , "?ArrayIndexValid@@YAKK@Z" ) ; 111 ARRAY INDEX VALID Array Name(0)
    Core\NextArrayIndex= AIsFunction( 1 , "?NextArrayIndex@@YAXK@Z" ) ; 112 NEXT ARRAY INDEX Array Name(0)
    Core\PreviousArrayIndex= AIsFunction( 1 , "?PreviousArrayIndex@@YAXK@Z" ) ; 113 PREVIOUS ARRAY INDEX Array Name(0)
    Core\ArrayCount= AIsFunction( 1 , "?ArrayCount@@YAKK@Z" ) ; 114 ARRAY COUNT Array Name(0)
    Core\ArrayInsertAtBottom= AIsFunction( 1 , "?ArrayInsertAtBottom@@YAKK@Z" ) ; 115 ARRAY INSERT AT BOTTOM Array Name(0)
    Core\ArrayInsertAtBottom1= AIsFunction( 1 , "?ArrayInsertAtBottom@@YAKKH@Z" ) ; 116 ARRAY INSERT AT BOTTOM Array Name(0), Index
    Core\ArrayInsertAtTop= AIsFunction( 1 , "?ArrayInsertAtTop@@YAKK@Z" ) ; 117 ARRAY INSERT AT TOP Array Name(0)
    Core\ArrayInsertAtTop1= AIsFunction( 1 , "?ArrayInsertAtTop@@YAKKH@Z" ) ; 118 ARRAY INSERT AT TOP Array Name(0), Index
    Core\ArrayInsertAtElement= AIsFunction( 1 , "?ArrayInsertAtElement@@YAKKH@Z" ) ; 119 ARRAY INSERT AT ELEMENT Array Name(0), Index
    Core\ArrayDeleteElement= AIsFunction( 1 , "?ArrayDeleteElement@@YAXK@Z" ) ; 120 ARRAY DELETE ELEMENT Array Name(0)
    Core\ArrayDeleteElement1= AIsFunction( 1 , "?ArrayDeleteElement@@YAXKH@Z" ) ; 121 ARRAY DELETE ELEMENT Array Name(0), Index
    Core\EmptyArray= AIsFunction( 1 , "?EmptyArray@@YAXK@Z" ) ; 122 EMPTY ARRAY Array Name(0)
    Core\AddToQueue= AIsFunction( 1 , "?AddToQueue@@YAKK@Z" ) ; 123 ADD TO QUEUE Array Name(0)
    Core\RemoveFromQueue= AIsFunction( 1 , "?RemoveFromQueue@@YAXK@Z" ) ; 124 REMOVE FROM QUEUE Array Name(0)
    Core\PushToStack= AIsFunction( 1 , "?PushToStack@@YAKK@Z" ) ; 125 ADD TO STACK Array Name(0)
    Core\PopFromStack= AIsFunction( 1 , "?PopFromStack@@YAXK@Z" ) ; 126 REMOVE FROM STACK Array Name(0)
    Core\ArrayIndexToQueue= AIsFunction( 1 , "?ArrayIndexToQueue@@YAXK@Z" ) ; 127 ARRAY INDEX TO QUEUE Array Name(0)
    Core\ArrayIndexToStack= AIsFunction( 1 , "?ArrayIndexToStack@@YAXK@Z" ) ; 128 ARRAY INDEX TO STACK Array Name(0)
    Core\DrawToBack= AIsFunction( 1 , "?DrawToBack@@YAXXZ" ) ; 129 DRAW TO BACK 
    Core\DrawToFront= AIsFunction( 1 , "?DrawToFront@@YAXXZ" ) ; 130 DRAW TO FRONT 
    Core\DrawSpritesFirst= AIsFunction( 1 , "?DrawSpritesFirst@@YAXXZ" ) ; 131 DRAW SPRITES FIRST 
    Core\DrawSpritesLast= AIsFunction( 1 , "?DrawSpritesLast@@YAXXZ" ) ; 132 DRAW SPRITES LAST 
    Core\FillByteMemory= AIsFunction( 1 , "?FillByteMemory@@YAXKHH@Z" ) ; 133 FILL MEMORY Memory Address, FillByte, Size In Bytes
    Core\CopyByteMemory= AIsFunction( 1 , "?CopyByteMemory@@YAXKKH@Z" ) ; 134 COPY MEMORY Memory Destination, Memory Source, Size In Bytes
    Core\MakeByteMemory= AIsFunction( 1 , "?MakeByteMemory@@YAKH@Z" ) ; 135 MAKE MEMORY Size In Bytes
    Core\DeleteByteMemory= AIsFunction( 1 , "?DeleteByteMemory@@YAXK@Z" ) ; 136 DELETE MEMORY Memory Address
    Core\Break= AIsFunction( 1 , "?Break@@YAXXZ" ) ; 137 BREAK 
    Core\BreakS= AIsFunction( 1 , "?BreakS@@YAXK@Z" ) ; 138 BREAK Debug String
    Core\Restore= AIsFunction( 1 , "?Restore@@YAXXZ" ) ; 139 RESTORE 
    Core\FreeStringSS= AIsFunction( 1 , "?FreeStringSS@@YAKK@Z" ) ; 140 FREE STRING 
    Core\AlwaysActiveOn= AIsFunction( 1 , "?AlwaysActiveOn@@YAXXZ" ) ; 141 ALWAYS ACTIVE ON 
    Core\AlwaysActiveOff= AIsFunction( 1 , "?AlwaysActiveOff@@YAXXZ" ) ; 142 ALWAYS ACTIVE OFF 
    Core\PerformanceTimer= AIsFunction( 1 , "?PerformanceTimer@@YA_JXZ" ) ; 143 PERFTIMER 
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure PrintR( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( Core\PrintR, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure PrintO( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( Core\PrintO, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure.f CeilFF( Value.f )
  Retour.l = CallCFunctionFast( Core\CeilFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f FloorFF( Value.f )
  Retour.l = CallCFunctionFast( Core\FloorFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure PrintS( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( Core\PrintS, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure Print0()
  CallCFunctionFast( Core\Print0 )
 EndProcedure
;
; *********************************************************************
Procedure PrintCR( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( Core\PrintCR, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure PrintCO( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( Core\PrintCO, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure PrintCS( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( Core\PrintCS, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure Cls()
  CallCFunctionFast( Core\Cls )
 EndProcedure
;
; *********************************************************************
Procedure SetCursor( X.l, Y.l )
  CallCFunctionFast( Core\SetCursor, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure.l RndLL( RangeValue.l )
  Retour.l = CallCFunctionFast( Core\RndLL, RangeValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s GetDXVer$()
  Retour.l = CallCFunctionFast( Core\GetDXVer, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l TimerL()
  Retour.l = CallCFunctionFast( Core\TimerL )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f CosFF( Value.f )
  Retour.l = CallCFunctionFast( Core\CosFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s InkeyS()
  Retour.l = CallCFunctionFast( Core\InkeyS, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure SyncSleep( FlagProcessorFriendly.l )
  CallCFunctionFast( Core\SyncSleep, FlagProcessorFriendly )
 EndProcedure
;
; *********************************************************************
Procedure SyncOn()
  CallCFunctionFast( Core\SyncOn )
 EndProcedure
;
; *********************************************************************
Procedure SyncOff()
  CallCFunctionFast( Core\SyncOff )
 EndProcedure
;
; *********************************************************************
Procedure Sync()
  CallCFunctionFast( Core\Sync )
 EndProcedure
;
; *********************************************************************
Procedure SyncRate( Rate.l )
  CallCFunctionFast( Core\SyncRate, Rate )
 EndProcedure
;
; *********************************************************************
Procedure RestoreD( String )
  CallCFunctionFast( Core\RestoreD, String )
 EndProcedure
;
; *********************************************************************
Procedure.f AcosFF( Value.f )
  Retour.l = CallCFunctionFast( Core\AcosFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f AsinFF( Value.f )
  Retour.l = CallCFunctionFast( Core\AsinFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f AtanFF( Value.f )
  Retour.l = CallCFunctionFast( Core\AtanFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f Atan2FFF( DistanceX.f, DistanceY.f )
  Retour.l = CallCFunctionFast( Core\Atan2FFF, DistanceX, DistanceY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SinFF( Value.f )
  Retour.l = CallCFunctionFast( Core\SinFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f TanFF( Value.f )
  Retour.l = CallCFunctionFast( Core\TanFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f HcosFF( Value.f )
  Retour.l = CallCFunctionFast( Core\HcosFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f HsinFF( Value.f )
  Retour.l = CallCFunctionFast( Core\HsinFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f HtanFF( Value.f )
  Retour.l = CallCFunctionFast( Core\HtanFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f SqrtFF( Value.f )
  Retour.l = CallCFunctionFast( Core\SqrtFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure Randomize1( SeedValue.l )
  CallCFunctionFast( Core\Randomize, SeedValue )
 EndProcedure
;
; *********************************************************************
Procedure.f AbsFF( Value.f )
  Retour.l = CallCFunctionFast( Core\AbsFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s Cl$()
  Retour.l = CallCFunctionFast( Core\Cl, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s GetDate$()
  Retour.l = CallCFunctionFast( Core\GetDate, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s GetTime$()
  Retour.l = CallCFunctionFast( Core\GetTime, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l IntLF( Value.f )
  Retour.l = CallCFunctionFast( Core\IntLF, Value )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure SleepL( Number.l )
  CallCFunctionFast( Core\SleepL, Number )
 EndProcedure
;
; *********************************************************************
Procedure WaitForKey()
  CallCFunctionFast( Core\WaitForKey )
 EndProcedure
;
; *********************************************************************
Procedure WaitForKey1()
  CallCFunctionFast( Core\WaitForKey1 )
 EndProcedure
;
; *********************************************************************
Procedure WaitForMouse()
  CallCFunctionFast( Core\WaitForMouse )
 EndProcedure
;
; *********************************************************************
Procedure WaitForMouse1()
  CallCFunctionFast( Core\WaitForMouse1 )
 EndProcedure
;
; *********************************************************************
Procedure SleepL1( Param0.l )
  CallCFunctionFast( Core\SleepL1, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.f ExpFF( Value.f )
  Retour.l = CallCFunctionFast( Core\ExpFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure SaveArray( Filename.s, ArrayName0 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( Core\SaveArray, FilenamePTR, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure LoadArray( Filename.s, ArrayName0 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( Core\LoadArray, FilenamePTR, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure FastSync()
  CallCFunctionFast( Core\FastSync )
 EndProcedure
;
; *********************************************************************
Procedure PrintR1( Param0 )
  CallCFunctionFast( Core\PrintR1, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure PrintCR1( Param0 )
  CallCFunctionFast( Core\PrintCR1, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.f CurveValueFFFF( DestinationValue.f, CurrentValue.f, SpeedValue.f )
  Retour.l = CallCFunctionFast( Core\CurveValueFFFF, DestinationValue, CurrentValue, SpeedValue )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f WrapValueFF( AngleValue.f )
  Retour.l = CallCFunctionFast( Core\WrapValueFF, AngleValue )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f NewXValueFFFF( CurrentXValue.f, AngleValue.f, StepValue.f )
  Retour.l = CallCFunctionFast( Core\NewXValueFFFF, CurrentXValue, AngleValue, StepValue )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f NewYValueFFFF( CurrentYValue.f, AngleValue.f, StepValue.f )
  Retour.l = CallCFunctionFast( Core\NewYValueFFFF, CurrentYValue, AngleValue, StepValue )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f NewZValueFFFF( CurrentZValue.f, AngleValue.f, StepValue.f )
  Retour.l = CallCFunctionFast( Core\NewZValueFFFF, CurrentZValue, AngleValue, StepValue )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f CurveAngleFFFF( DestinationValue.f, CurrentValue.f, SpeedValue.f )
  Retour.l = CallCFunctionFast( Core\CurveAngleFFFF, DestinationValue, CurrentValue, SpeedValue )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure ArrayIndexToBottom( ArrayName0 )
  CallCFunctionFast( Core\ArrayIndexToBottom, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure ArrayIndexToTop( ArrayName0 )
  CallCFunctionFast( Core\ArrayIndexToTop, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure.l ArrayIndexValid( ArrayName0 )
  Retour.l = CallCFunctionFast( Core\ArrayIndexValid, ArrayName0 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure NextArrayInd( ArrayName0 )
  CallCFunctionFast( Core\NextArrayIndex, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure PreviousArrayInd( ArrayName0 )
  CallCFunctionFast( Core\PreviousArrayIndex, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure.l ArrayCount( ArrayName0 )
  Retour.l = CallCFunctionFast( Core\ArrayCount, ArrayName0 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure ArrayInsertAtBottom( ArrayName0, Index, Param2.l )
  CallCFunctionFast( Core\ArrayInsertAtBottom1, ArrayName0, Index, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure ArrayInsertAtTop( ArrayName0, Index, Param2.l )
  CallCFunctionFast( Core\ArrayInsertAtTop1, ArrayName0, Index, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure ArrayInsertAtElement( ArrayName0, Index, Param2.l )
  CallCFunctionFast( Core\ArrayInsertAtElement, ArrayName0, Index, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure ArrayDeleteElement( ArrayName0 )
  CallCFunctionFast( Core\ArrayDeleteElement, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure ArrayDeleteElement1( ArrayName0, Index.l )
  CallCFunctionFast( Core\ArrayDeleteElement1, ArrayName0, Index )
 EndProcedure
;
; *********************************************************************
Procedure EmptyArray( ArrayName0 )
  CallCFunctionFast( Core\EmptyArray, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure RemoveFromQueue( ArrayName0 )
  CallCFunctionFast( Core\RemoveFromQueue, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure PopFromStack( ArrayName0 )
  CallCFunctionFast( Core\PopFromStack, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure ArrayIndexToQueue( ArrayName0 )
  CallCFunctionFast( Core\ArrayIndexToQueue, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure ArrayIndexToStack( ArrayName0 )
  CallCFunctionFast( Core\ArrayIndexToStack, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DrawToBack()
  CallCFunctionFast( Core\DrawToBack )
 EndProcedure
;
; *********************************************************************
Procedure DrawToFront()
  CallCFunctionFast( Core\DrawToFront )
 EndProcedure
;
; *********************************************************************
Procedure DrawSpritesFirst()
  CallCFunctionFast( Core\DrawSpritesFirst )
 EndProcedure
;
; *********************************************************************
Procedure DrawSpritesLast()
  CallCFunctionFast( Core\DrawSpritesLast )
 EndProcedure
;
; *********************************************************************
Procedure FillByteMemory( MemoryAddress.l, FillByte, SizeInBytes.l )
  CallCFunctionFast( Core\FillByteMemory, MemoryAddress, FillByte, SizeInBytes )
 EndProcedure
;
; *********************************************************************
Procedure CopyByteMemory( MemoryDestination.l, MemorySource.l, SizeInBytes.l )
  CallCFunctionFast( Core\CopyByteMemory, MemoryDestination, MemorySource, SizeInBytes )
 EndProcedure
;
; *********************************************************************
Procedure.l MakeCoreByteMemory( SizeInBytes.l )
  Retour.l = CallCFunctionFast( Core\MakeByteMemory, SizeInBytes )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DeleteByteMemory( MemoryAddress.l )
  CallCFunctionFast( Core\DeleteByteMemory, MemoryAddress )
 EndProcedure
;
; *********************************************************************
Procedure Break()
  CallCFunctionFast( Core\Break )
 EndProcedure
;
; *********************************************************************
Procedure BreakS( DebugString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DebugStringPTR.l, Len( DebugString ) + 1 ) ; CreateString
  PokeS( DebugStringPTR, DebugString )
  CallCFunctionFast( Core\BreakS, DebugStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure Restore()
  CallCFunctionFast( Core\Restore )
 EndProcedure
;
; *********************************************************************
Procedure.s FreeStringSS()
  Retour.l = CallCFunctionFast( Core\FreeStringSS, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure AlwaysActiveOn()
  CallCFunctionFast( Core\AlwaysActiveOn )
 EndProcedure
;
; *********************************************************************
Procedure AlwaysActiveOff()
  CallCFunctionFast( Core\AlwaysActiveOff )
 EndProcedure
;
; *********************************************************************
Procedure.s PerformanceTimer()
  Retour.l = CallCFunctionFast( Core\PerformanceTimer, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;

