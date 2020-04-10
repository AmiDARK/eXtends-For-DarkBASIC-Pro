; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_MemblocksStruct
  ChangeMeshFromMemblock.l : CopyMemblock.l : CreateBitmapFromMemblock.l : CreateImageFromMemblock.l
  CreateMemblockFromBitmap.l : CreateMemblockFromImage.l : CreateMemblockFromMesh.l : CreateMemblockFromSound.l
  CreateMeshFromMemblock.l : CreateSoundFromMemblock.l : DeleteMemblock.l : GetMemblockPtr.l
  GetMemblockSize.l : MakeMemblock.l : MemblockExist.l : ReadMemblockByte.l
  ReadMemblockDWord.l : ReadMemblockFloat.l : ReadMemblockWordLLL.l : WriteMemblockByte.l
  WriteMemblockDWord.l : WriteMemblockFloat.l : WriteMemblockWord.l : CreateMemblockFromArray.l
  CreateArrayFromMemblock.l : 
 EndStructure

Procedure.l CheckMemblocks()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProMemblocksDebug.dll")
    DB_Memblocks\ChangeMeshFromMemblock= AIsFunction( 1 , "?ChangeMeshFromMemblock@@YAXHH@Z" ) ; 1 CHANGE MESH FROM MEMBLOCK Mesh Number,Memblock Number
    DB_Memblocks\CopyMemblock= AIsFunction( 1 , "?CopyMemblock@@YAXHHHHH@Z" ) ; 2 COPY MEMBLOCK From,To,PosFrom,PosTo,Bytes
    DB_Memblocks\CreateBitmapFromMemblock= AIsFunction( 1 , "?CreateBitmapFromMemblock@@YAXHH@Z" ) ; 3 MAKE BITMAP FROM MEMBLOCK Bitmap Number,Memblock Number
    DB_Memblocks\CreateImageFromMemblock= AIsFunction( 1 , "?CreateImageFromMemblock@@YAXHH@Z" ) ; 4 MAKE IMAGE FROM MEMBLOCK Image Number, Memblock Number
    DB_Memblocks\CreateMemblockFromBitmap= AIsFunction( 1 , "?CreateMemblockFromBitmap@@YAXHH@Z" ) ; 5 MAKE MEMBLOCK FROM BITMAP Memblock Number, Bitmap Number
    DB_Memblocks\CreateMemblockFromImage= AIsFunction( 1 , "?CreateMemblockFromImage@@YAXHH@Z" ) ; 6 MAKE MEMBLOCK FROM IMAGE Memblock Number,Image Number
    DB_Memblocks\CreateMemblockFromMesh= AIsFunction( 1 , "?CreateMemblockFromMesh@@YAXHH@Z" ) ; 7 MAKE MEMBLOCK FROM MESH Memblock Number,Mesh Number
    DB_Memblocks\CreateMemblockFromSound= AIsFunction( 1 , "?CreateMemblockFromSound@@YAXHH@Z" ) ; 8 MAKE MEMBLOCK FROM SOUND Memblock Number, Sound Number
    DB_Memblocks\CreateMeshFromMemblock= AIsFunction( 1 , "?CreateMeshFromMemblock@@YAXHH@Z" ) ; 9 MAKE MESH FROM MEMBLOCK Mesh Number, Memblock Number
    DB_Memblocks\CreateSoundFromMemblock= AIsFunction( 1 , "?CreateSoundFromMemblock@@YAXHH@Z" ) ; 10 MAKE SOUND FROM MEMBLOCK Sound Number, Memblock Number
    DB_Memblocks\DeleteMemblock= AIsFunction( 1 , "?DeleteMemblock@@YAXH@Z" ) ; 11 DELETE MEMBLOCK Memblock Number
    DB_Memblocks\GetMemblockPtr= AIsFunction( 1 , "?GetMemblockPtr@@YAKH@Z" ) ; 12 GET MEMBLOCK PTR Memblock Number
    DB_Memblocks\GetMemblockSize= AIsFunction( 1 , "?GetMemblockSize@@YAHH@Z" ) ; 13 GET MEMBLOCK SIZE Memblock Number
    DB_Memblocks\MakeMemblock= AIsFunction( 1 , "?MakeMemblock@@YAXHH@Z" ) ; 14 MAKE MEMBLOCK Memblock Number, Size in Bytes
    DB_Memblocks\MemblockExist= AIsFunction( 1 , "?MemblockExist@@YAHH@Z" ) ; 15 MEMBLOCK EXIST Memblock Number
    DB_Memblocks\ReadMemblockByte= AIsFunction( 1 , "?ReadMemblockByte@@YAHHH@Z" ) ; 16 MEMBLOCK BYTE Memblock Number, Position
    DB_Memblocks\ReadMemblockDWord= AIsFunction( 1 , "?ReadMemblockDWord@@YAKHH@Z" ) ; 17 MEMBLOCK DWORD Memblock Number, Position
    DB_Memblocks\ReadMemblockFloat= AIsFunction( 1 , "?ReadMemblockFloat@@YAKHH@Z" ) ; 18 MEMBLOCK FLOAT Memblock Number, Position
    DB_Memblocks\ReadMemblockWordLLL= AIsFunction( 1 , "?ReadMemblockWordLLL@@YAHHH@Z" ) ; 19 MEMBLOCK WORD Memblock Number, Position
    DB_Memblocks\WriteMemblockByte= AIsFunction( 1 , "?WriteMemblockByte@@YAXHHH@Z" ) ; 20 WRITE MEMBLOCK BYTE Memblock Number, Position, Byte
    DB_Memblocks\WriteMemblockDWord= AIsFunction( 1 , "?WriteMemblockDWord@@YAXHHK@Z" ) ; 21 WRITE MEMBLOCK DWORD Memblock Number, Position, DWord
    DB_Memblocks\WriteMemblockFloat= AIsFunction( 1 , "?WriteMemblockFloat@@YAXHHM@Z" ) ; 22 WRITE MEMBLOCK FLOAT Memblock Number, Position, Float
    DB_Memblocks\WriteMemblockWord= AIsFunction( 1 , "?WriteMemblockWord@@YAXHHH@Z" ) ; 23 WRITE MEMBLOCK WORD Memblock Number, Position, Word
    DB_Memblocks\CreateMemblockFromArray= AIsFunction( 1 , "?CreateMemblockFromArray@@YAXHK@Z" ) ; 24 MAKE MEMBLOCK FROM ARRAY Memblock Number, Array Name(0)
    DB_Memblocks\CreateArrayFromMemblock= AIsFunction( 1 , "?CreateArrayFromMemblock@@YAXKH@Z" ) ; 25 MAKE ARRAY FROM MEMBLOCK Array Name(0), Memblock Number
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBChangeMeshFromMemblock( MeshNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\ChangeMeshFromMemblock, MeshNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCopyMemblock( _From.l, _To.l, PosFrom.l, PosTo.l, Bytes.l )
  CallCFunctionFast( *DB_Memblocks\CopyMemblock, _From, _To, PosFrom, PosTo, Bytes )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateBitmapFromMemblock( BitmapNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateBitmapFromMemblock, BitmapNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateImageFromMemblock( ImageNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateImageFromMemblock, ImageNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateMemblockFromBitmap( MemblockNumber.l, BitmapNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateMemblockFromBitmap, MemblockNumber, BitmapNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateMemblockFromImage( MemblockNumber.l, ImageNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateMemblockFromImage, MemblockNumber, ImageNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateMemblockFromMesh( MemblockNumber.l, MeshNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateMemblockFromMesh, MemblockNumber, MeshNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateMemblockFromSound( MemblockNumber.l, SoundNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateMemblockFromSound, MemblockNumber, SoundNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateMeshFromMemblock( MeshNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateMeshFromMemblock, MeshNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateSoundFromMemblock( SoundNumber.l, MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateSoundFromMemblock, SoundNumber, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure DBDeleteMemblock( MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\DeleteMemblock, MemblockNumber )
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMemblockPtr( MemblockNumber.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\GetMemblockPtr, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBGetMemblockMemblockSize( MemblockNumber.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\GetMemblockSize, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBMakeMemblock( MemblockNumber.l, SizeinBytes.l )
  CallCFunctionFast( *DB_Memblocks\MakeMemblock, MemblockNumber, SizeinBytes )
 EndProcedure
;
; *********************************************************************
Procedure.l DBMemblockExist( MemblockNumber.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\MemblockExist, MemblockNumber )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBReadMemblockByte( MemblockNumber.l, Position.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\ReadMemblockByte, MemblockNumber, Position )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBReadMemblockDWord( MemblockNumber.l, Position.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\ReadMemblockDWord, MemblockNumber, Position )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBReadMemblockFloat( MemblockNumber.l, Position.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\ReadMemblockFloat, MemblockNumber, Position )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.l DBReadMemblockWordLLL( MemblockNumber.l, Position.l )
  Retour.l = CallCFunctionFast( *DB_Memblocks\ReadMemblockWordLLL, MemblockNumber, Position )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBWriteMemblockByte( MemblockNumber.l, Position.l, Byte.l )
  CallCFunctionFast( *DB_Memblocks\WriteMemblockByte, MemblockNumber, Position, Byte )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteMemblockDWord( MemblockNumber.l, Position.l, DWord.l )
  CallCFunctionFast( *DB_Memblocks\WriteMemblockDWord, MemblockNumber, Position, DWord )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteMemblockFloat( MemblockNumber.l, Position.l, Float.f )
  CallCFunctionFast( *DB_Memblocks\WriteMemblockFloat, MemblockNumber, Position, Float )
 EndProcedure
;
; *********************************************************************
Procedure DBWriteMemblockWord( MemblockNumber.l, Position.l, Word.l )
  CallCFunctionFast( *DB_Memblocks\WriteMemblockWord, MemblockNumber, Position, Word )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateMemblockFromArray( MemblockNumber.l, ArrayName0 )
  CallCFunctionFast( *DB_Memblocks\CreateMemblockFromArray, MemblockNumber, ArrayName0 )
 EndProcedure
;
; *********************************************************************
Procedure DBCreateArrayFromMemblock( ArrayName0, MemblockNumber.l )
  CallCFunctionFast( *DB_Memblocks\CreateArrayFromMemblock, ArrayName0, MemblockNumber )
 EndProcedure
;

