#INCLUDE "APWEBSRVl.CH"
#INCLUDE "PROTHEUS.CH"

/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �WSERPA01  �Autor  �Uiran Oliveira      � Data �  05/25/18   ���
�������������������������������������������������������������������������͹��
���Desc.     � Web Service responsavel para aprova��o de Ordem de servico ���
���          �online de clientes ERPPlus                                  ���
�������������������������������������������������������������������������͹��
���Uso       � ERP Plus Consultoria em Tecnologia                         ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/

WsService WsErpA01 Description 'Servi�o de aprova��o online de Ordem de Servi�o v1.0'
	// Atributos
	Wsdata cGet as String
	WsData cSet as String
    WsData stOS as Str_OS
    //Metodos
    WsMethod Get_Os Description 'Dados da Ordem de Servi�o'

EndWsservice                                              

WsStruct Str_OS
	Wsdata cOrdem as String Optional
	WsData cDescr as String Optional 
EndWsStruct



             

/*
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
�������������������������������������������������������������������������ͻ��
���Programa  �Get_Os    �Autor  �Microsiga           � Data �  05/25/18   ���
�������������������������������������������������������������������������͹��
���Desc.     � Metodo responsavel pelo retorno da ordem de servicos       ���
�������������������������������������������������������������������������ͼ��
�����������������������������������������������������������������������������
�����������������������������������������������������������������������������
*/ 
WsMethod Get_Os WsReceive cGet WsSend cSet WsService WsErpA01 
Local lWsRet := .T.
Local cOrdem := ::cGet
 
//�������������������Ŀ
//�Criando do Ambiente�
//���������������������
//RpcSetType(3)
//RpcSetEnv("99","01")

//cOrdem := '012345'

::cSet := 'Ordem de Servico: ' + cOrdem

//RpcClearEnv()
Return lWsRet
