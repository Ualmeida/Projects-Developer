#INCLUDE "PROTHEUS.CH"
#INCLUDE "APWEBSRV.CH"

/* ===============================================================================
WSDL Location    http://172.16.0.5:8093/WSBGH.apw?WSDL
Gerado em        08/10/13 15:30:52
Observações      Código-Fonte gerado por ADVPL WSDL Client 1.120703
                 Alterações neste arquivo podem causar funcionamento incorreto
                 e serão perdidas caso o código-fonte seja gerado novamente.
=============================================================================== */

User Function _QQLPXLB ; Return  // "dummy" function - Internal Use 

/* -------------------------------------------------------------------------------
WSDL Service WSWSBGH
------------------------------------------------------------------------------- */

WSCLIENT WSWSBGH

	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD RESET
	WSMETHOD CLONE
	WSMETHOD GET_CLIENT
	WSMETHOD GRAVACADASTRO

	WSDATA   _URL                      AS String
	WSDATA   _HEADOUT                  AS Array of String
	WSDATA   _COOKIES                  AS Array of String
	WSDATA   oWSOPARAMCLIENT           AS WSBGH_STRUC_PARAM_CLIENT
	WSDATA   oWSGET_CLIENTRESULT       AS WSBGH_STRUC_SEND_CLIENTE
	WSDATA   oWSACABECZZ3              AS WSBGH_CABECALHOZZ3
	WSDATA   oWSAITENSSZ9              AS WSBGH_ITENSSZ9
	WSDATA   cGRAVACADASTRORESULT      AS string

	// Estruturas mantidas por compatibilidade - NÃO USAR
	WSDATA   oWSSTRUC_PARAM_CLIENT     AS WSBGH_STRUC_PARAM_CLIENT
	WSDATA   oWSCABECALHOZZ3           AS WSBGH_CABECALHOZZ3
	WSDATA   oWSITENSSZ9               AS WSBGH_ITENSSZ9

ENDWSCLIENT

WSMETHOD NEW WSCLIENT WSWSBGH
::Init()
If !FindFunction("XMLCHILDEX")
	UserException("O Código-Fonte Client atual requer os executáveis do Protheus Build [7.00.120420A-20120726] ou superior. Atualize o Protheus ou gere o Código-Fonte novamente utilizando o Build atual.")
EndIf
Return Self

WSMETHOD INIT WSCLIENT WSWSBGH
	::oWSOPARAMCLIENT    := WSBGH_STRUC_PARAM_CLIENT():New()
	::oWSGET_CLIENTRESULT := WSBGH_STRUC_SEND_CLIENTE():New()
	::oWSACABECZZ3       := WSBGH_CABECALHOZZ3():New()
	::oWSAITENSSZ9       := WSBGH_ITENSSZ9():New()

	// Estruturas mantidas por compatibilidade - NÃO USAR
	::oWSSTRUC_PARAM_CLIENT := ::oWSOPARAMCLIENT
	::oWSCABECALHOZZ3    := ::oWSACABECZZ3
	::oWSITENSSZ9        := ::oWSAITENSSZ9
Return

WSMETHOD RESET WSCLIENT WSWSBGH
	::oWSOPARAMCLIENT    := NIL 
	::oWSGET_CLIENTRESULT := NIL 
	::oWSACABECZZ3       := NIL 
	::oWSAITENSSZ9       := NIL 
	::cGRAVACADASTRORESULT := NIL 

	// Estruturas mantidas por compatibilidade - NÃO USAR
	::oWSSTRUC_PARAM_CLIENT := NIL
	::oWSCABECALHOZZ3    := NIL
	::oWSITENSSZ9        := NIL
	::Init()
Return

WSMETHOD CLONE WSCLIENT WSWSBGH
Local oClone := WSWSBGH():New()
	oClone:_URL          := ::_URL 
	oClone:oWSOPARAMCLIENT :=  IIF(::oWSOPARAMCLIENT = NIL , NIL ,::oWSOPARAMCLIENT:Clone() )
	oClone:oWSGET_CLIENTRESULT :=  IIF(::oWSGET_CLIENTRESULT = NIL , NIL ,::oWSGET_CLIENTRESULT:Clone() )
	oClone:oWSACABECZZ3  :=  IIF(::oWSACABECZZ3 = NIL , NIL ,::oWSACABECZZ3:Clone() )
	oClone:oWSAITENSSZ9  :=  IIF(::oWSAITENSSZ9 = NIL , NIL ,::oWSAITENSSZ9:Clone() )
	oClone:cGRAVACADASTRORESULT := ::cGRAVACADASTRORESULT

	// Estruturas mantidas por compatibilidade - NÃO USAR
	oClone:oWSSTRUC_PARAM_CLIENT := oClone:oWSOPARAMCLIENT
	oClone:oWSCABECALHOZZ3 := oClone:oWSACABECZZ3
	oClone:oWSITENSSZ9   := oClone:oWSAITENSSZ9
Return oClone

// WSDL Method GET_CLIENT of Service WSWSBGH

WSMETHOD GET_CLIENT WSSEND oWSOPARAMCLIENT WSRECEIVE oWSGET_CLIENTRESULT WSCLIENT WSWSBGH
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GET_CLIENT xmlns="http://172.16.0.5:8093/">'
cSoap += WSSoapValue("OPARAMCLIENT", ::oWSOPARAMCLIENT, oWSOPARAMCLIENT , "STRUC_PARAM_CLIENT", .T. , .F., 0 , NIL, .F.) 
cSoap += "</GET_CLIENT>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://172.16.0.5:8093/GET_CLIENT",; 
	"DOCUMENT","http://172.16.0.5:8093/",,"1.031217",; 
	"http://172.16.0.5:8093/WSBGH.apw")

::Init()
::oWSGET_CLIENTRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GET_CLIENTRESPONSE:_GET_CLIENTRESULT","STRUC_SEND_CLIENTE",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GRAVACADASTRO of Service WSWSBGH

WSMETHOD GRAVACADASTRO WSSEND oWSACABECZZ3,oWSAITENSSZ9 WSRECEIVE cGRAVACADASTRORESULT WSCLIENT WSWSBGH
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GRAVACADASTRO xmlns="http://172.16.0.5:8093/">'
cSoap += WSSoapValue("ACABECZZ3", ::oWSACABECZZ3, oWSACABECZZ3 , "CABECALHOZZ3", .T. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("AITENSSZ9", ::oWSAITENSSZ9, oWSAITENSSZ9 , "ITENSSZ9", .T. , .F., 0 , NIL, .F.) 
cSoap += "</GRAVACADASTRO>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://172.16.0.5:8093/GRAVACADASTRO",; 
	"DOCUMENT","http://172.16.0.5:8093/",,"1.031217",; 
	"http://172.16.0.5:8093/WSBGH.apw")

::Init()
::cGRAVACADASTRORESULT :=  WSAdvValue( oXmlRet,"_GRAVACADASTRORESPONSE:_GRAVACADASTRORESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.


// WSDL Data Structure STRUC_PARAM_CLIENT

WSSTRUCT WSBGH_STRUC_PARAM_CLIENT
	WSDATA   cCCPF                     AS string OPTIONAL
	WSDATA   cCVERATU                  AS string OPTIONAL
	WSDATA   oWSOCADCLIENTE            AS WSBGH_STRUC_CAD_CLIENTE OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGH_STRUC_PARAM_CLIENT
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGH_STRUC_PARAM_CLIENT
Return

WSMETHOD CLONE WSCLIENT WSBGH_STRUC_PARAM_CLIENT
	Local oClone := WSBGH_STRUC_PARAM_CLIENT():NEW()
	oClone:cCCPF                := ::cCCPF
	oClone:cCVERATU             := ::cCVERATU
	oClone:oWSOCADCLIENTE       := IIF(::oWSOCADCLIENTE = NIL , NIL , ::oWSOCADCLIENTE:Clone() )
Return oClone

WSMETHOD SOAPSEND WSCLIENT WSBGH_STRUC_PARAM_CLIENT
	Local cSoap := ""
	cSoap += WSSoapValue("CCPF", ::cCCPF, ::cCCPF , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CVERATU", ::cCVERATU, ::cCVERATU , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("OCADCLIENTE", ::oWSOCADCLIENTE, ::oWSOCADCLIENTE , "STRUC_CAD_CLIENTE", .F. , .F., 0 , NIL, .F.) 
Return cSoap

// WSDL Data Structure STRUC_SEND_CLIENTE

WSSTRUCT WSBGH_STRUC_SEND_CLIENTE
	WSDATA   cCMSGERRO                 AS string OPTIONAL
	WSDATA   cCOPC                     AS string OPTIONAL
	WSDATA   cCSENDCODCLI              AS string OPTIONAL
	WSDATA   cCSENDLOJCLI              AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGH_STRUC_SEND_CLIENTE
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGH_STRUC_SEND_CLIENTE
Return

WSMETHOD CLONE WSCLIENT WSBGH_STRUC_SEND_CLIENTE
	Local oClone := WSBGH_STRUC_SEND_CLIENTE():NEW()
	oClone:cCMSGERRO            := ::cCMSGERRO
	oClone:cCOPC                := ::cCOPC
	oClone:cCSENDCODCLI         := ::cCSENDCODCLI
	oClone:cCSENDLOJCLI         := ::cCSENDLOJCLI
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT WSBGH_STRUC_SEND_CLIENTE
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCMSGERRO          :=  WSAdvValue( oResponse,"_CMSGERRO","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCOPC              :=  WSAdvValue( oResponse,"_COPC","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCSENDCODCLI       :=  WSAdvValue( oResponse,"_CSENDCODCLI","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCSENDLOJCLI       :=  WSAdvValue( oResponse,"_CSENDLOJCLI","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure CABECALHOZZ3

WSSTRUCT WSBGH_CABECALHOZZ3
	WSDATA   cCCODSET                  AS string
	WSDATA   cCCODTEC                  AS string
	WSDATA   cCCODUSU                  AS string
	WSDATA   cCDEFINF                  AS string
	WSDATA   cCENCOS                   AS string
	WSDATA   cCFASE1                   AS string
	WSDATA   cCFASE2                   AS string
	WSDATA   cCIMEI                    AS string
	WSDATA   cCLAB                     AS string
	WSDATA   cCNUMOS                   AS string
	WSDATA   cCSENHA                   AS string
	WSDATA   cCSEQ                     AS string
	WSDATA   nNOPERACAO                AS float
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGH_CABECALHOZZ3
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGH_CABECALHOZZ3
Return

WSMETHOD CLONE WSCLIENT WSBGH_CABECALHOZZ3
	Local oClone := WSBGH_CABECALHOZZ3():NEW()
	oClone:cCCODSET             := ::cCCODSET
	oClone:cCCODTEC             := ::cCCODTEC
	oClone:cCCODUSU             := ::cCCODUSU
	oClone:cCDEFINF             := ::cCDEFINF
	oClone:cCENCOS              := ::cCENCOS
	oClone:cCFASE1              := ::cCFASE1
	oClone:cCFASE2              := ::cCFASE2
	oClone:cCIMEI               := ::cCIMEI
	oClone:cCLAB                := ::cCLAB
	oClone:cCNUMOS              := ::cCNUMOS
	oClone:cCSENHA              := ::cCSENHA
	oClone:cCSEQ                := ::cCSEQ
	oClone:nNOPERACAO           := ::nNOPERACAO
Return oClone

WSMETHOD SOAPSEND WSCLIENT WSBGH_CABECALHOZZ3
	Local cSoap := ""
	cSoap += WSSoapValue("CCODSET", ::cCCODSET, ::cCCODSET , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCODTEC", ::cCCODTEC, ::cCCODTEC , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCODUSU", ::cCCODUSU, ::cCCODUSU , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CDEFINF", ::cCDEFINF, ::cCDEFINF , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CENCOS", ::cCENCOS, ::cCENCOS , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CFASE1", ::cCFASE1, ::cCFASE1 , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CFASE2", ::cCFASE2, ::cCFASE2 , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CIMEI", ::cCIMEI, ::cCIMEI , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CLAB", ::cCLAB, ::cCLAB , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CNUMOS", ::cCNUMOS, ::cCNUMOS , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CSENHA", ::cCSENHA, ::cCSENHA , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CSEQ", ::cCSEQ, ::cCSEQ , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("NOPERACAO", ::nNOPERACAO, ::nNOPERACAO , "float", .T. , .F., 0 , NIL, .F.) 
Return cSoap

// WSDL Data Structure ITENSSZ9

WSSTRUCT WSBGH_ITENSSZ9
	WSDATA   oWSITENSSZ9               AS WSBGH_ARRAYOFWSITENSSZ9
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGH_ITENSSZ9
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGH_ITENSSZ9
Return

WSMETHOD CLONE WSCLIENT WSBGH_ITENSSZ9
	Local oClone := WSBGH_ITENSSZ9():NEW()
	oClone:oWSITENSSZ9          := IIF(::oWSITENSSZ9 = NIL , NIL , ::oWSITENSSZ9:Clone() )
Return oClone

WSMETHOD SOAPSEND WSCLIENT WSBGH_ITENSSZ9
	Local cSoap := ""
	cSoap += WSSoapValue("ITENSSZ9", ::oWSITENSSZ9, ::oWSITENSSZ9 , "ARRAYOFWSITENSSZ9", .T. , .F., 0 , NIL, .F.) 
Return cSoap

// WSDL Data Structure STRUC_CAD_CLIENTE

WSSTRUCT WSBGH_STRUC_CAD_CLIENTE
	WSDATA   cCBAIENTR                 AS string OPTIONAL
	WSDATA   cCBAIRRO                  AS string OPTIONAL
	WSDATA   cCCCONTAB                 AS string OPTIONAL
	WSDATA   cCCEP                     AS string OPTIONAL
	WSDATA   cCCEPENTR                 AS string OPTIONAL
	WSDATA   cCCNPJ                    AS string OPTIONAL
	WSDATA   cCCODMUN                  AS string OPTIONAL
	WSDATA   cCCONTRIB                 AS string OPTIONAL
	WSDATA   cCDDD                     AS string OPTIONAL
	WSDATA   cCEMAIL                   AS string OPTIONAL
	WSDATA   cCEND                     AS string OPTIONAL
	WSDATA   cCENDENTR                 AS string OPTIONAL
	WSDATA   cCESTADO                  AS string OPTIONAL
	WSDATA   cCFISJUR                  AS string OPTIONAL
	WSDATA   cCINSEST                  AS string OPTIONAL
	WSDATA   cCLOJA                    AS string OPTIONAL
	WSDATA   cCMENSAGEM                AS string OPTIONAL
	WSDATA   cCMUNENTR                 AS string OPTIONAL
	WSDATA   cCMUNIC                   AS string OPTIONAL
	WSDATA   cCNOME                    AS string OPTIONAL
	WSDATA   cCNOMFANT                 AS string OPTIONAL
	WSDATA   cCNUMCOMPL                AS string OPTIONAL
	WSDATA   cCPAIS                    AS string OPTIONAL
	WSDATA   cCPAISBAC                 AS string OPTIONAL
	WSDATA   cCTEL                     AS string OPTIONAL
	WSDATA   cCTIPO                    AS string OPTIONAL
	WSDATA   cCTRANSP                  AS string OPTIONAL
	WSDATA   cCUFENTR                  AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGH_STRUC_CAD_CLIENTE
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGH_STRUC_CAD_CLIENTE
Return

WSMETHOD CLONE WSCLIENT WSBGH_STRUC_CAD_CLIENTE
	Local oClone := WSBGH_STRUC_CAD_CLIENTE():NEW()
	oClone:cCBAIENTR            := ::cCBAIENTR
	oClone:cCBAIRRO             := ::cCBAIRRO
	oClone:cCCCONTAB            := ::cCCCONTAB
	oClone:cCCEP                := ::cCCEP
	oClone:cCCEPENTR            := ::cCCEPENTR
	oClone:cCCNPJ               := ::cCCNPJ
	oClone:cCCODMUN             := ::cCCODMUN
	oClone:cCCONTRIB            := ::cCCONTRIB
	oClone:cCDDD                := ::cCDDD
	oClone:cCEMAIL              := ::cCEMAIL
	oClone:cCEND                := ::cCEND
	oClone:cCENDENTR            := ::cCENDENTR
	oClone:cCESTADO             := ::cCESTADO
	oClone:cCFISJUR             := ::cCFISJUR
	oClone:cCINSEST             := ::cCINSEST
	oClone:cCLOJA               := ::cCLOJA
	oClone:cCMENSAGEM           := ::cCMENSAGEM
	oClone:cCMUNENTR            := ::cCMUNENTR
	oClone:cCMUNIC              := ::cCMUNIC
	oClone:cCNOME               := ::cCNOME
	oClone:cCNOMFANT            := ::cCNOMFANT
	oClone:cCNUMCOMPL           := ::cCNUMCOMPL
	oClone:cCPAIS               := ::cCPAIS
	oClone:cCPAISBAC            := ::cCPAISBAC
	oClone:cCTEL                := ::cCTEL
	oClone:cCTIPO               := ::cCTIPO
	oClone:cCTRANSP             := ::cCTRANSP
	oClone:cCUFENTR             := ::cCUFENTR
Return oClone

WSMETHOD SOAPSEND WSCLIENT WSBGH_STRUC_CAD_CLIENTE
	Local cSoap := ""
	cSoap += WSSoapValue("CBAIENTR", ::cCBAIENTR, ::cCBAIENTR , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CBAIRRO", ::cCBAIRRO, ::cCBAIRRO , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCCONTAB", ::cCCCONTAB, ::cCCCONTAB , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCEP", ::cCCEP, ::cCCEP , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCEPENTR", ::cCCEPENTR, ::cCCEPENTR , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCNPJ", ::cCCNPJ, ::cCCNPJ , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCODMUN", ::cCCODMUN, ::cCCODMUN , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCONTRIB", ::cCCONTRIB, ::cCCONTRIB , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CDDD", ::cCDDD, ::cCDDD , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CEMAIL", ::cCEMAIL, ::cCEMAIL , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CEND", ::cCEND, ::cCEND , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CENDENTR", ::cCENDENTR, ::cCENDENTR , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CESTADO", ::cCESTADO, ::cCESTADO , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CFISJUR", ::cCFISJUR, ::cCFISJUR , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CINSEST", ::cCINSEST, ::cCINSEST , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CLOJA", ::cCLOJA, ::cCLOJA , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CMENSAGEM", ::cCMENSAGEM, ::cCMENSAGEM , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CMUNENTR", ::cCMUNENTR, ::cCMUNENTR , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CMUNIC", ::cCMUNIC, ::cCMUNIC , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CNOME", ::cCNOME, ::cCNOME , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CNOMFANT", ::cCNOMFANT, ::cCNOMFANT , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CNUMCOMPL", ::cCNUMCOMPL, ::cCNUMCOMPL , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CPAIS", ::cCPAIS, ::cCPAIS , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CPAISBAC", ::cCPAISBAC, ::cCPAISBAC , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CTEL", ::cCTEL, ::cCTEL , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CTIPO", ::cCTIPO, ::cCTIPO , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CTRANSP", ::cCTRANSP, ::cCTRANSP , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CUFENTR", ::cCUFENTR, ::cCUFENTR , "string", .F. , .F., 0 , NIL, .F.) 
Return cSoap

// WSDL Data Structure ARRAYOFWSITENSSZ9

WSSTRUCT WSBGH_ARRAYOFWSITENSSZ9
	WSDATA   oWSWSITENSSZ9             AS WSBGH_WSITENSSZ9 OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGH_ARRAYOFWSITENSSZ9
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGH_ARRAYOFWSITENSSZ9
	::oWSWSITENSSZ9        := {} // Array Of  WSBGH_WSITENSSZ9():New()
Return

WSMETHOD CLONE WSCLIENT WSBGH_ARRAYOFWSITENSSZ9
	Local oClone := WSBGH_ARRAYOFWSITENSSZ9():NEW()
	oClone:oWSWSITENSSZ9 := NIL
	If ::oWSWSITENSSZ9 <> NIL 
		oClone:oWSWSITENSSZ9 := {}
		aEval( ::oWSWSITENSSZ9 , { |x| aadd( oClone:oWSWSITENSSZ9 , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPSEND WSCLIENT WSBGH_ARRAYOFWSITENSSZ9
	Local cSoap := ""
	aEval( ::oWSWSITENSSZ9 , {|x| cSoap := cSoap  +  WSSoapValue("WSITENSSZ9", x , x , "WSITENSSZ9", .F. , .F., 0 , NIL, .F.)  } ) 
Return cSoap

// WSDL Data Structure WSITENSSZ9

WSSTRUCT WSBGH_WSITENSSZ9
	WSDATA   cCCODTEC                  AS string
	WSDATA   cCFASE1                   AS string
	WSDATA   cCIMEI                    AS string
	WSDATA   cCITEM                    AS string
	WSDATA   cCNUMOS                   AS string
	WSDATA   cCPARTNR                  AS string
	WSDATA   nNOPERACAO                AS float
	WSDATA   nNQTY                     AS float
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGH_WSITENSSZ9
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGH_WSITENSSZ9
Return

WSMETHOD CLONE WSCLIENT WSBGH_WSITENSSZ9
	Local oClone := WSBGH_WSITENSSZ9():NEW()
	oClone:cCCODTEC             := ::cCCODTEC
	oClone:cCFASE1              := ::cCFASE1
	oClone:cCIMEI               := ::cCIMEI
	oClone:cCITEM               := ::cCITEM
	oClone:cCNUMOS              := ::cCNUMOS
	oClone:cCPARTNR             := ::cCPARTNR
	oClone:nNOPERACAO           := ::nNOPERACAO
	oClone:nNQTY                := ::nNQTY
Return oClone

WSMETHOD SOAPSEND WSCLIENT WSBGH_WSITENSSZ9
	Local cSoap := ""
	cSoap += WSSoapValue("CCODTEC", ::cCCODTEC, ::cCCODTEC , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CFASE1", ::cCFASE1, ::cCFASE1 , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CIMEI", ::cCIMEI, ::cCIMEI , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CITEM", ::cCITEM, ::cCITEM , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CNUMOS", ::cCNUMOS, ::cCNUMOS , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CPARTNR", ::cCPARTNR, ::cCPARTNR , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("NOPERACAO", ::nNOPERACAO, ::nNOPERACAO , "float", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("NQTY", ::nNQTY, ::nNQTY , "float", .T. , .F., 0 , NIL, .F.) 
Return cSoap


