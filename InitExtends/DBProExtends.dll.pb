;
; **************************************
; *                                    *
; * X-Quad Editor TPC Plug-In Ver 2.00 *
; *                                    *
; **************************************
;
; Extends MODE : 0=TheGameCreators no code, 1=Odyssey-Creators with code
  Global ExtMODE.l = 0
  Global ExtInitialized.l
  Global EXTRegistered.l
  Global DebugMode.l = 0
  Global Dim DBProDLLs( 64 ) ; Liste des 25 librairies de DarkBASIC Professional
  Global Dim TempCODE( 32 )
;
Declare.l AIsFunction( OpenDLL.l, FunctionName$ )
; On Inclut en premier lieu les structures nécessaires à l'utilisation des DLLs de DBPro.
  IncludeFile "..\DBPro_Structures.pb"
  IncludeFile "..\DBPro_Structures_Setup.pb" ; Setup for main, Init for sub.
; On Inclut les commandes incluses dans les DLLs de DBPro
  IncludeFile "..\DBPro_Setup.pb" ; Pour l'initialisation réelle des DLLs de DBPro.
; On Inclut des fonctions refaites du pure pour le debug.
  IncludeFile "..\AdvancedFunctions.pb"
;  IncludeFile "..\..\"
; On inclut alors les commandes du langage de DBPro Nécessaire à la DLL.
;  IncludeFile "..\..\"
Declare CHECKFORSERIAL( UserN.s, UserCode.s )
;
; *************************************************************************************** Start()
; Don't forget to use HEX EDITOR to rename AConstructor00YAXXZ to ?Constructor@@YAXXZ
ProcedureCDLL AConstructor00YAXXZ()
  Retour.l = InitDBPro()
  InitBaseList()
  ExtInitialized = 1
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
 EndProcedure
; *************************************************************************************** Quit()
ProcedureCDLL ADestructor00YAXXZ()
  ExtInitialized = 1
 EndProcedure
; **************************************************************
ProcedureCDLL.l ExtInitialized()
  Retour.l = InitDBPro()
  InitBaseList()
  If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
  ExtInitialized = 1
  Retour.l = 1
  ProcedureReturn Retour
 EndProcedure
; **************************************************************
Procedure.l DBProExtends_Init()
  Retour.l = ExtInitialized
  ProcedureReturn Retour
 EndProcedure
;
Procedure DBProExtends_NotFound()
  MessageRequester("DBProExtends.DLL Warning", "A DarkBASIC Professional reference was not found and called")
 EndProcedure
; **************************************************************
ProcedureCDLL.l GetDBProBase()
  If ExtMODE = 0 Or EXTRegistered = 1
    If ExtInitialized  = 1
      Retour.l = @BaseList
     Else
      Retour.l = InitDBPro()
      InitBaseList()
      If *GlobPtr = 0 : InitialiseCorePtr() : EndIf
      ExtInitialized = 1
      Retour.l = @BaseList
     EndIf
   Else
    If DebugMode = 1
      MessageRequester( "GetDBProBase Called", "User Not Yet Registered" )
     EndIf
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
; **************************************************************
ProcedureCDLL SetDebugMode( Mode.l )
  DebugMode = Mode
 EndProcedure
; **************************************************************
ProcedureCDLL.l GetDebugMode()
  Retour.l = DebugMode
  ProcedureReturn Retour
 EndProcedure
; **************************************************************
ProcedureCDLL.l GetDLLInitialized( DLLID.l )
  If DLLID > 0 And DLLID < 64
    Retour.l = DBProDLLs( DLLID )
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
; **************************************************************
ProcedureCDLL.l Initialize_eXtends( user.l, code.l )
  If User <> 0
    UserN.s = PeekS( User )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, User, 0 ) ; Free memory used by the original text.
   EndIf
  If Code <> 0
    UserCode.s = PeekS( Code )
    CallCFunctionFast( *GlobPtr\CreateDeleteString, Code, 0 ) ; Free memory used by the original text.
   EndIf
  If Len( UserN ) > 0 And Len( UserCode ) > 0
    CHECKFORSERIAL( UserN, UserCode )
   Else
    If DebugMode = 1
      MessageRequester( "eXtends Initialization", "Initialize eXtends need 2 strings to activate the plugin." )
     EndIf
   EndIf
  If EXTRegistered = 1
    If DebugMode = 1
      MessageRequester( "GetDBProBase Called", "User/Code activation ok" ) 
     EndIf
    Restore LibrariesNames
    For LLoop.l = 1 To 20
      Read.s LibraryName$
      If OpenLibrary( 3 , LibraryName$ ) <> 0
        FunctionToCall.l = GetFunction( 3 , "?Constructor@@YAXXZ" )
        If FunctionToCall <> 0
          CallCFunctionFast( FunctionToCall )
         Else
          If DebugMode = 1
            MessageRequester( "Cannot find function in file :   ", "FCT = ?Constructor@@YAXXZ   /   FILE = "+LibraryName$ )
           EndIf
         EndIf
        CloseLibrary( 3 )
       EndIf      
     Next LLoop
   Else
    MessageRequester( "GetDBProBase Called", "User/Code activation incorrect" ) 
   EndIf
  ProcedureReturn EXTRegistered
 EndProcedure
; **************************************************************
Procedure CHECKFORSERIAL( UserN.s, UserCode.s )
  ; Maintenant, on procède au calcul de l'activation
  ; PASSE 1 : On ajoute le nom d'utilisateur au code ( A à Z = 0 à 25 )
  If Len( UserN ) > 0 And Len( UserCode ) > 0
    RegUSER$ = "" ; On réinitialise le nom d'utilisateur.
    For XLoop.l =  1 To Len( UserN ) Step 1
      If Mid( UserN, XLoop, 1 ) <> " " : RegUSER$ = RegUSER$ + Mid( UserN, XLoop, 1 ) : EndIf
     Next XLoop
    UserNAME$ = UCase( Left( RegUSER$ + RegUSER$ + RegUSER$ + RegUSER$ + RegUSER$ ,  25 ) )
    For XLoop = 1 To 25
      VALUE.l = Asc( Mid( UserNAME$, XLoop, 1 ) ) - Asc( "A" )
      TempCODE( XLoop ) = VALUE
     Next XLoop
    ; PASSE 1 : Le code obtenu est compris entre 0 et 25
    ; PASSE 2 : On ajoute la séquence de nombre pré-définis.
    Restore REGSequency
    For XLoop = 1 To 25
      Read VALUE
      TempCODE( XLoop ) = TempCODE( XLoop ) + VALUE
     Next XLoop
    ; PASSE 3 : Le code obtenu est compris entre 0 et 35
    ; PASSE 4 : On crée le code d'enregistrement final
    FinalSERIAL$ = ""
    For XLoop = 1 To 25
      If TempCODE( XLoop ) < 26
    	  VALUE = TempCODE( XLoop )
        FinalSERIAL$ = FinalSERIAL$ + Chr( VALUE + Asc( "A" ) )
       Else
    	  VALUE = TempCODE( XLoop ) - 26
        FinalSERIAL$ = FinalSERIAL$ + Chr( VALUE + Asc( "a" ) )
       EndIf
     Next XLoop
    If FinalSERIAL$ = UserCode
      EXTRegistered = 1
     Else
      EXTRegistered = 0
     EndIf
   Else
    EXTRegistered = 0
   EndIf
  If EXTRegistered = 0
    MessageRequester( "eXtends Activation - Warning", "Your plugin activation is incorrect" )
    If OpenLibrary( 3 , "DBProCore.dll" ) 
      BreakProgram.l = GetFunction( 3 , "?Break@@YAXXZ" )
      CloseLibrary( 3 )
      CallCFunctionFast( BreakProgram )
     EndIf
   EndIf
 EndProcedure
; **************************************************************
DataSection
Data.s "DarkBasic Professional Extends Pack Ver 1.6 / "
Data.s "DBProExtends.dll Ver 1.6rc1 [ 2012.06.27 ]  / "
Data.s "TheGameCreators(c)2009/2012 "
REGSequency:
Data.l 7, 2, 7, 3, 6, 4, 1, 5, 9, 8, 2, 5, 3, 1, 9, 6, 8, 7, 4, 1, 6, 5, 4, 7, 2
LibrariesNames:
Data.s "eXtends_Basic2D.dll"
Data.s "eXtends_Basic3D.dll"
Data.s "eXtends_Bitmaps.dll"
Data.s "eXtends_Cameras3D.dll"
Data.s "eXtends_FilesIO.dll"
Data.s "eXtends_Images.dll"
Data.s "eXtends_Matrixes3D.dll"
Data.s "eXtends_Memblocks.dll"
Data.s "eXtends_Meshes3D.dll"
Data.s "eXtends_Musics.dll"
Data.s "eXtends_Particles3D.dll"
Data.s "eXtends_RealTimeSkySystem.dll"
Data.s "eXtends_Shaders3D.dll"
Data.s "eXtends_Sounds.dll"
Data.s "eXtends_Sprites.dll"
Data.s "eXtends_Texts.dll"
Data.s "eXtends_Vectors2_3D.dll"
Data.s "eXtends_Vectors3_3D.dll"
Data.s "eXtends_Vectors4_3D.dll"
Data.s "eXtends_VirtualsLights3D.dll"

; IDE Options = PureBasic 4.61 (Windows - x86)
; ExecutableFormat = Shared Dll
; CursorPosition = 190
; FirstLine = 159
; Folding = --
; Executable = DBProExtends.dll
; DisableDebugger
; AddResource = eXtends.rc