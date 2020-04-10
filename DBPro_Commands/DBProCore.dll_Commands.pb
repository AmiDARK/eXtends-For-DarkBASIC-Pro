; DarkBasic Professional RC2PBIncludes Ver 1.0 File - COMMANDS WRAPPING
; By Frederic Cordier - 07.02.13
;
; *********************************************************************
Procedure DBPrintR( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( *DB_Core\PrintR, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBPrintO( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( *DB_Core\PrintO, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure.f DBCeil( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\CeilFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBFloor( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\FloorFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBPrintS( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( *DB_Core\PrintS, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBPrint0()
  CallCFunctionFast( *DB_Core\Print0 )
 EndProcedure
;
; *********************************************************************
Procedure DBPrintCR( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( *DB_Core\PrintCR, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBPrintCO( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( *DB_Core\PrintCO, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBPrintCS( PrintStatements.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PrintStatementsPTR.l, Len( PrintStatements ) + 1 ) ; CreateString
  PokeS( PrintStatementsPTR, PrintStatements )
  CallCFunctionFast( *DB_Core\PrintCS, PrintStatementsPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBCls()
  CallCFunctionFast( *DB_Core\Cls )
 EndProcedure
;
; *********************************************************************
Procedure DBSetCursor( X.l, Y.l )
  CallCFunctionFast( *DB_Core\SetCursor, X, Y )
 EndProcedure
;
; *********************************************************************
Procedure.l DBRnd( RangeValue.l )
  Retour.l = CallCFunctionFast( *DB_Core\RndLL, RangeValue )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetDXVer()
  Retour.l = CallCFunctionFast( *DB_Core\GetDXVer, 0 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBTimerL()
  Retour.l = CallCFunctionFast( *DB_Core\TimerL )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBCos( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\CosFF, Value )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBInkeyS()
  Retour.l = CallCFunctionFast( *DB_Core\InkeyS, 0 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBSyncSleep( FlagProcessorFriendly.l )
  CallCFunctionFast( *DB_Core\SyncSleep, FlagProcessorFriendly )
 EndProcedure
;
; *********************************************************************
Procedure DBSyncOn()
  CallCFunctionFast( *DB_Core\SyncOn )
 EndProcedure
;
; *********************************************************************
Procedure DBSyncOff()
  CallCFunctionFast( *DB_Core\SyncOff )
 EndProcedure
;
; *********************************************************************
Procedure DBSync()
  CallCFunctionFast( *DB_Core\Sync )
 EndProcedure
;
; *********************************************************************
Procedure DBSyncRate( Rate.l )
  CallCFunctionFast( *DB_Core\SyncRate, Rate )
 EndProcedure
;
;
; *********************************************************************
Procedure DBSyncMask( CameraMASK.l )
  CallCFunctionFast( *DB_Core\SyncMask, CameraMASK )
 EndProcedure
;
; *********************************************************************
Procedure DBRestoreD( String )
  CallCFunctionFast( *DB_Core\RestoreD, String )
 EndProcedure
;
; *********************************************************************
Procedure.f DBACos( Value.f )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Core\AcosFF, V )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBASin( Value.f )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Core\AsinFF, V )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBATan( Value.f )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Core\AtanFF, V )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBAtan2( DistanceX.f, DistanceY.f )
  DX.l = 0 : DY.l = 0
  PokeF( @DX, DistanceX ) :PokeF( @DY, DistanceY )
  Retour.l = CallCFunctionFast( *DB_Core\Atan2FFF, DX, DY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBSin( Value.f )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Core\SinFF, V)
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBTan( Value.f )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Core\TanFF, V )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBHcos( Value.f )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Core\HcosFF, V )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBHsin( Value.f )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Core\HsinFF, V )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBHtan( Value.f )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Core\HtanFF, V )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBSqrt( Value.f )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Core\SqrtFF, V )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBRandomize1( SeedValue.l )
  CallCFunctionFast( *DB_Core\Randomize, SeedValue )
 EndProcedure
;
; *********************************************************************
Procedure.f DBAbs( Value.f )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Core\AbsFF, V )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBCl()
  Retour.l = CallCFunctionFast( *DB_Core\Cl, 0 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetDate()
  Retour.l = CallCFunctionFast( *DB_Core\GetDate, 0 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetTime()
  Retour.l = CallCFunctionFast( *DB_Core\GetTime, 0 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBInt( Value.f )
  Retour.l = CallCFunctionFast( *DB_Core\IntLF, Value )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBSleepL( Number.l )
  CallCFunctionFast( *DB_Core\SleepL, Number )
 EndProcedure
;
; *********************************************************************
Procedure DBWaitForKey()
  CallCFunctionFast( *DB_Core\WaitForKey )
 EndProcedure
;
; *********************************************************************
Procedure DBWaitForKey1()
  CallCFunctionFast( *DB_Core\WaitForKey1 )
 EndProcedure
;
; *********************************************************************
Procedure DBWaitForMouse()
  CallCFunctionFast( *DB_Core\WaitForMouse )
 EndProcedure
;
; *********************************************************************
Procedure DBWaitForMouse1()
  CallCFunctionFast( *DB_Core\WaitForMouse1 )
 EndProcedure
;
; *********************************************************************
Procedure DBSleepL1( Param0.l )
  CallCFunctionFast( *DB_Core\SleepL1, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.f DBExp( Value.f )
  V.l = 0 : PokeF( @V, Value )
  Retour.l = CallCFunctionFast( *DB_Core\ExpFF, V )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBSaveArray( Filename.s, ArrayName0 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Core\SaveArray, FilenamePTR, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBLoadArray( Filename.s, ArrayName0 )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  CallCFunctionFast( *DB_Core\LoadArray, FilenamePTR, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBFastSync()
  CallCFunctionFast( *DB_Core\FastSync )
 EndProcedure
;
; *********************************************************************
Procedure DBPrintR1( Param0 )
  CallCFunctionFast( *DB_Core\PrintR1, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBPrintCR1( Param0 )
  CallCFunctionFast( *DB_Core\PrintCR1, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.f DBCurveValue( DestinationValue.f, CurrentValue.f, SpeedValue.f )
  DV.l = 0 : CV.l = 0 : SV.l = 0
  PokeF( @DV, DestinationValue ) : PokeF( @CV, CurrentValue ) : PokeF( @SV, SpeedValue )
  Retour.l = CallCFunctionFast( *DB_Core\CurveValueFFFF, DV, CV, SV )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBWrapValue( AngleValue.f )
  V.l = 0 : PokeF( @V, AngleValue )
  Retour.l = CallCFunctionFast( *DB_Core\WrapValueFF, V )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBNewXValue( CurrentXValue.f, AngleValue.f, StepValue.f )
  CV.l = 0 : AV.l = 0 : SV.l = 0
  PokeF( @CV, CurrentXValue ) : PokeF( @AV, AngleValue ) : PokeF( @SV, StepValue )
  Retour.l = CallCFunctionFast( *DB_Core\NewXValueFFFF, CV, AV, SV )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBNewYValue( CurrentYValue.f, AngleValue.f, StepValue.f )
  CV.l = 0 : AV.l = 0 : SV.l = 0
  PokeF( @CV, CurrentYValue ) : PokeF( @AV, AngleValue ) : PokeF( @SV, StepValue )
  Retour.l = CallCFunctionFast( *DB_Core\NewYValueFFFF, CV, AV, SV )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBNewZValue( CurrentZValue.f, AngleValue.f, StepValue.f )
  CV.l = 0 : AV.l = 0 : SV.l = 0
  PokeF( @CV, CurrentZValue ) : PokeF( @AV, AngleValue ) : PokeF( @SV, StepValue )
  Retour.l = CallCFunctionFast( *DB_Core\NewZValueFFFF, CV, AV, SV )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBCurveAngle( DestinationValue.f, CurrentValue.f, SpeedValue.f )
  DV.l = 0 : AV.l = 0 : SV.l = 0
  PokeF( @DV, DestinationValue ) : PokeF( @AV, CurrentValue ) : PokeF( @SV, SpeedValue )
  Retour.l = CallCFunctionFast( *DB_Core\CurveAngleFFFF, DV, AV, SV )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBArrayIndexToBottom( ArrayName0 )
  CallCFunctionFast( *DB_Core\ArrayIndexToBottom, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayIndexToTop( ArrayName0 )
  CallCFunctionFast( *DB_Core\ArrayIndexToTop, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DBArrayIndexValid( ArrayName0 )
  Retour.l = CallCFunctionFast( *DB_Core\ArrayIndexValid, ArrayName0 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBNextArrayInd( ArrayName0 )
  CallCFunctionFast( *DB_Core\NextArrayIndex, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBPreviousArrayInd( ArrayName0 )
  CallCFunctionFast( *DB_Core\PreviousArrayIndex, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure.l DBArrayCount( ArrayName0 )
  Retour.l = CallCFunctionFast( *DB_Core\ArrayCount, ArrayName0 )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBArrayInsertAtBottom( ArrayName0, Index, Param2.l )
  CallCFunctionFast( *DB_Core\ArrayInsertAtBottom1, ArrayName0, Index, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayInsertAtTop( ArrayName0, Index, Param2.l )
  CallCFunctionFast( *DB_Core\ArrayInsertAtTop1, ArrayName0, Index, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayInsertAtElement( ArrayName0, Index, Param2.l )
  CallCFunctionFast( *DB_Core\ArrayInsertAtElement, ArrayName0, Index, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayDeleteElement( ArrayName0 )
  CallCFunctionFast( *DB_Core\ArrayDeleteElement, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayDeleteElement1( ArrayName0, Index.l )
  CallCFunctionFast( *DB_Core\ArrayDeleteElement1, ArrayName0, Index )
 EndProcedure
;
; *********************************************************************
Procedure DBEmptyArray( ArrayName0 )
  CallCFunctionFast( *DB_Core\EmptyArray, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBRemoveFromQueue( ArrayName0 )
  CallCFunctionFast( *DB_Core\RemoveFromQueue, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBPopFromStack( ArrayName0 )
  CallCFunctionFast( *DB_Core\PopFromStack, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayIndexToQueue( ArrayName0 )
  CallCFunctionFast( *DB_Core\ArrayIndexToQueue, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBArrayIndexToStack( ArrayName0 )
  CallCFunctionFast( *DB_Core\ArrayIndexToStack, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBDrawToBack()
  CallCFunctionFast( *DB_Core\DrawToBack )
 EndProcedure
;
; *********************************************************************
Procedure DBDrawToFront()
  CallCFunctionFast( *DB_Core\DrawToFront )
 EndProcedure
;
; *********************************************************************
Procedure DBDrawSpritesFirst()
  CallCFunctionFast( *DB_Core\DrawSpritesFirst )
 EndProcedure
;
; *********************************************************************
Procedure DBDrawSpritesLast()
  CallCFunctionFast( *DB_Core\DrawSpritesLast )
 EndProcedure
;
; *********************************************************************
Procedure DBFillByteMemory( MemoryAddress.l, FillByte, SizeInBytes.l )
  CallCFunctionFast( *DB_Core\FillByteMemory, MemoryAddress, FillByte, SizeInBytes )
 EndProcedure
;
; *********************************************************************
Procedure DBCopyByteMemory( MemoryDestination.l, MemorySource.l, SizeInBytes.l )
  CallCFunctionFast( *DB_Core\CopyByteMemory, MemoryDestination, MemorySource, SizeInBytes )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMakeCoreByteMemory( SizeInBytes.l )
  Retour.l = CallCFunctionFast( *DB_Core\MakeByteMemory, SizeInBytes )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteByteMemory( MemoryAddress.l )
  CallCFunctionFast( *DB_Core\DeleteByteMemory, MemoryAddress )
 EndProcedure
;
; *********************************************************************
Procedure DBBreak()
  CallCFunctionFast( *DB_Core\Break )
 EndProcedure
;
; *********************************************************************
Procedure DBBreakS( DebugString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DebugStringPTR.l, Len( DebugString ) + 1 ) ; CreateString
  PokeS( DebugStringPTR, DebugString )
  CallCFunctionFast( *DB_Core\BreakS, DebugStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBRestore()
  CallCFunctionFast( *DB_Core\Restore )
 EndProcedure
;
; *********************************************************************
Procedure.s DBFreeStringSS()
  Retour.l = CallCFunctionFast( *DB_Core\FreeStringSS, 0 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBAlwaysActiveOn()
  CallCFunctionFast( *DB_Core\AlwaysActiveOn )
 EndProcedure
;
; *********************************************************************
Procedure DBAlwaysActiveOff()
  CallCFunctionFast( *DB_Core\AlwaysActiveOff )
 EndProcedure
;
; *********************************************************************
Procedure.s DBPerformanceTimer()
  Retour.l = CallCFunctionFast( *DB_Core\PerformanceTimer, 0 )
  If Retour <> 0
    RetourSTR.s = PeekS( Retour )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
   Else
    RetourSTR = ""
   EndIf
  ProcedureReturn RetourSTR
 EndProcedure
;

; IDE Options = PureBasic 4.61 (Windows - x86)
; CursorPosition = 395
; FirstLine = 527
; Folding = ---------------