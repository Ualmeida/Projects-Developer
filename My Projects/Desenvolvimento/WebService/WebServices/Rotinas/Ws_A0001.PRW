#Include "protheus.ch"
#Define LFRC CHR(13)+Chr(10)
/*
*Programa: WSINTCCENT
*Autor	 : Thomas Quintino Galv�o 
*Data 	 : 28/08/12   
*Desc.   : WebService de Valida��o de Vinculo e-ticket
*/
User Function WSINTCCENT(cImei,tMemo)
	Local lRet 		:= .F.
	Local lNil 		:= .F. 
	Local cMemo		:= ""
	Local aMsnResult:= {} 
	Local oSoa
	Local oValidResult
	Local oLoginResult
	Local oMsnResult	

u_GerA0003(ProcName())
	
	oSoa:= WSPublicService():New()	
	oSoa:validate() 
	oValidResult:= oSoa:OWSVALIDATERESULT
	
	TiraZeros(@cImei)
	
	If !Empty(oValidResult:CTOKEN)	
		oSoa:login(oValidResult,AllTrim(GetMv("MV_ZZWSLOG")),AllTrim(GetMv("MV_ZZWSPAS"))) 
		oLoginResult:= oSoa:OWSLOGINRESULT
		
		If !Empty(oLoginResult:CTOKEN)	
			oSoa:GetCourierObjectByReceivedMsn(AllTrim(cImei))
			oMsnResult	:= oSoa:OWSGETCOURIEROBJECTBYRECEIVEDMSNRESULT:OWSLIST 
			
			aMsnResult 	:= oMsnResult:OWSCOURIEROBJECT	
			
			If Empty(aMsnResult)
				tMemo := "------IMEI inexistente para verifica��o de vinculo!--------"+LFRC+LFRC
				Return .T.
			Else
				lRet := aMsnResult[1]:LPROBLEMLINK
			EndIf                             
			
			If !lRet
				tMemo := '-------------------------Vinculo OK!-----------------------'+LFRC+LFRC                
			Else
				tMemo := '-------Este IMEI tem Problema de V�nculo, Verificar!-------'+LFRC+LFRC
			EndIf
		Else 
			tMemo := 'N�o Foi poss�vel obter o cToken para o usu�rio '+AllTrim(GetMv("MV_ZZWSLOG"))+', '+LFRC+LFRC
			tMemo += 'Contate o administrador e pe�a para verificar Usu�rio e Senha! '+LFRC+LFRC 
			lRet := .T.			
		EndIf
	Else
		tMemo := 'N�o Foi poss�vel obter o cToken para o usu�rio corrente,  '+LFRC+LFRC
		tMemo += 'Contate o administrador e pe�a para verificar Usu�rio e senha! '+LFRC+LFRC
		lRet := .T.	
	EndIf	
Return lRet          

/*
*Programa: TiraZeros
*Autor	 : Thomas Quintino Galv�o 
*Data 	 : 28/08/12   
*Desc.   : Fun��o retira zeros a direita de uma string
*/
Static Function TiraZeros(cImei)
	Local nI 	:= 0
	Local nCont	:= 0
	Local cTexto:= ''
	Local lEntr := .T.
		
	For nI := 1 To Len(cImei)
		If lEntr
			If SubStr(cImei,nI,1) == '0'
				nCont++	
			Else 
				lEntr:= .F.	
			EndIf
		EndIf
	Next nI 
	cImei := SubStr(cImei,nCont+1)
Return 