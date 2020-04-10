; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_FTPStruct
  Connect.l : DeleteFileA.l : Disconnect.l : DisconnectEx.l
  FindFirst.l : FindNext.l : GetDir.l : GetError.l
  GetFailure.l : GetFile.l : GetFile1.l : GetFileName.l
  GetFileSize.l : GetFileType.l : GetProgress.l : GetStatus.l
  Proceed.l : PutFile.l : SetDir.l : Terminate.l
  ConnectEx.l : HTTPConnect.l : HTTPDisconnect.l : HTTPRequestData.l
 EndStructure

Procedure.l CheckFTP()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProFTPDebug.dll")
    DB_FTP\Connect= AIsFunction( 1 , "?Connect@@YAXKKK@Z" ) ; 1 FTP CONNECT Url String, User String, Password String
    DB_FTP\DeleteFileA= AIsFunction( 1 , "?DeleteFileA@@YAXK@Z" ) ; 2 FTP DELETE FILE Ftp Filename String
    DB_FTP\Disconnect= AIsFunction( 1 , "?Disconnect@@YAXXZ" ) ; 3 FTP DISCONNECT 
    DB_FTP\DisconnectEx= AIsFunction( 1 , "?DisconnectEx@@YAXH@Z" ) ; 4 FTP DISCONNECT Dial-Up-Disconnect Flag
    DB_FTP\FindFirst= AIsFunction( 1 , "?FindFirst@@YAXXZ" ) ; 5 FTP FIND FIRST 
    DB_FTP\FindNext= AIsFunction( 1 , "?FindNext@@YAXXZ" ) ; 6 FTP FIND NEXT 
    DB_FTP\GetDir= AIsFunction( 1 , "?GetDir@@YAKK@Z" ) ; 7 GET FTP DIR$ 
    DB_FTP\GetError= AIsFunction( 1 , "?GetError@@YAKK@Z" ) ; 8 GET FTP ERROR$ 
    DB_FTP\GetFailure= AIsFunction( 1 , "?GetFailure@@YAHXZ" ) ; 9 GET FTP FAILURE 
    DB_FTP\GetFile= AIsFunction( 1 , "?GetFile@@YAXKK@Z" ) ; 10 FTP GET FILE Ftp Filename String
    DB_FTP\GetFile1= AIsFunction( 1 , "?GetFile@@YAXKKH@Z" ) ; 11 FTP GET FILE Ftp Filename String, Local Filename String, GrabInBits Flag
    DB_FTP\GetFileName= AIsFunction( 1 , "?GetFileName@@YAKK@Z" ) ; 12 GET FTP FILE NAME$ 
    DB_FTP\GetFileSize= AIsFunction( 1 , "?GetFileSize@@YAHXZ" ) ; 13 GET FTP FILE SIZE 
    DB_FTP\GetFileType= AIsFunction( 1 , "?GetFileType@@YAHXZ" ) ; 14 GET FTP FILE TYPE 
    DB_FTP\GetProgress= AIsFunction( 1 , "?GetProgress@@YAHXZ" ) ; 15 GET FTP PROGRESS 
    DB_FTP\GetStatus= AIsFunction( 1 , "?GetStatus@@YAHXZ" ) ; 16 GET FTP STATUS 
    DB_FTP\Proceed= AIsFunction( 1 , "?Proceed@@YAXXZ" ) ; 17 FTP PROCEED 
    DB_FTP\PutFile= AIsFunction( 1 , "?PutFile@@YAXK@Z" ) ; 18 FTP PUT FILE Local Filename String
    DB_FTP\SetDir= AIsFunction( 1 , "?SetDir@@YAXK@Z" ) ; 19 FTP SET DIR Directory String
    DB_FTP\Terminate= AIsFunction( 1 , "?Terminate@@YAXXZ" ) ; 20 FTP TERMINATE 
    DB_FTP\ConnectEx= AIsFunction( 1 , "?ConnectEx@@YAXKKKH@Z" ) ; 21 FTP CONNECT Url String, User String, Password String, Window Mode
    DB_FTP\HTTPConnect= AIsFunction( 1 , "?HTTPConnect@@YAXK@Z" ) ; 22 HTTP CONNECT URL String
    DB_FTP\HTTPDisconnect= AIsFunction( 1 , "?HTTPDisconnect@@YAXXZ" ) ; 23 HTTP DISCONNECT 
    DB_FTP\HTTPRequestData= AIsFunction( 1 , "?HTTPRequestData@@YAKKKKK@Z" ) ; 24 HTTP REQUEST DATA Verb, Object, String To Send
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBFTPConnect( UrlString.s, UserString.s, PasswordString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @UrlStringPTR.l, Len( UrlString ) + 1 ) ; CreateString
  PokeS( UrlStringPTR, UrlString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @UserStringPTR.l, Len( UserString ) + 1 ) ; CreateString
  PokeS( UserStringPTR, UserString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PasswordStringPTR.l, Len( PasswordString ) + 1 ) ; CreateString
  PokeS( PasswordStringPTR, PasswordString )
  CallCFunctionFast( *DB_FTP\Connect, UrlStringPTR, UserStringPTR, PasswordStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPDeleteFileA( FtpFilenameString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FtpFilenameStringPTR.l, Len( FtpFilenameString ) + 1 ) ; CreateString
  PokeS( FtpFilenameStringPTR, FtpFilenameString )
  CallCFunctionFast( *DB_FTP\DeleteFileA, FtpFilenameStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPDisconnect()
  CallCFunctionFast( *DB_FTP\Disconnect )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPFTPDisconnect1( DialUpDisconnectFlag.l )
  CallCFunctionFast( *DB_FTP\DisconnectEx, DialUpDisconnectFlag )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPFindFirst()
  CallCFunctionFast( *DB_FTP\FindFirst )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPFindNext()
  CallCFunctionFast( *DB_FTP\FindNext )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetFTPDir()
  Retour.l = CallCFunctionFast( *DB_FTP\GetDir, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetFTPError()
  Retour.l = CallCFunctionFast( *DB_FTP\GetError, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFTPFailure()
  Retour.l = CallCFunctionFast( *DB_FTP\GetFailure )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBGetFTPFile( FtpFilenameString.s, Param1.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FtpFilenameStringPTR.l, Len( FtpFilenameString ) + 1 ) ; CreateString
  PokeS( FtpFilenameStringPTR, FtpFilenameString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @Param1PTR.l, Len( Param1 ) + 1 ) ; CreateString
  PokeS( Param1PTR, Param1 )
  CallCFunctionFast( *DB_FTP\GetFile, FtpFilenameStringPTR, Param1PTR )
 EndProcedure
;
; *********************************************************************
Procedure DBGetFTPFTPFile1( FtpFilenameString.s, LocalFilenameString.s, GrabInBitsFlag.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @FtpFilenameStringPTR.l, Len( FtpFilenameString ) + 1 ) ; CreateString
  PokeS( FtpFilenameStringPTR, FtpFilenameString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @LocalFilenameStringPTR.l, Len( LocalFilenameString ) + 1 ) ; CreateString
  PokeS( LocalFilenameStringPTR, LocalFilenameString )
  CallCFunctionFast( *DB_FTP\GetFile1, FtpFilenameStringPTR, LocalFilenameStringPTR, GrabInBitsFlag )
 EndProcedure
;
; *********************************************************************
Procedure.s DBGetFTPFileName()
  Retour.l = CallCFunctionFast( *DB_FTP\GetFileName, ExtraPARAM.l )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFTPFTPFileSize()
  Retour.l = CallCFunctionFast( *DB_FTP\GetFileSize )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFTPFileType()
  Retour.l = CallCFunctionFast( *DB_FTP\GetFileType )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFTPProgress()
  Retour.l = CallCFunctionFast( *DB_FTP\GetProgress )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetFTPStatus()
  Retour.l = CallCFunctionFast( *DB_FTP\GetStatus )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBFTPProceed()
  CallCFunctionFast( *DB_FTP\Proceed )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPPutFile( LocalFilenameString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @LocalFilenameStringPTR.l, Len( LocalFilenameString ) + 1 ) ; CreateString
  PokeS( LocalFilenameStringPTR, LocalFilenameString )
  CallCFunctionFast( *DB_FTP\PutFile, LocalFilenameStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBSetFTPDir( DirectoryString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @DirectoryStringPTR.l, Len( DirectoryString ) + 1 ) ; CreateString
  PokeS( DirectoryStringPTR, DirectoryString )
  CallCFunctionFast( *DB_FTP\SetDir, DirectoryStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPTerminate()
  CallCFunctionFast( *DB_FTP\Terminate )
 EndProcedure
;
; *********************************************************************
Procedure DBFTPFTPConnect1( UrlString.s, UserString.s, PasswordString.s, WindowMode.l )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @UrlStringPTR.l, Len( UrlString ) + 1 ) ; CreateString
  PokeS( UrlStringPTR, UrlString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @UserStringPTR.l, Len( UserString ) + 1 ) ; CreateString
  PokeS( UserStringPTR, UserString )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @PasswordStringPTR.l, Len( PasswordString ) + 1 ) ; CreateString
  PokeS( PasswordStringPTR, PasswordString )
  CallCFunctionFast( *DB_FTP\ConnectEx, UrlStringPTR, UserStringPTR, PasswordStringPTR, WindowMode )
 EndProcedure
;
; *********************************************************************
Procedure DBHTTPConnect( URLString.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @URLStringPTR.l, Len( URLString ) + 1 ) ; CreateString
  PokeS( URLStringPTR, URLString )
  CallCFunctionFast( *DB_FTP\HTTPConnect, URLStringPTR )
 EndProcedure
;
; *********************************************************************
Procedure DBHTTPDisconnect()
  CallCFunctionFast( *DB_FTP\HTTPDisconnect )
 EndProcedure
;
; *********************************************************************
Procedure.s DBHTTPRequestData( Verb.s, Object.s, StringToSend.s )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @VerbPTR.l, Len( Verb ) + 1 ) ; CreateString
  PokeS( VerbPTR, Verb )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @ObjectPTR.l, Len( Object ) + 1 ) ; CreateString
  PokeS( ObjectPTR, Object )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, @StringToSendPTR.l, Len( StringToSend ) + 1 ) ; CreateString
  PokeS( StringToSendPTR, StringToSend )
  Retour.l = CallCFunctionFast( *DB_FTP\HTTPRequestData, ExtraPARAM.l, VerbPTR, ObjectPTR, StringToSendPTR )
  RetourSTR.s = PeekS( Retour )
  CallCFunctionFast( *GlobPtr\CreateDeleteString, Retour, 0 )
  ProcedureReturn RetourSTR
 EndProcedure
;

