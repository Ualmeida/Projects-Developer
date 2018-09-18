#INCLUDE "PROTHEUS.CH"
#INCLUDE 'RWMAKE.CH'
/*���������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �WSLOG     �Autor  �Hudson de Souza Santos� Data � 05/05/14  ���
�������������������������������������������������������������������������͹��
���Desc.     �Fun��o que gera log de cada etapa do WebService afim de     ���
���          �identificar lentid�o.                                       ���
�������������������������������������������������������������������������͹��
���Parametros�cHash                                                       ���
���          �                                                            ���
�������������������������������������������������������������������������͹��
���Uso       �BGH                                                         ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
���������������������������������������������������������������������������*/
User Function WSLOG (cHash, cFilial_, cIdKit, cImei, cPN, cFuncao, cUser)
Local cInsert	:= ""
Local cUpdate	:= ""
cIdKit	:= Iif(cIdKit==Nil	,"",cIdKit)
cImei	:= Iif(cImei==Nil	,"",cImei)
cPN		:= Iif(cPN==Nil		,"",cPN)
cFuncao	:= Iif(cFuncao==Nil	,"",cFuncao)
cUser	:= Iif(cUser==Nil	,"",cUser)
//�����������������������������������������������������������������������Ŀ
//�Caso o valor da variavel "cHash" for vazio, � inclus�o de log pelo Hash�
//�������������������������������������������������������������������������
If Empty(cHash)
	cHash := MD5(cFilial_+cIdKit+TIME(),2)
EndIf
cInsert := "INSERT INTO FL (tag, cod_kit, data_inicio, imei, cod_peca, metodo, login) VALUES  ("
cInsert += "'" + Alltrim(cHash)		+ "',"	// tag
cInsert += "'" + Alltrim(cIdKit)	+ "',"	// cod_kit
cInsert += "getdate(),"				  		// data_inicio
cInsert += "'" + Alltrim(cImei)		+ "',"	// imei
cInsert += "'" + Alltrim(cPN)		+ "',"	// cod_peca
cInsert += "'" + Alltrim(cFuncao)	+ "',"	// metodo
cInsert += "'" + Alltrim(cUser)		+ "'"	// login
cInsert += ")"
If !Empty(cImei)
	cUpdate := "UPDATE FL SET "
	cUpdate += "imei = '" + Alltrim(cImei) + "', "
	cUpdate += "data_final = getdate() "
	cUpdate += "WHERE tag = '" + Alltrim(cHash) + "'"
EndIf
TcSqlExec(cInsert+" "+cUpdate)
Return(cHash)