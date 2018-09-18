#INCLUDE "APWEBSRVl.CH"
#INCLUDE "PROTHEUS.CH"
#INCLUDE "RWMAKE.CH"
#INCLUDE "TOPCONN.CH"
#INCLUDE "TBICONN.ch"
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออออออออออหอออออออัอออออออออออออออออออออออออออออหออออออัอออออออออออปฑฑ
ฑฑบPrograma  ณWSBGHORDERSERVICE บAutor  ณHudson de Souza Santosบ Data        ณ 21/01/14  บฑฑ
ฑฑฬออออออออออุออออออออออออออออออสอออออออฯอออออออออออออออออออออออออออออสออออออฯอออออออออออนฑฑ
ฑฑบDesc.     ณ PRODUวรO    = http://172.16.0.5:8094/                                     บฑฑ
ฑฑบ          ณ HOMOLOGAวรO = http://172.16.1.112:8093/                                   บฑฑ
ฑฑฬออออออออออุอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                                       บฑฑ
ฑฑศออออออออออฯอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
WSSERVICE WSBGHORDERSERVICE DESCRIPTION 'Servi็o WebService WSBGHORDERSERVICE v3.1 <br /><br /><a href="http://172.16.0.5:8094/HelpFunctions/WSBGHORDERSERVICE.html"><img src="http://172.16.0.5:8094/HelpFunctions/images/Logo_Doc.png" alt="Logo BGH" height="58" width="113"></a>'
	//ฺฤฤฤฤฤฤฤฤฤฟ
	//ณAtributosณ
	//ภฤฤฤฤฤฤฤฤฤู
	WSDATA oMassivaInput		as STR_MassiveInput 		Optional
	WSDATA oMassivaInputResult	as STR_MassiveInputResult	Optional
	WSDATA oComplement			as STR_Complement	 		Optional
	WSDATA oComplementResult	as STR_ComplementResult		Optional
	WSDATA oEntryInvoice		as STR_EntryInvoice			Optional
	WSDATA oEntryInvoiceResult	as STR_EntryInvoiceResult	Optional
	//ฺฤฤฤฤฤฤฤฟ
	//ณM้todosณ
	//ภฤฤฤฤฤฤฤู
	WSMETHOD MassiInput		Description "Faz Entrada Massiva"
	WSMETHOD Complement		Description "Complemento da Entrada Massiva"
	WSMETHOD EntryInvoice	Description "Entrada NF"
ENDWSSERVICE
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณM้todo de Entrada Massiva.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
WSSTRUCT STR_MassiveInput 
	WSDATA FILIAL				as STRING	Optional
	WSDATA IMEI                 as STRING	Optional
	WSDATA CARCACA              as STRING	Optional
	WSDATA OPERACAO             as STRING	Optional
	WSDATA CODIGO_CLIENTE		as STRING	Optional
	WSDATA LOJA_CLIENTE         as STRING	Optional
	WSDATA MODELO               as STRING	Optional
	WSDATA VALOR                as FLOAT	Optional
ENDWSSTRUCT
WSSTRUCT STR_MassiveInputResult
	WSDATA IDResult				as INTEGER
	WSDATA cResult				as STRING
	WSDATA cOSBGH				as STRING	Optional
ENDWSSTRUCT
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณM้todo de Complemento.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
WSSTRUCT STR_Complement
	WSDATA FILIAL				as STRING
	WSDATA IMEI					as STRING
	WSDATA OSBGH				as STRING
	WSDATA POSTO				as STRING	Optional
	WSDATA COBERTURA			as STRING	Optional
	WSDATA DPY					as STRING	Optional
	WSDATA PROCEDENCIA			as STRING	Optional
	WSDATA TIPO_SERVICO			as STRING	Optional
	WSDATA DEFEITO_RECLAMADO	as STRING	Optional
	WSDATA DATA_FABRICACAO		as STRING	Optional
	WSDATA DATA_OS				as STRING	Optional
	WSDATA LOCAL_ATENDIMENTO	as STRING	Optional
	WSDATA ATENDENTE			as STRING	Optional
	WSDATA OPERADORA            as STRING	Optional
	WSDATA REVENDEDOR           as STRING	Optional
	WSDATA VALOR_DO_APARELHO    as FLOAT	Optional
	WSDATA NUMERO_OS            as STRING	Optional
	WSDATA NF_COMPRA            as STRING	Optional
	WSDATA DATA_COMPRA			as STRING	Optional
ENDWSSTRUCT
WSSTRUCT STR_ComplementResult
	WSDATA IDResult				as INTEGER
	WSDATA cResult				as STRING
ENDWSSTRUCT
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณM้todo de NF de Entrada.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
WSSTRUCT STR_EntryInvoice
	WSDATA FILIAL				as STRING	Optional
	WSDATA CODIGO_CLIENTE		as STRING	Optional
	WSDATA LOJA_CLIENTE         as STRING	Optional
	WSDATA SERIE_NF				as STRING	Optional
	WSDATA TES					as STRING	Optional
	WSDATA oITEM				as ARRAY OF STR_EntryInvoiceItem Optional
ENDWSSTRUCT
WSSTRUCT STR_EntryInvoiceItem
	WSDATA PRODUTO				as STRING	Optional
	WSDATA QUANTIDADE			as FLOAT	Optional
	WSDATA VALOR_UNITARIO		as FLOAT	Optional
ENDWSSTRUCT
WSSTRUCT STR_EntryInvoiceResult
	WSDATA IDResult				as INTEGER
	WSDATA cResult				as STRING
ENDWSSTRUCT
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษอออออออัอออออออออออหออออออัอออออออออออออออออออออออออออออหอออออัออออออออปฑฑ
ฑฑบM้todo ณMassiInput บAutor ณMicrosiga                    บData ณ10/02/15บฑฑ
ฑฑฬอออออออุอออออออออออสออออออฯอออออออออออออออออออออออออออออสอออออฯออออออออนฑฑ
ฑฑบDesc.  ณ                                                               บฑฑ
ฑฑบ       ณ                                                               บฑฑ
ฑฑฬอออออออุอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso    ณ AP                                                            บฑฑ
ฑฑศอออออออฯอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
WSMETHOD MassiInput WSRECEIVE oMassivaInput WSSEND oMassivaInputResult WSSERVICE WSBGHORDERSERVICE
Local lRet			:= .T.
Local cMsgErr		:= ""
Local cNumCx		:= ""
Local cFil			:= ::oMassivaInput:FILIAL
Local cImei			:= ::oMassivaInput:IMEI
Local cCarcac		:= ::oMassivaInput:CARCACA
Local cOpera		:= ::oMassivaInput:OPERACAO
Local cCodCli		:= ::oMassivaInput:CODIGO_CLIENTE
Local cLojCli		:= ::oMassivaInput:LOJA_CLIENTE
Local cModelo		:= ::oMassivaInput:MODELO
Local nValor		:= ::oMassivaInput:VALOR
Local cOsBGH		:= ""
Local cQryOS		:= ""
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณConsiste integridade da informa็ใoณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If Empty(cFil) .OR. cFil == Nil .OR. ValType(cFil) <> "C" .OR. cFil == "?"
	cMsgErr += RetErro("E01")
	lRet := .F.
EndIf
If Empty(cImei) .OR. cImei == Nil .OR. ValType(cImei) <> "C" .OR. cImei == "?"
	cMsgErr += RetErro("E02")
	lRet := .F.
EndIf
If Empty(cCarcac) .OR. cCarcac == Nil .OR. ValType(cCarcac) <> "C" .OR. cCarcac == "?"
	cMsgErr += RetErro("E08")
	lRet := .F.
EndIf
If Empty(cOpera) .OR. cOpera == Nil .OR. ValType(cOpera) <> "C" .OR. cOpera == "?"
	cMsgErr += RetErro("E04")
	lRet := .F.
EndIf
If Empty(cCodCli) .OR. cCodCli == Nil .OR. ValType(cCodCli) <> "C" .OR. cCodCli == "?"
	cMsgErr += RetErro("E05")
	lRet := .F.
EndIf
If Empty(cLojCli) .OR. cLojCli == Nil .OR. ValType(cLojCli) <> "C" .OR. cLojCli == "?"
	cMsgErr += RetErro("E06")
	lRet := .F.
EndIf
If Empty(cModelo) .OR. cModelo == Nil .OR. ValType(cModelo) <> "C" .OR. cModelo == "?"
	cMsgErr += RetErro("E07")
	lRet := .F.
EndIf
If nValor == Nil .OR. ValType(nValor) <> "N"
	cMsgErr += RetErro("E08")
	lRet := .F.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCaso apresente erro de estrutura retorna o erro.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If !lRet
	::oMassivaInputResult:IDResult := (0-1)
	::oMassivaInputResult:cResult := cMsgErr
	Return .T.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณAbertura de ambienteณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
RpcSetType(3)
RpcSetEnv("02",cFil)
cImei 	:= AvKey(cImei,"ZZO_IMEI")
cCarcac := AvKey(cImei,"ZZO_CARCAC")
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณImei nใo pode possuir caracteres especiaisณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If "'" $ cImei .OR. "'" $ cCarcac .OR. '"' $ cImei .OR. '"' $ cCarcac
	cMsgErr += RetErro("E56")
	lRet := .F.
Endif
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณBusca Cadstro de Cliente e retorna erro caso nใo consiga.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
dbSelectArea("SA1")
dbSetOrder(1) // A1_FILIAL, A1_COD, A1_LOJA
If !(SA1->(dbSeek(xFilial("SA1")+AvKey(cCodCli,"A1_COD")+AvKey(cLojCli,"A1_LOJA"))))
	cMsgErr += RetErro("E51")
	lRet := .F.
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCaso Cliente exista, deve ser pessoa fํsica				ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
Else
	If SA1->A1_TIPO <> "F" .OR. Len(Alltrim(SA1->A1_CGC)) <> 11
		cMsgErr += RetErro("E58")
		lRet := .F.
	EndIf
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณValida cadastro de produtos.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
dbselectarea("SB1")
dbsetorder(1) // B1_FILIAL, B1_COD
If !(SB1->(dbseek(xfilial("SB1")+cModelo)))
	cMsgErr += RetErro("E53")
	lRet := .F.
Endif
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณValida se jแ existe Imei na BGH.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
dbSelectArea("ZZ4")
dbSetOrder(1) //ZZ4_FILIAL, ZZ4_IMEI, ZZ4_OS
dbGoTop()
dbSeek(xFilial("ZZ4")+cImei)
While !Eof() .AND. ZZ4->ZZ4_FILIAL = xFilial("ZZ4") .AND. Alltrim(ZZ4->ZZ4_IMEI) = Alltrim(cImei)
	If ZZ4->ZZ4_STATUS <> "9"
		cMsgErr += RetErro("E57",Alltrim(ZZ4->ZZ4_OS))
		lRet := .F.
		Exit
	EndIf
	dbSkip()
EndDo
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCaso apresente erro da regra de negocio retorna o erro.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If !lRet
	::oMassivaInputResult:IDResult := (0-1)
	::oMassivaInputResult:cResult := cMsgErr
	Return .T.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณAp๓s valida็๕es faz entrada massiva.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
dbSelectArea("ZZO")
ZZO->(dbSetOrder(1)) // ZZO_FILIAL, ZZO_IMEI, ZZO_CARCAC, ZZO_STATUS
If !dbSeek(xFilial("ZZO")+cImei+cCarcac+"1",.F.)
	cNumCx := GetSXENum("ZZO","ZZO_NUMCX")
	_nContMax := 1
	While _nContMax == 1
		dbSelectArea("ZZO")
		dbSetOrder(4)
		If dbSeek(xFilial("ZZO")+cNumCx)
			cNumCx := GetSXENum("ZZO","ZZO_NUMCX")
		Else
			_nContMax := 0
		Endif
	EndDo
	dbSelectArea("ZZO")
	RecLock("ZZO",.T.)
	 ZZO->ZZO_FILIAL 	:= xFilial("ZZO")
	 ZZO->ZZO_IMEI		:= cImei
	 ZZO->ZZO_CARCAC	:= cCarcac
	 ZZO->ZZO_STATUS	:= "1"
	 ZZO->ZZO_MODELO	:= cModelo
	 ZZO->ZZO_GARANT  	:= "S"
	 ZZO->ZZO_DTSEPA	:= dDataBase
	 ZZO->ZZO_HRSEPA	:= Time()
	 ZZO->ZZO_USRSEP	:= "FRONTEND"
	 ZZO->ZZO_NUMCX		:= cNumCx
	 ZZO->ZZO_ORIGEM	:= "FRONTE"
	 ZZO->ZZO_CLIENT	:= cCodCli
	 ZZO->ZZO_LOJA		:= cLojCli
	 ZZO->ZZO_NF		:= "999999999" // Z14->Z14_NOTAE
	 ZZO->ZZO_SERIE		:= "999" // Z14->Z14_SERIEE
	 ZZO->ZZO_PRECO		:= Iif(nValor<=0,300,nValor)
	 ZZO->ZZO_DESTIN	:= "B"
	 ZZO->ZZO_ENVARQ	:= "S"
	 ZZO->ZZO_BOUNCE	:= "N"
	 ZZO->ZZO_OPERA		:= cOpera
	 ZZO->ZZO_REFGAR	:= "1"
	MsUnlock()
	ZZO->(ConfirmSX8())
Else
	RecLock("ZZO",.F.)
	 ZZO->ZZO_CLIENT	:= cCodCli
	 ZZO->ZZO_LOJA		:= cLojCli
	 ZZO->ZZO_NF		:= "999999999" // Z14->Z14_NOTAE
	 ZZO->ZZO_SERIE		:= "999" // Z14->Z14_SERIEE
	MsUnlock()
Endif
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณProcessando Entrada Massiva.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
U_TECAX011("BGHTRIAG"+ZZO->ZZO_OPERA,ZZO->ZZO_NUMCX,.T.)
cQryOS := "SELECT TOP 1 ZZ4_OS as OSBGH FROM "+RetSqlName("ZZ4")+"(NOLOCK) "
cQryOS += "WHERE D_E_L_E_T_ = '' "
cQryOS += "	AND ZZ4_FILIAL = '"+xFilial("ZZ4")+"' "
cQryOS += "	AND ZZ4_IMEI = '"+cImei+"' "
cQryOS += "	AND ZZ4_STATUS <> '9' "
_cAlias := GetNextAlias()
dbUseArea(.T.,"TOPCONN",TcGenQry(,,cQryOS),_cAlias,.T.,.T.)
cOsBGH := (_cAlias)->OSBGH
(_cAlias)->(dbCloseArea())
::oMassivaInputResult:IDResult := 0
::oMassivaInputResult:cResult := RetErro("000")
::oMassivaInputResult:cOSBGH := cOsBGH
RpcClearEnv() 
Return .T.
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษอออออออัอออออออออออหออออออัอออออออออออออออออออออออออออออหอออออัออออออออปฑฑ
ฑฑบM้todo ณComplement บAutor ณMicrosiga                    บData ณ10/02/15บฑฑ
ฑฑฬอออออออุอออออออออออสออออออฯอออออออออออออออออออออออออออออสอออออฯออออออออนฑฑ
ฑฑบDesc.  ณ                                                               บฑฑ
ฑฑบ       ณ                                                               บฑฑ
ฑฑฬอออออออุอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso    ณ AP                                                            บฑฑ
ฑฑศอออออออฯอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
WSMETHOD Complement WSRECEIVE oComplement WSSEND oComplementResult WSSERVICE WSBGHORDERSERVICE
Local lRet		:= .T.
Local cMsgErr	:= ""
Local cFil		:= ::oComplement:FILIAL
Local cImei		:= ::oComplement:IMEI
Local cOsBGH	:= ::oComplement:OSBGH
Local cPosto	:= Iif(::oComplement:POSTO=Nil,"",::oComplement:POSTO)
Local cCobertu	:= Iif(::oComplement:COBERTURA=Nil,"",::oComplement:COBERTURA)
Local cDpy		:= Iif(::oComplement:DPY=Nil,"",::oComplement:DPY)
Local cProced	:= Iif(::oComplement:PROCEDENCIA=Nil,"",::oComplement:PROCEDENCIA)
Local cTpServ	:= Iif(::oComplement:TIPO_SERVICO=Nil,"",::oComplement:TIPO_SERVICO)
Local cDefRecla	:= Iif(::oComplement:DEFEITO_RECLAMADO=Nil,"",::oComplement:DEFEITO_RECLAMADO)
Local dFabrica	:= Iif(::oComplement:DATA_FABRICACAO=Nil,STOD("19000101"),STOD(::oComplement:DATA_FABRICACAO))
Local cOSGVS	:= Iif(::oComplement:DATA_OS=Nil,"01/01/1900",::oComplement:DATA_OS)
Local cLocAtend	:= Iif(::oComplement:LOCAL_ATENDIMENTO=Nil,"",::oComplement:LOCAL_ATENDIMENTO)
Local cAtend	:= Iif(::oComplement:ATENDENTE=Nil,"",::oComplement:ATENDENTE)
Local cOpera	:= Iif(::oComplement:OPERADORA=Nil,"",::oComplement:OPERADORA)
Local cRevend	:= Iif(::oComplement:REVENDEDOR=Nil,"",::oComplement:REVENDEDOR)
Local nVlr		:= Iif(::oComplement:VALOR_DO_APARELHO=Nil,0,::oComplement:VALOR_DO_APARELHO)
Local cNrOS		:= Iif(::oComplement:NUMERO_OS=Nil,0,::oComplement:NUMERO_OS)
Local cNFCompr	:= Iif(::oComplement:NF_COMPRA=Nil,"", Right(Replicate("0",9)+Alltrim(::oComplement:NF_COMPRA),9))
Local dDtCompr	:= Iif(::oComplement:DATA_COMPRA=Nil,"01/01/1900",CTOD(SubSTR(::oComplement:DATA_COMPRA,1,10)))
Local cLotIRL	:= ""
Local dOSGVS	:= CTOD(SubSTR(cOSGVS,1,6)+SubSTR(cOSGVS,9,2))
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณConsiste as informa็๕es.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If Empty(cFil) .OR. cFil == Nil .OR. ValType(cFil) <> "C" .OR. cFil == "?"
	cMsgErr += RetErro("E01")
	lRet := .F.
EndIf
If Empty(cImei) .OR. cImei == Nil .OR. ValType(cImei) <> "C" .OR. cImei == "?"
	cMsgErr += RetErro("E02")
	lRet := .F.
EndIf
If Empty(cOsBGH) .OR. cOsBGH == Nil .OR. ValType(cOsBGH) <> "C" .OR. cOsBGH == "?"
	cMsgErr += RetErro("E03")
	lRet := .F.
EndIf
If !lRet
	::oComplementResult:IDResult := (0-1)
	::oComplementResult:cResult := cMsgErr
	Return .T.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณAbertura de ambienteณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
RpcSetType(3)
RpcSetEnv("02",cFil)
cFil	:= AvKey(cFil,"ZZ4_FILIAL")
cImei	:= AvKey(cImei,"ZZ4_IMEI")
cOsBGH	:= AvKey(cOsBGH,"ZZ4_OS")
cNrOS	:= PadL(Alltrim(cNrOS),10,"0")
dbSelectArea("ZZ4")
ZZ4->(dbSetOrder(1)) // ZZ4_FILIAL, ZZ4_IMEI, ZZ4_OS
ZZ4->(dbGoTop())
If (ZZ4->(dbSeek(xFilial("ZZ4")+cImei+cOsBGH)))
	//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
	//ณBusca o C๓digo IRLณ
	//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
	If Empty(ZZ4->ZZ4_LOTIRL)
		cLotIRL := GetSx8Num("SZA","ZA_LOTEIRL")
		ConfirmSX8()
	Else
		cLotIRL := ZZ4->ZZ4_LOTIRL
	EndIF
	//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
	//ณAtualiza Informa็๕e na tabela ZZ4ณ
	//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
	Reclock("ZZ4",.F.)
	 ZZ4->ZZ4_GVSOS := cNrOS
	 ZZ4->ZZ4_LOTIRL := cLotIRL
	MsUnlock()
	dbSelectArea("SZA")
	SZA->(dbSetOrder(4)) // ZA_FILIAL, ZA_IMEI, ZA_CLIENTE, ZA_LOJA, ZA_NFISCAL, ZA_STATUS
	SZA->(dbGoTop())
	If SZA->(dbSeek(xFilial("SZA") + AvKey(Alltrim(cImei),"ZA_IMEI") + ZZ4->ZZ4_CODCLI + ZZ4->ZZ4_LOJA))
		//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
		//ณAtualiza Informa็๕e na tabela SZAณ
		//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
		Reclock("SZA",.F.)
		 SZA->ZA_CODATEN	:= cPosto
		 SZA->ZA_CODCOBE	:= cCobertu
		 SZA->ZA_CODDPY		:= cDpy
		 SZA->ZA_CODPROC	:= cProced
		 SZA->ZA_CODTPSE	:= cTpServ
		 SZA->ZA_DEFCONS	:= cDefRecla
		 SZA->ZA_DTFABRI	:= Iif(dFabrica>CTOD("01/01/2000"),STR(Year(dFabrica)),"")
		 SZA->ZA_DTOSGVS	:= dOSGVS
		 SZA->ZA_LOCATEN	:= cLocAtend
		 SZA->ZA_NOMEATE	:= cAtend
		 SZA->ZA_NOMEOPE	:= cOpera
		 SZA->ZA_NOMEREV	:= cRevend
		 SZA->ZA_VALNFCO	:= Iif(nVlr<=0,300,nVlr)
		 SZA->ZA_CODPROD	:= Posicione("SB1",1,xFilial("SB1")+ZZ4->ZZ4_CODPRO,"B1_MODELO")
		 SZA->ZA_LOTEIRL	:= ZZ4->ZZ4_LOTIRL
		 SZA->ZA_OSGVS		:= ZZ4->ZZ4_GVSOS
		 SZA->ZA_DTRECPR	:= dDataBase
		 SZA->ZA_NFCOMPR	:= cNFCompr
		 SZA->ZA_DTNFCOM	:= dDtCompr
		MsUnlock()
	EndIf
EndIf
::oComplementResult:IDResult := 0
::oComplementResult:cResult := RetErro("000")
RpcClearEnv()
Return .T.
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษอออออออัออออออออออออหออออออัออออออออออออออออออออออออออออหอออออัออออออออปฑฑ
ฑฑบM้todo ณEntryInvoiceบAutor ณMicrosiga                   บData ณ25/02/15บฑฑ
ฑฑฬอออออออุออออออออออออสออออออฯออออออออออออออออออออออออออออสอออออฯออออออออนฑฑ
ฑฑบDesc.  ณ                                                               บฑฑ
ฑฑบ       ณ                                                               บฑฑ
ฑฑฬอออออออุอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso    ณBGH                                                            บฑฑ
ฑฑศอออออออฯอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
WSMETHOD EntryInvoice WSRECEIVE oEntryInvoice WSSEND oEntryInvoiceResult WSSERVICE WSBGHORDERSERVICE
Local lRet		:= .T.
Local cFil		:= ::oEntryInvoice:FILIAL
Local cCodCli	:= ::oEntryInvoice:CODIGO_CLIENTE
Local cLojCli	:= ::oEntryInvoice:LOJA_CLIENTE
Local cOperacao	:= ::oEntryInvoice:TES			// Definir opera็ใo
Local cSerNf	:= ::oEntryInvoice:SERIE_NF
Local cTES		:= ""
Local cARMEQ	:= ""
Local cCCUSTO	:= ""
Local cDIVNEG	:= ""
Local cNumNf	:= ""
Local itCodPro	:= ""
Local itItem	:= ""
Local itTES		:= ""
Local cMsgErr	:= ""
Local itQtde	:= 0
Local nPosNum	:= 0
Local itVlrUnit	:= 0.00
Local aLinha	:= {}
Private _cerro	:= ""
Private aCabec	:= {}
Private aItens	:= {}
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณValida consistencia da informa็ใo.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If Empty(cCodCli) .OR. cCodCli == Nil .OR. ValType(cCodCli) <> "C" .OR. cCodCli == "?"
	cMsgErr += RetErro("E05")
	lRet := .F.
EndIf
If Empty(cLojCli) .OR. cLojCli == Nil .OR. ValType(cLojCli) <> "C" .OR. cLojCli == "?"
	cMsgErr += RetErro("E06")
	lRet := .F.
EndIf
If Empty(cOperacao) .OR. cOperacao == Nil .OR. ValType(cOperacao) <> "C" .OR. cOperacao == "?"
	cMsgErr += RetErro("E14") //TODO: MENSAGEM
	lRet := .F.
EndIf
If Len(::oEntryInvoice:oITEM) < 1
	cMsgErr += RetErro("E10")
	lRet := .F.
EndIf
For nX := 1 to Len(::oEntryInvoice:oITEM)
	itCodPro	:= ::oEntryInvoice:oITEM[nX]:PRODUTO
	itQtde		:= ::oEntryInvoice:oITEM[nX]:QUANTIDADE
	itVlrUnit	:= ::oEntryInvoice:oITEM[nX]:VALOR_UNITARIO
	If Empty(itCodPro) .OR. itCodPro == Nil .OR. ValType(itCodPro) <> "C" .OR. itCodPro == "?"
		cMsgErr += RetErro("E11",STR(nX))
		lRet := .F.
	EndIf
	If itQtde == Nil .OR. ValType(itQtde) <> "N" .OR. itQtde <= 0
		cMsgErr += RetErro("E12",STR(nX))
		lRet := .F.
	EndIf
	If itVlrUnit == Nil .OR. ValType(itVlrUnit) <> "N"
		cMsgErr += RetErro("E13",STR(nX))
		lRet := .F.
	EndIf
Next nX
If !lRet
	::oEntryInvoiceResult:IDResult := (0-1)
	::oEntryInvoiceResult:cResult := cMsgErr
	Return .T.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณAbertura de ambienteณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
RpcSetType(3)
RpcSetEnv("02",cFil)
dbSelectArea("SA1")
dbSetOrder(1) // A1_FILIAL, A1_COD, A1_LOJA
dbselectarea("SF4")
dbsetorder(1) // F4_FILIAL, F4_CODIGO
dbselectarea("SB1")
dbsetorder(1) // B1_FILIAL, B1_COD
cFil	:= AvKey(cFil,"ZZ4_FILIAL")
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณBusca de informa็๕es do cadastro ZZJ.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
//cTES 	:= Posicione("ZZJ",1,xFilial("ZZJ") + cOperacao,"ZZJ_TESECF"	)
cTES 	:= "229"
cARMEQ  := Posicione("ZZJ",1,xFilial("ZZJ") + cOperacao,"ZZJ_ARMENT"	)
cCCUSTO := Posicione("ZZJ",1,xFilial("ZZJ") + cOperacao,"ZZJ_CC"		)
cDIVNEG := Posicione("ZZJ",1,xFilial("ZZJ") + cOperacao,"ZZJ_DIVNEG"	)
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณBusca Cadstro de Cliente e retorna erro caso nใo consiga.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If !(SA1->(dbSeek(xFilial("SA1")+AvKey(cCodCli,"A1_COD")+AvKey(cLojCli,"A1_LOJA"))))
	::oEntryInvoiceResult:IDResult := (0-1)
	::oEntryInvoiceResult:cResult := RetErro("E51")
	RpcClearEnv()
	Return .T.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณVerifica se jแ existe NF para este cliente e o radio esta abertoณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If NfAberCli(AvKey(cCodCli,"A1_COD")+AvKey(cLojCli,"A1_LOJA"), cSerNf)
	::oEntryInvoiceResult:IDResult := (0-1)
	::oEntryInvoiceResult:cResult := RetErro("E59")
	RpcClearEnv()
	Return .T.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCaso passe o TES, verifica se esta cadastrado em Tipos de Entrada e Saํda.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If !Empty(cTES) .AND. !(SF4->(dbSeek(xFilial("SA1")+AvKey(cTES,"F4_CODIGO"))))
	::oEntryInvoiceResult:IDResult := (0-1)
	::oEntryInvoiceResult:cResult := RetErro("E54")
	RpcClearEnv()
	Return .T.
EndIf
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณPara cliente "F' serie default 3, para cliente "J" deve-se informar s้rie.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If SA1->A1_PESSOA<>"F"
	::oEntryInvoiceResult:IDResult := (0-1)
	::oEntryInvoiceResult:cResult := RetErro("E52")
	RpcClearEnv()
	Return .T.
Else
	If Empty(cSerNf) .OR. cSerNf == Nil .OR. ValType(cSerNf) <> "C" .OR. cSerNf == "?"
		cSerNf := "3"
	EndIf
EndIf
For nX := 1 to Len(::oEntryInvoice:oITEM)
	itCodPro	:= AvKey(::oEntryInvoice:oITEM[nX]:PRODUTO,"B1_COD")
	itQtde		:= ::oEntryInvoice:oITEM[nX]:QUANTIDADE
	itVlrUnit	:= ::oEntryInvoice:oITEM[nX]:VALOR_UNITARIO
	itItem		:= STRZERO(nX, TamSX3("D1_ITEM")[01], 0)
	//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
	//ณValida cadastro de produtos.ณ
	//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
	If !(SB1->(dbseek(xfilial("SB1")+itCodPro)))
		::oEntryInvoiceResult:IDResult := (0-1)
		::oEntryInvoiceResult:cResult := RetErro("E53",itCodPro)
		RpcClearEnv()
		Return .F.
	Endif
	//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
	//ณValida cadastro de TES.ณ
	//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
	If Empty(cTES)
		If Empty(itTES)
			itTES := SB1->B1_TE
			If !(SF4->(dbseek(xfilial("SF4")+itTES)))
				::oEntryInvoiceResult:IDResult := (0-1)
				::oEntryInvoiceResult:cResult := RetErro("E54")
				RpcClearEnv()
				Return .F.
			Endif
		ElseIf itTES <> SB1->B1_TE
			::oEntryInvoiceResult:IDResult := (0-1)
			::oEntryInvoiceResult:cResult := RetErro("E55")
			RpcClearEnv()
			Return .F.
		Endif
	Else
		itTES := cTES
	EndIf
	itVlrUnit := Iif(itVlrUnit<=0,300,itVlrUnit)
	aAdd(aLinha,{"D1_FILIAL"	,xFilial("SD1")							,Nil,Nil})
	aAdd(aLinha,{"D1_DOC"		,cNumNf									,Nil,Nil})
	aAdd(aLinha,{"D1_SERIE"		,cSerNf									,Nil,Nil})
	aAdd(aLinha,{"D1_FORNECE"	,SA1->A1_COD							,Nil,Nil})
	aAdd(aLinha,{"D1_LOJA"		,SA1->A1_LOJA							,Nil,Nil})
	aAdd(aLinha,{"D1_ITEM"		,itItem									,Nil,Nil})
	aAdd(aLinha,{"D1_COD"		,SB1->B1_COD							,Nil,Nil})
	aAdd(aLinha,{"D1_LOCAL"		,cARMEQ									,Nil,Nil})
	aAdd(aLinha,{"D1_QUANT"		,itQtde									,Nil,Nil})
	aAdd(aLinha,{"D1_VUNIT"		,itVlrUnit								,Nil,Nil})
	aAdd(aLinha,{"D1_TOTAL"		,(itQtde * itVlrUnit)					,Nil,Nil})
	aAdd(aLinha,{"D1_TES"		,itTES									,Nil,Nil})
	aadd(aLinha,{"D1_CC"		,cCCUSTO								,Nil,Nil})
	aadd(aLinha,{"D1_DIVNEG"	,CDIVNEG								,Nil,Nil})
	aAdd(aItens,aLinha)
Next nX	
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณPreenche o cabe็alho para NF de Entradaณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
aAdd(aCabec,{"F1_FILIAL"	,xFilial("SF1")	,Nil,Nil})
aAdd(aCabec,{"F1_TIPO"		,"B"			,Nil,Nil})
aAdd(aCabec,{"F1_DOC"		,cNumNf			,Nil,Nil})
aAdd(aCabec,{"F1_SERIE"		,cSerNf			,Nil,Nil})
aAdd(aCabec,{"F1_FORMUL"	,"S"			,Nil,Nil})
aAdd(aCabec,{"F1_EMISSAO"	,dDataBase		,Nil,Nil})
aAdd(aCabec,{"F1_FORNECE"	,SA1->A1_COD	,Nil,Nil})
aAdd(aCabec,{"F1_LOJA"		,SA1->A1_LOJA	,Nil,Nil})
aAdd(aCabec,{"F1_ESPECIE"	,"SPED"			,Nil,Nil})
aAdd(aCabec,{"F1_COND"		,"001"			,Nil,Nil})
aAdd(aCabec,{"F1_EST"		,SA1->A1_EST	,Nil,Nil})
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณPrepara gera็ใo da NF via ExecAuto.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
//Begin Transaction
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณBusca n๚mera็ใo de NF e retorna erro caso nใo consiga.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
//cNumNf := AvKey(Alltrim(GetNfeNum(cSerNf)),"F1_DOC")
cNumNf := AvKey(Alltrim(GetSetNF(cSerNf)),"F1_DOC")
If Empty(cNumNf)
	cMsgErr += RetErro("E50")
	lRet := .F.
Else
	//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
	//ณBuscando o n๚mero da NF corretamente, ajusta os arrays para MsExecautoณ
	//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
	For nX := 1 to Len(aItens)
		nPosNum	:= Ascan(aItens[nX],{|x|x[1] = "D1_DOC"})
		aItens[nX][nPosNum][2] := cNumNf
	Next nX
	nPosNum	:= Ascan(aCabec,{|x|x[1] = "F1_DOC"})
	aCabec[nPosNum][2] := cNumNf
EndIf
If lRet
	lMsErroAuto := .F.
	MsExecAuto({|x,y,z,w|Mata103(x,y,z,w)},aCabec, aItens,3,.F.)
	If lMsErroAuto
		_cerro := MostraErro()
		RollbackNum()
		DisarmTransaction()
		cMsgErr += RetErro("E99")
		lRet := .F.
//	Else
//		CommitNum(cNumNf,cSerNf)
	EndIf
EndIf
//End Transaction
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCaso acima tudo tenha ocorrido dentro dos conformes, retorna 'OK'.ณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
If !lRet
	::oEntryInvoiceResult:IDResult	:= (0-1)
	::oEntryInvoiceResult:cResult	:= cMsgErr
	Return .T.
Else
	::oEntryInvoiceResult:IDResult	:= 0
	::oEntryInvoiceResult:cResult	:= RetErro("000")
EndIf
RpcClearEnv()
Return .T.
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออออออออหอออออัออออออออปฑฑ
ฑฑบPrograma  ณGetNfeNum บAutor  ณHudson de Souza Santos    บData ณ25/02/15บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออออออออสอออออฯออออออออนฑฑ
ฑฑบDesc.     ณRetorna a NF de Entrada de acordo com a s้ria. Verifica se  บฑฑ
ฑฑบ          ณregistro esta travado e tenta a cada 100 milessimos.        บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
Static Function GetNfeNum(cSerNf)
Local cNumNf := ""
Local cTab	 := "01"
Local cFilSX5 := xFilial("SF1")
Local lContinua := .T.
dbSelectArea("SX5")
dbSetOrder(1)
If ( dbSeek(cFilSX5+cTab+cSerNF) )
	nVezes := 0
	cNumNf := SX5->X5_DESCRI
	While ( !SX5->(MsRLock()) )
		nVezes ++
		If ( nVezes > 10 )
			lContinua := .F.
			Exit
		EndIf
		Sleep(100)
	EndDo
EndIf
Return cNumNf
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออออออหอออออัออออออออออปฑฑ
ฑฑบPrograma  ณCommitNum บAutor  ณHudson de Souza Santos  บData ณ 20/01/14 บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออออออสอออออฯออออออออออนฑฑ
ฑฑบDesc.     ณComita o nบ da NF na SX5.                                   บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
Static Function CommitNum(cNumNF,cSerNf)
Local cTab		:= "01"
Local cFilSX5	:= xFilial("SF1")
dbSelectArea("SX5")
dbSetOrder(1)
If ( dbSeek(cFilSX5+cTab+cSerNF) )
	RecLock("SX5",.F.)
	SX5->X5_DESCRI  := StrZero(Val(cNumNF)+1,Len(Alltrim(cNumNF)))
	SX5->X5_DESCSPA := StrZero(Val(cNumNF)+1,Len(Alltrim(cNumNF)))
	SX5->X5_DESCENG := StrZero(Val(cNumNF)+1,Len(Alltrim(cNumNF)))
	SX5->(MsUnLock())
EndIf
Return
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออออออหอออออัออออออออออปฑฑ
ฑฑบPrograma  ณNfAberCli บAutor  ณHudson de Souza Santos  บData ณ 16/04/15 บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออออออสอออออฯออออออออออนฑฑ
ฑฑบDesc.     ณConsulta NF em aberto para o Cliente.                       บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
Static Function NfAberCli(cCod,cLoj, cSerNf)
Local lRet := .F.

//Goto: Desenvolver regra para consulta de NF com rแdio em aberto
Return(lRet)
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออออออหอออออัออออออออออปฑฑ
ฑฑบPrograma  ณGetSetNF  บAutor  ณHudson de Souza Santos  บData ณ 16/04/15 บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออออออสอออออฯออออออออออนฑฑ
ฑฑบDesc.     ณM้todo diferente para buscar a NF jแ comitando              บฑฑ
ฑฑบ          ณ*Melhor deixar NF's inutilizadas a duplicar NF.             บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
Static Function GetSetNF(cSerNf)
Local cTab		:= "01"
Local cFilSX5	:= xFilial("SF1")
Local cNumNF	:= ""
dbSelectArea("SX5")
dbSetOrder(1)
If ( dbSeek(cFilSX5+cTab+cSerNF) )
	RecLock("SX5",.F.)
	cNumNF			:= SX5->X5_DESCRI
	SX5->X5_DESCRI  := StrZero(Val(cNumNF)+1,Len(Alltrim(cNumNF)))
	SX5->X5_DESCSPA := StrZero(Val(cNumNF)+1,Len(Alltrim(cNumNF)))
	SX5->X5_DESCENG := StrZero(Val(cNumNF)+1,Len(Alltrim(cNumNF)))
	SX5->(MsUnLock())
EndIf
Return(cNumNF)
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออออออหอออออัออออออออออปฑฑ
ฑฑบPrograma  ณ RetErro  บAutor  ณHudson de Souza Santos  บData ณ 20/01/14 บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออออออสอออออฯออออออออออนฑฑ
ฑฑบDesc.     ณFun็ใo que retorna status de acordo com um c๓digo passado.  บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณ BGH                                                        บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
Static Function RetErro(_cCodErro,_cTxtAux)
Local cDescErro := ""
Local nPosErro	:= 0
Local aErros	:= {}
_cTxtAux := Iif(_cTxtAux==Nil,"",_cTxtAux)
aErros := {;
	{"E01","Campo |FILIAL| nใo preenchido"},;
	{"E02","Campo |IMEI| nใo preenchido"},;
	{"E03","Campo |OSBGH| nใo preenchido"},;
	{"E04","Campo |OPERACAO| nใo preenchido"},;
	{"E05","Campo |CODIGO_CLIENTE| nใo preenchido"},;
	{"E06","Campo |LOJA_CLIENTE| nใo preenchido"},;
	{"E07","Campo |MODELO| nใo preenchido"},;
	{"E08","Campo |CARCACA| nใo preenchido"},;
	{"E10","Estrutura |oITENS| nใo preenchido"},;
	{"E11","Campo |PRODUTO Item "+_cTxtAux+"| nใo preenchido"},;
	{"E12","Campo |QUANTIDADE Item "+_cTxtAux+"| nใo preenchido"},;
	{"E13","Campo |VALOR_UNITARIO Item "+_cTxtAux+"| nใo preenchido"},;
	{"E14","Campo |TES| nใo preenchido"},;
	{"E50","Problemas para buscar NF de entrada"},;
	{"E51","Cliente nใo cadastrado"},;
	{"E52","Permitido apenas cliente Pessoa Fํsica"},;
	{"E53","PN: "+_cTxtAux+" Nใo Encontrado no Cadastro de Produtos"},;
	{"E54","TES Nใo Encontrado no Cadastro de Tipo de Entrada e Saํda"},;
	{"E55","TES diferentes entre os itens (Cadstro de Produtos)"},;
	{"E56","Proibido informar aspas simples ou duplas no IMEI ou Carca็เ."},;
	{"E57","Imei esta aberto na BGH com a OS '"+_cTxtAux+"'."},;
	{"E58","Clientes diferente 'Pessoa Fํsica'."},;
	{"E59","Jแ existe rแdio para este cliente em aberto"},;
	{"E99","Erro no ExecAuto ("+_cTxtAux+")"},;
	{"000","Processo executado com sucesso"};
}
nPosErro	:= Ascan(aErros,{|x|x[1]==_cCodErro})
cDescErro	:= Alltrim(aErros[nPosErro,1])
cDescErro	+= " - "
cDescErro	+= Alltrim(aErros[nPosErro,2])
cDescErro	:= "["+cDescErro+"]"
Return(cDescErro)