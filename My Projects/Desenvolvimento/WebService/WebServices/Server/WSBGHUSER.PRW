#INCLUDE "APWEBSRVL.CH"
#INCLUDE "PROTHEUS.CH"
#INCLUDE "TOPCONN.CH"
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัอออออออออออหอออออออัออออออออออออออออออออออหออออออัออออออออออปฑฑ
ฑฑบPrograma  ณWSBGHUSER  บAutor  ณHudson de Souza Santosบ Data ณ 14/02/14 บฑฑ
ฑฑฬออออออออออุอออออออออออสอออออออฯออออออออออออออออออออออสออออออฯออออออออออนฑฑ
ฑฑบDesc.     ณWebService que valida Login e  permissoes de acordo com     บฑฑ
ฑฑบ          ณgrupo do usuแrio e Cadastro de T้cnico.                     บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
WSSERVICE WSBGHUSER DESCRIPTION "Servi็o WebService WSBGHUSER v1.0"
	//ฺฤฤฤฤฤฤฤฤฤฤฟ
	//ณAtributos ณ
	//ภฤฤฤฤฤฤฤฤฤฤู
	WSDATA oSLogin	as STR_SLOGIN
	WSDATA oGLogin	as STR_GLOGIN
	WSDATA oSAcesso	as STR_SACCESS
	WSDATA oGAcesso	as STR_GACCESS
	//ฺฤฤฤฤฤฤฤฟ
	//ณM้todosณ
	//ภฤฤฤฤฤฤฤู
	WSMETHOD LoginFW Description "Metodo para login via Web Service"
	WSMETHOD AcessoFW Description "Metodo para validacao de acesso atraves do grupo do usuario Web Service"
ENDWSSERVICE
//ฺฤฤฤฤฤฤฤฤฤฤฟ
//ณEstruturasณ
//ภฤฤฤฤฤฤฤฤฤฤู
WSSTRUCT STR_SLOGIN
	WSDATA cUserFW	as STRING Optional //FIELDWEB
	WSDATA cPassFW	as STRING Optional //FIELD1610
	WSDATA cUsua	as STRING Optional
	WSDATA cSenha	as STRING Optional
ENDWSSTRUCT
WSSTRUCT STR_SACCESS
	WSDATA cUserFW	as STRING Optional //FIELDWEB
	WSDATA cPassFW	as STRING Optional //FIELD1610
	WSDATA cUsuar	as STRING Optional
	WSDATA cGrup	as STRING Optional
ENDWSSTRUCT
WSSTRUCT STR_GLOGIN
	WSDATA cRetorno	as STRING
	WSDATA oFilial	as ARRAY of STR_FILIAL Optional
	WSDATA oInfo	as ARRAY of STR_INFOUSER Optional
ENDWSSTRUCT
WSSTRUCT STR_GACCESS
	WSDATA cRetorno	as STRING
	WSDATA lGrupo	as BOOLEAN Optional
ENDWSSTRUCT
WSSTRUCT STR_INFOUSER
	WSDATA CODTEC	as STRING Optional 
	WSDATA NOMTEC	as STRING Optional
	WSDATA CODSET	as STRING Optional
	WSDATA LAB		as STRING Optional
	WSDATA CODFAS	as STRING Optional
	WSDATA USRSIS	as STRING Optional
	WSDATA LOGIN	as STRING Optional
ENDWSSTRUCT
WSSTRUCT STR_FILIAL
	WSDATA cCodFil	as STRING Optional
	WSDATA cDescFil	as STRING Optional
ENDWSSTRUCT
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหออออออัออออออออออออออออออออออหออออออัออออออออออออปฑฑ
ฑฑบPrograma  ณAcessoFW  บAutor ณhudson de Souza Santosบ Data ณ 18/08/14   บฑฑ
ฑฑฬออออออออออุออออออออออสออออออฯออออออออออออออออออออออสออออออฯออออออออออออนฑฑ
ฑฑบDesc.     ณM้todo que valida grupo do usuแrio para FieldWeb.           บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
WSMETHOD AcessoFW WSRECEIVE oSAcesso WSSEND oGAcesso WSSERVICE WSBGHUSER
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณDeclara็ใo de variแveisณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
Local _cUserFW	:= ::oSAcesso:cUserFW
Local _cPassFW	:= ::oSAcesso:cPassFW
Local _cUsuar	:= ::oSAcesso:cUsuar
Local _cGrup	:= ::oSAcesso:cGrup
Local cMsgErr	:= ""
Local lRet		:= .T.
Local lGrupo	:= .F.
Local aUser		:= {}
Local aGrps		:= {}
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณValida consistencia da Informa็ใoณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If lRet .AND. (Empty(_cUserFW) .OR. _cUserFW == Nil .OR. ValType(_cUserFW) <> "C" .OR. _cUserFW == "?")
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cPassFW) .OR. _cPassFW == Nil .OR. ValType(_cPassFW) <> "C" .OR. _cPassFW == "?")
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cUsuar) .OR. _cUsuar == Nil .OR. ValType(_cUsuar) <> "C" .OR. _cUsuar == "?")
	cMsgErr	:= RetErro("E07")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cGrup) .OR. _cGrup == Nil .OR. ValType(_cGrup) <> "C" .OR. _cGrup == "?")
	cMsgErr	:= RetErro("E08")
	lRet	:= .F.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCaso apresente erro, retorna mensagem equivalente e aborta o m้todoณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If !lRet
	::oGAcesso:cRetorno := cMsgErr
	Return .T.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCriando do Ambienteณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
RpcSetType(3)
RpcSetEnv("02","02")
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณConsistencia estando OK, valida regras de neg๓cioณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If lRet .AND. (_cUserFW <> GetNewPar("FW_USER","XXX") .OR. _cPassFW <> GetNewPar("FW_PASS","XXX"))
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet
	PswOrder(2)
	If !PswSeek(_cUsuar,.T.)
		cMsgErr	:= RetErro("E04")
		lRet	:= .F.
	Else
		aUser := PswRet()
	EndIf
EndIf
If lRet
	PswOrder(1)
	If !PswSeek(_cGrup,.F.)
		cMsgErr	:= RetErro("E09")
		lRet	:= .F.
	Else
		aGrps := PswRet()
	EndIf
EndIf
If lRet .AND. aUser[1,17]
	cMsgErr	:= RetErro("E06")
	lRet	:= .F.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณAs regras de consist๊ncia e de negocio estando OK, monta a estrutura de resposta do WebServiceณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If lRet
	For nX := 1 to Len(aUser[1,10])
		If aUser[1,10,nX] == aGrps[1,1]
			lGrupo := .T.
		EndIf 
	Next nX
	::oGAcesso:lGrupo := lGrupo
	cMsgErr	:= RetErro("100")
EndIf
::oGAcesso:cRetorno := cMsgErr
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณFinaliza ambienteณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
RpcClearEnv()
Return .T.
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหออออออัออออออออออออออออออออออออออหออออออัออออออออปฑฑ
ฑฑบPrograma  ณLoginFW   บAutor ณHudson de Souza Santos    บ Data |14/02/14บฑฑ
ฑฑฬออออออออออุออออออออออสออออออฯออออออออออออออออออออออออออสออออออฯออออออออนฑฑ
ฑฑบDesc.     ณ M้todo para Validar Login do Protheus para utilizar        บฑฑ
ฑฑบ          ณFieldWeb                                                    บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
WSMETHOD LoginFW WSRECEIVE oSLogin WSSEND oGLogin WSSERVICE WSBGHUSER
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณDeclara็ใo de variaveisณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
Local _cUserFW	:= ::oSLogin:cUserFW
Local _cPassFW	:= ::oSLogin:cPassFW
Local _cUsua	:= ::oSLogin:cUsua
Local _cSenha	:= ::oSLogin:cSenha
Local _cQry		:= ""
Local aUser		:= {}
Local aTecnico	:= {}
Local nX		:= 0
Local cMsgErr	:= ""
Local lRet		:= .T.
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณValida consistencia da Informa็ใoณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If lRet .AND. (Empty(_cUserFW) .OR. _cUserFW == Nil .OR. ValType(_cUserFW) <> "C" .OR. _cUserFW == "?")
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cPassFW) .OR. _cPassFW == Nil .OR. ValType(_cPassFW) <> "C" .OR. _cPassFW == "?")
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cUsua) .OR. _cUsua == Nil .OR. ValType(_cUsua) <> "C" .OR. _cUsua == "?")
	cMsgErr	:= RetErro("E02")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cSenha) .OR. _cSenha == Nil .OR. ValType(_cSenha) <> "C" .OR. _cSenha == "?")
	cMsgErr	:= RetErro("E03")
	lRet	:= .F.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCaso apresente erro, retorna mensagem equivalente e aborta o m้todoณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If !lRet
	::oGLogin:cRetorno := cMsgErr
	Return .T.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCriando do Ambienteณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
RpcSetType(3)
RpcSetEnv("02","02")
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณConsistencia estando OK, valida regras de neg๓cioณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If lRet .AND. (_cUserFW <> GetNewPar("FW_USER","XXX") .OR. _cPassFW <> GetNewPar("FW_PASS","XXX"))
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet
	PswOrder(2)
	If !PswSeek(_cUsua,.T.)
		cMsgErr	:= RetErro("E05")
		lRet	:= .F.
	ElseIf !PswName(_cSenha)
		cMsgErr	:= RetErro("E05")
		lRet	:= .F.
	Else
		aUser := PswRet()
	EndIf	
EndIf
If lRet .AND. aUser[1,17]
	cMsgErr	:= RetErro("E06")
	lRet	:= .F.
EndIf
If !lRet
	oGLogin:cRetorno := cMsgErr
Else
	//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
	//ณGera Query para buscar informa็๕es do cadastro de t้cnicos (AA1)ณ
	//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
	_cQry := " SELECT "
	_cQry += " AA1.AA1_CODTEC	as COD_TEC	, "
	_cQry += " isnull(SRA.RA_NOME,AA1.AA1_NOMTEC) as NOME_TEC	, "
	_cQry += " AA1.AA1_FUNCAO	as FUNCAO	, "
	_cQry += " AA1.AA1_CODSET	as COD_SET	, "
	_cQry += " AA1.AA1_LAB		as COD_LAB	, "
	_cQry += " AA1.AA1_CODFAS	as COD_FAS	, "
	_cQry += " AA1.AA1_CODUSR	as COD_USU "
	_cQry += " FROM "+RetSQLName("AA1")+" as AA1 "
	_cQry += " left join "+RetSQLName("Z99")+" as Z99(NOLOCK) ON Z99.D_E_L_E_T_ = '' "
	_cQry += " AND Z99_USERID = AA1_CODUSR "
	_cQry += " AND Z99_EFMAT <> '' "
	_cQry += " left join "+RetSQLName("SRA")+" as SRA(NOLOCK) ON SRA.D_E_L_E_T_ = '' "
	_cQry += " AND RA_FILIAL	= substring(Z99_EFMAT,3,2) "
	_cQry += " AND RA_MAT		= substring(Z99_EFMAT,5,6) "
	_cQry += " WHERE AA1.D_E_L_E_T_ = '' "
	_cQry += " AND AA1.AA1_MSBLQL <> '1'"
	_cQry += " AND AA1.AA1_CODUSR = '"+Alltrim(aUser[1,1])+"' "
/*
	_cQry := " SELECT "
	_cQry += " AA1.AA1_CODTEC as COD_TEC , "
	_cQry += " AA1.AA1_NOMTEC as NOME_TEC, "
	_cQry += " AA1.AA1_FUNCAO as FUNCAO  , "
	_cQry += " AA1.AA1_CODSET as COD_SET , "
	_cQry += " AA1.AA1_LAB    as COD_LAB , "
	_cQry += " AA1.AA1_CODFAS as COD_FAS , "
	_cQry += " AA1.AA1_CODUSR as COD_USU   "
	_cQry += "FROM "+RetSQLName("AA1")+"(NOLOCK) as AA1 "
	_cQry += "WHERE AA1.D_E_L_E_T_ = '' "
	_cQry += " AND AA1.AA1_CODUSR = '"+Alltrim(aUser[1,1])+"' "
*/
	//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
	//ณCaso o Alias LGN esteja em uso, fecha a area.ณ
	//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
	IF Select("LGN") <> 0 
		dbSelectArea("LGN")
		dbCloseArea()
	Endif 
	//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
	//ณCria o Alias temporแrio para devolver informacoes ao WebServiceณ
	//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
	TCQUERY _cQry NEW ALIAS "LGN"
	dbSelectArea("LGN")
	dbGoTop()
	//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
	//ณBaseado na tabela temporaria, alimenta o array aTecnicoณ
	//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
    While !(LGN->(Eof()))
    	aAdd(aTecnico,{;
			LGN->COD_TEC	,;
			LGN->NOME_TEC	,;
			LGN->COD_SET	,;
			LGN->COD_LAB	,;
			LGN->COD_FAS	,;
			LGN->COD_USU	;
    	})
    	LGN->(dbSkip())
    EndDo
	//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
	//ณFecha o Alias temporarioณ
	//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
	LGN->(dbCloseArea())
	//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
	//ณMonta o retorno do WebService .ณ
	//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
	ASORT(aUser[2,6])
	oGLogin:cRetorno := RetErro("000")
	oGLogin:oFilial := Array(Len(aUser[2,6]))
	For nX := 1 To Len(aUser[2,6])
		oGLogin:oFilial[nX]				:= WSClassNew("STR_FILIAL")
		oGLogin:oFilial[nX]:cCodFil		:= SubSTR(aUser[2,6,nX],3,2)
		oGLogin:oFilial[nX]:cDescFil	:= Upper(Alltrim(Posicione("SM0",1,aUser[2,6,nX],"M0_FILIAL")))
	Next nX
	::oGLogin:oInfo := Array(Len(aTecnico))
	For nX := 1 To Len(aTecnico)
		oGLogin:oInfo[nX]				:= WSClassNew("STR_INFOUSER")
		oGLogin:oInfo[nX]:CODTEC		:= aTecnico[nX,1]
		oGLogin:oInfo[nX]:NOMTEC		:= aTecnico[nX,2]
		oGLogin:oInfo[nX]:CODSET		:= aTecnico[nX,3]
		oGLogin:oInfo[nX]:LAB			:= aTecnico[nX,4]
		oGLogin:oInfo[nX]:CODFAS		:= aTecnico[nX,5]
		oGLogin:oInfo[nX]:USRSIS		:= aTecnico[nX,6]
	Next nX
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณFinaliza ambienteณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
RpcClearEnv()
Return .T.
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัอออออออออออออออออออออออหอออออัอออออออออออปฑฑ
ฑฑบPrograma  ณ RetErro  บAutor  ณHudson de Souza Santos บData ณ  17/02/14 บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯอออออออออออออออออออออออสอออออฯอออออออออออนฑฑ
ฑฑบDesc.     ณFun็ใo que retorna status de acordo com um c๓digo passado.  บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
Static Function RetErro(_cCodErro,_cCompTxt)
Local cDescErro := ""
Local nPosErro	:= 0
Local aErros	:= {;
		{"E01","Usuแrio nใo autenticado para utilizar o WebService."},;
		{"E02","Usuแrio nใo informado."},;
		{"E03","Senha nใo informada."},;
		{"E04","Usuแrio nใo encontrado."},;
		{"E05","Usuแrio ou Senha invแlido."},;
		{"E06","Usuแrio bloqueado."},;
		{"E07","Usuแrio invแlido."},;
		{"E08","Grupo invแlido."},;
		{"E09","Grupo nใo cadastrado."},;
		{"000","Login OK."},;
		{"100","Processo executado com ๊xito."};
	}
_cCompTxt	:= Iif(_cCompTxt==Nil,""," " + _cCompTxt)
nPosErro	:= Ascan(aErros,{|x|x[1]==_cCodErro})
cDescErro	:= Alltrim(aErros[nPosErro,1])
cDescErro	+= " - "
cDescErro	+= Alltrim(aErros[nPosErro,2])
cDescErro	+= _cCompTxt
Return(cDescErro)

User Function HH1HH(cNomUsu)
Local aAux := {}
PswOrder(2)
PswSeek(cNomUsu,.T.)
aAux := PswRet()
Alert("Oi")
Return