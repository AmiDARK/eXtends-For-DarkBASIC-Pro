; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 24.04.06
;
Structure LUAStruct
  Load.l : Execute.l
  GetInt.l : GetFloat.l : GetStr.l : SetInt.l : SetFloat.l : SetStr.l
  ArrayInt.l : ArrayFloat.l : ArrayStr.l : IterateArray.l : SetFunction.l : Call.l
  ReturnInt.l : ReturnFloat.l : ReturnStr.l : PushInt.l : PushFloat.l : PushStr.l
  Nxt.l : MessageDesc.l : MessageInt.l : MessageFloat.l : MessageStr.l
 EndStructure
Global LUA.LUAStruct

Procedure.l CheckLUA()
  SUCCESS.l = 1
  If OpenLibrary( 1, "LUA.dll")
    LUA\Load = AIsFunction( 1 , "EXT_LOAD_LUA" )                    ; Errcode = Lua Load( "ScriptFile.lua" )
    LUA\Execute = AIsFunction( 1 , "EXT_LUA_EXECUTE" )              ; Errcode = Lua Execute( "Command" )
    LUA\GetInt = AIsFunction( 1 , "EXT_LUA_GET_INT" )               ; Value = Lua Get Int( "MyVar" )
    LUA\GetFloat = AIsFunction( 1 , "EXT_LUA_GET_FLOAT" )           ; Value# = Lua Get Float( "MyVar" )
    LUA\GetStr = AIsFunction( 1 , "EXT_LUA_GET_STR" )               ; "" = Lua Get String( "MyVar" )
    LUA\SetInt = AIsFunction( 1 , "EXT_LUA_SET_INT" )               ; Lua Set Int "MyVar", Value
    LUA\SetFloat = AIsFunction( 1 , "EXT_LUA_SET_FLOAT" )           ; Lua Set Float "MyVar", FloatValue#
    LUA\SetStr = AIsFunction( 1 , "EXT_LUA_SET_STRING" )            ; Lua Set String "MyVar", "String"
    LUA\ArrayInt = AIsFunction( 1 , "EXT_LUA_ARRAY_INT" )           ; Value = Lua Array Int( "" )
    LUA\ArrayFloat = AIsFunction( 1 , "EXT_LUA_ARRAY_FLOAT" )       ; Value# = Lua Array Float( "" )
    LUA\ArrayStr = AIsFunction( 1 , "EXT_LUA_ARRAY_STRING" )        ; "" = Lua Array String( "" )
    LUA\IterateArray = AIsFunction( 1 , "EXT_LUA_ITERATE_ARRAY" )   ; Lua Iterate Array ""
    LUA\SetFunction = AIsFunction( 1 , "EXT_LUA_SETFUNC" )          ; Lua Set Function "", ParameterCount, Return
    LUA\Call = AIsFunction( 1 , "EXT_LUA_CALLFUNC" )                ; Lua Call
    LUA\ReturnInt = AIsFunction( 1 , "EXT_LUA_RETURN_INT" )         ; Value = = Lua Return Int()
    LUA\ReturnFloat = AIsFunction( 1 , "EXT_LUA_RETURN_FLOAT" )     ; Value# = Lua Return Float()
    LUA\ReturnStr = AIsFunction( 1 , "EXT_LUA_RETURN_STRING" )      ; "" = Lua Return String()
    LUA\PushInt = AIsFunction( 1 , "EXT_LUA_PUSHINT" )              ; Lua Push Int Value
    LUA\PushFloat = AIsFunction( 1 , "EXT_LUA_PUSHFLOAT" )          ; Lua Push Float Value#
    LUA\PushStr = AIsFunction( 1 , "EXT_LUA_PUSHSTRING" )        ; Lua Push String ""
    LUA\Nxt = AIsFunction( 1 , "EXT_LUA_NEXTMSG" )                  ; Value = Lua Next()
    LUA\MessageDesc = AIsFunction( 1 , "EXT_LUA_MESSAGE_DESC" )     ; "" = Lua Message Desc()
    LUA\MessageInt = AIsFunction( 1 , "EXT_LUA_MESSAGE_INT" ) ; Lua 
    LUA\MessageFloat = AIsFunction( 1 , "EXT_LUA_MESSAGE_FLOAT" ) ; Lua 
    LUA\MessageStr = AIsFunction( 1 , "EXT_LUA_MESSAGE_STRING" ) ; Lua 
   Else
    SUCCESS.l = 0
   EndIf
  ProcedureReturn SUCCESS
 EndProcedure
;
; *********************************************************************
Procedure.l DBLoadLUAScript( FileName.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FilenamePTR.l, Len( Filename ) + 1 ) ; CreateString
  PokeS( FilenamePTR, Filename )
  Errcode.l = CallCFunctionFast( *LUA\Load, FilenamePTR )
  ProcedureReturn ErrCode
 EndProcedure
;
; *********************************************************************
Procedure.l DBLUAExecute( Commande.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @CommandePTR.l, Len( Commande ) + 1 ) ; CreateString
  PokeS( CommandePTR, Commande )
  Errcode.l = CallCFunctionFast( *LUA\Execute, CommandePTR )
  ProcedureReturn ErrCode
 EndProcedure
;
; *********************************************************************
Procedure.l DBLUAGetInt( MyVar.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MyVarPTR.l, Len( MyVar ) + 1 ) ; CreateString
  PokeS( MyVarPTR, MyVar )
  Valeur.l = CallCFunctionFast( *LUA\GetInt, MyVarPTR )
  ProcedureReturn Valeur
 EndProcedure
;
; *********************************************************************
Procedure.f DBLUAGetFloat( MyVar.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MyVarPTR.l, Len( MyVar ) + 1 ) ; CreateString
  PokeS( MyVarPTR, MyVar )
  Retour.l = CallCFunctionFast( *LUA\GetFloat, MyVarPTR )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBLUAGetString( MyVar.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MyVarPTR.l, Len( MyVar ) + 1 ) ; CreateString
  PokeS( MyVarPTR, MyVar )
  Retour.l = CallCFunctionFast( *LUA\GetStr, MyVarPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBLUASetInt( MyVar.s, Valeur.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MyVarPTR.l, Len( MyVar ) + 1 ) ; CreateString
  PokeS( MyVarPTR, MyVar )
  CallCFunctionFast( *LUA\SetInt, MyVarPTR, Valeur )
 EndProcedure
;
; *********************************************************************
Procedure DBLUASetFloat( MyVar.s, Valeur.f )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MyVarPTR.l, Len( MyVar ) + 1 ) ; CreateString
  PokeS( MyVarPTR, MyVar )
  CallCFunctionFast( *LUA\SetInt, MyVarPTR, Valeur )
 EndProcedure
;
; *********************************************************************
Procedure DBLUASetString( MyVar.s, Valeur.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MyVarPTR.l, Len( MyVar ) + 1 ) ; CreateString
  PokeS( MyVarPTR, MyVar )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ValeurPTR.l, Len( Valeur ) + 1 ) ; CreateString
  PokeS( ValeurPTR, Valeur )
  CallCFunctionFast( *LUA\SetInt, MyVarPTR, ValeurPTR )
 EndProcedure
;
; *********************************************************************
Procedure.l DBLUAArrayInt( MyArray.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MyArrayPTR.l, Len( MyArray ) + 1 ) ; CreateString
  PokeS( MyArrayPTR, MyArray )
  Value.l = CallCFunctionFast( *LUA\ArrayInt, MyArrayPTR )
  ProcedureReturn Value
 EndProcedure
;
; *********************************************************************
Procedure.l DBLUAArrayFloat( MyArray.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MyArrayPTR.l, Len( MyArray ) + 1 ) ; CreateString
  PokeS( MyArrayPTR, MyArray )
  Retour.l = CallCFunctionFast( *LUA\ArrayFloat, MyArrayPTR )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBLUAArrayString( MyArray.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MyArrayPTR.l, Len( MyArray ) + 1 ) ; CreateString
  PokeS( MyArrayPTR, MyArray )
  Retour.l = CallCFunctionFast( *LUA\ArrayStr, MyArrayPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBLUAIterateArray( MyArray.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MyArrayPTR.l, Len( MyArray ) + 1 ) ; CreateString
  PokeS( MyArrayPTR, MyArray )
  CallCFunctionFast( *LUA\IterateArray, MyArrayPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBLUASetFunction( MyFunction.s, ParamCount.l, Retour.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @MyFunctionPTR.l, Len( MyFunction ) + 1 ) ; CreateString
  PokeS( MyFunctionPTR, MyFunction )
  CallCFunctionFast( *LUA\SetFunction, MyFunctionPTR, ParamCount, Retour )
 EndProcedure
;
; *********************************************************************
Procedure DBLuaCall()
  CallCFunctionFast( *LUA\Call )
 EndProcedure
;
; *********************************************************************
Procedure.l DBLUAReturnInt()
  Valeur.l = CallCFunctionFast( *LUA\ReturnInt )
  ProcedureReturn Valeur
 EndProcedure
;
; *********************************************************************
Procedure.f DBLUAReturnFloat()
  Retour.l = CallCFunctionFast( *LUA\ReturnFloat )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBLUAReturnString()
  Retour.l = CallCFunctionFast( *LUA\ReturnStr )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure DBLUAPushInt( Valeur.l )
  CallCFunctionFast( *LUA\PushInt, Valeur )
 EndProcedure
;
; *********************************************************************
Procedure DBLUAPushFloat( Valeur.f )
  CallCFunctionFast( *LUA\PushFloat, Valeur )
 EndProcedure
,
; *********************************************************************
Procedure.l DBPushString( Valeur.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ValeurPTR.l, Len( Valeur ) + 1 ) ; CreateString
  PokeS( ValeurPTR, Valeur )
  CallCFunctionFast( *LUA\PushStr, ValeurPTR )
 EndProcedure
;
; *********************************************************************
Procedure.l DBLuaNext()
  Retour.l = CallCFunctionFast( *LUA\Nxt )
  ProcedureReturn Retour.l
 EndProcedure
;
; *********************************************************************
Procedure.s DBLUAMessageDesc()
  Retour.l = CallCFunctionFast( *LUA\MessageDesc )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBLUAMessageInt()
  Valeur.l = CallCFunctionFast( *LUA\MessageInt )
  ProcedureReturn Valeur
 EndProcedure
;
; *********************************************************************
Procedure.f DBLUAMessageFloat()
  Retour.l = CallCFunctionFast( *LUA\MessageFloat )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.s DBLUAMessageString()
  Retour.l = CallCFunctionFast( *LUA\MessageStr )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure

; ExecutableFormat=Windows
; EOF