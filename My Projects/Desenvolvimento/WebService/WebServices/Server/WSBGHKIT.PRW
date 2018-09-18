#INCLUDE "APWEBSRVl.CH"
#INCLUDE "PROTHEUS.CH"
#INCLUDE "TOPCONN.CH"
#DEFINE INCLUIR	3
#DEFINE ALTERAR	4
#DEFINE EXCLUIR	5
#DEFINE ENTER CHR(10)+CHR(13)
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออออหออออออัอออออออออออปฑฑ
ฑฑบPrograma  ณWSBGHKIT  บAutor  ณHudson de Souza Santosบ Data ณ 21/01/14  บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออออสออออออฯอออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
WSSERVICE WSBGHKIT DESCRIPTION "Servi็o WebService WSBGHKIT v4.1"
	//ฺฤฤฤฤฤฤฤฤฤฟ
	//ณAtributosณ
	//ภฤฤฤฤฤฤฤฤฤู
	WSDATA oSet		as STR_SET Optional
	WSDATA oGet		as STR_GET Optional
	WSDATA oSet3	as STR_SET3 Optional
	WSDATA oGet3	as STR_GET3 Optional
	//ฺฤฤฤฤฤฤฤฟ
	//ณM้todosณ
	//ภฤฤฤฤฤฤฤู
	WSMETHOD IncluirKit	Description "M้todo gera o Kit e amarra a caixa disponํvel"
	WSMETHOD PecaKit	Description "M้todo gera o Kit e amarra a caixa disponํvel"
	WSMETHOD TransfEst	Description "M้todo para transferir de Armazem e Endere็o as pe็as do kit"
	WSMETHOD ValidaImei Description "M้todo que valida inclusใo de Imei ao KIT"
ENDWSSERVICE
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณEstruturas de dadosณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
WSSTRUCT STR_SET
	WSDATA cUserFW	as STRING //FIELDWEB
	WSDATA cPassFW	as STRING //FIELD1610
	WSDATA cFil		as STRING
	WSDATA cEnvUser	as STRING
	WSDATA cEnvPass	as STRING

	WSDATA cIdCaixa	as STRING Optional
	WSDATA cCodTec	as STRING Optional
	WSDATA cImei	as STRING Optional
	WSDATA cNumOs	as STRING Optional
	WSDATA lReaprov	as INTEGER Optional

	WSDATA nAcao	as INTEGER Optional
	WSDATA cIdKit	as STRING Optional
	WSDATA aItem	as ARRAY OF STR_ITEM Optional
ENDWSSTRUCT
WSSTRUCT STR_GET
	WSDATA cRet		as STRING
	WSDATA cIdKit	as STRING Optional
	WSDATA aProds	as ARRAY OF STR_ITEM Optional
ENDWSSTRUCT
WSSTRUCT STR_ITEM
	WSDATA cItemKit	as STRING Optional
	WSDATA cCodProd	as STRING Optional
	WSDATA cRetrab	as STRING Optional
	WSDATA cRetorn	as STRING Optional
	WSDATA nQtd		as FLOAT Optional
	WSDATA nQtdRet	as FLOAT Optional
	WSDATA lEstorno	as INTEGER Optional
ENDWSSTRUCT
WSSTRUCT STR_SET3
	WSDATA cFil		as STRING Optional
	WSDATA cImei	as STRING Optional
	WSDATA cOS		as STRING Optional
ENDWSSTRUCT
WSSTRUCT STR_GET3
	WSDATA cMsgRet	as STRING Optional
	WSDATA lRet		as BOOLEAN Optional
ENDWSSTRUCT
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออออออหออออออัอออออออออปฑฑ
ฑฑบPrograma  ณValidaImeiบAutor  ณHudson de Souza Santos  บ Data ณ 24/02/14บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออออออสออออออฯอออออออออนฑฑ
ฑฑบDesc.     ณFun็ใo que valida a estrutura do Produtos X IMEI. Caso IMEI บฑฑ
ฑฑบ          ณfor branco nใo valida.                                      บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
WSMETHOD ValidaImei WSRECEIVE oSet3 WSSEND oGet3 WSSERVICE WSBGHKIT
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณDeclara็ใo das variแveisณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
Local _cFil		:= ::oSet3:cFil
Local _cImei	:= ::oSet3:cImei
Local _cOS		:= ::oSet3:cOS
Local _cUserFW	:= ::oSet:cUserFW
Local _cPassFW	:= ::oSet:cPassFW
Local cMsgErr	:= ""
Local lRet		:= .T.
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณConsiste integridade da informa็ใoณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If lRet .AND. (Empty(_cUserFW) .OR. _cUserFW == Nil .OR. ValType(_cUserFW) <> "C" .OR. _cUserFW == "?")
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cPassFW) .OR. _cPassFW == Nil .OR. ValType(_cPassFW) <> "C" .OR. _cPassFW == "?")
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cFil) .OR. _cFil == Nil .OR. ValType(_cFil) <> "C" .OR. _cFil == "?")
	cMsgErr	:= RetErro("EXX")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cImei) .OR. _cImei == Nil .OR. ValType(_cImei) <> "C" .OR. _cImei == "?")
	cMsgErr	:= RetErro("EXX")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cOS) .OR. _cOS == Nil .OR. ValType(_cOS) <> "C" .OR. _cOS == "?")
	cMsgErr	:= RetErro("EXX")
	lRet	:= .F.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณAbertura de ambienteณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
RpcSetType(3)
RpcSetEnv("02",_cFil)
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณValida็๕es de regras de neg๓cioณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If lRet .AND. (_cUserFW <> GetNewPar("FW_USER","XXX") .OR. _cPassFW <> GetNewPar("FW_PASS","XXX"))
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
RpcClearEnv() 
Return .T.
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหออออออัออออออออออออออออออออออหออออออัออออออออออออปฑฑ
ฑฑบPrograma  ณPecaKit   บAutor ณHudson de Souza Santosบ Data |29/01/14    บฑฑ
ฑฑฬออออออออออุออออออออออสออออออฯออออออออออออออออออออออสออออออฯออออออออออออนฑฑ
ฑฑบDesc.     ณ M้todo para Incluir/ Retornar /Excluir pe็a no Kit         บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
WSMETHOD PecaKit WSRECEIVE oSet WSSEND oGet WSSERVICE WSBGHKIT
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณDeclara็ใo de variแveisณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
Local lRet		:= .T.
Local lExistZZ3	:= .F.
Local cMsgErr	:= ""
Local cSD3		:= ""
Local cQry		:= ""
Local cItem		:= ""
Local cGar		:= ""
Local cArmaz	:= ""
Local nSaveSx8	:= 0
Local nX		:= 0
Local _nQtdEst	:= 0
Local aPecas	:= {}
Local _aItem	:= {}
Local _aEItem	:= {}
Local _cUserFW	:= ::oSet:cUserFW
Local _cPassFW	:= ::oSet:cPassFW
Local _cFil		:= ::oSet:cFil
Local _cEnvUser	:= ::oSet:cEnvUser
Local _cEnvPass	:= ::oSet:cEnvPass
Local _nAcao	:= ::oSet:nAcao
Local _cIdKit	:= ::oSet:cIdKit
Local _nReapro	:= ::oSet:lReaprov
Local _cCodTec	:= ::oSet:cCodTec
Local lKitOn	:= .T.
Local cHash_	:= ""
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณConsiste integridade da informa็ใoณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If lRet .AND. (Empty(_cUserFW) .OR. _cUserFW == Nil .OR. ValType(_cUserFW) <> "C" .OR. _cUserFW == "?")
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cPassFW) .OR. _cPassFW == Nil .OR. ValType(_cPassFW) <> "C" .OR. _cPassFW == "?")
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cFil) .OR. _cFil == Nil .OR. ValType(_cFil) <> "C" .OR. !(_cFil == "02" .OR. _cFil == "06"))
	cMsgErr	:= RetErro("E02")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cIdKit) .OR. _cIdKit == Nil .OR. ValType(_cIdKit) <> "C" .OR. _cIdKit == "?")
	cMsgErr	:= RetErro("E08")
	lRet	:= .F.
EndIf
If lRet .AND. (_nAcao == Nil .OR. ValType(_nAcao) <> "N" .OR. !(_nAcao == INCLUIR .OR. _nAcao == ALTERAR .OR. _nAcao == EXCLUIR))
	cMsgErr	:= RetErro("E12")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cEnvUser) .OR. _cEnvUser == Nil .OR. ValType(_cEnvUser) <> "C" .OR. _cEnvUser == "?")
	cMsgErr	:= RetErro("E24")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cEnvPass) .OR. _cEnvPass == Nil .OR. ValType(_cEnvPass) <> "C" .OR. _cEnvPass == "?")
	cMsgErr	:= RetErro("E25")
	lRet	:= .F.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณAlgumas regras de neg๓cio que podem ser validadas antes de abrir o ambienteณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If lRet .AND. Len(::oSet:aItem) < 1
	cMsgErr	:= RetErro("E16")
	lRet	:= .F.
EndIf
If lRet .AND. _nAcao <> ALTERAR .AND. Len(::oSet:aItem) <> 1
	cMsgErr	:= RetErro("E18")
	lRet	:= .F.
EndIf
If lRet .AND. _nAcao == ALTERAR
	If lRet .AND. (_nReapro == Nil .OR. ValType(_nReapro) <> "N" .OR. !(_nReapro == 0 .OR. _nReapro == 1))
		cMsgErr	:= RetErro("E09")
		lRet	:= .F.
	EndIf
	If lRet .AND. _nReapro == 1
		If lRet .AND. (Empty(_cCodTec) .OR. _cCodTec == Nil .OR. ValType(_cCodTec) <> "C" .OR. _cCodTec == "?")
			cMsgErr	:= RetErro("E06")
			lRet	:= .F.
		EndIf
		If lRet .AND. (Empty(_cEnvUser) .OR. _cEnvUser == Nil .OR. ValType(_cEnvUser) <> "C" .OR. _cEnvUser == "?")
			cMsgErr	:= RetErro("E24")
			lRet	:= .F.
		EndIf
	EndIf
EndIf
If lRet
	For nX := 1 to Len(::oSet:aItem)
		aAdd(_aItem, {;
			::oSet:aItem[nX]:cItemKit	,;
			::oSet:aItem[nX]:cCodProd	,;
			::oSet:aItem[nX]:cRetrab	,;
			::oSet:aItem[nX]:nQtd		,;
			::oSet:aItem[nX]:nQtdRet	,;
			::oSet:aItem[nX]:lEstorno	})
		If lRet .AND. (Empty(_aItem[nX,1]) .OR. _aItem[nX,1] == Nil .OR. ValType(_aItem[nX,1]) <> "C" .OR. _aItem[nX,1] == "?")
			cMsgErr	:= RetErro("E50","Item " + Transform(nX,"@e 999"))
			lRet	:= .F.
		EndIf
		If lRet .AND. (Empty(_aItem[nX,2]) .OR. _aItem[nX,2] == Nil .OR. ValType(_aItem[nX,2]) <> "C" .OR. _aItem[nX,2] == "?")
			cMsgErr	:= RetErro("E51","Item " + _aItem[nX,1])
			lRet	:= .F.
		EndIf
		If lRet .AND. (Empty(_aItem[nX,3]) .OR. _aItem[nX,3] == Nil .OR. ValType(_aItem[nX,3]) <> "C" .OR. !(_aItem[nX,3] == "0" .OR. _aItem[nX,3] == "1"))
			cMsgErr	:= RetErro("E52","Item " + _aItem[nX,1])
			lRet	:= .F.
		EndIf
		If lRet .AND. (_aItem[nX,4] == 0 .OR. _aItem[nX,4] == Nil .OR. ValType(_aItem[nX,4]) <> "N")
			cMsgErr	:= RetErro("E53","Item " + _aItem[nX,1])
			lRet	:= .F.
		EndIf
		If lRet .AND. _nAcao == ALTERAR
			If lRet .AND. (_aItem[nX,5] == Nil .OR. ValType(_aItem[nX,5]) <> "N" .OR. !(_aItem[nX,5] == 0 .OR. _aItem[nX,5] == 1))
				cMsgErr	:= RetErro("E54","Item " + _aItem[nX,1])
				lRet	:= .F.
			EndIf
			If lRet .AND. (_aItem[nX,6] == Nil .OR. ValType(_aItem[nX,6]) <> "N" .OR. !(_aItem[nX,6] == 0 .OR. _aItem[nX,6] == 1))
				cMsgErr	:= RetErro("E58","Item " + _aItem[nX,1])
				lRet	:= .F.
			EndIf
		EndIf
		If !lRet
			Exit
		EndIf
	Next nX
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCaso apresente erro, aborta o m้todoณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If !lRet
	::oGet:cRet := cMsgErr
	Return .T.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณAbertura de ambienteณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
RpcSetType(3)
RpcSetEnv("02",_cFil,_cEnvUser,_cEnvPass,"EST",,{"ZA5","ZZ4","ZZJ","ZA6","SB2","ZA7","AA1","SB1","ZZ3","SZ9","SD3"})
lKitOn := GetNewPar("FW_KITON",.T.)
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณValida็๕es de regras de neg๓cioณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
_cIdKit	:= AvKey(_cIdKit, "ZA5_IDKIT")
//Log
cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:PECAKIT_Consistiu"+Iif(lKitOn,"[T]","[F]"), _cEnvUser)
If lRet .AND. (_cUserFW <> GetNewPar("FW_USER","XXX") .OR. _cPassFW <> GetNewPar("FW_PASS","XXX"))
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
dbSelectArea("ZA5")
ZA5->(dbSetOrder(1))
If lRet .AND. !(ZA5->(dbSeek(xFilial("ZA5")+_cIdKit)))
	cMsgErr	:= RetErro("E15")
	lRet	:= .F.
EndIf
dbSelectArea("ZA7")
ZA7->(dbSetOrder(1))
If lRet .AND. !(ZA7->(dbSeek(xFilial("ZA7")+ZA5->ZA5_CAIXA)))
	cMsgErr	:= RetErro("E04")
	lRet	:= .F.
EndIf
If lRet .AND. ZA5->ZA5_STATUS <> ZA7->ZA7_STATUS
	cMsgErr	:= RetErro("E14")
	lRet	:= .F.
EndIf
If lRet .AND. (((_nAcao == INCLUIR .OR. _nAcao == EXCLUIR) .AND. ZA5->ZA5_STATUS <> "2") .OR. (_nAcao = ALTERAR .AND. ZA5->ZA5_STATUS <> "4") )
	cMsgErr	:= RetErro("E17")
	lRet	:= .F.
EndIf
If lRet .AND. _nAcao == ALTERAR
	dbSelectArea("ZZ4")
	ZZ4->(dbSetOrder(1))
	If !(ZZ4->(dbSeek(xFilial("ZZ4")+AvKey(ZA5->ZA5_IMEI,"ZZ4_IMEI")+AvKey(ZA5->ZA5_NUMOS,"ZZ4_OS"))))
		cMsgErr	:= RetErro("E19")
		lRet	:= .F.
	ElseIf ZZ4->ZZ4_STATUS > "4"
		cMsgErr	:= RetErro("E23")
		lRet	:= .F.
	Else
		dbSelectArea("ZZJ")
		ZZJ->(dbSetOrder(1))
		If !(ZZJ->(dbSeek(xFilial("ZZJ")+ZZ4->ZZ4_OPEBGH)))
			cMsgErr	:= RetErro("E21")
			lRet	:= .F.
		EndIf
	EndIf	
	If lRet
		cGar 	:= Iif(ZZJ->ZZJ_CALGAR=="S",ZZ4->ZZ4_GARMCL,ZZ4->ZZ4_GARANT)
		cArmaz	:= Iif(cGar=="S",ZZJ->ZZJ_ALMEP,ZZJ->ZZJ_ALMPF)
		If Empty(ZZJ->ZZJ_KITFW)
			cMsgErr	:= RetErro("E22", "(ZZJ_KITFW='"+ZZJ->ZZJ_KITFW+"' ZZ4_OPEBGH='"+ZZ4->ZZ4_OPEBGH+"')")
			lRet	:= .F.
		ElseIf ZZJ->ZZJ_KITFW == "G" .AND. cGar <> "S"
			cMsgErr	:= RetErro("E22", "(ZZJ_KITFW='"+ZZJ->ZZJ_KITFW+"' ZZ4_OPEBGH='"+ZZ4->ZZ4_OPEBGH+"')")
			lRet	:= .F.
		ElseIf ZZJ->ZZJ_KITFW == "F" .AND. cGar == "S"
			cMsgErr	:= RetErro("E22", "(ZZJ_KITFW='"+ZZJ->ZZJ_KITFW+"' ZZ4_OPEBGH='"+ZZ4->ZZ4_OPEBGH+"')")
			lRet	:= .F.
		EndIf
	EndIf
EndIf
dbSelectArea("SB1")
SB1->(dbSetOrder(1))
//Log
cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:PECAKIT_RN Cabec", _cEnvUser)
If lRet
	For nX := 1 to Len(_aItem)
		_aItem[nX,1] := AvKey(_aItem[nX,1],"ZA6_ITEM"		)
		_aItem[nX,2] := AvKey(_aItem[nX,2],"ZA6_CODPRO"	)
		_aItem[nX,3] := AvKey(_aItem[nX,3],"ZA6_RETRAB"	)
		_aItem[nX,4] := AvKey(_aItem[nX,4],"ZA6_QTD"		)
		_aItem[nX,5] := AvKey(_aItem[nX,5],"ZA6_QTDRET"	)
		If lRet .AND. !(SB1->(dbSeek(xFilial("SB1")+_aItem[nX,2])))
			cMsgErr	:= RetErro("E55","Item " + _aItem[nX,1])
			lRet	:= .F.
		EndIf
/*
		If lRet .AND. _nAcao == INCLUIR
			If QtdEst(_aItem[nX,2], Iif(_aItem[nX,3]="0","1P","RE"), "SM", Date()) < Val(_aItem[nX,4])
				cMsgErr	:= RetErro("E61","Item " + _aItem[nX,1])
				lRet	:= .F.
			EndIf
		EndIf
*/
		If !lRet
			Exit
		EndIf
		//Log
		cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , _aItem[nX,2], "WS:PECAKIT_RN Item", _cEnvUser)
	Next nX
	dbSelectArea("ZA6")
EndIf
If lRet
	If _nAcao == INCLUIR
		For nX := 1 to Len(_aItem)
			RECLOCK("ZA6",.T.)
			 ZA6->ZA6_FILIAL	:= _cFil
			 ZA6->ZA6_IDKIT		:= _cIdKit
			 ZA6->ZA6_ITEM		:= _aItem[nX,1]
			 ZA6->ZA6_CODPRO	:= _aItem[nX,2]
			 ZA6->ZA6_RETRAB	:= _aItem[nX,3]
			 ZA6->ZA6_QTD		:= Val(_aItem[nX,4])
			 ZA6->ZA6_QTDRET	:= 0
			 ZA6->ZA6_ESTSP		:= ""
			 ZA6->ZA6_ESTPS		:= ""
			 ZA6->ZA6_ESTPF		:= ""
			MsUnlock()
			cMsgErr := RetErro("000")
		Next nX
		//Log
		cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, ZA5->ZA5_IMEI, , "WS:PECAKIT_RN Insert", _cEnvUser)
	ElseIf _nAcao == EXCLUIR
		For nX := 1 to Len(_aItem)
			If ZA6->(dbSeek(xFilial("ZA6")+_cIdKit+_aItem[nX,1]))
				RecLock("ZA6",.F.)
				 dbdelete()
				MsUnlock()
				cMsgErr := RetErro("000")
			Else
				cMsgErr	:= RetErro("E56")
				lRet	:= .F.
				Exit
			EndIf
		Next nX
		//Log
		cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, ZA5->ZA5_IMEI, , "WS:PECAKIT_RN Delete", _cEnvUser)
	ElseIf _nAcao == ALTERAR
		For nX := 1 to Len(_aItem)
			If ZA6->(dbSeek(xFilial("ZA6")+_cIdKit+_aItem[nX,1]))
				_nQtdEst := QtdEst(_aItem[nX,2], Iif(_aItem[nX,3]="0",cArmaz,ZZJ->ZZJ_ARMPR), "PROC", Date())
				If _nQtdEst < Val(_aItem[nX,5])
					aAdd(_aEItem, {_aItem[nX,2], _aItem[nX,1], Val(_aItem[nX,5]), _nQtdEst, "", "", "", "Saldo em Estoque " + Transform(_nQtdEst, "@E 999,999,999,999.99")})
					cMsgErr	:= RetErro("E60")+"A"
					lRet	:= .F.
				Else
					aAdd(aPecas,{;
						_aItem[nX,2],;
						Iif(_aItem[nX,3]=="0",cArmaz,ZZJ->ZZJ_ARMPR),;
						"PROC",;
						Iif(_aItem[nX,3]=="0",cArmaz,ZZJ->ZZJ_ARMPR),;
						Iif(_aItem[nX,6]==1,"SM","FATURAR"),;
						Iif(_aItem[nX,6]==1,Val(_aItem[nX,5]),Val(_aItem[nX,4]));
					})
				EndIf
			Else
				cMsgErr	:= RetErro("E60")+"B"
				lRet	:= .F.
				aAdd(_aEItem, {_aItem[nX,2], _aItem[nX,1], _aItem[nX,5], 0, "", "", "", "Registro Nใo encontrado" })
			EndIf
		Next nX
		//Log
		cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:PECAKIT_RN Altera", _cEnvUser)
		If lRet
			If lKitOn
				//Log
				cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:PECAKIT_Antes_Transferencia", _cEnvUser)
				cSD3 := EstTran("K"+ZA5->ZA5_IDKIT+"RE", aPecas)
				//Log
				cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:PECAKIT_Depois_Transferencia", _cEnvUser)
			EndIf
			If lKitOn .AND. Empty(cSD3)
				cMsgErr	:= RetErro("E99")
				lRet	:= .F.
			Else
				lExistZZ3 := .F.
				dbSelectArea("ZZ3")
				ZZ3->(dbSetOrder(1))
				ZZ3->(dbSeek(xFilial("ZZ3")+ZA5->ZA5_IMEI+ZA5->ZA5_NUMOS))
				While !ZZ3->(Eof()) .AND. ZZ3->ZZ3_FILIAL == xFilial("ZZ3") .AND. ZZ3->ZZ3_IMEI == ZA5->ZA5_IMEI .AND. ZZ3->ZZ3_NUMOS == ZA5->ZA5_NUMOS
					If ZZ3->ZZ3_IDKIT == ZA5->ZA5_IDKIT
						lExistZZ3 := .T.
						Exit
					EndIf
					ZZ3->(dbsKip())
				EndDo
				If !lExistZZ3
					ZZ3->(dbsKip(-1))
				EndIf
				For nX:=1 to Len(aPecas)
					If aPecas[nX,5] == "FATURAR"
						// Pega o numero para o pedido de venda
						nSaveSx8	:= GetSx8Len()
						cItem		:= u_CalcItem(ZZ3->ZZ3_IMEI, ZZ3->ZZ3_NUMOS, ZZ3->ZZ3_SEQ )
						While (GetSX8Len() > nSaveSx8)
							ConfirmSx8()
						End
						dbSelectArea("SZ9")
						SZ9->(dbSetOrder(1))
						RecLock("SZ9",.T.)
						SZ9->Z9_FILIAL	:= xFilial("SZ9")
						SZ9->Z9_NUMOS	:= ZZ3->ZZ3_NUMOS
						SZ9->Z9_SEQ		:= ZZ3->ZZ3_SEQ
						SZ9->Z9_CODTEC	:= _cCodTec
						SZ9->Z9_ITEM	:= cItem
						SZ9->Z9_QTY		:= aPecas[nX,6]
						SZ9->Z9_PARTNR	:= aPecas[nX,1]
						SZ9->Z9_USED	:= "0"
						SZ9->Z9_IMEI	:= ZZ3->ZZ3_IMEI
						SZ9->Z9_STATUS	:= "1"
						SZ9->Z9_FASE1	:= ZZ3->ZZ3_FASE1
						SZ9->Z9_LOCAL	:= aPecas[nX,2]
						SZ9->Z9_PREVCOR	:= "C"
						SZ9->Z9_USED	:= "0"
						SZ9->Z9_DTAPONT	:= Date()
						SZ9->Z9_SYSORIG	:= "1" // Campo que define a origem do registro "1"=FieldWeb com WebService / "0" ou "" Pelas rotinas do Protheus.
						MsUnlock()
						dbCommit()
					EndIf
					//Log
					cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , aPecas[nX,1], "WS:PECAKIT_Insert SZ9", _cEnvUser)
				Next nX
				cQry := " UPDATE " + RetSqlName("ZA5")
				cQry += " SET ZA5_STATUS = '5'"
				cQry += " WHERE D_E_L_E_T_ = '' "
				cQry += " AND ZA5_FILIAL = '" + xFilial("ZA5") + "'"
				cQry += " AND ZA5_IDKIT = '" + Alltrim(_cIdKit) + "'"
				TcSqlExec(cQry)
				TCRefresh(RetSqlName("ZA5"))
				For nX := 1 to Len(aPecas)
					cQry := " UPDATE " + RetSqlName("ZA6") + " SET "
					cQry += " ZA6_QTDRET = " + Iif(aPecas[nX,5]=="SM",STRTRAN(Transform(aPecas[nX,6],"@e 999999999.99 "),",","."),"0")+ ", "
					cQry += " ZA6_ESTPS = '" + Iif(aPecas[nX,5]=="SM",cSD3,"") + "', "
					cQry += " ZA6_ESTPF = '" + Iif(aPecas[nX,5]=="SM","",cSD3) + "'"
					cQry += " WHERE D_E_L_E_T_ = '' "
					cQry += " AND ZA6_FILIAL = '" + xFilial("ZA6") + "'"
					cQry += " AND ZA6_IDKIT = '" + Alltrim(_cIdKit) + "'"
					cQry += " AND ZA6_ITEM = '" + Alltrim(_aItem[nX,1]) + "'"
					TcSqlExec(cQry)
					TCRefresh(RetSqlName("ZA6"))
				Next nX
				cQry := " UPDATE " + RetSqlName("ZA7") + " SET ZA7_STATUS = '1' "
				cQry += " FROM " + RetSqlName("ZA5") + " as ZA5 "
				cQry += " inner join " + RetSqlName("ZA7") + " as ZA7 ON ZA7.D_E_L_E_T_ = '' "
				cQry += " AND ZA5.ZA5_FILIAL = ZA7.ZA7_FILIAL "
				cQry += " AND ZA5.ZA5_CAIXA = ZA7.ZA7_ID "
				cQry += " WHERE ZA5.D_E_L_E_T_ = '' "
				cQry += " AND ZA5.ZA5_FILIAL = '" + xFilial("ZA5") + "' "
				cQry += " AND ZA5.ZA5_IDKIT = '" + Alltrim(_cIdKit) + "' "
				TcSqlExec(cQry)
				TCRefresh(RetSqlName("ZA7"))
				//Log
				cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:PECAKIT_TabelasKit", _cEnvUser)
				If _nReapro == 1
					//Log
					cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:PECAKIT_Antes_Reaproveita", _cEnvUser)
					_cIdKit := CriaKit(_cEnvUser,_cCodTec)
					For nX := 1 to Len(_aItem)
						If _aItem[nX,6] == 1
							RECLOCK("ZA6",.T.)
							 ZA6->ZA6_FILIAL	:= _cFil
							 ZA6->ZA6_IDKIT		:= _cIdKit
							 ZA6->ZA6_ITEM		:= right("00"+Alltrim(Transform(nX,"@e 99")),2)
							 ZA6->ZA6_CODPRO	:= _aItem[nX,2]
							 ZA6->ZA6_RETRAB	:= _aItem[nX,3]
							 ZA6->ZA6_QTD		:= Val(_aItem[nX,4])
							 ZA6->ZA6_QTDRET	:= 0
							 ZA6->ZA6_ESTSP		:= ""
							 ZA6->ZA6_ESTPS		:= ""
							 ZA6->ZA6_ESTPF		:= ""
							MsUnlock()
						EndIf
					Next nX
					//Log
					cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:PECAKIT_Depois_Reaproveita", _cEnvUser)
				EndIf
				cMsgErr := RetErro("000")
			EndIf
		Else
			::oGet:aProds := Array(Len(_aEItem))
			For nX := 1 to Len(_aEItem)
				::oGet:aProds[nX]			:= WSClassNew("STR_ITEM")
				::oGet:aProds[nX]:cItemKit	:= _aEItem[nX,2]
				::oGet:aProds[nX]:cCodProd	:= _aEItem[nX,1]
				::oGet:aProds[nX]:cRetorn	:= _aEItem[nX,8]
			Next nX
		EndIf
	EndIf
	ZA6->(dbCommit())
EndIf
//Log
cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, ZA5->ZA5_IMEI, , "WS:PECAKIT_Depois_Reaproveita", _cEnvUser)
::oGet:cRet := cMsgErr
RpcClearEnv()
cMsgErr := Iif(Empty(cMsgErr),"E00 - Teste",cMsgErr)
::oGet:cRet := cMsgErr
Return .T.
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณWSBGHKIT  บAutor  ณMicrosiga           บ Data ณ  01/30/14   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
WSMETHOD TransfEst WSRECEIVE oSet WSSEND oGet WSSERVICE WSBGHKIT
Local lRet		:= .T.
Local _cUserFW	:= ::oSet:cUserFW
Local _cPassFW	:= ::oSet:cPassFW
Local _cFil		:= ::oSet:cFil
Local _cIdKit	:= ::oSet:cIdKit
Local _cEnvUser	:= ::oSet:cEnvUser
Local _cEnvPass	:= ::oSet:cEnvPass
Local _nQtdEst	:= 0
Local cMsgErr	:= ""
Local cSD3		:= ""
Local cQry		:= ""
Local cMsgSald	:= ""
Local cGar 		:= ""
Local cArmaz	:= ""
Local aPecas	:= {}
Local aEPecas	:= {}
Local aArea2	:= {}
Local lKitOn	:= .T.
Local cHash_	:= ""
If lRet .AND. (Empty(_cUserFW) .OR. _cUserFW == Nil .OR. ValType(_cUserFW) <> "C" .OR. _cUserFW == "?")
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cPassFW) .OR. _cPassFW == Nil .OR. ValType(_cPassFW) <> "C" .OR. _cPassFW == "?")
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cFil) .OR. _cFil == Nil .OR. ValType(_cFil) <> "C" .OR. !(_cFil == "02" .OR. _cFil == "06"))
	cMsgErr	:= RetErro("E02")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cIdKit) .OR. _cIdKit == Nil .OR. ValType(_cIdKit) <> "C" .OR. _cIdKit == "?")
	cMsgErr	:= RetErro("E08")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cEnvUser) .OR. _cEnvUser == Nil .OR. ValType(_cEnvUser) <> "C" .OR. _cEnvUser == "?")
	cMsgErr	:= RetErro("E24")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cEnvPass) .OR. _cEnvPass == Nil .OR. ValType(_cEnvPass) <> "C" .OR. _cEnvPass == "?")
	cMsgErr	:= RetErro("E25")
	lRet	:= .F.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCaso apresente erro, aborta o m้todoณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If !lRet
	::oGet:cRet := cMsgErr
	Return .T.
EndIf
RpcSetType(3)
RpcSetEnv("02",_cFil,_cEnvUser,_cEnvPass,"EST",,{"ZA5","ZZ4","ZZJ","ZA6","SB2","ZA7","AA1"})
//Log
cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:TRANSFEST_Consistiu", _cEnvUser)
lKitOn := GetNewPar("FW_KITON",.T.)
If lRet .AND. (_cUserFW <> GetNewPar("FW_USER","XXX") .OR. _cPassFW <> GetNewPar("FW_PASS","XXX"))
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
dbSelectArea("ZA5")
ZA5->(dbSetOrder(1))
If lRet .AND. !(ZA5->(dbSeek(xFilial("ZA5")+_cIdKit)))
	cMsgErr	:= RetErro("E15")
	lRet	:= .F.
EndIf
If lRet
	dbSelectArea("ZZ4")
	ZZ4->(dbSetOrder(1))
	If !(ZZ4->(dbSeek(xFilial("ZZ4")+AvKey(ZA5->ZA5_IMEI,"ZZ4_IMEI")+AvKey(ZA5->ZA5_NUMOS,"ZZ4_OS"))))
		cMsgErr	:= RetErro("E19")
		lRet	:= .F.
	ElseIf ZZ4->ZZ4_STATUS > "4"
		cMsgErr	:= RetErro("E23")
		lRet	:= .F.
	Else
		dbSelectArea("ZZJ")
		ZZJ->(dbSetOrder(1))
		If !(ZZJ->(dbSeek(xFilial("ZZJ")+ZZ4->ZZ4_OPEBGH)))
			cMsgErr	:= RetErro("E21")
			lRet	:= .F.
		EndIf
	EndIf
	If lRet .AND. ZZ4->ZZ4_FASATU <> "32"
		cMsgErr	:= RetErro("E20")
		lRet	:= .F.
	ElseIf lRet
		cGar 	:= Iif(ZZJ->ZZJ_CALGAR=="S",ZZ4->ZZ4_GARMCL,ZZ4->ZZ4_GARANT)
		cArmaz	:= Iif(cGar=="S",ZZJ->ZZJ_ALMEP,ZZJ->ZZJ_ALMPF)
		If Empty(ZZJ->ZZJ_KITFW)
			cMsgErr	:= RetErro("E22", "(ZZJ_KITFW='"+ZZJ->ZZJ_KITFW+"' ZZ4_OPEBGH='"+ZZ4->ZZ4_OPEBGH+"')")
			lRet	:= .F.
		ElseIf ZZJ->ZZJ_KITFW == "G" .AND. cGar <> "S"
			cMsgErr	:= RetErro("E22", "(ZZJ_KITFW='"+ZZJ->ZZJ_KITFW+"' ZZ4_OPEBGH='"+ZZ4->ZZ4_OPEBGH+"')")
			lRet	:= .F.
		ElseIf ZZJ->ZZJ_KITFW == "F" .AND. cGar == "S"
			cMsgErr	:= RetErro("E22", "(ZZJ_KITFW='"+ZZJ->ZZJ_KITFW+"' ZZ4_OPEBGH='"+ZZ4->ZZ4_OPEBGH+"')")
			lRet	:= .F.
		EndIf
	EndIf
EndIf
If lRet
	//Log
	cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , Iif(lKitOn,"[T]","[F]")+"WS:TRANSFEST_RN Cabec", _cEnvUser)
	dbSelectArea("ZA6")
	ZA6->(dbSetOrder(1))
	ZA6->(dbGoTop())
	ZA6->(dbSeek(xFilial("ZA6")+_cIdKit))
	While ZA6->(!Eof()) .AND. ZA5->ZA5_FILIAL == ZA6->ZA6_FILIAL .AND. ZA5->ZA5_IDKIT == ZA6->ZA6_IDKIT
		_nQtdEst := QtdEst(ZA6->ZA6_CODPRO, Iif(ZA6->ZA6_RETRAB=="0",cArmaz,ZZJ->ZZJ_ARMPR), "SM", Date())
		If _nQtdEst < ZA6->ZA6_QTD
			aAdd(aEPecas, {ZA6->ZA6_CODPRO,ZA6->ZA6_ITEM,ZA6->ZA6_QTD,_nQtdEst,Iif(ZA6->ZA6_RETRAB=="0",cArmaz,ZZJ->ZZJ_ARMPR),"SM","PROC"})
			cMsgErr	:= RetErro("E60")
			lRet	:= .F.
		Else
			aAdd(aPecas,  {;
				ZA6->ZA6_CODPRO,;
				Iif(ZA6->ZA6_RETRAB=="0",cArmaz,ZZJ->ZZJ_ARMPR),;
				"SM",;
				Iif(ZA6->ZA6_RETRAB=="0",cArmaz,ZZJ->ZZJ_ARMPR),;
				"PROC",;
				ZA6->ZA6_QTD;
			})
			aArea2 := GetArea()
			dbSelectArea("SB2")
			SB2->(dbSetOrder(1))
			If !(SB2->(dbSeek(xFilial("SB2")+ZA6->ZA6_CODPRO+Iif(ZA6->ZA6_RETRAB=="0",cArmaz,ZZJ->ZZJ_ARMPR),.F.)))
				CriaSB2(ZA6->ZA6_CODPRO, Iif(ZA6->ZA6_RETRAB=="0",cArmaz,ZZJ->ZZJ_ARMPR))
			Endif
			RestArea(aArea2)
		EndIf
		ZA6->(dbSkip()) 
		//Log
		cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , ZA6->ZA6_CODPRO, "WS:TRANSFEST_RN Item", _cEnvUser)
	EndDo
EndIf
If lRet
	If lKitOn
		//Log
		cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:TRANSFEST_Antes_Transferencia", _cEnvUser)
		cSD3 := EstTran("K"+ZA5->ZA5_IDKIT+"PD", aPecas)
		//Log
		cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:TRANSFEST_Depois_Transferencia", _cEnvUser)
	EndIf
	If lKitOn .AND. Empty(cSD3)
		cMsgErr	:= RetErro("E99")
		lRet	:= .F.
	Else
		//Log
		cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:TRANSFEST_Antes_ApontaFase", _cEnvUser)
		ApontaFase(xFilial("ZZ4"), ZZ4->ZZ4_IMEI, ZZ4->ZZ4_OS, "29", ZZ4->ZZ4_SETATU, _cIdKit)
		//Log
		cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, , , "WS:TRANSFEST_Depois_ApontaFase", _cEnvUser)
		cQry := " UPDATE " + RetSqlName("ZA5") + " SET ZA5_STATUS = '3'"
		cQry += " WHERE D_E_L_E_T_ = '' "
		cQry += " AND ZA5_FILIAL = '" + xFilial("ZA5") + "'"
		cQry += " AND ZA5_IDKIT = '" + Alltrim(_cIdKit) + "'"
		If lKitOn
			cQry += " UPDATE " + RetSqlName("ZA6") + " SET "
			cQry += " ZA6_ESTSP = '" + Alltrim(cSD3) + "' "
			cQry += " WHERE D_E_L_E_T_ = '' "
			cQry += " AND ZA6_FILIAL = '" + xFilial("ZA6") + "'"
			cQry += " AND ZA6_IDKIT = '" + Alltrim(_cIdKit) + "'"
		EndIf
		cQry += " UPDATE " + RetSqlName("ZA7") + " SET ZA7_STATUS = '3'"
		cQry += " FROM ZA5020 as ZA5 "
		cQry += " inner join ZA7020 as ZA7 ON ZA7.D_E_L_E_T_ = '' "
		cQry += " AND ZA5.ZA5_FILIAL = ZA7.ZA7_FILIAL "
		cQry += " AND ZA5.ZA5_CAIXA = ZA7.ZA7_ID "
		cQry += " WHERE ZA5.D_E_L_E_T_ = '' "
		cQry += " AND ZA5.ZA5_FILIAL = '" + xFilial("ZA5") + "'"
		cQry += " AND ZA5.ZA5_IDKIT = '" + Alltrim(_cIdKit) + "'"
		TcSqlExec(cQry)
		TCRefresh(RetSqlName("ZA5"))
		TCRefresh(RetSqlName("ZA7"))
		If lKitOn
			TCRefresh(RetSqlName("ZA6"))
		EndIf
		//Log
		cHash_ := u_WSLOG (cHash_, _cFil, _cIdKit, ZZ4->ZZ4_IMEI, , "WS:TRANSFEST_Final", _cEnvUser)
		cMsgErr := RetErro("000")
	EndIf
Else
	::oGet:cRet := cMsgErr
	::oGet:aProds := Array(Len(aEPecas))
	For nX := 1 to Len(aEPecas)
		::oGet:aProds[nX]			:= WSClassNew("STR_ITEM")
		::oGet:aProds[nX]:cItemKit	:= aEPecas[nX,2]
		::oGet:aProds[nX]:cCodProd	:= aEPecas[nX,1]
		cMsgSald := ENTER
		cMsgSald += Alltrim(aEPecas[nX,1]) + " " + Alltrim(POSICIONE("SB1",1,xFilial("SB1")+aEPecas[nX,1],"B1_DESC"))
		cMsgSald += " Qtd.: " + Alltrim(Transform(aEPecas[nX,4],"@E 9999999.99"))
		cMsgSald += " Arm.: " + Alltrim(aEPecas[nX,5])
		cMsgSald += " End.: " + Alltrim(aEPecas[nX,6])
		::oGet:aProds[nX]:cRetorn	:= cMsgSald
	Next nX
EndIf
::oGet:cRet := cMsgErr
RpcClearEnv()
Return .T.
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัอออออออออออหอออออัออออออออออออออออออออออหออออออัออออออออออออปฑฑ
ฑฑบPrograma  ณIncluirKit บAutorณHudson de Souza Santosบ Data ณ21/01/14    บฑฑ
ฑฑฬออออออออออุอออออออออออสอออออฯออออออออออออออออออออออสออออออฯออออออออออออนฑฑ
ฑฑบDesc.     ณ M้todo Incluir Kit e altera Status                         บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
WSMETHOD IncluirKit WSRECEIVE oSet WSSEND oGet WSSERVICE WSBGHKIT
Local lRet		:= .T.
Local cMsgErr	:= ""
Local cIDKIT	:= ""
Local _cUserFW	:= ::oSet:cUserFW
Local _cPassFW	:= ::oSet:cPassFW
Local _cFil		:= ::oSet:cFil
Local _cEnvUser	:= ::oSet:cEnvUser
Local _cEnvPass	:= ::oSet:cEnvPass
Local _cIdCaixa	:= ::oSet:cIdCaixa
Local _cCodTec	:= ::oSet:cCodTec
If lRet .AND. (Empty(_cUserFW) .OR. _cUserFW == Nil .OR. ValType(_cUserFW) <> "C" .OR. _cUserFW == "?")
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cPassFW) .OR. _cPassFW == Nil .OR. ValType(_cPassFW) <> "C" .OR. _cPassFW == "?")
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cFil) .OR. _cFil == Nil .OR. ValType(_cFil) <> "C" .OR. !(_cFil == "02" .OR. _cFil == "06"))
	cMsgErr	:= RetErro("E02")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cIdCaixa) .OR. _cIdCaixa == Nil .OR. ValType(_cIdCaixa) <> "C" .OR. _cIdCaixa == "?")
	cMsgErr	:= RetErro("E03")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cCodTec) .OR. _cCodTec == Nil .OR. ValType(_cCodTec) <> "C" .OR. _cCodTec == "?")
	cMsgErr	:= RetErro("E06")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cEnvUser) .OR. _cEnvUser == Nil .OR. ValType(_cEnvUser) <> "C" .OR. _cEnvUser == "?")
	cMsgErr	:= RetErro("E24")
	lRet	:= .F.
EndIf
If lRet .AND. (Empty(_cEnvPass) .OR. _cEnvPass == Nil .OR. ValType(_cEnvPass) <> "C" .OR. _cEnvPass == "?")
	cMsgErr	:= RetErro("E25")
	lRet	:= .F.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCaso apresente erro, aborta o m้todoณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If !lRet
	::oGet:cRet := cMsgErr
	Return .T.
EndIf
RpcSetType(3)
RpcSetEnv("02",_cFil,_cEnvUser,_cEnvPass,"EST")
If lRet .AND. (_cUserFW <> GetNewPar("FW_USER","XXX") .OR. _cPassFW <> GetNewPar("FW_PASS","XXX"))
	cMsgErr	:= RetErro("E01")
	lRet	:= .F.
EndIf
dbSelectArea("ZA7")
dbSetOrder(1)
If lRet .AND. !dbSeek(xFilial("ZA7")+_cIdCaixa)
	cMsgErr	:= RetErro("E04")
	lRet	:= .F.
EndIf
If lRet .AND. ZA7->ZA7_STATUS <> "1"
	cMsgErr	:= RetErro("E05")
	lRet	:= .F.
EndIf
dbSelectArea("AA1")
dbSetOrder(1)
If lRet .AND. !dbSeek(xFilial("AA1")+_cCodTec)
	cMsgErr	:= RetErro("E07")
	lRet	:= .F.
EndIf
If lRet
	CriaKit(_cEnvUser,_cCodTec)
	cMsgErr	:= RetErro("000")
	::oGet:cIdKit := cIDKIT
EndIf
::oGet:cRet := cMsgErr
RpcClearEnv()
Return .T.
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณCriaKit   บAutor  ณMicrosiga           บ Data ณ  02/05/14   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
Static Function CriaKit(cEnvUser,cCodTec)
Local cIDKIT	:= GETSXENUM("ZA5","ZA5_IDKIT")
RecLock("ZA7",.F.)
ZA7->ZA7_STATUS := "2"
MsUnlock()
dbSelectArea("ZA5")
dbSetOrder(1)
RecLock("ZA5",.T.)
ZA5->ZA5_FILIAL		:= xFilial("ZA5")
ZA5->ZA5_IDKIT		:= cIDKIT
ZA5->ZA5_DATA		:= DATE()
ZA5->ZA5_HORA		:= TIME()
ZA5->ZA5_CAIXA		:= ZA7->ZA7_ID
ZA5->ZA5_USER		:= cEnvUser
ZA5->ZA5_IMEI		:= ""
ZA5->ZA5_STATUS		:= "2"
ZA5->ZA5_CODTEC		:= cCodTec
MsUnlock()
ZA5->(dbCommit())
ConfirmSX8()
Return(cIDKIT)
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณ RetErro   บAutor  ณHudson de Souza Santos บData ณ 20/01/14 บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
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
		{"E01","Usuแrio nใo autenticado para utilizar o WebService"},;
		{"E02","Filial invแlida"},;
		{"E03","Id da Caixa invแlida"},;
		{"E04","Id da Caixa nใo cadastrado"},;
		{"E05","Status da caixa diferente de '1-DISPONIVEL'"},;
		{"E06","C๓digo de T้cnico invแlido"},;
		{"E07","Tecnico nใo cadastrado"},;
		{"E08","Id do Kit invแlido"},;
		{"E09","Flag de Reaproveitamento invแlida"},;
		{"E10","Imei invแlido"},;
		{"E11","N๚mero da OS invแlida"},;
		{"E12","Acใo do WebService invแlido"},;
		{"E13","Usuแrio de Se็ใo invแlido"},;
		{"E14","Caixa e Kit divergente"},;
		{"E15","Kit nใo encontrado"},;
		{"E16","Quantidade de Pe็as deve ser maior que zero"},;
		{"E17","Status do Kit nใo suporta essa opera็ใo"},;
		{"E18","Para inclusใo ou exclusใo, apenas um item no Grid"},;
		{"E19","Imei nใo encontrado"},;
		{"E20","Imei nใo esta na fase 32"},;
		{"E21","Opera็ใo nใo cadastrada"},;
		{"E22","Opera็ใo diverge da regra de neg๓cio."},;
		{"E23","Radio jแ finalizado. Retornar rแdio para status 4(Produ็ใo)"},;
		{"E24","Usuแrio invแlido"},;
		{"E25","Passw invแlido"},;
		{"E50","Item do Kit invแlido"},;
		{"E51","C๓digo do Produto invแlido"},;
		{"E52","Flag Pe็a Retrabalhada invแlido"},;
		{"E53","Quantidade invแlida"},;
		{"E54","Quantidade de Retorno invแlida"},;
		{"E55","Produto nใo cadastrado"},;
		{"E56","Item do Kit nใo existente"},;
		{"E57","Para Retorno, o parametro de a็ใo deve ser 'ALTERAวรO'"},;
		{"E58","Flag pe็a Retorno invแlido"},;
		{"E59","Item nใo encontrado"},;
		{"E60","Item com erro"},;
		{"E61","Item sem saldo"},;
		{"E99","Erro no MSExecAuto"},;
		{"000","Processo executado com sucesso"};
	}
_cCompTxt	:= Iif(_cCompTxt==Nil,""," " + _cCompTxt)
nPosErro	:= Ascan(aErros,{|x|x[1]==_cCodErro})
cDescErro	:= Alltrim(aErros[nPosErro,1])
cDescErro	+= " - "
cDescErro	+= Alltrim(aErros[nPosErro,2])
cDescErro	+= _cCompTxt
Return(cDescErro)
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณWSBGHKIT  บAutor  ณMicrosiga           บ Data ณ  01/30/14   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณBGH                                                         บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
Static Function QtdEst(cProd, cArmaz, cEnd, dData)
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณDeclara็ใo variaveisณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
Local nResult	:= 0
Local aArea		:= GetArea()
Local nAtual	:= 0
Local nEmpen	:= 0
Local nRetorn	:= 0
Local nFatura	:= 0
Local cQryFro	:= ""
Local cQrySel	:= ""
Local cQrySld	:= ""
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณAjuste do tamanho dos campos para utilizar no "seek"ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
cArmaz	:= AvKey(cArmaz	,"BF_LOCAL")
cProd	:= AvKey(cProd	,"BF_PRODUTO")
cEnd	:= AvKey(cEnd	,"BF_LOCALIZ")
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCaso controle endere็o, verifica saldo inicial no "SBF", caso contrแrio apenas no "SB2"ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
dbSelectArea("SB1")
dbSeek(xFilial("SB1")+cProd)
If GetNewPar("MV_LOCALIZ") == "S" .AND. SB1->B1_LOCALIZ == "S"
	dbSelectArea("SBF")
	dbSetOrder(1)
	If dbSeek(xFilial("SBF") + cArmaz + cEnd + SB1->B1_COD)
		nAtual := SaldoSBF(cArmaz, cEnd, SB1->B1_COD, NIL, NIL, NIL, .F.)
	EndIf
Else
	dbSelectArea("SB2")
	If dbSeek(xFilial("SB2") + SB1->B1_COD + cArmaz)
		nAtual := SaldoSb2()
	EndIf
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณExcluindo tabela temporแriaณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If Select("QEMP") > 0
	QEMP->(dbCloseArea())
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณInํcio da Query para calculo de saldoณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
cQryFro := " FROM " + RetSQLName("ZA6") + " as ZA6(NOLOCK)"
cQryFro += " inner join " + RetSQLName("ZA5") + " as ZA5(NOLOCK) ON ZA5.D_E_L_E_T_ = '' AND ZA5.ZA5_FILIAL = ZA6.ZA6_FILIAL AND ZA5.ZA5_IDKIT = ZA6.ZA6_IDKIT"
cQryFro += " WHERE ZA6.D_E_L_E_T_ = ''"
cQryFro += " AND ZA6_FILIAL = '" + xFilial("ZA6") + "'"
cQryFro += " AND ZA6_CODPRO = '" + Alltrim(cProd) + "'"
cQryFro += " AND CASE WHEN ZA6_RETRAB = 1 THEN 'RE' ELSE '1P' END = '" + Alltrim(cArmaz) + "'"
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCalcula Produtos que nใo tiverใo transferencias de "EMPENHO" efetuadasณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
cQrySel := "SELECT isnull(sum(ZA6_QTD),0) as QTD"
cQrySld := " AND ZA6_ESTSP = ''"
cQrySld += " AND ZA5_STATUS >= '3'"
Begin Transaction
	TCQUERY (cQrySel+cQryFro+cQrySld) NEW ALIAS "QEMP"
	nEmpen := QEMP->QTD
	QEMP->(dbCloseArea())
End Transaction
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCalcula Produtos que nใo tiverใo transferencias de "RETORNO" efetuadasณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
cQrySel := "SELECT "
cQrySel += " isnull(sum(CASE WHEN ZA6_QTDRET = 1 THEN ZA6_QTD ELSE 0 END),0) as QTD_RET,"
cQrySel += " isnull(sum(CASE WHEN ZA6_QTDRET = 0 THEN ZA6_QTD ELSE 0 END),0) as QTD_FAT"
cQrySld += " AND ZA6_ESTPS = ''"
cQrySld += " AND ZA6_ESTPF = ''"
cQrySld += " AND ZA5_STATUS >= '5'"
Begin Transaction
	TCQUERY (cQrySel+cQryFro+cQrySld) NEW ALIAS "QEMP"
	nRetorn := QEMP->QTD_RET
	nFatura := QEMP->QTD_FAT
	QEMP->(dbCloseArea())
End Transaction
If Alltrim(cEnd) == "SM"
	nResult := nAtual - nEmpen + nRetorn
ElseIf Alltrim(cEnd) == "PROC"
	nResult := nAtual + nEmpen - nRetorn - nFatura
EndIf
RestArea(aArea)
Return(nResult)
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณWSBGHKIT  บAutor  ณMicrosiga           บ Data ณ  01/30/14   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ Fun็ใo que transfere no estoque a quantidade do array sendoบฑฑ
ฑฑบ          ณ [1] - C๓digo Produto                                       บฑฑ
ฑฑบ          ณ [2] - Armaz้m Origem                                       บฑฑ
ฑฑบ          ณ [3] - Endere็o Origem                                      บฑฑ
ฑฑบ          ณ [4] - Armaz้m Destino                                      บฑฑ
ฑฑบ          ณ [5] - Endere็o Destino                                     บฑฑ
ฑฑบ          ณ [6] - Quantidade                                           บฑฑ
ฑฑบ          ณ [7] - Id Kit (Para gerar Doc SD3)                          บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
Static Function EstTran(cDocKit, aDados)
Local aArea		:= GetArea()
Local aAuto		:= {}
Local nX		:= 0
Local cRet		:= ""
Private lMsHelpAuto := .F.
Private lMsErroAuto := .F.
cDocKit := A261RetINV(cDocKit)
dbSelectArea("SB1")
dbSetOrder(1)
aAdd(aAuto, {cDocKit, DATE()} ) // D3_DOC , D3_EMISSAO
For nX := 1 to Len(aDados)
	SB1->(dbSeek(xFilial("SB1")+aDados[nX,1]))
	aAdd(aAuto ,{;
			SB1->B1_COD				,; // D3_COD
			SB1->B1_DESC			,; // D3_DESCRI
			SB1->B1_UM				,; // D3_UM
			aDados[nX,2]			,; // D3_LOCAL
			aDados[nX,3]			,; // D3_LOCALIZ
			SB1->B1_COD				,; // D3_COD
			SB1->B1_DESC			,; // D3_DESCRI
			SB1->B1_UM				,; // D3_UM
			aDados[nX,4]			,; // D3_LOCAL
			aDados[nX,5]			,; // D3_LOCALIZ
			CriaVar("D3_NUMSERI")	,; // D3_NUMSERI
			CriaVar("D3_LOTECTL")	,; // D3_LOTECTL
			CriaVar("D3_NUMLOTE")	,; // D3_NUMLOTE
			Ctod("")				,; // D3_DTVALID
			CriaVar("D3_POTENCI")	,; // D3_POTENCI
			aDados[nX,6]			,; // D3_QUANT
			CriaVar("D3_QTSEGUM")	,; // D3_QTSEGUM
			CriaVar("D3_ESTORNO")	,; // D3_ESTORNO
			CriaVar("D3_NUMSEQ")	,; // D3_NUMSEQ
			CriaVar("D3_LOTECTL")	,; // D3_LOTECTL
			Ctod("")				,; // D3_DTVALID
			CriaVar("D3_SERVIC")	,; // D3_SERVIC
			CriaVar("D3_ITEMGRD")	}) // D3_ITEMGRD
Next nX
MSExecAuto({|x| MATA261(x)},aAuto, 3)
If !lMsErroAuto
	cRet := cDocKit
EndIf
RestArea(aArea)
Return(cRet)
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออออหออออออัอออออออออออปฑฑ
ฑฑบPrograma  ณAvisaDup  บAutor  ณHudson de Souza Santosบ Data ณ 27/03/14  บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออออสออออออฯอออออออออออนฑฑ
ฑฑบDesc.     ณEnvia e-mail caso apresente erro de duplicidade de transf.  บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณBGH                                                         บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
Static Function AvisaDup(cDoc, aItens)
Local cDocAux	:= SubSTR(Alltrim(cDoc),1,8)
Local cQry		:= ""
/*
SELECT * FROM SD3020(NOLOCK)
WHERE D_E_L_E_T_ = ''
	AND  D3_ESTORNO <> 'S'
	AND  left(rtrim(ltrim(D3_DOC)),1) =  'K'
	AND  substring(rtrim(ltrim(D3_DOC)),8,1) in ('P','R')
	AND NOT(right(rtrim(ltrim(D3_DOC)),2) in ('PD','RE'))

*/
Return
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออหออออออัอออออออออออออปฑฑ
ฑฑบPrograma  ณWSBGHKIT  บAutor  ณMicrosiga           บ Data ณ  02/10/14   บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออสออออออฯอออออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
Static Function ApontaFase(cFil, cImei, cNumOs, cFase, cSetor, cIdKit)
Local aArea			:= GetArea()
Local cFaseOri		:= "32"
Local cSeq			:= u_CalcSeq(cImei,cNumOs)
Local _aFasMax		:= {}
Local cSetOri		:= ""
Local cOperacao		:= ""
Local cTransaction	:= ""
Local cLab			:= "2"
dbSelectArea("ZZ3")
dbsetorder(1)
dbSeek(xFilial("ZZ3")+cImei+cNumOs+cSeq)
dbSelectArea("ZZ4")
dbSetOrder(1)
dbSeek(xFilial("ZZ4")+cImei+cNumOs)
cSetOri			:= ZZ4->ZZ4_SETATU
cOperacao		:= ZZ4->ZZ4_OPEBGH
cTransaction	:= ZZ4->ZZ4_TRANSC
_aFasMax := u_FasMax("", ZZ4->ZZ4_GRMAX, cSetor,cSetor)
RecLock("ZZ4",.F.)
 ZZ4->ZZ4_SETATU := cSetor
 ZZ4->ZZ4_FASATU := Iif(!Empty(cFase), cFase, cFaseOri)
 ZZ4->ZZ4_FASPRI	:= cFaseOri
 ZZ4->ZZ4_ATPRI  := Iif( Empty(ZZ4->ZZ4_ATPRI) , dtos(date())+time(), ZZ4->ZZ4_ATPRI)
 ZZ4->ZZ4_ATULT  := dTos(date())+time()
If !Empty(_aFasMax[1])
	ZZ4->ZZ4_FASMAX := _aFasMax[1]
	ZZ4->ZZ4_GRMAX  := _aFasMax[3]
	ZZ4->ZZ4_SETMAX := _aFasMax[4]
EndIf
MsUnlock()
dbCommit()
dbSelectArea("ZZ3")
dbsetorder(1)
RecLock("ZZ3",.T.)
 ZZ3->ZZ3_FILIAL	:= xFilial("ZZ3")
 ZZ3->ZZ3_IMEI		:= cImei
 ZZ3->ZZ3_NUMOS		:= cNumOs
 ZZ3->ZZ3_SEQ		:= cSeq
 ZZ3->ZZ3_CODTEC	:= ZA5->ZA5_CODTEC
 ZZ3->ZZ3_LAB		:= cLab
 ZZ3->ZZ3_CODSET	:= cSetor
 ZZ3->ZZ3_CODSE2	:= cSetor
 ZZ3->ZZ3_DATA		:= dDataBase
 ZZ3->ZZ3_HORA		:= SubStr(Alltrim(time()),1,5)
 ZZ3->ZZ3_FASE1		:= cFaseOri
 ZZ3->ZZ3_FASE2		:= cFase
 ZZ3->ZZ3_OPEBGH	:= cOperacao
 ZZ3->ZZ3_TRANSC	:= cTransaction
 ZZ3->ZZ3_USER		:= GetNewPar("FW_USER","XXX")
 ZZ3->ZZ3_MODFLA	:= ""
 ZZ3->ZZ3_DEFINF	:= ""
 ZZ3->ZZ3_ENCOS		:= "N"
 ZZ3->ZZ3_SWAP		:= "N"
 ZZ3->ZZ3_STATUS	:= "1"
 ZZ3->ZZ3_ARTIME	:= "0"
 ZZ3->ZZ3_SYSORI	:= "1" // Campo que define a origem do registro "1"=FieldWeb com WebService / "0" ou "" Pelas rotinas do Protheus.
 ZZ3->ZZ3_IDKIT		:= cIdKit
MsUnlock()
dbCommit()
RestArea(aArea)
Return