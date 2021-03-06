#INCLUDE "APWEBSRVl.CH"
#INCLUDE "PROTHEUS.CH"
#DEFINE INCLUSAO  3
#DEFINE ALTERACAO 4
#DEFINE EXCLUSAO  5
/*
*Programa: WSBGHAPONTA
*Autor	 : Hudson de Souza Santos
*Data 	 : 27/08/2013
*Desc.   : WebService Bloquear radio.
*/    
WSSERVICE WSBGHAPONTA DESCRIPTION "Servi�o WebService WSBGHAPONTA v1.0"
	// Atributos
	WSDATA cGet	as STRUC_GET
	WSDATA cSet	as STRING
	// M�todos
	WSMETHOD SET_TRAVA Description "Trava Radio conforme motivo"
ENDWSSERVICE
WSSTRUCT STRUC_GET
	WSDATA cMotivo	as STRING Optional
	WSDATA cCodUsu	as STRING Optional
	WSDATA cSenha	as STRING Optional
	WSDATA aZZ4		as STRUC_ZZ4 Optional
ENDWSSTRUCT
WSSTRUCT STRUC_ZZ4
	WSDATA cFILIAL	as STRING Optional
	WSDATA cIMEI	as STRING Optional
	WSDATA cOS		as STRING Optional
ENDWSSTRUCT
/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  � SET_TRAVA �Autor  � Hudson de Souza Santos   � 27/08/2013  ���
�������������������������������������������������������������������������͹��
���Desc.     � Trava radio nos apontamentos de fases.                     ���
�������������������������������������������������������������������������͹��
���Uso       � WSBGHAPONTA                                                ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/
WSMETHOD SET_TRAVA WSRECEIVE cGet WSSEND cSet WSSERVICE WSBGHAPONTA
Local lRet		:= .T.
Local _cMotivo	:= ::cGet:cMotivo
Local _cCodUsu	:= ::cGet:cCodUsu
Local _cSenha	:= ::cGet:cSenha
Local _cFilial	:= ::cGet:aZZ4:cFILIAL
Local _cImei	:= ::cGet:aZZ4:cIMEI
Local _cOs		:= ::cGet:aZZ4:cOS
Local cMsgErr	:= ""
If lRet .AND. (Empty(_cFilial) .OR. _cFilial ==  Nil .OR. Valtype(_cFilial) <> "C" .OR. _cFilial == "?" .OR. !(_cFilial $ "02/06"))
	cMsgErr		:= RetErro("02")
	lRet		:= .F.
Endif
If lRet
	RpcSetType(3)
	RpcSetEnv("02",_cFilial)
EndIf
If lRet .AND. (Empty(_cCodUsu) .OR. _cCodUsu ==  Nil .OR. Valtype(_cCodUsu) <> "C" .OR. _cCodUsu == "?")
	cMsgErr		:= RetErro("07")
	lRet		:= .F.
Endif
If lRet .AND. (Empty(_cSenha) .OR. _cSenha ==  Nil .OR. Valtype(_cSenha) <> "C" .OR. _cSenha == "?")
	cMsgErr		:= RetErro("08")
	lRet		:= .F.
Endif
If lRet .AND. !(_cCodUsu == "FIELDWEB" .AND. _cSenha == "FIELD1610")
	cMsgErr		:= RetErro("06")
	lRet		:= .F.
Endif
If lRet .AND. (Empty(_cMotivo) .OR. _cMotivo ==  Nil .OR. Valtype(_cMotivo) <> "C" .OR. _cMotivo == "?")
	cMsgErr		:= RetErro("01")
	lRet		:= .F.
Endif
If lRet .AND. (Empty(_cImei) .OR. _cImei ==  Nil .OR. Valtype(_cImei) <> "C" .OR. _cImei == "?")
	cMsgErr		:= RetErro("03")
	lRet		:= .F.
Endif
If lRet .AND. (Empty(_cOs) .OR. _cOs ==  Nil .OR. Valtype(_cOs) <> "C" .OR. _cOs == "?")
	cMsgErr		:= RetErro("04")
	lRet		:= .F.
Endif
If lRet
	_cFilial	:= AvKey(_cFilial	,"ZZ4_FILIAL"	)
	_cImei		:= AvKey(_cImei		,"ZZ4_IMEI"		)
	_cOs		:= AvKey(_cOs		,"ZZ4_OS"		)
	dbSelectArea("ZZ4")
	dbSetOrder(1)
	If !(dbSeek(_cFilial+_cImei+_cOs))
		cMsgErr		:= RetErro("05")
		lRet		:= .F.
	EndIf
EndIf
If !(lRet)
	::cSet := cMsgErr
	RpcClearEnv()
	Return .T.
Else
	::cSet := GravaZZ4(_cMotivo)
EndIf
Return .T.

Static Function RetErro(_cCodErro)
Local cDescErro := ""
Local nPosErro	:= 0
Local aErros	:= {;
		{"01","Motivo n�o informado"},;
		{"02","Filial inv�lida"},;
		{"03","Imei n�o informada"},;
		{"04","O.S. n�o informada"},;
		{"05","Registro n�o encontrado na ZZ4"},;
		{"06","Usu�rio ou senha inv�lidos"},;
		{"07","Usu�rio n�o informado"},;
		{"08","Senha n�o informado"},;
		{"00","Registro Atualizado"};
	}
nPosErro	:= Ascan(aErros,{|x|x[1]==_cCodErro})
cDescErro	:= Alltrim(aErros[nPosErro,1])
cDescErro	+= " - "
cDescErro	+= Alltrim(aErros[nPosErro,2])
Return(cDescErro)

Static Function GravaZZ4(cMotivo)
Local cRet := RetErro("00")
RecLock("ZZ4",.F.)
	ZZ4->ZZ4_TRAVA := cMotivo
MsUnlock()
Return(cRet)