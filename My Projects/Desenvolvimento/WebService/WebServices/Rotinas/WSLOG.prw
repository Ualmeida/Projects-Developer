#INCLUDE "PROTHEUS.CH"
#INCLUDE 'RWMAKE.CH'
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออออหออออออัอออออออออออปฑฑ
ฑฑบPrograma  ณWSLOG     บAutor  ณHudson de Souza Santosบ Data ณ 05/05/14  บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออออสออออออฯอออออออออออนฑฑ
ฑฑบDesc.     ณFun็ใo que gera log de cada etapa do WebService afim de     บฑฑ
ฑฑบ          ณidentificar lentidใo.                                       บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบParametrosณcHash                                                       บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณBGH                                                         บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function WSLOG (cHash, cFilial_, cIdKit, cImei, cPN, cFuncao, cUser)
Local cInsert	:= ""
Local cUpdate	:= ""
cIdKit	:= Iif(cIdKit==Nil	,"",cIdKit)
cImei	:= Iif(cImei==Nil	,"",cImei)
cPN		:= Iif(cPN==Nil		,"",cPN)
cFuncao	:= Iif(cFuncao==Nil	,"",cFuncao)
cUser	:= Iif(cUser==Nil	,"",cUser)
//ฺฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฟ
//ณCaso o valor da variavel "cHash" for vazio, ้ inclusใo de log pelo Hashณ
//ภฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤฤู
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