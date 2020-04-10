;
; ************************************************************************************
; *                                                                                  *
; *                              DYNAMIC Bitmap COMMANDS                             *
; *                                                                                  *
; ************************************************************************************
;
ProcedureCDLL BMP_Clear()
  If BMPInitialized = 1
    ; On supprime tout les objets qui ne l'auraient pas été...
    If DLH_GetItemCounter() > 0
      For XLoop = DLH_GetItemCounter() To 1 Step -1
        If DBBitmapExist( XLoop ) = 1
          DBDeleteBitmap( XLoop )
         EndIf
       Next XLoop
     EndIf
    DLH_ClearList()
   EndIf
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l BMP_Count()
  If BMPInitialized = 1
    Retour.l = DLH_GetCount()
   Else
    Retour = 0
   EndIf
  ProcedureReturn Retour
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l BMP_Delete( Number.l )
  If BMPInitialized = 1
    ; Le numéro de l'objet est-il correct.
    If Number > 0
      ; En tout premier lieu, on supprime l'objet.
      If DBBitmapExist( Number ) = 1 : DBDeleteBitmap( Number ) : EndIf
      ; Si l'objet est le dernier du compteur, on décrémente le compteur sinon on incrément la pile avec l'objet.
      Number = DLH_FreeItem( Number )
     EndIf
   Else
    Number = -1
   EndIf
  ProcedureReturn Number
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l BMP_DynamicLoad( File.l )
  If File <> 0
    Fichier.s = MyDeleteString( File )
;    Fichier.s = PeekS( File )
;    CallCFunctionFast( *GlobPtr\CreateDeleteString, File, 0 )
    If BMPInitialized = 1
      Target.l = DLH_GetNextFreeItem()
      If Target > 0
        If DBBitmapExist( Target ) = 0
          DBLoadBitmapA( Fichier , Target )
         Else
          Target = -1
         EndIf
       EndIf
     Else
      Target = -1
     EndIf
   Else
    Target = -1
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l BMP_DynamicClone( Source.l )
  Target.l = -1
  If BMPInitialized = 1
    If Source > 0
      If DBBitmapExist( Source ) = 1
        Width.l = DBBitmapWidth( Source )
        Height.l = DBBitmapHeight( Source )
        Target.l = DLH_GetNextFreeItem()
        If DBBitmapExist( Target ) = 0
          DBCreateBitmap( Target, Width, Height )
         EndIf
        DBCopyBitmap( Target, Source )
       EndIf
     EndIf
   EndIf
  ProcedureReturn Target
 EndProcedure 
; ***************************************************************************************
ProcedureCDLL.l BMP_DynamicMake( Width.l, Height.l )
  If BMPInitialized = 1
    Target.l = DLH_GetNextFreeItem()
    If DBBitmapExist( Target ) = 0
      DBCreateBitmap( Target, Width, Height )
     EndIf
   Else
    Target = 0
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************
ProcedureCDLL.l BMP_MakeBitmapFromMemblock( Memblock.l )
  Target.l = 0
  If BMPInitialized = 1
    If DBMemblockExist( Memblock ) = 1
      Target = DLH_GetNextFreeItem()
      If DBBitmapExist( Target ) = 0
        DBCreateBitmapFromMemblock( Target, Memblock )
       EndIf
     EndIf
   EndIf
  ProcedureReturn Target
 EndProcedure
; ***************************************************************************************

; IDE Options = PureBasic 4.20 (Windows - x86)
; CursorPosition = 49
; FirstLine = 46
; Folding = --