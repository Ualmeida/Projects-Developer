#INCLUDE "PROTHEUS.CH"
#INCLUDE "APWEBSRV.CH"

/* ===============================================================================
WSDL Location    http://172.16.0.5:8093/WSBGHAPONTA.apw?WSDL
Gerado em        08/27/13 20:53:10
Observações      Código-Fonte gerado por ADVPL WSDL Client 1.120703
                 Alterações neste arquivo podem causar funcionamento incorreto
                 e serão perdidas caso o código-fonte seja gerado novamente.
=============================================================================== */

User Function _EVZRRXF ; Return  // "dummy" function - Internal Use 

/* -------------------------------------------------------------------------------
WSDL Service WSWSBGHAPONTA
------------------------------------------------------------------------------- */

WSCLIENT WSWSBGHAPONTA

	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD RESET
	WSMETHOD CLONE
	WSMETHOD SET_TRAVA

	WSDATA   _URL                      AS String
	WSDATA   _HEADOUT                  AS Array of String
	WSDATA   _COOKIES                  AS Array of String
	WSDATA   oWSCGET                   AS WSBGHAPONTA_STRUC_GET
	WSDATA   cSET_TRAVARESULT          AS string

	// Estruturas mantidas por compatibilidade - NÃO USAR
	WSDATA   oWSSTRUC_GET              AS WSBGHAPONTA_STRUC_GET

ENDWSCLIENT

WSMETHOD NEW WSCLIENT WSWSBGHAPONTA
::Init()
If !FindFunction("XMLCHILDEX")
	UserException("O Código-Fonte Client atual requer os executáveis do Protheus Build [7.00.120420A-20120726] ou superior. Atualize o Protheus ou gere o Código-Fonte novamente utilizando o Build atual.")
EndIf
Return Self

WSMETHOD INIT WSCLIENT WSWSBGHAPONTA
	::oWSCGET            := WSBGHAPONTA_STRUC_GET():New()

	// Estruturas mantidas por compatibilidade - NÃO USAR
	::oWSSTRUC_GET       := ::oWSCGET
Return

WSMETHOD RESET WSCLIENT WSWSBGHAPONTA
	::oWSCGET            := NIL 
	::cSET_TRAVARESULT   := NIL 

	// Estruturas mantidas por compatibilidade - NÃO USAR
	::oWSSTRUC_GET       := NIL
	::Init()
Return

WSMETHOD CLONE WSCLIENT WSWSBGHAPONTA
Local oClone := WSWSBGHAPONTA():New()
	oClone:_URL          := ::_URL 
	oClone:oWSCGET       :=  IIF(::oWSCGET = NIL , NIL ,::oWSCGET:Clone() )
	oClone:cSET_TRAVARESULT := ::cSET_TRAVARESULT

	// Estruturas mantidas por compatibilidade - NÃO USAR
	oClone:oWSSTRUC_GET  := oClone:oWSCGET
Return oClone

// WSDL Method SET_TRAVA of Service WSWSBGHAPONTA

WSMETHOD SET_TRAVA WSSEND oWSCGET WSRECEIVE cSET_TRAVARESULT WSCLIENT WSWSBGHAPONTA
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<SET_TRAVA xmlns="http://172.16.0.5:8093/">'
cSoap += WSSoapValue("CGET", ::oWSCGET, oWSCGET , "STRUC_GET", .T. , .F., 0 , NIL, .F.) 
cSoap += "</SET_TRAVA>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://172.16.0.5:8093/SET_TRAVA",; 
	"DOCUMENT","http://172.16.0.5:8093/",,"1.031217",; 
	"http://172.16.0.5:8093/WSBGHAPONTA.apw")

::Init()
::cSET_TRAVARESULT   :=  WSAdvValue( oXmlRet,"_SET_TRAVARESPONSE:_SET_TRAVARESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.


// WSDL Data Structure STRUC_GET

WSSTRUCT WSBGHAPONTA_STRUC_GET
	WSDATA   oWSAZZ4                   AS WSBGHAPONTA_STRUC_ZZ4 OPTIONAL
	WSDATA   cCCODUSU                  AS string OPTIONAL
	WSDATA   cCMOTIVO                  AS string OPTIONAL
	WSDATA   cCSENHA                   AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGHAPONTA_STRUC_GET
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGHAPONTA_STRUC_GET
Return

WSMETHOD CLONE WSCLIENT WSBGHAPONTA_STRUC_GET
	Local oClone := WSBGHAPONTA_STRUC_GET():NEW()
	oClone:oWSAZZ4              := IIF(::oWSAZZ4 = NIL , NIL , ::oWSAZZ4:Clone() )
	oClone:cCCODUSU             := ::cCCODUSU
	oClone:cCMOTIVO             := ::cCMOTIVO
	oClone:cCSENHA              := ::cCSENHA
Return oClone

WSMETHOD SOAPSEND WSCLIENT WSBGHAPONTA_STRUC_GET
	Local cSoap := ""
	cSoap += WSSoapValue("AZZ4", ::oWSAZZ4, ::oWSAZZ4 , "STRUC_ZZ4", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCODUSU", ::cCCODUSU, ::cCCODUSU , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CMOTIVO", ::cCMOTIVO, ::cCMOTIVO , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CSENHA", ::cCSENHA, ::cCSENHA , "string", .F. , .F., 0 , NIL, .F.) 
Return cSoap

// WSDL Data Structure STRUC_ZZ4

WSSTRUCT WSBGHAPONTA_STRUC_ZZ4
	WSDATA   cCFILIAL                  AS string
	WSDATA   cCIMEI                    AS string
	WSDATA   cCOS                      AS string
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGHAPONTA_STRUC_ZZ4
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGHAPONTA_STRUC_ZZ4
Return

WSMETHOD CLONE WSCLIENT WSBGHAPONTA_STRUC_ZZ4
	Local oClone := WSBGHAPONTA_STRUC_ZZ4():NEW()
	oClone:cCFILIAL             := ::cCFILIAL
	oClone:cCIMEI               := ::cCIMEI
	oClone:cCOS                 := ::cCOS
Return oClone

WSMETHOD SOAPSEND WSCLIENT WSBGHAPONTA_STRUC_ZZ4
	Local cSoap := ""
	cSoap += WSSoapValue("CFILIAL", ::cCFILIAL, ::cCFILIAL , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CIMEI", ::cCIMEI, ::cCIMEI , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("COS", ::cCOS, ::cCOS , "string", .T. , .F., 0 , NIL, .F.) 
Return cSoap