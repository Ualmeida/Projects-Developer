#INCLUDE "APWEBSRVL.CH"
#INCLUDE "PROTHEUS.CH"
#INCLUDE "TOPCONN.CH"
/*���������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �WSBGHUSER  �Autor  �Hudson de Souza Santos� Data � 14/02/14 ���
�������������������������������������������������������������������������͹��
���Desc.     �WebService que valida Login e  permissoes de acordo com     ���
���          �grupo do usu�rio e Cadastro de T�cnico.                     ���
�������������������������������������������������������������������������͹��
���Uso       � BGH                                                        ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
���������������������������������������������������������������������������*/
WSSERVICE WSBGHUSER DESCRIPTION "Servi�o WebService WSBGHUSER v1.0"
	//����������Ŀ
	//�Atributos �
	//������������
	WSDATA oSLogin	as STR_SLOGIN
	WSDATA oGLogin	as STR_GLOGIN
	WSDATA oSAcesso	as STR_SACCESS
	WSDATA oGAcesso	as STR_GACCESS
	//�������Ŀ
	//�M�todos�
	//���������
	WSMETHOD LoginFW Description "Metodo para login via Web Service"
	WSMETHOD AcessoFW Description "Metodo para validacao de acesso atraves do grupo do usuario Web Service"
ENDWSSERVICE
//����������Ŀ
//�Estruturas�
//������������
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
/*���������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �AcessoFW  �Autor �hudson de Souza Santos� Data � 18/08/14   ���
�������������������������������������������������������������������������͹��
���Desc.     �M�todo que valida grupo do usu�rio para FieldWeb.           ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       � BGH                                                        ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
���������������������������������������������������������������������������*/
WSMETHOD AcessoFW WSRECEIVE oSAcesso WSSEND oGAcesso WSSERVICE WSBGHUSER
//�����������������������Ŀ
//�Declara��o de vari�veis�
//�������������������������
Local _cUserFW	:= ::oSAcesso:cUserFW
Local _cPassFW	:= ::oSAcesso:cPassFW
Local _cUsuar	:= ::oSAcesso:cUsuar
Local _cGrup	:= ::oSAcesso:cGrup
Local cMsgErr	:= ""
Local lRet		:= .T.
Local lGrupo	:= .F.
Local aUser		:= {}
Local aGrps		:= {}
//���������������������������������Ŀ
//�Valida consistencia da Informa��o�
//�����������������������������������
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
//�������������������������������������������������������������������Ŀ
//�Caso apresente erro, retorna mensagem equivalente e aborta o m�todo�
//���������������������������������������������������������������������
If !lRet
	::oGAcesso:cRetorno := cMsgErr
	Return .T.
EndIf
//�������������������Ŀ
//�Criando do Ambiente�
//���������������������
RpcSetType(3)
RpcSetEnv("02","02")
//���������������������������������������������������
//�Consistencia estando OK, valida regras de neg�cio�
//���������������������������������������������������
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
//����������������������������������������������������������������������������������������������Ŀ
//�As regras de consist�ncia e de negocio estando OK, monta a estrutura de resposta do WebService�
//������������������������������������������������������������������������������������������������
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
//�����������������Ŀ
//�Finaliza ambiente�
//�������������������
RpcClearEnv()
Return .T.
/*���������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �LoginFW   �Autor �Hudson de Souza Santos    � Data |14/02/14���
�������������������������������������������������������������������������͹��
���Desc.     � M�todo para Validar Login do Protheus para utilizar        ���
���          �FieldWeb                                                    ���
�������������������������������������������������������������������������͹��
���Uso       � BGH                                                        ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
���������������������������������������������������������������������������*/
WSMETHOD LoginFW WSRECEIVE oSLogin WSSEND oGLogin WSSERVICE WSBGHUSER
//�������������������������
//�Declara��o de variaveis�
//�������������������������
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
//���������������������������������Ŀ
//�Valida consistencia da Informa��o�
//�����������������������������������
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
//�������������������������������������������������������������������Ŀ
//�Caso apresente erro, retorna mensagem equivalente e aborta o m�todo�
//���������������������������������������������������������������������
If !lRet
	::oGLogin:cRetorno := cMsgErr
	Return .T.
EndIf
//�������������������Ŀ
//�Criando do Ambiente�
//���������������������
RpcSetType(3)
RpcSetEnv("02","02")
//���������������������������������������������������
//�Consistencia estando OK, valida regras de neg�cio�
//���������������������������������������������������
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
	//����������������������������������������������������������������Ŀ
	//�Gera Query para buscar informa��es do cadastro de t�cnicos (AA1)�
	//������������������������������������������������������������������
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
	//���������������������������������������������Ŀ
	//�Caso o Alias LGN esteja em uso, fecha a area.�
	//�����������������������������������������������
	IF Select("LGN") <> 0 
		dbSelectArea("LGN")
		dbCloseArea()
	Endif 
	//���������������������������������������������������������������Ŀ
	//�Cria o Alias tempor�rio para devolver informacoes ao WebService�
	//�����������������������������������������������������������������
	TCQUERY _cQry NEW ALIAS "LGN"
	dbSelectArea("LGN")
	dbGoTop()
	//�������������������������������������������������������Ŀ
	//�Baseado na tabela temporaria, alimenta o array aTecnico�
	//���������������������������������������������������������
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
	//������������������������Ŀ
	//�Fecha o Alias temporario�
	//��������������������������
	LGN->(dbCloseArea())
	//�������������������������������Ŀ
	//�Monta o retorno do WebService .�
	//���������������������������������
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
//�����������������Ŀ
//�Finaliza ambiente�
//�������������������
RpcClearEnv()
Return .T.
/*���������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  � RetErro  �Autor  �Hudson de Souza Santos �Data �  17/02/14 ���
�������������������������������������������������������������������������͹��
���Desc.     �Fun��o que retorna status de acordo com um c�digo passado.  ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       � BGH                                                        ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
���������������������������������������������������������������������������*/
Static Function RetErro(_cCodErro,_cCompTxt)
Local cDescErro := ""
Local nPosErro	:= 0
Local aErros	:= {;
		{"E01","Usu�rio n�o autenticado para utilizar o WebService."},;
		{"E02","Usu�rio n�o informado."},;
		{"E03","Senha n�o informada."},;
		{"E04","Usu�rio n�o encontrado."},;
		{"E05","Usu�rio ou Senha inv�lido."},;
		{"E06","Usu�rio bloqueado."},;
		{"E07","Usu�rio inv�lido."},;
		{"E08","Grupo inv�lido."},;
		{"E09","Grupo n�o cadastrado."},;
		{"000","Login OK."},;
		{"100","Processo executado com �xito."};
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