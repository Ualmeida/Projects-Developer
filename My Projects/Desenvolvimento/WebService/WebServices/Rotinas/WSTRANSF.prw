#INCLUDE "PROTHEUS.CH"
#INCLUDE 'RWMAKE.CH'
#INCLUDE "TOPCONN.CH"
#INCLUDE "TBICONN.CH"
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออออหออออออัอออออออออออปฑฑ
ฑฑบPrograma  ณWSTRANSF  บAutor  ณHudson de Souza Santosบ Data ณ 09/05/14  บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออออสออออออฯอออออออออออนฑฑ
ฑฑบDesc.     ณFun็ใo que executa transferencia das pe็as apontadas via    บฑฑ
ฑฑบ          ณFieldWeb processo de Kit's                                  บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณBGH                                                         บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function WSTRANSF()
Local cQry		:= ""
Local cQryUpd	:= ""
Local aAuto		:= ""
Local aTransD	:= {}
Local aTransR	:= {}
Local lKitOn	:= .T.
Local cDocumento:= Space(6) 
Local nX		:= 0
Local cMensagem	:= ""
Private lMsErroAuto	:= .F.
Private lMsHelpAuto	:= .F.
lKitOn		:= GetNewPar("FW_KITON",.T.)
cMensagem	:= "<p>Rotina de Transferencia de Kit foi executada as <strong>"+Time()+"</strong>.</p>"
If lKitOn
	Return
EndIf
cQry := "SELECT ZA6_CODPRO, CASE WHEN ZA6_RETRAB = 1 THEN 'RE' ELSE '1P' END as LOCAL, 'SM' as LOCALIZ1, 'PROC' as LOCALIZ2, sum(ZA6_QTD) as ZA6_QTD "
cQry += "FROM " + RetSqlName ("ZA6") + " as ZA6(NOLOCK) "
cQry += "inner join " + RetSqlName ("ZA5") + " as ZA5(NOLOCK) ON ZA5.D_E_L_E_T_ = '' AND ZA5.ZA5_FILIAL = ZA6.ZA6_FILIAL AND ZA5.ZA5_IDKIT = ZA6.ZA6_IDKIT "
cQry += "WHERE ZA6.D_E_L_E_T_ = '' "
cQry += "AND ZA6_ESTSP = '' "
cQry += "AND (ZA6_QTDRET = 0 OR ZA6_ESTPS <> '' OR ZA6_ESTPF <> '') "
cQry += "AND ZA5_STATUS >= '3' "
cQry += "AND ZA6_CHECK = 1 "
cQry += "GROUP BY ZA6_CODPRO, ZA6_RETRAB "
cQry += "UNION ALL "
cQry += "SELECT ZA6_CODPRO, CASE WHEN ZA6_RETRAB = 1 THEN 'RE' ELSE '1P' END as LOCAL, 'PROC' as LOCALIZ1, "
cQry += "CASE WHEN ZA6_QTDRET = 0 THEN 'FATURAR' ELSE 'SM' END as LOCALIZ2, sum(ZA6_QTD) as ZA6_QTD "
cQry += "FROM " + RetSqlName ("ZA6") + " as ZA6(NOLOCK) "
cQry += "inner join " + RetSqlName ("ZA5") + " as ZA5(NOLOCK) ON ZA5.D_E_L_E_T_ = '' AND ZA5.ZA5_FILIAL = ZA6.ZA6_FILIAL AND ZA5.ZA5_IDKIT = ZA6.ZA6_IDKIT "
cQry += "WHERE ZA6.D_E_L_E_T_ = '' "
cQry += "AND ZA6_ESTSP <> '' "
cQry += "AND ZA6_ESTPS = '' "
cQry += "AND ZA6_ESTPF = '' "
cQry += "AND ZA5_STATUS = '5' "
cQry += "AND ZA6_CHECK = 1 "
cQry += "GROUP BY ZA6_CODPRO, ZA6_RETRAB, CASE WHEN ZA6_QTDRET = 0 THEN 'FATURAR' ELSE 'SM' END "
If Select("QRY") <> 0 
	QRY->(dbCloseArea())
Endif
TCQUERY cQry NEW ALIAS "QRY"
QRY->(dbGoTop())
dbSelectArea("SB1")
dbSetOrder(1)
While QRY->(!Eof())
	SB1->(dbSeek(xFilial("SB1")+QRY->ZA6_CODPRO))
	If Alltrim(QRY->LOCALIZ1) == "SM"
		aAdd(aTransD ,{;
				SB1->B1_COD				,; // D3_COD
				SB1->B1_DESC			,; // D3_DESCRI
				SB1->B1_UM				,; // D3_UM
				QRY->LOCAL				,; // D3_LOCAL
				QRY->LOCALIZ1			,; // D3_LOCALIZ
				SB1->B1_COD				,; // D3_COD
				SB1->B1_DESC			,; // D3_DESCRI
				SB1->B1_UM				,; // D3_UM
				QRY->LOCAL				,; // D3_LOCAL
				QRY->LOCALIZ2			,; // D3_LOCALIZ
				CriaVar("D3_NUMSERI")	,; // D3_NUMSERI
				CriaVar("D3_LOTECTL")	,; // D3_LOTECTL
				CriaVar("D3_NUMLOTE")	,; // D3_NUMLOTE
				Ctod("")				,; // D3_DTVALID
				CriaVar("D3_POTENCI")	,; // D3_POTENCI
				QRY->ZA6_QTD			,; // D3_QUANT
				CriaVar("D3_QTSEGUM")	,; // D3_QTSEGUM
				CriaVar("D3_ESTORNO")	,; // D3_ESTORNO
				CriaVar("D3_NUMSEQ")	,; // D3_NUMSEQ
				CriaVar("D3_LOTECTL")	,; // D3_LOTECTL
				Ctod("")				,; // D3_DTVALID
				CriaVar("D3_SERVIC")	,; // D3_SERVIC
				CriaVar("D3_ITEMGRD")	; // D3_ITEMGRD
		})
	ElseIf Alltrim(QRY->LOCALIZ1) == "PROC"
		aAdd(aTransR ,{;
				SB1->B1_COD				,; // D3_COD
				SB1->B1_DESC			,; // D3_DESCRI
				SB1->B1_UM				,; // D3_UM
				QRY->LOCAL				,; // D3_LOCAL
				QRY->LOCALIZ1			,; // D3_LOCALIZ
				SB1->B1_COD				,; // D3_COD
				SB1->B1_DESC			,; // D3_DESCRI
				SB1->B1_UM				,; // D3_UM
				QRY->LOCAL				,; // D3_LOCAL
				QRY->LOCALIZ2			,; // D3_LOCALIZ
				CriaVar("D3_NUMSERI")	,; // D3_NUMSERI
				CriaVar("D3_LOTECTL")	,; // D3_LOTECTL
				CriaVar("D3_NUMLOTE")	,; // D3_NUMLOTE
				Ctod("")				,; // D3_DTVALID
				CriaVar("D3_POTENCI")	,; // D3_POTENCI
				QRY->ZA6_QTD			,; // D3_QUANT
				CriaVar("D3_QTSEGUM")	,; // D3_QTSEGUM
				CriaVar("D3_ESTORNO")	,; // D3_ESTORNO
				CriaVar("D3_NUMSEQ")	,; // D3_NUMSEQ
				CriaVar("D3_LOTECTL")	,; // D3_LOTECTL
				Ctod("")				,; // D3_DTVALID
				CriaVar("D3_SERVIC")	,; // D3_SERVIC
				CriaVar("D3_ITEMGRD")	; // D3_ITEMGRD
		}) 
	EndIf
	QRY->(dbSkip())
EndDo
QRY->(dbCloseArea())
cMensagem += '<table><tr><td valign="top">'
If Len(aTransD) > 0
	//-- Inicializa o numero do Documento com o ultimo + 1
	dbSelectArea("SD3")
	nSavReg     := RecNo()
	cDocumento	:= IIf(Empty(cDocumento),NextNumero("SD3",2,"D3_DOC",.T.),cDocumento)
	cDocumento	:= A261RetINV(cDocumento)
	dbSetOrder(2)
	dbSeek(xFilial()+cDocumento)
	cMay := "SD3"+Alltrim(xFilial())+cDocumento
	While D3_FILIAL+D3_DOC==xFilial()+cDocumento.Or.!MayIUseCode(cMay)
		If D3_ESTORNO # "S"
			cDocumento := Soma1(cDocumento)
			cMay := "SD3"+Alltrim(xFilial())+cDocumento
		EndIf
		dbSkip()
	EndDo
	aAuto := {{cDocumento,dDataBase}}
	cMensagem += "<p><strong>DESPACHO</strong> inicio-se as <strong>" + Time() + "</strong> com n๚mero de documeto <strong>'" + cDocumento + "'</strong>:</p>"
	cMensagem += '<table border="1"><tr>'
	cMensagem += "<th>PARTNUM</th>"
	cMensagem += "<th>ARM ORI</th>"
	cMensagem += "<th>END ORI</th>"
	cMensagem += "<th>ARM DES</th>"
	cMensagem += "<th>END DES</th>"
	cMensagem += "<th>QUANT</th></tr>"
	For nX := 1 to Len(aTransD)
		aAdd(aAuto,aTransD[nX])
		cMensagem += "<tr><td>"+aTransD[nX,01]+"</td>"
		cMensagem += "<td>"+aTransD[nX,04]+"</td>"
		cMensagem += "<td>"+aTransD[nX,05]+"</td>"
		cMensagem += "<td>"+aTransD[nX,09]+"</td>"
		cMensagem += "<td>"+aTransD[nX,10]+"</td>"
		cMensagem += "<td>"+Alltrim(Transform(aTransD[nX,16],"@e 999"))+"</td></tr>"
	Next nX
	cMensagem += "</table>"
	lMsErroAuto	:= .F.
	MsExecAuto({|x,y| mata261(x,y)},aAuto,3)
	If lmsErroAuto
		cMensagem += "<p>* <strong>TRANSFERENCIA ACIMA APRESENTOU ERRO.</strong></p>
	Else
		cMensagem += "<p>Transferencia acima finalizou as <strong>" + Time() + "</strong>.</p>"
		cQryUpd := "UPDATE " + RetSqlName ("ZA6") + " SET ZA6_ESTSP = '"+Alltrim(cDocumento)+"', ZA6_CHECK = 0 "
		cQryUpd += "FROM " + RetSqlName ("ZA6") + " as ZA6(NOLOCK) "
		cQryUpd += "inner join " + RetSqlName ("ZA5") + " as ZA5(NOLOCK) ON ZA5.D_E_L_E_T_ = '' AND ZA5.ZA5_FILIAL = ZA6.ZA6_FILIAL AND ZA5.ZA5_IDKIT = ZA6.ZA6_IDKIT "
		cQryUpd += "WHERE ZA6.D_E_L_E_T_ = '' "
		cQryUpd += " AND ZA6_CHECK = 1 "
		cQryUpd += " AND ZA6_ESTSP = '' "
		cQryUpd += " AND (ZA6_QTDRET = 0 OR ZA6_ESTPS <> '' OR ZA6_ESTPF <> '') "
		cQryUpd += " AND ZA5_STATUS >= '3'"
		TcSqlExec(cQryUpd)
	EndIf
EndIf
cMensagem += '</td><td><strong> </strong></td><td valign="top">'
If !lmsErroAuto
	cQryUpd := "UPDATE " + RetSqlName ("ZA6") + " SET ZA6_CHECK = ZA6_CHECK + 1 "
	cQryUpd += "FROM " + RetSqlName ("ZA6") + " as ZA6(NOLOCK) "
	cQryUpd += "inner join " + RetSqlName ("ZA5") + " as ZA5(NOLOCK) ON ZA5.D_E_L_E_T_ = '' AND ZA5.ZA5_FILIAL = ZA6.ZA6_FILIAL AND ZA5.ZA5_IDKIT = ZA6.ZA6_IDKIT "
	cQryUpd += "WHERE ZA6.D_E_L_E_T_ = '' "
	cQryUpd += " AND ZA6_ESTSP = '' AND ZA5_STATUS >= '3' AND (ZA6_QTDRET = 0 OR ZA6_ESTPS <> '' OR ZA6_ESTPF <> '')"
	TcSqlExec(cQryUpd)
EndIf
If !lmsErroAuto .AND. Len(aTransR) > 0
	//-- Inicializa o numero do Documento com o ultimo + 1
	dbSelectArea("SD3")
	nSavReg     := RecNo()
	cDocumento	:= Space(6) 
	cDocumento	:= IIf(Empty(cDocumento),NextNumero("SD3",2,"D3_DOC",.T.),cDocumento)
	cDocumento	:= A261RetINV(cDocumento)
	dbSetOrder(2)
	dbSeek(xFilial()+cDocumento)
	cMay := "SD3"+Alltrim(xFilial())+cDocumento
	While D3_FILIAL+D3_DOC==xFilial()+cDocumento.Or.!MayIUseCode(cMay)
		If D3_ESTORNO # "S"
			cDocumento := Soma1(cDocumento)
			cMay := "SD3"+Alltrim(xFilial())+cDocumento
		EndIf
		dbSkip()
	EndDo
	aAuto := {{cDocumento,dDataBase}}
	cMensagem += "<p><strong>RETORNO</strong> inicio-se as <strong>" + Time() + "</strong> com n๚mero de documeto <strong>'" + cDocumento + "'</strong>:</p>"
	cMensagem += '<table border="1"><tr>'
	cMensagem += "<th>PARTNUM</th>"
	cMensagem += "<th>ARM ORI</th>"
	cMensagem += "<th>END ORI</th>"
	cMensagem += "<th>ARM DES</th>"
	cMensagem += "<th>END DES</th>"
	cMensagem += "<th>QUANT</th></tr>"
	For nX := 1 to Len(aTransR)
		aAdd(aAuto,aTransR[nX])
		cMensagem += "<tr><td>"+aTransR[nX,01]+"</td>"
		cMensagem += "<td>"+aTransR[nX,04]+"</td>"
		cMensagem += "<td>"+aTransR[nX,05]+"</td>"
		cMensagem += "<td>"+aTransR[nX,09]+"</td>"
		cMensagem += "<td>"+aTransR[nX,10]+"</td>"
		cMensagem += "<td>"+Alltrim(Transform(aTransR[nX,16],"@e 999"))+"</td></tr>"
	Next nX
	cMensagem += "</table>"
	lMsErroAuto	:= .F.
	MsExecAuto({|x,y| mata261(x,y)},aAuto,3)

	If lmsErroAuto
		cMensagem += "<p>* <strong>TRANSFERENCIA ACIMA APRESENTOU ERRO.</strong></p>
	Else
		cMensagem += "<p>Transferencia acima finalizou as <strong>" + Time() + "</strong>.</p>"
		cQryUpd := "UPDATE " + RetSqlName ("ZA6") + " SET "
		cQryUpd += "ZA6_ESTPS = CASE WHEN ZA6_QTDRET = 1 THEN '"+Alltrim(cDocumento)+"' ELSE '' END, "
		cQryUpd += "ZA6_ESTPF = CASE WHEN ZA6_QTDRET = 0 THEN '"+Alltrim(cDocumento)+"' ELSE '' END, "
		cQryUpd += "ZA6_CHECK = 0 "
		cQryUpd += "FROM " + RetSqlName ("ZA6") + " as ZA6(NOLOCK) "
		cQryUpd += "inner join " + RetSqlName ("ZA5") + " as ZA5(NOLOCK) ON ZA5.D_E_L_E_T_ = '' AND ZA5.ZA5_FILIAL = ZA6.ZA6_FILIAL AND ZA5.ZA5_IDKIT = ZA6.ZA6_IDKIT "
		cQryUpd += "WHERE ZA6.D_E_L_E_T_ = '' "
		cQryUpd += " AND ZA6_CHECK = 1 "
		cQryUpd += " AND ZA6_ESTSP <> '' "
		cQryUpd += " AND ZA6_ESTPS = '' "
		cQryUpd += " AND ZA6_ESTPF = '' "
		cQryUpd += " AND ZA5_STATUS = '5'"
		TcSqlExec(cQryUpd)
		TCRefresh(RETSQLNAME("SZ6"))
	Endif
EndIf
cMensagem += "</td></tr></table>"
If !lmsErroAuto
	cQryUpd := "UPDATE " + RetSqlName ("ZA6") + " SET ZA6_CHECK = ZA6_CHECK + 1 "
	cQryUpd += "FROM " + RetSqlName ("ZA6") + " as ZA6(NOLOCK) "
	cQryUpd += "inner join " + RetSqlName ("ZA5") + " as ZA5(NOLOCK) ON ZA5.D_E_L_E_T_ = '' AND ZA5.ZA5_FILIAL = ZA6.ZA6_FILIAL AND ZA5.ZA5_IDKIT = ZA6.ZA6_IDKIT "
	cQryUpd += "WHERE ZA6.D_E_L_E_T_ = '' "
	cQryUpd += "AND ZA6_ESTSP <> '' AND ZA6_ESTPS = '' AND ZA6_ESTPF = '' AND ZA5_STATUS = '5'"
	TcSqlExec(cQryUpd)

	cQryUpd := "UPDATE " + RetSqlName ("ZA6") + " SET ZA6_ESTSP = 'X', ZA6_ESTPS = 'X', ZA6_CHECK = 0 "
	cQryUpd += "WHERE D_E_L_E_T_ = '' AND ZA6_ESTSP = '' AND ZA6_ESTPS = '' AND ZA6_ESTPF = '' AND ZA6_QTDRET >= 1"
	TcSqlExec(cQryUpd)
EndIf

cMensagem += "<p>Processo finalizado as <strong>" + Time() + "</strong>.</p>"
Return(cMensagem)
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออออหออออออัอออออออออออปฑฑ
ฑฑบPrograma  ณWSTRANSF  บAutor  ณHudson de Souza Santosบ Data ณ 20/06/14  บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออออสออออออฯอออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณBGH                                                         บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
Static Function CheckErro()
Local cQryErr	:= ""
Local cMsgErr	:= ""
Local aErros	:= {}
Local lErro		:= .F.
cQryErr += "SELECT TMP.*, isnull(BF_QUANT,0) as BF_QUANT, isnull(B2_QATU,0) as B2_QATU FROM ( "
cQryErr += "SELECT ZA6_FILIAL, rtrim(ltrim(ZA6_CODPRO)) as ZA6_CODPRO, "
cQryErr += " CASE WHEN ZA6_RETRAB = 1 THEN 'RE' ELSE '1P' END as LOCAL, "
cQryErr += " 'SM' as LOCALIZ1, "
cQryErr += " sum(ZA6_QTD) as ZA6_QTD "
cQryErr += "FROM " + RetSqlName ("ZA6") + " as ZA6(NOLOCK) "
cQryErr += "inner join " + RetSqlName ("ZA5") + " as ZA5(NOLOCK) ON ZA5.D_E_L_E_T_ = '' AND ZA5.ZA5_FILIAL = ZA6.ZA6_FILIAL AND ZA5.ZA5_IDKIT = ZA6.ZA6_IDKIT "
cQryErr += "WHERE ZA6.D_E_L_E_T_ = '' "
cQryErr += "AND ZA6_ESTSP = '' "
cQryErr += "AND (ZA6_QTDRET = 0 OR ZA6_ESTPS <> '' OR ZA6_ESTPF <> '') "
cQryErr += "AND ZA5_STATUS >= '3' "
cQryErr += "AND ZA6_CHECK = 1 "
cQryErr += "GROUP BY ZA6_FILIAL, ZA6_CODPRO, ZA6_RETRAB "
cQryErr += "UNION ALL "
cQryErr += "SELECT ZA6_FILIAL, rtrim(ltrim(ZA6_CODPRO)) as ZA6_CODPRO, "
cQryErr += " CASE WHEN ZA6_RETRAB = 1 THEN 'RE' ELSE '1P' END as LOCAL, "
cQryErr += " 'PROC' as LOCALIZ1, "
cQryErr += " sum(ZA6_QTD) as ZA6_QTD "
cQryErr += "FROM " + RetSqlName ("ZA6") + " as ZA6(NOLOCK) "
cQryErr += "inner join " + RetSqlName ("ZA5") + " as ZA5(NOLOCK) ON ZA5.D_E_L_E_T_ = '' AND ZA5.ZA5_FILIAL = ZA6.ZA6_FILIAL AND ZA5.ZA5_IDKIT = ZA6.ZA6_IDKIT "
cQryErr += "WHERE ZA6.D_E_L_E_T_ = '' "
cQryErr += "AND ZA6_ESTSP <> '' "
cQryErr += "AND ZA6_ESTPS = '' "
cQryErr += "AND ZA6_ESTPF = '' "
cQryErr += "AND ZA5_STATUS = '5' "
cQryErr += "AND ZA6_CHECK = 1 "
cQryErr += "GROUP BY ZA6_FILIAL, ZA6_CODPRO, ZA6_RETRAB "
cQryErr += ") as TMP "
cQryErr += "left join SBF020 as SBF ON SBF.D_E_L_E_T_ = '' AND BF_FILIAL = ZA6_FILIAL AND BF_PRODUTO = ZA6_CODPRO AND BF_LOCAL = LOCAL AND BF_LOCALIZ = LOCALIZ1 "
cQryErr += "left join SB2020 as SB2 ON SB2.D_E_L_E_T_ = '' AND B2_FILIAL = ZA6_FILIAL AND B2_COD     = ZA6_CODPRO AND B2_LOCAL = LOCAL "
cQryErr += "WHERE ZA6_FILIAL = '"+xFilial("ZA6")+"' AND ZA6_QTD > isnull(BF_QUANT,0) OR isnull(BF_QUANT,0) > isnull(B2_QATU,0)"
If Select("QRYERR") <> 0 
	QRYERR->(dbCloseArea())
Endif
TCQUERY cQryErr NEW ALIAS "QRYERR"
QRYERR->(dbGoTop())
cMsgErr := "<p>Os produtos abaixo estใo sem saldo para efetuar transferencia da rotina do Kit.</p>"
cMsgErr += '<table border="1" align="center"><tr>'
cMsgErr += "<th>ZA6_CODPRO</th>"
cMsgErr += "<th>LOCAL</th>"
cMsgErr += "<th>LOCALIZ1</th>"
cMsgErr += "<th>ZA6_QTD</th>"
cMsgErr += "<th>BF_QUANT</th>"
cMsgErr += "<th>B2_QATU</th></tr>"
While !(QRYERR->(Eof()))
	aAdd(aErros,{;
		QRYERR->ZA6_FILIAL,;
		QRYERR->ZA6_CODPRO,;
		QRYERR->LOCAL,;
		QRYERR->LOCALIZ1,;
		QRYERR->ZA6_QTD,;
		QRYERR->BF_QUANT,;
		QRYERR->B2_QATU;
	})
	cMsgErr += "<tr>"
	cMsgErr += "<th>"+Alltrim(QRYERR->ZA6_CODPRO)+"</th>"
	cMsgErr += "<th>"+Alltrim(QRYERR->LOCAL)+"</th>"
	cMsgErr += "<th>"+Alltrim(QRYERR->LOCALIZ1)+"</th>"
	cMsgErr += "<th>"+Transform(QRYERR->ZA6_QTD, "@e 99999")+"</th>"
	cMsgErr += "<th>"+Transform(QRYERR->BF_QUANT, "@e 99999")+"</th>"
	cMsgErr += "<th>"+Transform(QRYERR->B2_QATU, "@e 99999")+"</th>"
	cMsgErr += "</tr>"
	QRYERR->(dbSkip())
EndDo
cMsgErr += "</table>"
If Len(aErros) > 0
	cMsgErr += "<p>Foi rodado o seguinte comando para nใo travar a transfer๊ncia:</p><p><em>"
	For nX := 1 to Len(aErros)
		cQryErr := "UPDATE " + RetSqlName ("ZA6") + " SET ZA6_CHECK = 0 WHERE D_E_L_E_T_ = '' AND ZA6_CODPRO = '"
		cQryErr += Alltrim(aErros[nX, 2])
		cQryErr += "' AND ZA6_CHECK = 1 "
		If Alltrim(aErros[nX, 4]) == "SM"
			cQryErr += "AND ZA6_ESTSP = '' AND ZA6_QTDRET = 0"
		Else
			cQryErr += "AND ZA6_ESTSP <> '' AND ZA6_ESTPS = '' AND ZA6_ESTPF = ''"
		EndIf
		TcSQlExec(cQryErr)
		cMsgErr += cQryErr + "<br />"
	Next nX
	cMsgErr += "</em></p>"
	u_COMPEMAIL("Erro","sistemas@bgh.com.br","",cMsgErr,"")
	lErro := .T.
EndIf
Return(lErro)
/*ÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜÜ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
ฑฑษออออออออออัออออออออออหอออออออัออออออออออออออออออออออหออออออัอออออออออออปฑฑ
ฑฑบPrograma  ณWSTRANSF  บAutor  ณHudson de Souza Santosบ Data ณ 20/06/14  บฑฑ
ฑฑฬออออออออออุออออออออออสอออออออฯออออออออออออออออออออออสออออออฯอออออออออออนฑฑ
ฑฑบDesc.     ณ                                                            บฑฑ
ฑฑบ          ณ                                                            บฑฑ
ฑฑฬออออออออออุออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออนฑฑ
ฑฑบUso       ณBGH                                                         บฑฑ
ฑฑศออออออออออฯออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผฑฑ
ฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑฑ
฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿฿*/
User Function WSTrans2(aParams)
Local cTime	:= ""
Local nX	:= 0
Local nY	:= 0
Local nDif	:= 0
Local nVezes	:= aParams[1]
Local nInter	:= aParams[2]
Local lSchedule	:= aParams[3]
Local cDif	:= ""
Local cMsg	:= ""
Local cTitulo := "Transferencia modelo2 Kit: DE "
If lSchedule
	PREPARE ENVIRONMENT EMPRESA "02" FILIAL "02" MODULO 'EST'
EndIf
cTitulo += Time()
For nX := 1 to nVezes
	cTime	:= Time()
	If CheckErro()
		cMsg += "<p>Rotina de ajuste rodada.</p>"
	EndIf
	cMsg += u_WSTRANSF()
	While nX <> nVezes .AND. (nInter*60) > nDif
		cDif := ELAPTIME(cTime, Time())
		nDif := 0
		nDif += Val(SubSTR(cDif,1,2)) * 3600
		nDif += Val(SubSTR(cDif,4,2)) * 60
		nDif += Val(SubSTR(cDif,7,2))
	EndDo
	cMsg += "<hr />"
	nDif	:= 0
Next nX
cTitulo += " ATE " + Time()
u_COMPEMAIL(cTitulo,"sistemas@bgh.com.br","",cMsg,"")
If lSchedule
	RESET ENVIRONMENT
EndIf
Return