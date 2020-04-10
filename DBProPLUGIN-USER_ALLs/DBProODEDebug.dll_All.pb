; DarkBasic Professional RC2PBIncludes Ver 1.0 File - FULL DLL SETUP
; By Frederic Cordier - 07.02.13
;
Structure DB_ODEStruct
  ODE_Start.l : ODE_Update.l : ODE_SetWorldGravity.l : ODE_SetWorldERP.l
  ODE_SetWorldCFM.l : ODE_SetWorldStep.l : ODE_SetWorldQuickStepNumIterations.l : ODE_SetStepMode.l
  .l : ODE_CreateStaticBox.l : ODE_CreateStaticTriangleMesh.l : ODE_CreateDynamicSphere.l
  ODE_CreateDynamicBox.l : ODE_CreateDynamicBox1.l : ODE_CreateDynamicTriangleMesh.l : ODE_DestroyObject.l
  ODE_SetLinearVelocity.l : ODE_SetAngularVelocity.l : ODE_SetBodyRotation.l : ODE_SetBodyMass.l
  ODE_SetSurfaceMode.l : ODE_SetSurfaceModeContactMu2.l : ODE_SetSurfaceModeContactMu21.l : ODE_SetSurfaceModeContactMu22.l
  ODE_SetSurfaceModeContactSoftCFM.l : ODE_SetSurfaceModeContactMotion1.l : ODE_SetSurfaceModeContactMotion2.l : ODE_SetSurfaceModeContactSlip1.l
  ODE_SetSurfaceModeContactSlip2.l : ODE_SetSurfaceModeContactApprox0.l : ODE_SetSurfaceModeContactApprox11.l : ODE_SetSurfaceModeContactApprox12.l
  ODE_SetSurfaceModeContactApprox1.l : ODE_SetContact.l : ODE_SetContactMu2.l : ODE_SetContactFDir1.l
  ODE_SetContactBounce.l : ODE_SetContactVelocity.l : ODE_SetContactSoftERP.l : ODE_SetContactSoftCFM.l
  ODE_SetContactMotion1.l : ODE_SetContactMotion2.l : ODE_SetContactSlip1.l : ODE_SetContactSlip2.l
  ODE_CreateStaticUniverse.l : ODE_CollisionMessageExists.l : ODE_CollisionGetMessage.l : ODE_GetObjectA.l
  ODE_GetObjectB.l : ODE_GetObjectAVelocityX.l : ODE_GetObjectAVelocityY.l : ODE_GetObjectAVelocityZ.l
  ODE_GetObjectBVelocityX.l : ODE_GetObjectBVelocityY.l : ODE_GetObjectBVelocityZ.l : ODE_GetBodyLinearVelocityX.l
  ODE_GetBodyLinearVelocityY.l : ODE_GetBodyLinearVelocityZ.l : ODE_CreateDynamicCylinder.l : ODE_GetObjectAAngularVelocityX.l
  ODE_GetObjectAAngularVelocityY.l : ODE_GetObjectAAngularVelocityZ.l : ODE_GetObjectBAngularVelocityX.l : ODE_GetObjectBAngularVelocityY.l
  ODE_GetObjectBAngularVelocityZ.l : ODE_SetGravity.l : ODE_End.l : ODE_AddBodyForce.l
  ODE_GetBodyHeight.l : ODE_GetBodyAdjustmentX.l : ODE_GetBodyAdjustmentY.l : ODE_GetBodyAdjustmentZ.l
  ODE_SetBodyResponse.l : ODE_GetObjectAContact.l : ODE_GetObjectBContact.l : 
 EndStructure

Procedure.l CheckODE()
  SUCCESS.l = 1
  If OpenLibrary( 1, "DBProODEDebug.dll")
    DB_ODE\ODE_Start= AIsFunction( 1 , "?ODE_Start@@YAXXZ" ) ; 1 ODE START 
    DB_ODE\ODE_Update= AIsFunction( 1 , "?ODE_Update@@YAXXZ" ) ; 2 ODE UPDATE 
    DB_ODE\ODE_SetWorldGravity= AIsFunction( 1 , "?ODE_SetWorldGravity@@YAXMMM@Z" ) ; 3 ODE SET WORLD GRAVITY 
    DB_ODE\ODE_SetWorldERP= AIsFunction( 1 , "?ODE_SetWorldERP@@YAXM@Z" ) ; 4 ODE SET WORLD ERP 
    DB_ODE\ODE_SetWorldCFM= AIsFunction( 1 , "?ODE_SetWorldCFM@@YAXM@Z" ) ; 5 ODE SET WORLD CFM 
    DB_ODE\ODE_SetWorldStep= AIsFunction( 1 , "?ODE_SetWorldStep@@YAXM@Z" ) ; 6 ODE SET WORLD STEP 
    DB_ODE\ODE_SetWorldQuickStepNumIterations= AIsFunction( 1 , "?ODE_SetWorldQuickStepNumIterations@@YAXH@Z" ) ; 7 ODE SET WORLD QUICK STEP NUM ITERATIONS 
    DB_ODE\ODE_SetStepMode= AIsFunction( 1 , "?ODE_SetStepMode@@YAXH@Z" ) ; 8 ODE SET STEP MODE 
    DB_ODE\= AIsFunction( 1 , "" ) ; 9 ODE CREATE STATIC SPHERE 
    DB_ODE\ODE_CreateStaticBox= AIsFunction( 1 , "?ODE_CreateStaticBox@@YAXH@Z" ) ; 10 ODE CREATE STATIC BOX 
    DB_ODE\ODE_CreateStaticTriangleMesh= AIsFunction( 1 , "?ODE_CreateStaticTriangleMesh@@YAXH@Z" ) ; 11 ODE CREATE STATIC TRIANGLE MESH 
    DB_ODE\ODE_CreateDynamicSphere= AIsFunction( 1 , "?ODE_CreateDynamicSphere@@YAXH@Z" ) ; 12 ODE CREATE DYNAMIC SPHERE 
    DB_ODE\ODE_CreateDynamicBox= AIsFunction( 1 , "?ODE_CreateDynamicBox@@YAXH@Z" ) ; 13 ODE CREATE DYNAMIC BOX 
    DB_ODE\ODE_CreateDynamicBox1= AIsFunction( 1 , "?ODE_CreateDynamicBox@@YAXHMMM@Z" ) ; 14 ODE CREATE DYNAMIC BOX 
    DB_ODE\ODE_CreateDynamicTriangleMesh= AIsFunction( 1 , "?ODE_CreateDynamicTriangleMesh@@YAXH@Z" ) ; 15 ODE CREATE DYNAMIC TRIANGLE MESH 
    DB_ODE\ODE_DestroyObject= AIsFunction( 1 , "?ODE_DestroyObject@@YAXH@Z" ) ; 16 ODE DESTROY OBJECT 
    DB_ODE\ODE_SetLinearVelocity= AIsFunction( 1 , "?ODE_SetLinearVelocity@@YAXHMMM@Z" ) ; 17 ODE SET LINEAR VELOCITY 
    DB_ODE\ODE_SetAngularVelocity= AIsFunction( 1 , "?ODE_SetAngularVelocity@@YAXHMMM@Z" ) ; 18 ODE SET ANGULAR VELOCITY 
    DB_ODE\ODE_SetBodyRotation= AIsFunction( 1 , "?ODE_SetBodyRotation@@YAXHMMM@Z" ) ; 19 ODE SET BODY ROTATION 
    DB_ODE\ODE_SetBodyMass= AIsFunction( 1 , "?ODE_SetBodyMass@@YAXHM@Z" ) ; 20 ODE SET BODY MASS 
    DB_ODE\ODE_SetSurfaceMode= AIsFunction( 1 , "?ODE_SetSurfaceMode@@YAXHHH@Z" ) ; 21 ODE SETSURFACE MODE 
    DB_ODE\ODE_SetSurfaceModeContactMu2= AIsFunction( 1 , "?ODE_SetSurfaceModeContactMu2@@YAXHH@Z" ) ; 22 ODE SETSURFACE MODE CONTACT MU2 
    DB_ODE\ODE_SetSurfaceModeContactMu21= AIsFunction( 1 , "?ODE_SetSurfaceModeContactMu2@@YAXHH@Z" ) ; 23 ODE SETSURFACE MODE CONTACT BOUNCE 
    DB_ODE\ODE_SetSurfaceModeContactMu22= AIsFunction( 1 , "?ODE_SetSurfaceModeContactMu2@@YAXHH@Z" ) ; 24 ODE SETSURFACE MODE CONTACT SOFT ERP 
    DB_ODE\ODE_SetSurfaceModeContactSoftCFM= AIsFunction( 1 , "?ODE_SetSurfaceModeContactSoftCFM@@YAXHH@Z" ) ; 25 ODE SETSURFACE MODE CONTACT SOFT CFM 
    DB_ODE\ODE_SetSurfaceModeContactMotion1= AIsFunction( 1 , "?ODE_SetSurfaceModeContactMotion1@@YAXHH@Z" ) ; 26 ODE SETSURFACE MODE CONTACT MOTION1 
    DB_ODE\ODE_SetSurfaceModeContactMotion2= AIsFunction( 1 , "?ODE_SetSurfaceModeContactMotion2@@YAXHH@Z" ) ; 27 ODE SETSURFACE MODE CONTACT MOTION2 
    DB_ODE\ODE_SetSurfaceModeContactSlip1= AIsFunction( 1 , "?ODE_SetSurfaceModeContactSlip1@@YAXHH@Z" ) ; 28 ODE SETSURFACE MODE CONTACT SLIP1 
    DB_ODE\ODE_SetSurfaceModeContactSlip2= AIsFunction( 1 , "?ODE_SetSurfaceModeContactSlip2@@YAXHH@Z" ) ; 29 ODE SETSURFACE MODE CONTACT SLIP2 
    DB_ODE\ODE_SetSurfaceModeContactApprox0= AIsFunction( 1 , "?ODE_SetSurfaceModeContactApprox0@@YAXHH@Z" ) ; 30 ODE SETSURFACE MODE CONTACT APPROX0 
    DB_ODE\ODE_SetSurfaceModeContactApprox11= AIsFunction( 1 , "?ODE_SetSurfaceModeContactApprox11@@YAXHH@Z" ) ; 31 ODE SETSURFACE MODE CONTACT APPROX11 
    DB_ODE\ODE_SetSurfaceModeContactApprox12= AIsFunction( 1 , "?ODE_SetSurfaceModeContactApprox12@@YAXHH@Z" ) ; 32 ODE SETSURFACE MODE CONTACT APPROX12 
    DB_ODE\ODE_SetSurfaceModeContactApprox1= AIsFunction( 1 , "?ODE_SetSurfaceModeContactApprox1@@YAXHH@Z" ) ; 33 ODE SETSURFACE MODE CONTACT APPROX1 
    DB_ODE\ODE_SetContact= AIsFunction( 1 , "?ODE_SetContact@@YAXHHM@Z" ) ; 34 ODE SET CONTACT 
    DB_ODE\ODE_SetContactMu2= AIsFunction( 1 , "?ODE_SetContactMu2@@YAXHM@Z" ) ; 35 ODE SET CONTACT MU2 
    DB_ODE\ODE_SetContactFDir1= AIsFunction( 1 , "?ODE_SetContactFDir1@@YAXHM@Z" ) ; 36 ODE SET CONTACT FDIR1 
    DB_ODE\ODE_SetContactBounce= AIsFunction( 1 , "?ODE_SetContactBounce@@YAXHM@Z" ) ; 37 ODE SET CONTACT BOUNCE 
    DB_ODE\ODE_SetContactVelocity= AIsFunction( 1 , "?ODE_SetContactVelocity@@YAXHM@Z" ) ; 38 ODE SET CONTACT VELOCITY 
    DB_ODE\ODE_SetContactSoftERP= AIsFunction( 1 , "?ODE_SetContactSoftERP@@YAXHM@Z" ) ; 39 ODE SET CONTACT SOFT ERP 
    DB_ODE\ODE_SetContactSoftCFM= AIsFunction( 1 , "?ODE_SetContactSoftCFM@@YAXHM@Z" ) ; 40 ODE SET CONTACT SOFT CFM 
    DB_ODE\ODE_SetContactMotion1= AIsFunction( 1 , "?ODE_SetContactMotion1@@YAXHM@Z" ) ; 41 ODE SET CONTACT MOTION1 
    DB_ODE\ODE_SetContactMotion2= AIsFunction( 1 , "?ODE_SetContactMotion2@@YAXHM@Z" ) ; 42 ODE SET CONTACT MOTION2 
    DB_ODE\ODE_SetContactSlip1= AIsFunction( 1 , "?ODE_SetContactSlip1@@YAXHM@Z" ) ; 43 ODE SET CONTACT SLIP1 
    DB_ODE\ODE_SetContactSlip2= AIsFunction( 1 , "?ODE_SetContactSlip2@@YAXHM@Z" ) ; 44 ODE SET CONTACT SLIP2 
    DB_ODE\ODE_CreateStaticUniverse= AIsFunction( 1 , "?ODE_CreateStaticUniverse@@YAXXZ" ) ; 45 ODE CREATE STATIC UNIVERSE 
    DB_ODE\ODE_CollisionMessageExists= AIsFunction( 1 , "?ODE_CollisionMessageExists@@YAHXZ" ) ; 46 ODE COLLISION MESSAGE EXISTS 
    DB_ODE\ODE_CollisionGetMessage= AIsFunction( 1 , "?ODE_CollisionGetMessage@@YAXXZ" ) ; 47 ODE COLLISION GET MESSAGE 
    DB_ODE\ODE_GetObjectA= AIsFunction( 1 , "?ODE_GetObjectA@@YAHXZ" ) ; 48 ODE GET OBJECT A 
    DB_ODE\ODE_GetObjectB= AIsFunction( 1 , "?ODE_GetObjectB@@YAHXZ" ) ; 49 ODE GET OBJECT B 
    DB_ODE\ODE_GetObjectAVelocityX= AIsFunction( 1 , "?ODE_GetObjectAVelocityX@@YAKXZ" ) ; 50 ODE GET OBJECT A VELOCITY X 
    DB_ODE\ODE_GetObjectAVelocityY= AIsFunction( 1 , "?ODE_GetObjectAVelocityY@@YAKXZ" ) ; 51 ODE GET OBJECT A VELOCITY Y 
    DB_ODE\ODE_GetObjectAVelocityZ= AIsFunction( 1 , "?ODE_GetObjectAVelocityZ@@YAKXZ" ) ; 52 ODE GET OBJECT A VELOCITY Z 
    DB_ODE\ODE_GetObjectBVelocityX= AIsFunction( 1 , "?ODE_GetObjectBVelocityX@@YAKXZ" ) ; 53 ODE GET OBJECT B VELOCITY X 
    DB_ODE\ODE_GetObjectBVelocityY= AIsFunction( 1 , "?ODE_GetObjectBVelocityY@@YAKXZ" ) ; 54 ODE GET OBJECT B VELOCITY Y 
    DB_ODE\ODE_GetObjectBVelocityZ= AIsFunction( 1 , "?ODE_GetObjectBVelocityZ@@YAKXZ" ) ; 55 ODE GET OBJECT B VELOCITY Z 
    DB_ODE\ODE_GetBodyLinearVelocityX= AIsFunction( 1 , "?ODE_GetBodyLinearVelocityX@@YAKH@Z" ) ; 56 ODE GET BODY LINEAR VELOCITY X 
    DB_ODE\ODE_GetBodyLinearVelocityY= AIsFunction( 1 , "?ODE_GetBodyLinearVelocityY@@YAKH@Z" ) ; 57 ODE GET BODY LINEAR VELOCITY Y 
    DB_ODE\ODE_GetBodyLinearVelocityZ= AIsFunction( 1 , "?ODE_GetBodyLinearVelocityZ@@YAKH@Z" ) ; 58 ODE GET BODY LINEAR VELOCITY Z 
    DB_ODE\ODE_CreateDynamicCylinder= AIsFunction( 1 , "?ODE_CreateDynamicCylinder@@YAXH@Z" ) ; 59 ODE CREATE DYNAMIC CYLINDER 
    DB_ODE\ODE_GetObjectAAngularVelocityX= AIsFunction( 1 , "?ODE_GetObjectAAngularVelocityX@@YAKXZ" ) ; 60 ODE GET OBJECT A ANGULAR VELOCITY X 
    DB_ODE\ODE_GetObjectAAngularVelocityY= AIsFunction( 1 , "?ODE_GetObjectAAngularVelocityY@@YAKXZ" ) ; 61 ODE GET OBJECT A ANGULAR VELOCITY Y 
    DB_ODE\ODE_GetObjectAAngularVelocityZ= AIsFunction( 1 , "?ODE_GetObjectAAngularVelocityZ@@YAKXZ" ) ; 62 ODE GET OBJECT A ANGULAR VELOCITY Z 
    DB_ODE\ODE_GetObjectBAngularVelocityX= AIsFunction( 1 , "?ODE_GetObjectBAngularVelocityX@@YAKXZ" ) ; 63 ODE GET OBJECT B ANGULAR VELOCITY X 
    DB_ODE\ODE_GetObjectBAngularVelocityY= AIsFunction( 1 , "?ODE_GetObjectBAngularVelocityY@@YAKXZ" ) ; 64 ODE GET OBJECT B ANGULAR VELOCITY Y 
    DB_ODE\ODE_GetObjectBAngularVelocityZ= AIsFunction( 1 , "?ODE_GetObjectBAngularVelocityZ@@YAKXZ" ) ; 65 ODE GET OBJECT B ANGULAR VELOCITY Z 
    DB_ODE\ODE_SetGravity= AIsFunction( 1 , "?ODE_SetGravity@@YAXHH@Z" ) ; 66 ODE SET GRAVITY 
    DB_ODE\ODE_End= AIsFunction( 1 , "?ODE_End@@YAXXZ" ) ; 67 ODE END 
    DB_ODE\ODE_AddBodyForce= AIsFunction( 1 , "?ODE_AddBodyForce@@YAXHMMMMMM@Z" ) ; 68 ODE ADD FORCE 
    DB_ODE\ODE_GetBodyHeight= AIsFunction( 1 , "?ODE_GetBodyHeight@@YAKH@Z" ) ; 69 ODE GET BODY HEIGHT 
    DB_ODE\ODE_GetBodyAdjustmentX= AIsFunction( 1 , "?ODE_GetBodyAdjustmentX@@YAKH@Z" ) ; 71 ODE GET BODY ADJUSTMENT X 
    DB_ODE\ODE_GetBodyAdjustmentY= AIsFunction( 1 , "?ODE_GetBodyAdjustmentY@@YAKH@Z" ) ; 72 ODE GET BODY ADJUSTMENT Y 
    DB_ODE\ODE_GetBodyAdjustmentZ= AIsFunction( 1 , "?ODE_GetBodyAdjustmentZ@@YAKH@Z" ) ; 73 ODE GET BODY ADJUSTMENT Z 
    DB_ODE\ODE_SetBodyResponse= AIsFunction( 1 , "?ODE_SetBodyResponse@@YAXHH@Z" ) ; 74 ODE SET RESPONSE 
    DB_ODE\ODE_GetObjectAContact= AIsFunction( 1 , "?ODE_GetObjectAContact@@YAKXZ" ) ; 75 ODE GET OBJECT A CONTACT 
    DB_ODE\ODE_GetObjectBContact= AIsFunction( 1 , "?ODE_GetObjectBContact@@YAKXZ" ) ; 76 ODE GET OBJECT B CONTACT 
   Else
    SUCCESS.l = 0
   Endif
  ProcedureReturn SUCCESS
 EndProcedure

; *********************************************************************
Procedure DBODE_Start()
  CallCFunctionFast( *DB_ODE\ODE_Start )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_Update()
  CallCFunctionFast( *DB_ODE\ODE_Update )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetWorldGravity( Param0.f, Param1.f, Param2.f )
  CallCFunctionFast( *DB_ODE\ODE_SetWorldGravity, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetWorldERP( Param0.f )
  CallCFunctionFast( *DB_ODE\ODE_SetWorldERP, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetWorldCFM( Param0.f )
  CallCFunctionFast( *DB_ODE\ODE_SetWorldCFM, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetWorldStep( Param0.f )
  CallCFunctionFast( *DB_ODE\ODE_SetWorldStep, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetWorldQuickStepNumIterations( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_SetWorldQuickStepNumIterations, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetStepMode( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_SetStepMode, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DB1( Param0.l )
  CallCFunctionFast( *DB_ODE\, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateStaticBox( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_CreateStaticBox, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateStaticTriangleMesh( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_CreateStaticTriangleMesh, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateDynamicSphere( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_CreateDynamicSphere, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateDynamicBox( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_CreateDynamicBox, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateDynamicBox1( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_ODE\ODE_CreateDynamicBox1, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateDynamicTriangleMesh( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_CreateDynamicTriangleMesh, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_DestroyObject( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_DestroyObject, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetLinearVelocity( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_ODE\ODE_SetLinearVelocity, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetAngularVelocity( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_ODE\ODE_SetAngularVelocity, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetBodyRotation( Param0.l, Param1.f, Param2.f, Param3.f )
  CallCFunctionFast( *DB_ODE\ODE_SetBodyRotation, Param0, Param1, Param2, Param3 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetBodyMass( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetBodyMass, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceMode( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceMode, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactMu2( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactMu2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactMu21( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactMu21, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactMu22( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactMu22, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactSoftCFM( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactSoftCFM, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactMotion1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactMotion1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactMotion2( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactMotion2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactSlip1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactSlip1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactSlip2( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactSlip2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactApprox0( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactApprox0, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactApprox11( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactApprox11, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactApprox12( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactApprox12, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetSurfaceModeContactApprox1( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetSurfaceModeContactApprox1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContact( Param0.l, Param1.l, Param2.l )
  CallCFunctionFast( *DB_ODE\ODE_SetContact, Param0, Param1, Param2 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactMu2( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactMu2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactFDir1( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactFDir1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactBounce( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactBounce, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactVelocity( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactVelocity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactSoftERP( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactSoftERP, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactSoftCFM( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactSoftCFM, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactMotion1( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactMotion1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactMotion2( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactMotion2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactSlip1( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactSlip1, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetContactSlip2( Param0.l, Param1.f )
  CallCFunctionFast( *DB_ODE\ODE_SetContactSlip2, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateStaticUniverse()
  CallCFunctionFast( *DB_ODE\ODE_CreateStaticUniverse )
 EndProcedure
;
; *********************************************************************
Procedure.l DBODE_CollisionMessageExists()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_CollisionMessageExists )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CollisionGetMessage()
  CallCFunctionFast( *DB_ODE\ODE_CollisionGetMessage )
 EndProcedure
;
; *********************************************************************
Procedure.l DBODE_GetObjectA()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectA )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.l DBODE_GetObjectB()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectB )
  ProcedureReturn Retour
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAVelocityX()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAVelocityX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAVelocityY()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAVelocityY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAVelocityZ()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAVelocityZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBVelocityX()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBVelocityX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBVelocityY()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBVelocityY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBVelocityZ()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBVelocityZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyLinearVelocityX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyLinearVelocityX, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyLinearVelocityY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyLinearVelocityY, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyLinearVelocityZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyLinearVelocityZ, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBODE_CreateDynamicCylinder( Param0.l )
  CallCFunctionFast( *DB_ODE\ODE_CreateDynamicCylinder, Param0 )
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAAngularVelocityX()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAAngularVelocityX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAAngularVelocityY()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAAngularVelocityY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAAngularVelocityZ()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAAngularVelocityZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBAngularVelocityX()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBAngularVelocityX )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBAngularVelocityY()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBAngularVelocityY )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBAngularVelocityZ()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBAngularVelocityZ )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetGravity( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetGravity, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_End()
  CallCFunctionFast( *DB_ODE\ODE_End )
 EndProcedure
;
; *********************************************************************
Procedure DBODE_AddBodyForce( Param0.l, Param1.f, Param2.f, Param3.f, Param4.f, Param5.f, Param6.f )
  CallCFunctionFast( *DB_ODE\ODE_AddBodyForce, Param0, Param1, Param2, Param3, Param4, Param5, Param6 )
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyHeight( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyHeight, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyAdjustmentX( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyAdjustmentX, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyAdjustmentY( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyAdjustmentY, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetBodyAdjustmentZ( Param1.l )
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetBodyAdjustmentZ, Param1 )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure DBODE_SetBodyResponse( Param0.l, Param1.l )
  CallCFunctionFast( *DB_ODE\ODE_SetBodyResponse, Param0, Param1 )
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectAContact()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectAContact )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;
; *********************************************************************
Procedure.f DBODE_GetObjectBContact()
  Retour.l = CallCFunctionFast( *DB_ODE\ODE_GetObjectBContact )
  RetourFLT.f = PeekF( @Retour )
  ProcedureReturn RetourFLT
 EndProcedure
;

