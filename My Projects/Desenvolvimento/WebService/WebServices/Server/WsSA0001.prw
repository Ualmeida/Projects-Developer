#INCLUDE "APWEBSRVl.CH"
#INCLUDE "PROTHEUS.CH"
#DEFINE INCLUSAO  3
#DEFINE ALTERACAO 4
#DEFINE EXCLUSAO  5
/*
*Programa: WSBGH 
*Autor	 : Thomas Quintino Galv�o 
*Data 	 : 28/08/12   
*Desc.   : WebService Cadastro de Clientes
*/    
WSSERVICE	WSBGH DESCRIPTION "Servi�o WebService BGH v1.1"
	// Atributos
	WSDATA oSENDCLIENTE	AS STRUC_SEND_CLIENTE
	WSDATA oPARAMCLIENT	AS STRUC_PARAM_CLIENT
	WSDATA oCADCLIENTE	AS STRUC_CAD_CLIENTE 
	WSDATA aRet			AS STRUC_RET
	WSDATA aItensSZ9	AS STRUC_SZ9
	WSDATA aCabecZZ3	AS STRUC_CABEC_ZZ3
	// M�todos
	WSMETHOD GET_CLIENT    DESCRIPTION "M�todo de Consulta Cliente"
	WSMETHOD GravaCadastro DESCRIPTION "M�todo de Cadastramento"
ENDWSSERVICE 
WSSTRUCT STRUC_PARAM_CLIENT
	WSDATA cCPF			AS STRING Optional
	WSDATA cVerAtu		AS STRING Optional
	WSDATA oCADCLIENTE	AS STRUC_CAD_CLIENTE Optional
ENDWSSTRUCT
WSSTRUCT STRUC_SEND_CLIENTE
	WSDATA cSendCodCli	AS STRING Optional 
	WSDATA cSendLojCli	AS STRING Optional 
	WSDATA cMsgErro		AS STRING Optional
	WSDATA cOpc			AS STRING Optional 
ENDWSSTRUCT
WSSTRUCT STRUC_CAD_CLIENTE
	&&Aba Cadastrais
	WSDATA cLoja 		AS STRING Optional
	WSDATA cNome		AS STRING Optional
	WSDATA cFisJur		AS STRING Optional
	WSDATA cNomFant		AS STRING Optional
	WSDATA cTipo		AS STRING Optional
	WSDATA cCEP			AS STRING Optional
	WSDATA cEnd			AS STRING Optional
	WSDATA cBairro		AS STRING Optional
	WSDATA cEstado		AS STRING Optional
	WSDATA cCodMun		AS STRING Optional
	WSDATA cMunic		AS STRING Optional
	WSDATA cNumCompl	AS STRING Optional
	WSDATA cDDD			AS STRING Optional
	WSDATA cTel			AS STRING Optional
	WSDATA cPais		AS STRING Optional
	WSDATA cCnpj		AS STRING Optional
	WSDATA cInsEst		AS STRING Optional
	WSDATA cEMail		AS STRING Optional
	&&Aba Adm.\Fin.
	WSDATA cCContab		AS STRING Optional
	&&Aba Fiscais
	WSDATA cPaisBac		AS STRING Optional
	WSDATA cEndEntr		AS STRING Optional
	WSDATA cBaiEntr		AS STRING Optional
	WSDATA cMunEntr		AS STRING Optional
	WSDATA cUFEntr		AS STRING Optional
	WSDATA cCEPEntr		AS STRING Optional
	WSDATA cContrib		AS STRING Optional
	&&Aba Vendas
	WSDATA cTransp		AS STRING Optional
	WSDATA cMensagem	AS STRING Optional
ENDWSSTRUCT
WSSTRUCT STRUC_CABEC_ZZ3
	WSDATA cCodUsu		AS STRING
	WSDATA cSenha		AS STRING
	WSDATA cOperacao	AS STRING
	WSDATA cTransaction	AS STRING Optional
	WSDATA cUsuarioFS	AS STRING
	WSDATA cFilialFS	AS STRING
	WSDATA nAcao		AS FLOAT
	WSDATA cCodTec		AS STRING
	WSDATA cLab			AS STRING
	WSDATA cCodSet		AS STRING
	WSDATA cFase1		AS STRING
	WSDATA cFase2		AS STRING Optional
	WSDATA cEncOS		AS STRING
	WSDATA cImei		AS STRING
	WSDATA cNumOS		AS STRING
	WSDATA cSEQ			AS STRING
	WSDATA cModFail		AS STRING Optional
ENDWSSTRUCT
WSSTRUCT STRUC_SZ9
	WSDATA STRUC_SZ9	AS ARRAY OF STRUC_ITEM_SZ9 Optional
ENDWSSTRUCT
WSSTRUCT STRUC_ITEM_SZ9
	WSDATA cNumOS		AS STRING
	WSDATA cCodTec		AS STRING
	WSDATA nAcao		AS FLOAT
	WSDATA nQty			AS FLOAT
	WSDATA cPartNR		AS STRING
	WSDATA cImei		AS STRING
	WSDATA cFase1		AS STRING
	WSDATA cItem		AS STRING
	WSDATA cSeqItem		AS STRING
	WSDATA nRecno		AS INTEGER
ENDWSSTRUCT
WSSTRUCT STRUC_RET
	WSDATA cMens_R		AS STRING
	WSDATA aZZ3_R		AS STRUC_RET_ZZ3 Optional
	WSDATA aItens_R		AS ARRAY OF STRUC_RET_SZ9 Optional
ENDWSSTRUCT
WSSTRUCT STRUC_RET_ZZ3
	WSDATA cImei_R		AS STRING
	WSDATA cNumOS_R		AS STRING
	WSDATA cSeq_R		AS STRING
	WSDATA nRecno_R		AS INTEGER
ENDWSSTRUCT
WSSTRUCT STRUC_RET_SZ9
	WSDATA cNumOS_R		AS STRING
	WSDATA cCodTec_R	AS STRING
	WSDATA cSeq_R		AS STRING
	WSDATA cItem_R		AS STRING
	WSDATA cPartNR_R	AS STRING
	WSDATA nRecno_R		AS INTEGER
ENDWSSTRUCT
//Gets
WSMETHOD GET_CLIENT WSRECEIVE oPARAMCLIENT WSSEND oSENDCLIENTE WSSERVICE WSBGH
Local aClient		:= {}
Local aAreaCC2		:= {}
Local cMsg 			:= ""
Local cEndAnt 		:= ""
Local cEndNovo 		:= ""
Local cOpc			:= ""
Private _cLoja 		:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cLoja)  	!="U",::oPARAMCLIENT:oCADCLIENTE:cLoja		,"")
Private _cNome		:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cNome) 	!="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cNome)		,"")
Private _cFisJur	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cFisJur)	!="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cFisJur)		,"")
Private _cNomFant	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cNomFant) !="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cNomFant)	,"")
Private _cTipo		:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cTipo) 	!="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cTipo)		,"")
Private _cCEP		:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cCEP) 	!="U",::oPARAMCLIENT:oCADCLIENTE:cCEP	   	,"")
Private _cEnd		:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cEnd) 	!="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cEnd)		,"")
Private _cBairro	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cBairro) 	!="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cBairro)		,"")
Private _cEstado	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cEstado) 	!="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cEstado)		,"")
Private _cCodMun	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cCodMun) 	!="U",::oPARAMCLIENT:oCADCLIENTE:cCodMun	,"")
Private _cMunic		:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cMunic) 	!="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cMunic)		,"")
Private _cNumCompl	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cNumCompl)!="U",::oPARAMCLIENT:oCADCLIENTE:cNumCompl	,"")
Private _cDDD		:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cDDD)		!="U",::oPARAMCLIENT:oCADCLIENTE:cDDD		,"")
Private _cTel		:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cTel)		!="U",::oPARAMCLIENT:oCADCLIENTE:cTel		,"")
Private _cPais		:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cPais)	!="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cPais)		,"")
Private _cCnpj		:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cCnpj)	!="U",::oPARAMCLIENT:oCADCLIENTE:cCnpj		,"")
Private _cInsEst	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cInsEst)	!="U",::oPARAMCLIENT:oCADCLIENTE:cInsEst	,"")
Private _cEMail		:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cEMail)	!="U",::oPARAMCLIENT:oCADCLIENTE:cEMail		,"")
Private _cCContab 	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cCContab)	!="U",::oPARAMCLIENT:oCADCLIENTE:cCContab	,"")
Private _cPaisBac	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cPaisBac)	!="U",::oPARAMCLIENT:oCADCLIENTE:cPaisBac	,"")
Private _cEndEntr	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cEndEntr)	!="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cEndEntr)	,"")
Private _cBaiEntr 	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cBaiEntr)	!="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cBaiEntr)	,"")
Private _cMunEntr	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cMunEntr)	!="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cMunEntr)	,"")
Private _cUFEntr	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cUFEntr)	!="U",Upper(::oPARAMCLIENT:oCADCLIENTE:cUFEntr )	,"")
Private _cCEPEntr	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cCEPEntr)	!="U",::oPARAMCLIENT:oCADCLIENTE:cCEPEntr	,"")
Private _cContrib	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cContrib)	!="U",::oPARAMCLIENT:oCADCLIENTE:cContrib	,"")
Private _cTransp	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cTransp)	!="U",::oPARAMCLIENT:oCADCLIENTE:cTransp	,"")
Private _cMensagem	:= Iif(ValType(::oPARAMCLIENT:oCADCLIENTE:cMensagem)!="U",::oPARAMCLIENT:oCADCLIENTE:cMensagem	,"")
Private _cCPFCli	:= ::oPARAMCLIENT:cCPF
::oSENDCLIENTE 	:= WsClassNew("STRUC_SEND_CLIENTE")
::oCADCLIENTE 	:= WsClassNew("STRUC_CAD_CLIENTE" )
ConOut(_cEnd)
ConOut(_cNumCompl)
rpcsettype(3)
rpcsetenv('02','02')
aAreaCC2 := CC2->(GetArea())
If !ValidSa1(@cMsg)
	::oSENDCLIENTE:cSendCodCli 	:= "******"
	::oSENDCLIENTE:cSendLojCli 	:= "**"
	::oSENDCLIENTE:cOpc 		:= "*"
 	::oSENDCLIENTE:cMsgErro     := cMsg
Else
	dbSelectArea("SA1")
	SA1->(dbSetOrder(3))
	If SA1->(dbSeek(xFilial("SA1")+_cCPFCli)) .AND. !"BGH" $ SA1->A1_NOME
		cOpc := '1'
		If ::oPARAMCLIENT:cVerAtu == 'T' //T = Informa que pode atualizar
			cOpc := '2'
			ConOut('Cliente Atualizado -->'+AllTrim(SA1->A1_COD)+'/'+SA1->A1_LOJA+'-'+SA1->A1_NOME)
		    cEndAnt := 'End. '+AllTrim(SA1->A1_END)+' Bairro: '+AllTrim(SA1->A1_BAIRRO)+' Mun. '+AllTrim(SA1->A1_MUN)+' Estado: '+SA1->A1_EST+' CEP: '+SA1->A1_CEP
			RecLock("SA1",.F.)
	    		SA1->A1_CEP		:= _cCEP
				SA1->A1_END		:= Upper(Substr(_cEnd,1,At(',',_cEnd)+1) + _cNumCompl)
				SA1->A1_BAIRRO	:= _cBairro
				SA1->A1_EST		:= _cEstado
				SA1->A1_COD_MUN	:= _cCodMun
				SA1->A1_MUN		:= _cMunic
				SA1->A1_XNUMCOM	:= _cNumCompl
				SA1->A1_DDD		:= _cDDD
				SA1->A1_TEL		:= _cTel
				SA1->A1_PAIS	:= _cPais
				SA1->A1_CGC		:= _cCnpj
				SA1->A1_INSCR	:= _cInsEst
				SA1->A1_EMAIL	:= _cEMail
				SA1->A1_CONTA	:= _cCContab
				SA1->A1_CODPAIS	:= _cPaisBac
				SA1->A1_ENDENT	:= Upper(Substr(_cEndEntr,1,At(',',_cEndEntr)+1) + _cNumCompl)
				SA1->A1_BAIRROE	:= _cBaiEntr
				SA1->A1_MUNE	:= _cMunEntr
				SA1->A1_ESTE	:= _cUFEntr
				SA1->A1_CEPE	:= _cCEPEntr
				SA1->A1_CONTRIB	:= '2' 		//_cContrib
				SA1->A1_TRANSP	:= _cTransp
				SA1->A1_MENSAGE	:= '002' 	//_cMensagem
				SA1->A1_ESTADO	:= Posicione("SX5",1,xFilial("SX5")+"12"+_cEstado,"X5_DESCRI")
				SA1->A1_EMISSAO	:= Date()
			MsUnlock()
 			cEndNovo:= 'End. '+AllTrim(SA1->A1_END)+' Bairro: '+AllTrim(SA1->A1_BAIRRO)+' Mun. '+AllTrim(SA1->A1_MUN)+' Estado: '+SA1->A1_EST+' CEP: '+SA1->A1_CEP
 			If cEndAnt != cEndNovo
 				ConOut('Endere�o Anterior: ')
	 			ConOut(cEndAnt)
	 			ConOut('')
	 			ConOut('Endere�o Novo: ')
			    ConOut(cEndNovo)
			Else
				ConOut('N�o Houve altera��o de Endere�o!')
			EndIf
		EndIf
	Else
		cOpc := '0' 
    	RecLock("SA1",.T.)
    		SA1->A1_FILIAL	:= xFilial("SA1")
    		SA1->A1_COD		:= GetSXENum("SA1")
			SA1->A1_LOJA 	:= _cLoja
			SA1->A1_NOME	:= Upper(_cNome)
			SA1->A1_PESSOA	:= _cFisJur
			SA1->A1_NREDUZ	:= SubStr(_cNomFant, 1, TamSx3("A1_NREDUZ")[1])
			SA1->A1_TIPO	:= _cTipo
			SA1->A1_CEP		:= _cCEP
			SA1->A1_END		:= Upper(Substr(_cEnd,1,At(',',_cEnd)+1) + _cNumCompl)
			SA1->A1_BAIRRO	:= _cBairro
			SA1->A1_EST		:= _cEstado
			SA1->A1_COD_MUN	:= _cCodMun
			SA1->A1_MUN		:= _cMunic
			SA1->A1_XNUMCOM	:= _cNumCompl
			SA1->A1_DDD		:= _cDDD
			SA1->A1_TEL		:= _cTel
			SA1->A1_PAIS	:= _cPais
			SA1->A1_CGC		:= _cCnpj
			SA1->A1_INSCR	:= _cInsEst
			SA1->A1_EMAIL	:= _cEMail
			SA1->A1_CONTA	:= _cCContab
			SA1->A1_CODPAIS	:= _cPaisBac
			SA1->A1_ENDENT	:= Upper(Substr(_cEndEntr,1,At(',',_cEndEntr)+1) + _cNumCompl)
			SA1->A1_BAIRROE	:= _cBaiEntr
			SA1->A1_MUNE	:= _cMunEntr
			SA1->A1_ESTE	:= _cUFEntr
			SA1->A1_CEPE	:= _cCEPEntr
			SA1->A1_CONTRIB	:= '2' 		//_cContrib
			SA1->A1_TRANSP	:= _cTransp
			SA1->A1_MENSAGE	:= '002' 	//_cMensagem
			SA1->A1_ESTADO	:= Posicione("SX5",1,xFilial("SX5")+"12"+_cEstado,"X5_DESCRI")
			SA1->A1_EMISSAO	:= Date()
		MsUnlock()
		ConfirmSX8()
 		ConOut('Cliente novo cadastrado --> '+AllTrim(SA1->A1_COD)+'/'+SA1->A1_LOJA)
	EndIf
	If SA1->(dbSeek(xFilial("SA1")+AllTrim(_cCnpj)))
		::oSENDCLIENTE:cSendCodCli 	:= SA1->A1_COD
		::oSENDCLIENTE:cSendLojCli 	:= SA1->A1_LOJA
		::oSENDCLIENTE:cOpc 		:= cOpc
		::oSENDCLIENTE:cMsgErro		:= "Cadastrado efetudado com Sucesso!"
	Else 
		::oSENDCLIENTE:cSendCodCli 	:= "******"
		::oSENDCLIENTE:cSendLojCli 	:= "**"
		::oSENDCLIENTE:cOpc 		:= "*"
		::oSENDCLIENTE:cMsgErro		:= 'Erro de Valida��o!'
	EndIf
EndIf
CC2->(RestArea(aAreaCC2))
rpcclearenv()
Return .T.    

/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �GravaCadastro   �Autor  � Delta Decisao  Data � 07/08/2013  ���
�������������������������������������������������������������������������͹��
���Desc.     � Grava os Apontamentos em base de dados.                    ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       � WSBGH                                                      ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/

WSMETHOD GravaCadastro WSRECEIVE aCabecZZ3, aItensSZ9 WSSEND aRet WSSERVICE WSBGH
Local itcCodTec
Local itcFase1
Local itnAcao
Local itcImei
Local itcNumOS
Local itcPartNR
Local itnQty
Local itcItem
Local itcSeqItem
Local itnRecno
Local cUsuWeb
Local cMsg
Local cErro			:= ""
Local lRet			:= .T.
Local cMsgErr		:= ""
Local aItens		:= ::aItensSZ9:STRUC_SZ9
Private lNovo		:= .F.
Private nRecZZ3		:= 0
Private aDadosSZ9	:= {}
Private cCodUsu		:= ::aCabecZZ3:cCodUsu
Private cSenha		:= ::aCabecZZ3:cSenha
Private cOperacao	:= ::aCabecZZ3:cOperacao
//Private cTransaction:= ::aCabecZZ3:cTransaction
Private cTransaction:= Iif(::aCabecZZ3:cTransaction==Nil .OR. Valtype(::aCabecZZ3:cTransaction)<>"C" .OR. ::aCabecZZ3:cTransaction=="?","",::aCabecZZ3:cTransaction)
Private cUsuarioFS	:= ::aCabecZZ3:cUsuarioFS
Private cFilialFS	:= ::aCabecZZ3:cFilialFS
Private nAcao		:= ::aCabecZZ3:nAcao
Private cCodTec		:= ::aCabecZZ3:cCodTec
Private cLab		:= ::aCabecZZ3:cLab
Private cCodSet		:= ::aCabecZZ3:cCodSet
Private cFase1		:= ::aCabecZZ3:cFase1
Private cFase2		:= Iif(::aCabecZZ3:cFase2==Nil .OR. Valtype(::aCabecZZ3:cFase2)<>"C" .OR. ::aCabecZZ3:cFase2=="?",::aCabecZZ3:cFase1,::aCabecZZ3:cFase2)
Private cEncOS		:= ::aCabecZZ3:cEncOS
Private cImei		:= ::aCabecZZ3:cImei
Private cNumOS		:= ::aCabecZZ3:cNumOS
Private cSeq		:= ::aCabecZZ3:cSeq
Private cModFail	:= Iif(::aCabecZZ3:cModFail==Nil .OR. Valtype(::aCabecZZ3:cModFail)<>"C" .OR. ::aCabecZZ3:cModFail=="?","",::aCabecZZ3:cModFail)

If lRet .AND. (Empty(cFilialFS) .OR. cFilialFS ==  Nil .OR. Valtype(cFilialFS) <> "C" .OR. cFilialFS == "?" .OR. (cFilialFS <> "02"  .AND. cFilialFS <> "06"))
	cMsgErr			:= RetErro("011")
	lRet := .F.
Endif
If lRet
	RpcSetType(3)
	RpcSetEnv("02",cFilialFS)
	cUsuWeb:=Alltrim(GetNewPar("ES_USUWEB","FIELDWEB/FIELD1610"))
EndIf
If lRet .AND. (Empty(nAcao) .OR. nAcao == Nil .OR. Valtype(nAcao) <> "N")
	cMsgErr		:= RetErro("009")
	lRet		:= .F.
Endif            
If lRet .AND. (Empty(cCodUsu) .OR. cCodUsu == Nil .OR. Valtype(cCodUsu) <> "C" .OR. cCodUsu == "?")
	cMsgErr		:= RetErro("000")
	lRet		:= .F.
Endif   
If lRet .AND. (Empty(cSenha) .OR. cSenha == Nil .OR. Valtype(cSenha) <> "C" .OR. cSenha == "?")
	cMsgErr		:= RetErro("001")
	lRet		:= .F.
Endif
If lRet .AND. !((cCodUsu $ cUsuWeb) .OR. !(cSenha $ cUsuWeb))
	cMsgErr		:= RetErro("002")
	lRet		:= .F.
Endif
If lRet .AND. (Empty(cImei) .OR. cImei == Nil .OR. Valtype(cImei) <> "C" .OR. cImei == "?")
	cMsgErr		:= RetErro("008")
	lRet		:= .F.
Endif
If lRet .AND. (Empty(cNumOS) .OR. cNumOS == Nil .OR. Valtype(cNumOS) <> "C" .OR. cNumOS == "?")
	cMsgErr		:= RetErro("010")
	lRet		:= .F.
Endif
If lRet .AND. (Empty(cCodTec) .OR. cCodTec ==  Nil .OR. Valtype(cCodTec) <> "C" .OR. cCodTec == "?")
	cMsgErr		:= RetErro("003")
	lRet		:= .F.
Endif
If lRet .AND. (Empty(cLab) .OR. cLab ==  Nil .OR. Valtype(cLab) <> "C" .OR. cLab == "?")
	cMsgErr		:= RetErro("004")
	lRet		:= .F.
Endif
If lRet .AND. (Empty(cCodSet) .OR. cCodSet ==  Nil .OR. Valtype(cCodSet) <> "C" .OR. cCodSet == "?")
	cMsgErr		:= RetErro("107")
	lRet		:= .F.
Endif
If lRet .AND. (Empty(cFase1) .OR. Valtype(cFase1) <> "C" .OR. cFase1 == "?")
	cMsgErr		:= RetErro("005")
	lRet		:= .F.
Endif
If lRet .AND. nAcao<>INCLUSAO .AND. (Empty(cSeq) .OR. Valtype(cSeq) <> "C" .OR. cSeq == "?")
	cMsgErr		:= RetErro("108")
	lRet		:= .F.
EndIf
If lRet .AND. (Empty(cOperacao) .OR. cOperacao ==  Nil .OR. Valtype(cOperacao) <> "C" .OR. cOperacao == "?")
	cMsgErr		:= RetErro("111")
	lRet		:= .F.
Endif
/*
If lRet .AND. (Empty(cTransaction) .OR. cTransaction ==  Nil .OR. Valtype(cTransaction) <> "C" .OR. cTransaction == "?")
	cMsgErr		:= RetErro("112")
	lRet		:= .F.
Endif
*/
If lRet .AND. (Empty(cUsuarioFS) .OR. cUsuarioFS ==  Nil .OR. Valtype(cUsuarioFS) <> "C" .OR. cUsuarioFS == "?")
	cMsgErr		:= RetErro("113")
	lRet		:= .F.
Endif
//������������������������������������������Ŀ
//�Rotina de travamento do radio - GLPI 14467�
//��������������������������������������������
If lRet .AND. !(U_VLDTRAV(cFilialFS, cImei, cNumOS, {"W","WSSA0001","GravaCadastro"}))
	cMsgErr		:= RetErro("012")
	lRet		:= .F.
Endif
If !(lRet)
	::aRet:cMens_R := cMsgErr
	RpcClearEnv()
	Return .T.
EndIf
If nAcao == INCLUSAO
	cSeq:= u_CalcSeq(cImei,cNumOS)
	lNovo:=.T.
Endif
For nx:=1 to Len(aItens)
	itcCodTec   := ::aItensSZ9:STRUC_SZ9[nx]:cCodTec
	itcFase1    := ::aItensSZ9:STRUC_SZ9[nx]:cFase1
	itcImei     := ::aItensSZ9:STRUC_SZ9[nx]:cImei
	itcNumOS    := ::aItensSZ9:STRUC_SZ9[nx]:cNumOS
	itcPartNR   := ::aItensSZ9:STRUC_SZ9[nx]:cPartNR
	itnQty      := ::aItensSZ9:STRUC_SZ9[nx]:nQty
	itnAcao 	:= ::aItensSZ9:STRUC_SZ9[nx]:nAcao
	itcItem     := ::aItensSZ9:STRUC_SZ9[nx]:cItem
	itcSeqItem  := ::aItensSZ9:STRUC_SZ9[nx]:cSeqItem
	itnRecno    := ::aItensSZ9:STRUC_SZ9[nx]:nRecno
	If lRet .AND. (Empty( itcCodTec ) .OR. itcCodTec == Nil .OR. Valtype(itcCodTec) <> "C" .OR. itcCodTec == "?")
		cMsgErr   := RetErro("100")
		lRet := .F.
	Endif
	If lRet .AND. (Empty( itcFase1 ) .OR. itcFase1 == Nil .OR. Valtype(itcFase1) <> "C" .OR. itcFase1 == "?")
		cMsgErr   := RetErro("101")
	Endif
	If lRet .AND. (Empty( itcImei ) .OR. itcImei == Nil .OR. Valtype(itcImei) <> "C" .OR. itcImei == "?")
		cMsgErr   := RetErro("102")
		lRet := .F.
	Endif
	If lRet .AND. (Empty( itcNumOS ) .OR. itcNumOS == Nil .OR. Valtype(itcNumOS) <> "C" .OR. itcNumOS == "?")
		cMsgErr   := RetErro("103")
		lRet := .F.
	Endif
	If lRet .AND. (itcPartNR  == Nil .OR. Valtype(itcPartNR) <> "C" .OR. itcPartNR == "?")
		cMsgErr   := RetErro("104")
		lRet := .F.
	Endif
	If lRet .AND. (Empty( itnAcao ) .OR.itnAcao  == Nil .OR. Valtype(itnAcao) <> "N")
		cMsgErr   := RetErro("106")
		lRet := .F.
	Endif
	If lRet .AND. itnAcao<>INCLUSAO .AND. (Empty( itcItem ) .OR. itcItem == Nil .OR. Valtype(itcItem) <> "C" .OR. itcItem == "?")
		cMsgErr   := RetErro("110")
		lRet := .F.
	Endif
	If lRet .AND. itnAcao<>INCLUSAO .AND. (Empty(itcSeqItem) .OR. Valtype(itcSeqItem) <> "C" .OR. itcSeqItem == "?")
		cMsgErr		:= RetErro("108")
		lRet		:= .F.
	EndIf
	If lRet .AND. itnAcao<>INCLUSAO .AND. !ExisteSZ9(xFilial("SZ9"),itcNumOs,itcCodTec,itcSeqItem,itcItem)
		cMsgErr   := RetErro("109")
		lRet := .F.
	EndIf
	If !(lRet)
		::aRet:cMens_R := cMsgErr + xFilial("SZ9") + itcNumOs + itcCodTec + itcSeqItem + itcItem
		RpcClearEnv()
		Return .T.
	EndIf
	If lNovo .AND. itnAcao==INCLUSAO
		itcSeqItem := cSeq
	Endif
	Aadd(aDadosSZ9,{itcCodTec,itcFase1,itcImei,itcNumOS,itcPartNR,itnQty,itnAcao,itcItem,itcSeqItem,itnRecno})
Next nx
cMsg:=GrvCadastro(aDadosSZ9)
::aRet:cMens_R			:= cMsg
::aRet:aZZ3_R:cImei_R	:= cImei
::aRet:aZZ3_R:cNumOS_R	:= cNumOS
::aRet:aZZ3_R:cSeq_R	:= cSeq
::aRet:aZZ3_R:nRecno_R	:= nRecZZ3
If !Empty(aDadosSZ9)
	::aRet:aItens_R := Array(Len(aDadosSZ9))
	For nX := 1 to Len(aDadosSZ9)
		::aRet:aItens_R[nX]				:= WSClassNew("STRUC_RET_SZ9")
		::aRet:aItens_R[nX]:cCodTec_R	:= aDadosSZ9[nX,1]
		::aRet:aItens_R[nX]:cNumOS_R	:= aDadosSZ9[nX,4]
		::aRet:aItens_R[nX]:cPartNR_R	:= aDadosSZ9[nX,5]
		::aRet:aItens_R[nX]:cItem_R		:= aDadosSZ9[nX,8]
		::aRet:aItens_R[nX]:cSeq_R		:= aDadosSZ9[nX,9]
		::aRet:aItens_R[nX]:nRecno_R	:= aDadosSZ9[nX,10]
	Next nX
EndIf
RpcClearEnv()
Return .T.
*------------------------------------*
Static Function ExisteSZ9(_cFil, _cNOs, _cTec, _cSeq, _cItem)
*------------------------------------*
Local aAreaSZ9 := GetArea("SZ9")
Local lExist := .F.                  
_cFil	:= AvKey(_cFil	,"Z9_FILIAL")
_cNOs	:= AvKey(_cNOs	,"Z9_NUMOS")
_cTec	:= AvKey(_cTec	,"Z9_CODTEC")
_cSeq	:= AvKey(_cSeq	,"Z9_SEQ")
_cItem	:= AvKey(_cItem	,"Z9_ITEM")
dbSelectArea("SZ9")
dbSetOrder(1)
dbGoTop()
lExist := dbseek(_cFil+_cNOs+_cTec+_cSeq+_cItem)
RestArea(aAreaSZ9)
Return(lExist)
*------------------------------------*
Static Function GrvCadastro(aItens)
*------------------------------------*
Local cMsg:=""
Local itcCodTec
Local itcFase1
Local itnAcao
Local itcImei
Local itcNumOS                      
Local itcPartNR
Local itnQty
Local itcSeqItem
Local itcItem
Local itnRecno
Local nSaveSx8
Local nRecno
Local _aFasMax := {}
ZZ4->(dbSetOrder(1))
ZZ4->(dbSeek(xFilial("ZZ4")+AvKey(cImei,"ZZ4_IMEI")+AvKey(cNumOS,"ZZ4_OS")))
_aFasMax := u_FasMax("", ZZ4->ZZ4_GRMAX, cCodSet,cCodSet)
ZZ4->(RecLock("ZZ4",.F.))
ZZ4->ZZ4_SETATU := cCodSet
ZZ4->ZZ4_FASATU := Iif(!Empty(cFase2), cFase2, cFase1)
ZZ4->ZZ4_FASPRI	:= cFase1
ZZ4->ZZ4_ATPRI  := Iif( Empty(ZZ4->ZZ4_ATPRI) , dtos(date())+time(), ZZ4->ZZ4_ATPRI)
ZZ4->ZZ4_ATULT  := dTos(date())+time()
If !Empty(_aFasMax[1])
	ZZ4->ZZ4_FASMAX := _aFasMax[1]
	ZZ4->ZZ4_GRMAX  := _aFasMax[3]
	ZZ4->ZZ4_SETMAX := _aFasMax[4]
EndIf
ZZ4->(MsUnlock())
ZZ4->(dbCommit())
ZZ3->(dbsetorder(1))
If lNovo
	ZZ3->(RecLock("ZZ3",.T.))
	ZZ3->ZZ3_FILIAL := xFilial("ZZ3")
	ZZ3->ZZ3_IMEI   := cImei
	ZZ3->ZZ3_NUMOS  := cNumOS
	ZZ3->ZZ3_SEQ    := cSeq
Else
	ZZ3->(dbSeek(xFilial("ZZ3")+AvKey(cImei,"ZZ3_IMEI")+AvKey(cNumOS,"ZZ3_NUMOS")+AvKey(cSeq,"ZZ3_SEQ")))
	ZZ3->(RecLock("ZZ3",.F.))
Endif
ZZ3->ZZ3_CODTEC := cCodTec
ZZ3->ZZ3_LAB    := cLab
ZZ3->ZZ3_CODSET := cCodSet
ZZ3->ZZ3_CODSE2 := cCodSet
ZZ3->ZZ3_DATA   := dDataBase
ZZ3->ZZ3_HORA   := time()
ZZ3->ZZ3_FASE1  := cFase1
ZZ3->ZZ3_FASE2  := cFase2
ZZ3->ZZ3_OPEBGH	:= cOperacao
ZZ3->ZZ3_TRANSC	:= cTransaction
ZZ3->ZZ3_USER	:= cUsuarioFS
ZZ3->ZZ3_MODFLA	:= cModFail
ZZ3->ZZ3_DEFINF := ""
ZZ3->ZZ3_ENCOS  := "N"
ZZ3->ZZ3_SWAP   := "N"
ZZ3->ZZ3_STATUS := "1"
ZZ3->ZZ3_ARTIME := "0"
ZZ3->ZZ3_SYSORI	:= "1" // Campo que define a origem do registro "1"=FieldWeb com WebService / "0" ou "" Pelas rotinas do Protheus.
ZZ3->(MsUnlock())
ZZ3->(dbCommit())
nRecZZ3 := ZZ3->(Recno())
SZ9->(dbsetorder(1))
For nx:=1 to Len(aItens)
	itcCodTec	:= aItens[nx,1]
	itcFase1	:= aItens[nx,2]
	itcImei		:= aItens[nx,3]
	itcNumOS	:= aItens[nx,4]
	itcPartNR	:= aItens[nx,5]
	itnQty		:= aItens[nx,6]
	itnAcao 	:= aItens[nx,7]
	itcItem		:= aItens[nx,8]
	itcSeqItem	:= aItens[nx,9]
	itnRecno	:= aItens[nx,10]
	If itnAcao == INCLUSAO
		// Pega o numero para o pedido de venda
		nSaveSx8	:= GetSx8Len()
		itcItem		:= u_CalcItem(itcImei, itcNumOS, itcSeqItem )
		While (GetSX8Len() > nSaveSx8)
			ConfirmSx8()
		End
		SZ9->(RecLOck("SZ9",.T.))
		SZ9->Z9_FILIAL  := xFilial("SZ9")
		SZ9->Z9_NUMOS   := cNumOS
		SZ9->Z9_CODTEC  := itcCodTec
		SZ9->Z9_SEQ     := itcSeqItem
		SZ9->Z9_ITEM    := itcItem
	Else
		SZ9->(dbseek(	AvKey(xFilial("SZ9"),"Z9_FILIAL")	+;
						AvKey(itcNumOs		,"Z9_NUMOS")	+;
						AvKey(itcCodTec		,"Z9_CODTEC")	+;
						AvKey(itcSeqItem	,"Z9_SEQ")		+;
						AvKey(itcItem		,"Z9_ITEM")		))
		SZ9->(RecLock("SZ9",.F.))
		If itnAcao == EXCLUSAO
			SZ9->(dbdelete())
			SZ9->(MsUnlock())
		Endif
	Endif
	If itnAcao == INCLUSAO .OR. itnAcao == ALTERACAO
		SZ9->Z9_PARTNR  := itcPartNR
		SZ9->Z9_IMEI    := itcImei
		SZ9->Z9_QTY     := itnQty
		SZ9->Z9_USED    := "0"
		SZ9->Z9_PREVCOR := "C"
		SZ9->Z9_STATUS  := "1"
		SZ9->Z9_FASE1   := itcFase1
		SZ9->Z9_DTAPONT := dDataBase
		SZ9->Z9_SYSORIG	:= "1" // Campo que define a origem do registro "1"=FieldWeb com WebService / "0" ou "" Pelas rotinas do Protheus.
		SZ9->(MsUnlock())
		SZ9->(DBCOMMIT())
	Endif
	aDadosSZ9[nX,1]	:= SZ9->Z9_CODTEC
	aDadosSZ9[nX,4]	:= SZ9->Z9_NUMOS
	aDadosSZ9[nX,5]	:= SZ9->Z9_PARTNR
	aDadosSZ9[nX,8]	:= SZ9->Z9_ITEM
	aDadosSZ9[nX,9]	:= SZ9->Z9_SEQ
	aDadosSZ9[nX,10]	:= SZ9->(Recno())
Next nX
Return (RetErro("200"))

Static Function ValidSa1(cMsg)
	Local lRet  	:= .T.
	Local ndiv 		:= AT(",",_cEnd)
	Local ndivi		:= AT(",",_cEndEntr)
	Local cMsgErro 	:= ''
	Local cEnd		:= ''   
	Local lZ07		:= .F. 
	Local lZ07Ent	:= .F. 
	Local cEnder	:= ""  
	Local cEndEntr  := _cEndEntr  
	&&Caso j� exista cadstro e o mesmo esteja bloqueado A1_MSBLQL
	___aAreaSa1 := GetArea("SA1")
	dbSelectArea("SA1")
	SA1->(dbSetOrder(3))
	If SA1->(dbSeek(xFilial("SA1")+_cCPFCli)) .AND. SA1->A1_MSBLQL == "1"
/* Alterado para desbloquear devido a rotina ser autom�tica e atrapalhar o processo. Autorizado Edson Rodrigues 27/04/2015.
		cMsgErro += 	"Cliente |"+Alltrim(SA1->A1_COD)+"-"+Alltrim(SA1->A1_LOJA)+" "+Alltrim(SA1->A1_NOME)+"| j� incluso por�m esta bloqueado"+CRLF
		lRet := .F.
*/
    	RecLock("SA1",.F.)
		 SA1->A1_MSBLQL := "2"
		MsUnlock()
	EndIf
	RestArea(___aAreaSa1)
	&&Valida��o Pessoa F�sica ou Jur�dica
	If !Len(_cFisJur) == 1 .AND. !_cFisJur $ 'F/J' 
		cMsgErro += 	"Valor "+_cFisJur+" Inv�lido, Campo deve ser de Tamanho 1 ou F=Pessoa Fisica/J=Juridica"+CRLF	 	
		lRet := .F.
	EndIf
	&&Valida��o Tipo
	If !_cTipo $ "F/L/R/S/X"
		cMsgErro += 	"Tipo "+_cTipo+" Inv�lido, Valores aceitaveis: F=Cons.Final;L=Produtor Rural;R=Revendedor;S=Solidario;X=Exportacao"+CRLF
		lRet := .F.
	EndIf
	&&Valida��o Tipo de Logradouro
	dbSelectArea('Z08')
	Z08->(dbSetOrder(1))
	If 'BR' $ SubStr(_cEnd,1, AT(" ",_cEnd)-1) 
		_cEnd := "Rodovia "+_cEnd 		
	EndIf 	
	If ! Z08->(dbSeek(xFilial("Z08") + Upper(AllTrim(SubStr(_cEnd,1, AT(" ",_cEnd)-1)))))
		cMsgErro += "Tipo de Logradouro Informado � Inv�lido -> "+Upper(AllTrim(SubStr(_cEnd,1, AT(" ",_cEnd)-1)))+CRLF 
		lRet := .F.	 
	End
	&&############################# VALIDA��O ENDERE�O #################################
	&&Tratamento para manter somente nome da Rua, tirando o Numero ou outros
	cEnder 	  := SubStr(_cEnd	 ,1,nDiv -1)
	cEndEntr  := SubStr(_cEndEntr,1,nDivi-1)
    &&Separa Tipo do Logradouro do Logradouro
    cTpEnd	:= SubStr( _cEnd	 ,1, At(" ", _cEnd	 )-1 )
	cEnder  := SubStr( cEnder, At(" ", cEnder)+1 , Len(cEnder) - At(" ", cEnder) )
    &&Separa Tipo do Logradouro do Logradouro (Entrega)
	cTpEndEntr:= SubStr( cEndEntr,1, At(" ", cEndEntr)-1 )
	cEndEntr  := SubStr( cEndEntr, At(" ", cEndEntr)+1 , Len(cEndEntr) - At(" ", cEndEntr) )
  	ConOut('Endere�o Informado FrontEnd: '+cTpEndEntr+' '+cEndEntr+', '+_cNumCompl+' - '+AllTrim(_cBairro )+' - '+AllTrim(_cMunic)+'/'+AllTrim(_cEstado)+ ' CEP '+AllTrim(_cCEP)) 
	VldEnd(AllTrim(_cCEP	), AllTrim(_cMunic	), AllTrim(_cEstado), AllTrim(cTpEnd	), AllTrim(cEnder  ), AllTrim(_cBairro ), @cMsgErro, @lRet, 1)
	If lRet
		VldEnd(AllTrim(_cCEPEntr), AllTrim(_cMunEntr), AllTrim(_cUFEntr), AllTrim(cTpEndEntr), AllTrim(cEndEntr), AllTrim(_cBaiEntr), @cMsgErro, @lRet, 2)			
    EndIf
	&&Valida��o Bairro
	If Empty(_cBairro) .OR. (',' $ _cBairro)
		cMsgErro += "Bairro Inv�lido !"+CRLF
		lRet := .F.
	EndIf
	&&Valida��o Endere�o/Complemento Sem Virgula
	If !(',' $ _cEnd)
		_cEnd := SubStr( AllTrim(_cEnd) + ', ' + AllTrim(_cNumCompl),1,60)
	Endif
	 
	If '�' $ _cEnd .OR. ':' $ _cNumCompl .OR. '.' $ _cEnd 
		cMsgErro +=  	"Favor Revisar o Cadastro, Campos Endere�o ou Complemento esta com Caracter � ou Caracter : !"+CRLF
		lRet := .F.
	EndIf
	/* 	
	cEnd	:= cEnder := Substr(_cEnd , ndiv+1)
	If ',' $ cEnd
		cMsgErro += 	"[A1_END]  		-> Remover a Segunda Virgula do Endere�o ou Complemento ! "+CRLF
		lRet := .F.
	EndIf  
	*/
	&&Valida��o Estado
	dbSelectArea("SX5")
	SX5->(dbSetOrder(1))
	If !DbSeek(xFilial("SX5")+'12'+AllTrim(_cEstado))
		cMsgErro += 	"Estado "+_cEstado+" Inv�lido!"+CRLF
		lRet := .F.		
	EndIf	     
	
	&&Valida��o Estado Entrega
	If !Empty(_cUFEntr) 
		If !DbSeek(xFilial("SX5")+'12'+AllTrim(_cUFEntr)) .AND. ValType(_cUFEntr)=='C'
			cMsgErro += 	"Estado Entrega "+_cUFEntr+" Inv�lido!"+CRLF
			lRet := .F.		
		EndIf                                 		
	EndIf
	 
	&&Valida��o DDD
	_cDDD := u_RetNuStr(','+_cDDD)	
	If Empty(_cDDD).AND. !(_cTipo $ "X") .OR. Len(_cDDD) < 2 
		cMsgErro += 	"Campo DDD esta Vazio ou Inv�lido !"+CRLF
		lRet := .F.
	EndIf	
 
	&&Valida��o Campo DDD e Telefone     
	_cTel := u_RetNuStr(','+_cTel)
	If Empty(_cTel).AND. !(_cTipo $ "X") .OR. Len(_cTel) < 8 
		cMsgErro += 	"Campo Telefone Vazio ou Inv�lido !"+CRLF
		lRet := .F.                     
	EndIf
 
	&&Valida��o CGC/CPF
	If !CGC (_cCnpj)
		cMsgErro += 	"CGC/CPF "+_cCnpj+" Inv�lido!"+CRLF
		lRet := .F.
	EndIf		
 		
	&&Valida��o Inscri��o Estadual
	If Len(AllTrim(_cInsEst))< 6                        
		cMsgErro += 	"Verificar a Inscri��o Estadual !"+CRLF
		lRet := .F.
	EndIf  
    
	If !(',' $ _cEndEntr)
		_cEndEntr := _cEnd	
	Endif
    
	&&Valida��o E-Mail
	If !('@' $ _cEMail) .OR. !('.' $ _cEMail)
		cMsgErro += 	"E-Mail "+_cEMail+" inv�lido !"+CRLF
		lRet := .F.		
	EndIF
		 
	&&Valida��o Pa�s Banco Central
	dbSelectArea("CCH")
	CCH->(DbSetOrder(1)) //YA_FILIAL+YA_CODGI	
	If !CCH->(dbSeek(xFilial("CCH")+ _cPaisBac))
		cMsgErro += 	"C�digo Banco Central Pa�s n�o Encontrado !"+CRLF
		lRet := .F.
	End
	      
	&&Valida��o Conta Contabil
	dbSelectArea("CT1")
	CT1->(dbSetOrder(1))
	If !CT1->(DbSeek(xFilial("CT1")+_cCContab)) .OR. Empty(_cCContab)
		cMsgErro += 	"Conta cont�bil inv�lida ou Campo Vazio !"+CRLF
		lRet := .F.		
	EndIf
	 
	&&Valida��o Endere�o de Entrega
	If '�' $ _cEndEntr .OR. ':' $ _cEndEntr .OR. '.' $ _cEndEntr
		cMsgErro += 	"Revisar o Cadastro, Campos Endere�o Entrega ou Complemento Entrega esta com Caracter � ou Caracter :"+CRLF
		lRet := .F.
	EndIf	
	
	/* 
	cEnd	:= cEnderE := Substr(_cEndEntr , ndivi+1)
		cMsgErro += 	"[A1_ENDENT]	-> Remover a Segunda Virgula do Endere�o de Entrega !"+CRLF
		lRet := .F.
	EndIf
	*/ 
	&&Valida��o Pa�s
	dbSelectArea("SYA")
	SYA->(DbSetOrder(1)) //YA_FILIAL+YA_CODGI	
	If !SYA->(dbSeek(xFilial("SYA")+ _cPais))
		cMsgErro += 	"C�digo Pa�s "+_cPais+" n�o Encontrado !"+CRLF
		lRet := .F.
	EndIf	 

    &&Valida��o Contribuinte
    If !(_cContrib $ '1/2')
		cMsgErro += 	"Valor inv�lido, Op��es 1=SIM, 2=N�O !"+CRLF
   		lRet := .F.		    
    EndIf
     
    dbSelectArea("SA4") //A4_FILIAL+A4_COD
	SA4->(dbSetOrder(1))
	If Vazio(_cTransp) .OR. !SA4->(dbSeek(xFilial("SA4") + _cTransp))    
		cMsgErro += 	"Transportadora n�o encontrado !"+CRLF
   		lRet := .F.			
	EndIf
    
    &&Valida��o Mensagem SM4
	dbSelectArea("SM4")
	SM4->(dbSetOrder(1))    
	If Empty(_cMensagem) .OR. !SM4->(dbSeek(xFilial("SM4")+_cMensagem))
   		cMsgErro += 	"Mensagem n�o encontrado !"+CRLF
   		lRet := .F.	
    EndIf  
    
    cMsg := cMsgErro
 	ConOut(cMsgErro)
Return lRet

Static Function VldEnd(xCep, xMunic, xEstado, xTpLog, xLograd, xBairro, cMsgErro, lRet, nNum)
	Local aAreaZ07 := Z07->(GetArea())
	Local aAreaCC2 := CC2->(GetArea()) 
	
	xCep 	:= U_TiraAcento(xCep)
	xMunic 	:= U_TiraAcento(xMunic)
	xEstado := U_TiraAcento(xEstado)
	xTpLog 	:= U_TiraAcento(xTpLog)
	xLograd := U_TiraAcento(xLograd)
	xBairro := U_TiraAcento(xBairro)

	If 	!Empty(xCep) 	.AND. ;
		!Empty(xMunic) 	.AND. ;
		!Empty(xEstado) .AND. ;
		!Empty(xTpLog)  .AND. ;
		!Empty(xLograd) .AND. ;
		!Empty(xBairro)
	   	   	
	   	DbSelectArea("Z07")
	   	Z07->(DbGoTop())
	   	Z07->(DbSetOrder(4)) //Z07_FILIAL+Z07_CEP+Z07_TPLOGR+Z07_LOGRAD+Z07_BAIRRO+Z07_MUNIC+Z07_UF
	   	//ConOUt(xCep+xTpLog+xLograd+xBairro+xMunic+xEstado)
	   	If !Z07->(dbSeek(xFilial("Z07")+xCep+xTpLog+xLograd+xBairro+xMunic+xEstado))

			Z07->(DbGoTop())
			If Z07->(DbSeek(xFilial("Z07") + xCep ))
				If AllTrim(Z07->Z07_MUNIC) != xMunic .OR. AllTrim(Z07->Z07_UF) != xEstado
					ConOut('Foi encontrado o seguinte munic�pio para o CEP '+xCep+' - '+AllTrim(Z07->Z07_MUNIC)+'/'+AllTrim(Z07->Z07_UF))
					ConOut('Munic�pio/Estado informado no FrontEnd --> '+xMunic+'/'+xEstado)
					If nNum == 1
						cMsgErro += "Munic�pio e/ou Estado Inv�lido(s), o CEP "+Transform(xCep,"@R 99999-999")+" pertence ao Munic�pio "+AllTrim(Z07->Z07_MUNIC)+"/"+AllTrim(Z07->Z07_UF)+" ! "+CRLF
					Else
						cMsgErro += "Munic�pio e/ou Estado do End. Entrega Inv�lido(s), o CEP "+Transform(xCep,"@R 99999-999")+" pertence ao Munic�pio "+AllTrim(Z07->Z07_MUNIC)+"/"+AllTrim(Z07->Z07_UF)+" ! "+CRLF
					EndIf
					lRet 	 := .F.			
					Return
				EndIf	
			EndIf
			
			DbSelectArea("CC2")			
			CC2->(DbSetOrder(4))
							
			If CC2->(DbSeek( xFilial("CC2") + xEstado + xMunic ))
				If nNum == 1
					_cCodMun := CC2->CC2_CODMUN	
					ConOut('Codigo Municipio Encontrado: '+_cCodMun)
				EndIf
				GravaZ07(xCep, xMunic, xEstado, xTpLog, xLograd, xBairro, nNum)	
			Else
				cMsgErro += "Codigo de Municipio n�o cadastrado ou com diverg�ncia! "+CRLF
				lRet 	 := .F.	
			EndIf
	 	EndIf 
  	Else
  		If nNum == 1
			cMsgErro += "Endere�o Inv�lido!"+CRLF
		Else
			cMsgErro += "Endere�o de Entrega Inv�lido!"+CRLF
		EndIf 
		lRet := .F.		   
  	EndIf

	RestArea(aAreaZ07)
	RestArea(aAreaCC2)
Return 

Static Function GravaZ07(xCep, xMunic, xEstado, xTpLog, xLograd, xBairro, nNum)
	Local aAreaZ07 := Z07->(GetArea())
	DbSelectArea("Z07")
	Z07->(DbGoTOp())
	Z07->(DbSetOrder(4)) //Z07_FILIAL+Z07_CEP+Z07_TPLOGR+Z07_LOGRAD+Z07_BAIRRO+Z07_MUNIC+Z07_UF

	//ConOut("Grava��o Z07: "+xFilial("Z07")+xCep+xTpLog+xLograd+xBairro+xMunic+xEstado)
	If !Z07->(dbSeek(xFilial("Z07") + ;
			 PadR(xCep	 , TamSx3("Z07_CEP")[1])		+ ;
			 PadR(xTpLog , TamSx3("Z07_TPLOGRAD")[1])	+ ;
			 PadR(xLograd, TamSx3("Z07_LOGRAD")[1])		+ ;
			 PadR(xBairro, TamSx3("Z07_BAIRRO")[1])		+ ;
			 PadR(xMunic , TamSx3("Z07_MUNIC")[1])		+ ;
			 PadR(xEstado, TamSx3("Z07_UF")[1]))) 
			 
		RecLock("Z07", .T.) 
			Z07_FILIAL 	:= xFilial("Z07")
			Z07_CEP		:= xCep
			Z07_MUNIC	:= xMunic
			Z07_UF    	:= xEstado
			Z07_TPLOGR 	:= xTpLog //SubStr(cEnder,1, AT(" ",cEnder)-1)
			Z07_LOGRAD	:= xLograd //SubStr(cEnder,1, AT(",",cEnder)-1)
			Z07_BAIRRO	:= xBairro
		Z07->(MsUnlock())
		
		ConOut('Novo Endereco Cadastrado: Tip. Log. '+xTpLog+' Logr. '+xLograd+' Bairro '+xBairro+' Mun. '+xMunic+' Est. '+xEstado+ ' CEP.: '+xCep)
	Else
		If nNum == 1
			ConOut('Endere�o Encontrado na Base sem necessidade de novo Cadastro') //: Tip. Log. '+xTpLog+' Logr. '+xLograd+' Bairro '+xBairro+' Mun. '+xMunic+' Est. '+xEstado+ 'CEP.: '+xCep)
		Else
			ConOut('Endere�o Entrega Encontrado na Base sem necessidade de novo Cadastro') //: Tip. Log. '+xTpLog+' Logr. '+xLograd+' Bairro '+xBairro+' Mun. '+xMunic+' Est. '+xEstado+ 'CEP.: '+xCep)		
		EndIf
	EndIf
	
	RestArea(aAreaZ07)
Return

*-----------------------------*
Static Function RetErro(cErro) 
*-----------------------------*
Local cMsgErr:=""

Local aErros:={ {"000", "C�digo do Usu�rio deve ser Informado"},;
                {"001", "Senha do Usu�rio deve ser Informada"},;
                {"002", "Web-Service nao Dispon�vel para este Usuario/Senha "},;
                {"003", "Operador nao Informado   "},;
                {"004", "Laboratorio nao Informado"},;
                {"005", "Fase 1 n�o informada"},;
                {"006", "Fase 2 n�o informada"},;
                {"007", "Fase Atual n�o informada "},;
                {"008", "Imei nao Informado"},;
                {"009", "Codigo da A��o Invalido" } ,;
                {"010", "Codigo da OS nao Informado"} ,;
                {"011", "Filial do sistema n�o informada ou incorreta"} ,;
                {"012", "Imei travado!"} ,;
                {"100", "C�digo do Operador n�o Informado para os Itens"},;
                {"101", "C�digo da Fase 1 n�o Informado para os Itens"},;
                {"102", "C�digo do Imei n�o Informado para os Itens "},;
                {"103", "N�mero da OS n�o Informado para os Itens "},;
                {"104", "C�digo do Produto n�o Informado para os Itens"},;
                {"105", "Quantidade n�o Informada para os Itens     "},;
                {"106", "C�digo da A��o n�o Informado para os Itens"},;
                {"107", "C�digo do Setor n�o Informado"},;
                {"108", "A��es diferente 'Inclus�o', parametro 'sequencia' � OBRIGAT�RIO"},;
                {"109", "Registro n�o encontrado"},;
                {"110", "A��es diferente 'Inclus�o', parametro 'Item' � OBRIGAT�RIO"},;
                {"111", "Opera��o n�o informada."},;
                {"112", "Transaction n�o informada."},;
                {"113", "Usu�rio n�o informado."},;
                {"200", "Opera��o Conclu�da com Sucesso"},;
                {"999", "Nenhuma Informa��o foi enviada para o WebService"} }
Local nPosErr
nPosErr := Ascan(aErros,{|x|x[1]==cErro})
cMsgErr:= aErros[nPosErr,1] + "-" + aErros[nPosErr,2]
Return cMsgErr

*------------------------------*
Static Function TipoOper(nOper) 
*------------------------------*
Local cOper:=""

Do Case
   Case nOper == INCLUSAO
        cOper:= "INCLUSAO"
   Case nOper == ALTERACAO
        cOper:= "ALTERACAO"
   Case nOper == EXCLUSAO
        cOper:= "EXCLUSAO"
EndCase
Return cOper