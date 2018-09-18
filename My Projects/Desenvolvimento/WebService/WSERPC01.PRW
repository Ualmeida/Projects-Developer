#INCLUDE "PROTHEUS.CH"
#INCLUDE "APWEBSRV.CH"

/* ===============================================================================
WSDL Location    http://localhost:801/ws/WSERPA01.apw?WSDL
Gerado em        05/27/18 18:07:31
Observações      Código-Fonte gerado por ADVPL WSDL Client 1.120703
                 Alterações neste arquivo podem causar funcionamento incorreto
                 e serão perdidas caso o código-fonte seja gerado novamente.
=============================================================================== */

User Function _NMQMWGU ; Return  // "dummy" function - Internal Use 

/* -------------------------------------------------------------------------------
WSDL Service WSWSERPA01
------------------------------------------------------------------------------- */

WSCLIENT WSWSERPA01

	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD RESET
	WSMETHOD CLONE
	WSMETHOD GET_OS

	WSDATA   _URL                      AS String
	WSDATA   _HEADOUT                  AS Array of String
	WSDATA   _COOKIES                  AS Array of String
	WSDATA   cCGET                     AS string
	WSDATA   cGET_OSRESULT             AS string

ENDWSCLIENT

WSMETHOD NEW WSCLIENT WSWSERPA01
::Init()
If !FindFunction("XMLCHILDEX")
	UserException("O Código-Fonte Client atual requer os executáveis do Protheus Build [7.00.131227A-20170601 NG] ou superior. Atualize o Protheus ou gere o Código-Fonte novamente utilizando o Build atual.")
EndIf
Return Self

WSMETHOD INIT WSCLIENT WSWSERPA01
Return

WSMETHOD RESET WSCLIENT WSWSERPA01
	::cCGET              := NIL 
	::cGET_OSRESULT      := NIL 
	::Init()
Return

WSMETHOD CLONE WSCLIENT WSWSERPA01
Local oClone := WSWSERPA01():New()
	oClone:_URL          := ::_URL 
	oClone:cCGET         := ::cCGET
	oClone:cGET_OSRESULT := ::cGET_OSRESULT
Return oClone

// WSDL Method GET_OS of Service WSWSERPA01

WSMETHOD GET_OS WSSEND cCGET WSRECEIVE cGET_OSRESULT WSCLIENT WSWSERPA01
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GET_OS xmlns="http://localhost:801/">'
cSoap += WSSoapValue("CGET", ::cCGET, cCGET , "string", .T. , .F., 0 , NIL, .F.,.F.) 
cSoap += "</GET_OS>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://localhost:801/GET_OS",; 
	"DOCUMENT","http://localhost:801/",,"1.031217",; 
	"http://localhost:801/ws/WSERPA01.apw")

::Init()
::cGET_OSRESULT      :=  WSAdvValue( oXmlRet,"_GET_OSRESPONSE:_GET_OSRESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.




