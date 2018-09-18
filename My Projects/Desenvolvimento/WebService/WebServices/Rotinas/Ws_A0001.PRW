#Include "protheus.ch"
#Define LFRC CHR(13)+Chr(10)
/*
*Programa: WSINTCCENT
*Autor	 : Thomas Quintino Galvão 
*Data 	 : 28/08/12   
*Desc.   : WebService de Validação de Vinculo e-ticket
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
				tMemo := "------IMEI inexistente para verificação de vinculo!--------"+LFRC+LFRC
				Return .T.
			Else
				lRet := aMsnResult[1]:LPROBLEMLINK
			EndIf                             
			
			If !lRet
				tMemo := '-------------------------Vinculo OK!-----------------------'+LFRC+LFRC                
			Else
				tMemo := '-------Este IMEI tem Problema de Vínculo, Verificar!-------'+LFRC+LFRC
			EndIf
		Else 
			tMemo := 'Não Foi possível obter o cToken para o usuário '+AllTrim(GetMv("MV_ZZWSLOG"))+', '+LFRC+LFRC
			tMemo += 'Contate o administrador e peça para verificar Usuário e Senha! '+LFRC+LFRC 
			lRet := .T.			
		EndIf
	Else
		tMemo := 'Não Foi possível obter o cToken para o usuário corrente,  '+LFRC+LFRC
		tMemo += 'Contate o administrador e peça para verificar Usuário e senha! '+LFRC+LFRC
		lRet := .T.	
	EndIf	
Return lRet          

/*
*Programa: TiraZeros
*Autor	 : Thomas Quintino Galvão 
*Data 	 : 28/08/12   
*Desc.   : Função retira zeros a direita de uma string
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