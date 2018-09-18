#INCLUDE "PROTHEUS.CH"
#INCLUDE "APWEBSRV.CH"

/* ===============================================================================
<<<<<<< .mine
WSDL Location    http://172.16.0.7:9091/PublicService.svc?wsdl
Gerado em        07/25/13 09:28:31
Observações      Código-Fonte gerado por ADVPL WSDL Client 1.120703
=======
WSDL Location    http://172.16.0.5:8093/WSBGH.apw?WSDL
Gerado em        08/10/13 15:30:52
Observações      Código-Fonte gerado por ADVPL WSDL Client 1.120703
>>>>>>> .r192
                 Alterações neste arquivo podem causar funcionamento incorreto
                 e serão perdidas caso o código-fonte seja gerado novamente.
=============================================================================== */

<<<<<<< .mine
User Function _YPOQOBM ; Return  // "dummy" function - Internal Use 
=======
User Function _QQLPXLB ; Return  // "dummy" function - Internal Use 
>>>>>>> .r192

/* -------------------------------------------------------------------------------
WSDL Service WSWSBGH
------------------------------------------------------------------------------- */

WSCLIENT WSWSBGH

	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD RESET
	WSMETHOD CLONE
<<<<<<< .mine
	WSMETHOD EditaEmail
	WSMETHOD GetObjectShipmentsByIncidentId
	WSMETHOD GetObjectShipmentByObjectCode
	WSMETHOD GetObjectShipmentByCourierObjectId
	WSMETHOD GetListShipimentTypes
	WSMETHOD AddNewAddressToResend
	WSMETHOD AddNewAddressToResendCallCenter
	WSMETHOD ChangeIncidentStatusTo
	WSMETHOD GetEticketAvailables
	WSMETHOD CadastraEmailMonitor
	WSMETHOD ListEmailMonitor
	WSMETHOD DeleteEmailMonitor
	WSMETHOD Cadastra_motivo_Reenvio
	WSMETHOD DeteleMotivoReenvio
	WSMETHOD GetListIBGEByCity
	WSMETHOD GetListIBGEByCityState
	WSMETHOD AddIBGE
	WSMETHOD GetListProductsByDescription
	WSMETHOD GetListProductsByDescriptionSB1020
	WSMETHOD GetListProductType
	WSMETHOD GetListMailMox
	WSMETHOD GetListProductTypeByIncidentId
	WSMETHOD GetListStates
	WSMETHOD GetListAddressesByZipCode
	WSMETHOD GetAddressByZipCode
	WSMETHOD GetIncidentReturned
	WSMETHOD GetIncidentStatusByType
	WSMETHOD GetIncidentStatusByCARCode
	WSMETHOD GetListOpenedEtickets
	WSMETHOD GetIncidentByGeneratedEticket
	WSMETHOD AddIncidentByClient
	WSMETHOD GenerateEticketByIncident
	WSMETHOD GetListLockings
	WSMETHOD GetIncidentByIncidentLockingId
	WSMETHOD UnlockingIncident
	WSMETHOD GetCourierObject
	WSMETHOD GetAllObjectReasonReturning
	WSMETHOD GetHistoriesByCourierObject
	WSMETHOD GetCourierObjectByNotaFiscalSaida
	WSMETHOD GetCourierObjectByCode
	WSMETHOD GetCourierObjectByIncomingMsn
	WSMETHOD GetCourierObjectByReceivedMsn
	WSMETHOD GetObjectProblemLink
	WSMETHOD RemoveObjectProblemLinkByObjectCode
	WSMETHOD UpdateCourierObject
	WSMETHOD ResetIncidentObjectReceivedByIncidentId
	WSMETHOD AddProblemLinkedReceivedCourierObject
	WSMETHOD AddReceivedCourierObject
	WSMETHOD AddEticket
	WSMETHOD AddAlterOperation
	WSMETHOD SaveEmail
	WSMETHOD ListEmails
	WSMETHOD DeleteEmail
	WSMETHOD Validate
	WSMETHOD Login
	WSMETHOD Logoff
	WSMETHOD GetUserPermissions
	WSMETHOD GetListOperations
	WSMETHOD GetOperationById
	WSMETHOD GetListAllOperations
	WSMETHOD GetListOperationsZZJ020
	WSMETHOD GetListProfiles
	WSMETHOD GetListModules
	WSMETHOD GetListModuleByProfileId
	WSMETHOD GetProfileById
	WSMETHOD GetListIntegratorLogs
	WSMETHOD GetOperationByProfileId
	WSMETHOD GetListApplicationUsers
	WSMETHOD ResetPassword
	WSMETHOD AddApplicationUser
	WSMETHOD AddProfile
	WSMETHOD GetEticketByIncidentId
	WSMETHOD GetIncident
	WSMETHOD GetIncidentByOs
	WSMETHOD GetIncidentByCallCenterId
	WSMETHOD GetIncidentByPreOs
	WSMETHOD GetIncidentByEticketObjectCode
	WSMETHOD GetIncidentByCPF
	WSMETHOD GetIncidentByMsn
	WSMETHOD GetIncidentByReceivedCurrierObject
	WSMETHOD GetIncidentLocked
=======
	WSMETHOD GET_CLIENT
	WSMETHOD GRAVACADASTRO
>>>>>>> .r192

	WSDATA   _URL                      AS String
	WSDATA   _HEADOUT                  AS Array of String
	WSDATA   _COOKIES                  AS Array of String
<<<<<<< .mine
	WSDATA   nid                       AS int
	WSDATA   oWSEditaEmailResult       AS PublicService_Email
	WSDATA   nindicentId               AS long
	WSDATA   oWSuser                   AS PublicService_ApplicationUser
	WSDATA   oWSGetObjectShipmentsByIncidentIdResult AS PublicService_ListObjectShipments
	WSDATA   cobjectCode               AS string
	WSDATA   oWSGetObjectShipmentByObjectCodeResult AS PublicService_ObjectShipment
	WSDATA   ncourrierObjectId         AS long
	WSDATA   oWSGetObjectShipmentByCourierObjectIdResult AS PublicService_ObjectShipment
	WSDATA   oWSGetListShipimentTypesResult AS PublicService_ListShipmentTypes
	WSDATA   oWSaction                 AS PublicService_ActionResend
	WSDATA   nreasonReturningId        AS int
	WSDATA   creasonReturningDetail    AS string
	WSDATA   nincidentId               AS long
	WSDATA   caddress                  AS string
	WSDATA   cnumberAddress            AS string
	WSDATA   ccomplement               AS string
	WSDATA   cneighborhood             AS string
	WSDATA   czip                      AS string
	WSDATA   ccity                     AS string
	WSDATA   cstate                    AS string
	WSDATA   oWSAddNewAddressToResendResult AS PublicService_StatusResult
	WSDATA   cobservationCallCenter    AS string
	WSDATA   oWSAddNewAddressToResendCallCenterResult AS PublicService_StatusResult
	WSDATA   oWStype                   AS PublicService_IncidentStatusType
	WSDATA   cchangeDate               AS dateTime
	WSDATA   oWSChangeIncidentStatusToResult AS PublicService_StatusResult
	WSDATA   nShipmentTypeId           AS int
	WSDATA   oWSGetEticketAvailablesResult AS PublicService_StatusResult
	WSDATA   cemail                    AS string
	WSDATA   oWSListEmailMonitorResult AS PublicService_ArrayOfeticketsMonitorConfig
	WSDATA   cmotivo                   AS string
	WSDATA   lCadastra_motivo_ReenvioResult AS boolean
	WSDATA   lDeteleMotivoReenvioResult AS boolean
	WSDATA   oWSGetListIBGEByCityResult AS PublicService_ListIBGECC2020
	WSDATA   oWSGetListIBGEByCityStateResult AS PublicService_ListIBGECC2020
	WSDATA   nrecno                    AS int
	WSDATA   oWSAddIBGEResult          AS PublicService_StatusResult
	WSDATA   cdescription              AS string
	WSDATA   oWSGetListProductsByDescriptionResult AS PublicService_ListProducts
	WSDATA   oWSGetListProductsByDescriptionSB1020Result AS PublicService_ListProductsSB1020
	WSDATA   oWSGetListProductTypeResult AS PublicService_ListProductType
	WSDATA   oWSGetListMailMoxResult   AS PublicService_ListMailBox
	WSDATA   oWSGetListProductTypeByIncidentIdResult AS PublicService_ListProductType
	WSDATA   oWSGetListStatesResult    AS PublicService_ListStates
	WSDATA   czipCode                  AS string
	WSDATA   oWSGetListAddressesByZipCodeResult AS PublicService_ListAddresses
	WSDATA   oWSGetAddressByZipCodeResult AS PublicService_Address
	WSDATA   oWSGetIncidentReturnedResult AS PublicService_ListIncidents
	WSDATA   noperationId              AS int
	WSDATA   oWSGetIncidentStatusByTypeResult AS PublicService_IncidentStatus
	WSDATA   ccarCode                  AS string
	WSDATA   oWSGetIncidentStatusByCARCodeResult AS PublicService_IncidentStatus
	WSDATA   nquantidade               AS int
	WSDATA   nskip                     AS int
	WSDATA   oWSGetListOpenedEticketsResult AS PublicService_ListEtickets
	WSDATA   ceticket                  AS string
	WSDATA   oWSGetIncidentByGeneratedEticketResult AS PublicService_ListIncidents
	WSDATA   oWSincident               AS PublicService_Incident
	WSDATA   oWSAddIncidentByClientResult AS PublicService_Incident
	WSDATA   oWSGenerateEticketByIncidentResult AS PublicService_Incident
	WSDATA   oWSGetListLockingsResult  AS PublicService_ListIncidentLockingHistory
	WSDATA   oWSGetIncidentByIncidentLockingIdResult AS PublicService_Incident
	WSDATA   nlockingHistoryId         AS int
	WSDATA   lsinc                     AS boolean
	WSDATA   lUnlockingIncidentResult  AS boolean
	WSDATA   ncourierObjectId          AS long
	WSDATA   oWSGetCourierObjectResult AS PublicService_CourierObject
	WSDATA   oWSGetAllObjectReasonReturningResult AS PublicService_ListObjectReasonReturning
	WSDATA   oWSGetHistoriesByCourierObjectResult AS PublicService_ListReturnedCourierObjectHistory
	WSDATA   cnumero                   AS string
	WSDATA   cSerie                    AS string
	WSDATA   oWSGetCourierObjectByNotaFiscalSaidaResult AS PublicService_ListCourierObjects
	WSDATA   oWSGetCourierObjectByCodeResult AS PublicService_ListCourierObjects
	WSDATA   cmsn                      AS string
	WSDATA   oWSGetCourierObjectByIncomingMsnResult AS PublicService_ListCourierObjects
	WSDATA   oWSGetCourierObjectByReceivedMsnResult AS PublicService_ListCourierObjects
	WSDATA   oWSGetObjectProblemLinkResult AS PublicService_ListCourierObjects
	WSDATA   oWSRemoveObjectProblemLinkByObjectCodeResult AS PublicService_StatusResult
	WSDATA   oWScourierObject          AS PublicService_CourierObject
	WSDATA   oWSUpdateCourierObjectResult AS PublicService_StatusResult
	WSDATA   oWSResetIncidentObjectReceivedByIncidentIdResult AS PublicService_StatusResult
	WSDATA   cimei                     AS string
	WSDATA   oWSAddProblemLinkedReceivedCourierObjectResult AS PublicService_StatusResult
	WSDATA   cdocument                 AS string
	WSDATA   nproductTypeId            AS int
	WSDATA   lforceAtuSiga             AS boolean
	WSDATA   lignoreCliSiga            AS boolean
	WSDATA   oWSAddReceivedCourierObjectResult AS PublicService_StatusResult
	WSDATA   cDe                       AS string
	WSDATA   cAte                      AS string
	WSDATA   oWSAddEticketResult       AS PublicService_StatusResult
	WSDATA   coperation                AS string
	WSDATA   cname                     AS string
	WSDATA   cpath                     AS string
	WSDATA   lavaliable                AS boolean
	WSDATA   oWSAddAlterOperationResult AS PublicService_StatusResult
	WSDATA   oWScad                    AS PublicService_Email
	WSDATA   lSaveEmailResult          AS boolean
	WSDATA   oWSListEmailsResult       AS PublicService_ArrayOfEmail
	WSDATA   cUsername                 AS string
	WSDATA   cPassword                 AS string
	WSDATA   oWSValidateResult         AS PublicService_ServiceConnection
	WSDATA   oWSconn                   AS PublicService_ServiceConnection
	WSDATA   oWSLoginResult            AS PublicService_ApplicationUser
	WSDATA   oWSLogoffResult           AS PublicService_StatusResult
	WSDATA   oWSGetUserPermissionsResult AS PublicService_UserPermissions
	WSDATA   oWSGetListOperationsResult AS PublicService_ListOperations
	WSDATA   oWSGetOperationByIdResult AS PublicService_Operation
	WSDATA   oWSGetListAllOperationsResult AS PublicService_ListOperations
	WSDATA   oWSGetListOperationsZZJ020Result AS PublicService_ListOperationsZZJ020
	WSDATA   oWSGetListProfilesResult  AS PublicService_ListProfiles
	WSDATA   oWSGetListModulesResult   AS PublicService_ListModules
	WSDATA   nprofileId                AS int
	WSDATA   oWSGetListModuleByProfileIdResult AS PublicService_ListModules
	WSDATA   oWSGetProfileByIdResult   AS PublicService_ListProfiles
	WSDATA   oWSGetListIntegratorLogsResult AS PublicService_ListIntegratorLogs
	WSDATA   oWSGetOperationByProfileIdResult AS PublicService_Operation
	WSDATA   oWSGetListApplicationUsersResult AS PublicService_ListApplicationUsers
	WSDATA   nuserId                   AS int
	WSDATA   cnovo                     AS string
	WSDATA   cconfirm                  AS string
	WSDATA   oWSResetPasswordResult    AS PublicService_StatusResult
	WSDATA   nperfilId                 AS int
	WSDATA   lstatus                   AS boolean
	WSDATA   oWSAddApplicationUserResult AS PublicService_StatusResult
	WSDATA   lfront                    AS boolean
	WSDATA   cOperationCode            AS string
	WSDATA   oWSModuleId               AS PublicService_ArrayOfint
	WSDATA   oWSAddProfileResult       AS PublicService_StatusResult
	WSDATA   oWSGetEticketByIncidentIdResult AS PublicService_Eticket
	WSDATA   oWSGetIncidentResult      AS PublicService_Incident
	WSDATA   cOsId                     AS string
	WSDATA   oWSGetIncidentByOsResult  AS PublicService_ListIncidents
	WSDATA   ccallCenterId             AS string
	WSDATA   oWSGetIncidentByCallCenterIdResult AS PublicService_ListIncidents
	WSDATA   cPreOsId                  AS string
	WSDATA   oWSGetIncidentByPreOsResult AS PublicService_ListIncidents
	WSDATA   oWSGetIncidentByEticketObjectCodeResult AS PublicService_ListIncidents
	WSDATA   ccpf                      AS string
	WSDATA   oWSGetIncidentByCPFResult AS PublicService_ListIncidents
	WSDATA   oWSGetIncidentByMsnResult AS PublicService_ListIncidents
	WSDATA   nobjeto_id                AS long
	WSDATA   oWSGetIncidentByReceivedCurrierObjectResult AS PublicService_ListIncidents
	WSDATA   oWSGetIncidentLockedResult AS PublicService_ListIncidents
=======
	WSDATA   oWSOPARAMCLIENT           AS WSBGH_STRUC_PARAM_CLIENT
	WSDATA   oWSGET_CLIENTRESULT       AS WSBGH_STRUC_SEND_CLIENTE
	WSDATA   oWSACABECZZ3              AS WSBGH_CABECALHOZZ3
	WSDATA   oWSAITENSSZ9              AS WSBGH_ITENSSZ9
	WSDATA   cGRAVACADASTRORESULT      AS string
>>>>>>> .r192

	// Estruturas mantidas por compatibilidade - NÃO USAR
	WSDATA   oWSSTRUC_PARAM_CLIENT     AS WSBGH_STRUC_PARAM_CLIENT
	WSDATA   oWSCABECALHOZZ3           AS WSBGH_CABECALHOZZ3
	WSDATA   oWSITENSSZ9               AS WSBGH_ITENSSZ9

ENDWSCLIENT

WSMETHOD NEW WSCLIENT WSWSBGH
::Init()
If !FindFunction("XMLCHILDEX")
	UserException("O Código-Fonte Client atual requer os executáveis do Protheus Build [7.00.120420A-20120726] ou superior. Atualize o Protheus ou gere o Código-Fonte novamente utilizando o Build atual.")
EndIf
Return Self

<<<<<<< .mine
WSMETHOD INIT WSCLIENT WSPublicService
	::oWSEditaEmailResult := PublicService_EMAIL():New()
	::oWSuser            := PublicService_APPLICATIONUSER():New()
	::oWSGetObjectShipmentsByIncidentIdResult := PublicService_LISTOBJECTSHIPMENTS():New()
	::oWSGetObjectShipmentByObjectCodeResult := PublicService_OBJECTSHIPMENT():New()
	::oWSGetObjectShipmentByCourierObjectIdResult := PublicService_OBJECTSHIPMENT():New()
	::oWSGetListShipimentTypesResult := PublicService_LISTSHIPMENTTYPES():New()
	::oWSaction          := PublicService_ACTIONRESEND():New()
	::oWSAddNewAddressToResendResult := PublicService_STATUSRESULT():New()
	::oWSAddNewAddressToResendCallCenterResult := PublicService_STATUSRESULT():New()
	::oWStype            := PublicService_INCIDENTSTATUSTYPE():New()
	::oWSChangeIncidentStatusToResult := PublicService_STATUSRESULT():New()
	::oWSGetEticketAvailablesResult := PublicService_STATUSRESULT():New()
	::oWSListEmailMonitorResult := PublicService_ARRAYOFETICKETSMONITORCONFIG():New()
	::oWSGetListIBGEByCityResult := PublicService_LISTIBGECC2020():New()
	::oWSGetListIBGEByCityStateResult := PublicService_LISTIBGECC2020():New()
	::oWSAddIBGEResult   := PublicService_STATUSRESULT():New()
	::oWSGetListProductsByDescriptionResult := PublicService_LISTPRODUCTS():New()
	::oWSGetListProductsByDescriptionSB1020Result := PublicService_LISTPRODUCTSSB1020():New()
	::oWSGetListProductTypeResult := PublicService_LISTPRODUCTTYPE():New()
	::oWSGetListMailMoxResult := PublicService_LISTMAILBOX():New()
	::oWSGetListProductTypeByIncidentIdResult := PublicService_LISTPRODUCTTYPE():New()
	::oWSGetListStatesResult := PublicService_LISTSTATES():New()
	::oWSGetListAddressesByZipCodeResult := PublicService_LISTADDRESSES():New()
	::oWSGetAddressByZipCodeResult := PublicService_ADDRESS():New()
	::oWSGetIncidentReturnedResult := PublicService_LISTINCIDENTS():New()
	::oWSGetIncidentStatusByTypeResult := PublicService_INCIDENTSTATUS():New()
	::oWSGetIncidentStatusByCARCodeResult := PublicService_INCIDENTSTATUS():New()
	::oWSGetListOpenedEticketsResult := PublicService_LISTETICKETS():New()
	::oWSGetIncidentByGeneratedEticketResult := PublicService_LISTINCIDENTS():New()
	::oWSincident        := PublicService_INCIDENT():New()
	::oWSAddIncidentByClientResult := PublicService_INCIDENT():New()
	::oWSGenerateEticketByIncidentResult := PublicService_INCIDENT():New()
	::oWSGetListLockingsResult := PublicService_LISTINCIDENTLOCKINGHISTORY():New()
	::oWSGetIncidentByIncidentLockingIdResult := PublicService_INCIDENT():New()
	::oWSGetCourierObjectResult := PublicService_COURIEROBJECT():New()
	::oWSGetAllObjectReasonReturningResult := PublicService_LISTOBJECTREASONRETURNING():New()
	::oWSGetHistoriesByCourierObjectResult := PublicService_LISTRETURNEDCOURIEROBJECTHISTORY():New()
	::oWSGetCourierObjectByNotaFiscalSaidaResult := PublicService_LISTCOURIEROBJECTS():New()
	::oWSGetCourierObjectByCodeResult := PublicService_LISTCOURIEROBJECTS():New()
	::oWSGetCourierObjectByIncomingMsnResult := PublicService_LISTCOURIEROBJECTS():New()
	::oWSGetCourierObjectByReceivedMsnResult := PublicService_LISTCOURIEROBJECTS():New()
	::oWSGetObjectProblemLinkResult := PublicService_LISTCOURIEROBJECTS():New()
	::oWSRemoveObjectProblemLinkByObjectCodeResult := PublicService_STATUSRESULT():New()
	::oWScourierObject   := PublicService_COURIEROBJECT():New()
	::oWSUpdateCourierObjectResult := PublicService_STATUSRESULT():New()
	::oWSResetIncidentObjectReceivedByIncidentIdResult := PublicService_STATUSRESULT():New()
	::oWSAddProblemLinkedReceivedCourierObjectResult := PublicService_STATUSRESULT():New()
	::oWSAddReceivedCourierObjectResult := PublicService_STATUSRESULT():New()
	::oWSAddEticketResult := PublicService_STATUSRESULT():New()
	::oWSAddAlterOperationResult := PublicService_STATUSRESULT():New()
	::oWScad             := PublicService_EMAIL():New()
	::oWSListEmailsResult := PublicService_ARRAYOFEMAIL():New()
	::oWSValidateResult  := PublicService_SERVICECONNECTION():New()
	::oWSconn            := PublicService_SERVICECONNECTION():New()
	::oWSLoginResult     := PublicService_APPLICATIONUSER():New()
	::oWSLogoffResult    := PublicService_STATUSRESULT():New()
	::oWSGetUserPermissionsResult := PublicService_USERPERMISSIONS():New()
	::oWSGetListOperationsResult := PublicService_LISTOPERATIONS():New()
	::oWSGetOperationByIdResult := PublicService_OPERATION():New()
	::oWSGetListAllOperationsResult := PublicService_LISTOPERATIONS():New()
	::oWSGetListOperationsZZJ020Result := PublicService_LISTOPERATIONSZZJ020():New()
	::oWSGetListProfilesResult := PublicService_LISTPROFILES():New()
	::oWSGetListModulesResult := PublicService_LISTMODULES():New()
	::oWSGetListModuleByProfileIdResult := PublicService_LISTMODULES():New()
	::oWSGetProfileByIdResult := PublicService_LISTPROFILES():New()
	::oWSGetListIntegratorLogsResult := PublicService_LISTINTEGRATORLOGS():New()
	::oWSGetOperationByProfileIdResult := PublicService_OPERATION():New()
	::oWSGetListApplicationUsersResult := PublicService_LISTAPPLICATIONUSERS():New()
	::oWSResetPasswordResult := PublicService_STATUSRESULT():New()
	::oWSAddApplicationUserResult := PublicService_STATUSRESULT():New()
	::oWSModuleId        := PublicService_ARRAYOFINT():New()
	::oWSAddProfileResult := PublicService_STATUSRESULT():New()
	::oWSGetEticketByIncidentIdResult := PublicService_ETICKET():New()
	::oWSGetIncidentResult := PublicService_INCIDENT():New()
	::oWSGetIncidentByOsResult := PublicService_LISTINCIDENTS():New()
	::oWSGetIncidentByCallCenterIdResult := PublicService_LISTINCIDENTS():New()
	::oWSGetIncidentByPreOsResult := PublicService_LISTINCIDENTS():New()
	::oWSGetIncidentByEticketObjectCodeResult := PublicService_LISTINCIDENTS():New()
	::oWSGetIncidentByCPFResult := PublicService_LISTINCIDENTS():New()
	::oWSGetIncidentByMsnResult := PublicService_LISTINCIDENTS():New()
	::oWSGetIncidentByReceivedCurrierObjectResult := PublicService_LISTINCIDENTS():New()
	::oWSGetIncidentLockedResult := PublicService_LISTINCIDENTS():New()
=======
WSMETHOD INIT WSCLIENT WSWSBGH
	::oWSOPARAMCLIENT    := WSBGH_STRUC_PARAM_CLIENT():New()
	::oWSGET_CLIENTRESULT := WSBGH_STRUC_SEND_CLIENTE():New()
	::oWSACABECZZ3       := WSBGH_CABECALHOZZ3():New()
	::oWSAITENSSZ9       := WSBGH_ITENSSZ9():New()

	// Estruturas mantidas por compatibilidade - NÃO USAR
	::oWSSTRUC_PARAM_CLIENT := ::oWSOPARAMCLIENT
	::oWSCABECALHOZZ3    := ::oWSACABECZZ3
	::oWSITENSSZ9        := ::oWSAITENSSZ9
>>>>>>> .r192
Return

<<<<<<< .mine
WSMETHOD RESET WSCLIENT WSPublicService
	::nid                := NIL 
	::oWSEditaEmailResult := NIL 
	::nindicentId        := NIL 
	::oWSuser            := NIL 
	::oWSGetObjectShipmentsByIncidentIdResult := NIL 
	::cobjectCode        := NIL 
	::oWSGetObjectShipmentByObjectCodeResult := NIL 
	::ncourrierObjectId  := NIL 
	::oWSGetObjectShipmentByCourierObjectIdResult := NIL 
	::oWSGetListShipimentTypesResult := NIL 
	::oWSaction          := NIL 
	::nreasonReturningId := NIL 
	::creasonReturningDetail := NIL 
	::nincidentId        := NIL 
	::caddress           := NIL 
	::cnumberAddress     := NIL 
	::ccomplement        := NIL 
	::cneighborhood      := NIL 
	::czip               := NIL 
	::ccity              := NIL 
	::cstate             := NIL 
	::oWSAddNewAddressToResendResult := NIL 
	::cobservationCallCenter := NIL 
	::oWSAddNewAddressToResendCallCenterResult := NIL 
	::oWStype            := NIL 
	::cchangeDate        := NIL 
	::oWSChangeIncidentStatusToResult := NIL 
	::nShipmentTypeId    := NIL 
	::oWSGetEticketAvailablesResult := NIL 
	::cemail             := NIL 
	::oWSListEmailMonitorResult := NIL 
	::cmotivo            := NIL 
	::lCadastra_motivo_ReenvioResult := NIL 
	::lDeteleMotivoReenvioResult := NIL 
	::oWSGetListIBGEByCityResult := NIL 
	::oWSGetListIBGEByCityStateResult := NIL 
	::nrecno             := NIL 
	::oWSAddIBGEResult   := NIL 
	::cdescription       := NIL 
	::oWSGetListProductsByDescriptionResult := NIL 
	::oWSGetListProductsByDescriptionSB1020Result := NIL 
	::oWSGetListProductTypeResult := NIL 
	::oWSGetListMailMoxResult := NIL 
	::oWSGetListProductTypeByIncidentIdResult := NIL 
	::oWSGetListStatesResult := NIL 
	::czipCode           := NIL 
	::oWSGetListAddressesByZipCodeResult := NIL 
	::oWSGetAddressByZipCodeResult := NIL 
	::oWSGetIncidentReturnedResult := NIL 
	::noperationId       := NIL 
	::oWSGetIncidentStatusByTypeResult := NIL 
	::ccarCode           := NIL 
	::oWSGetIncidentStatusByCARCodeResult := NIL 
	::nquantidade        := NIL 
	::nskip              := NIL 
	::oWSGetListOpenedEticketsResult := NIL 
	::ceticket           := NIL 
	::oWSGetIncidentByGeneratedEticketResult := NIL 
	::oWSincident        := NIL 
	::oWSAddIncidentByClientResult := NIL 
	::oWSGenerateEticketByIncidentResult := NIL 
	::oWSGetListLockingsResult := NIL 
	::oWSGetIncidentByIncidentLockingIdResult := NIL 
	::nlockingHistoryId  := NIL 
	::lsinc              := NIL 
	::lUnlockingIncidentResult := NIL 
	::ncourierObjectId   := NIL 
	::oWSGetCourierObjectResult := NIL 
	::oWSGetAllObjectReasonReturningResult := NIL 
	::oWSGetHistoriesByCourierObjectResult := NIL 
	::cnumero            := NIL 
	::cSerie             := NIL 
	::oWSGetCourierObjectByNotaFiscalSaidaResult := NIL 
	::oWSGetCourierObjectByCodeResult := NIL 
	::cmsn               := NIL 
	::oWSGetCourierObjectByIncomingMsnResult := NIL 
	::oWSGetCourierObjectByReceivedMsnResult := NIL 
	::oWSGetObjectProblemLinkResult := NIL 
	::oWSRemoveObjectProblemLinkByObjectCodeResult := NIL 
	::oWScourierObject   := NIL 
	::oWSUpdateCourierObjectResult := NIL 
	::oWSResetIncidentObjectReceivedByIncidentIdResult := NIL 
	::cimei              := NIL 
	::oWSAddProblemLinkedReceivedCourierObjectResult := NIL 
	::cdocument          := NIL 
	::nproductTypeId     := NIL 
	::lforceAtuSiga      := NIL 
	::lignoreCliSiga     := NIL 
	::oWSAddReceivedCourierObjectResult := NIL 
	::cDe                := NIL 
	::cAte               := NIL 
	::oWSAddEticketResult := NIL 
	::coperation         := NIL 
	::cname              := NIL 
	::cpath              := NIL 
	::lavaliable         := NIL 
	::oWSAddAlterOperationResult := NIL 
	::oWScad             := NIL 
	::lSaveEmailResult   := NIL 
	::oWSListEmailsResult := NIL 
	::cUsername          := NIL 
	::cPassword          := NIL 
	::oWSValidateResult  := NIL 
	::oWSconn            := NIL 
	::oWSLoginResult     := NIL 
	::oWSLogoffResult    := NIL 
	::oWSGetUserPermissionsResult := NIL 
	::oWSGetListOperationsResult := NIL 
	::oWSGetOperationByIdResult := NIL 
	::oWSGetListAllOperationsResult := NIL 
	::oWSGetListOperationsZZJ020Result := NIL 
	::oWSGetListProfilesResult := NIL 
	::oWSGetListModulesResult := NIL 
	::nprofileId         := NIL 
	::oWSGetListModuleByProfileIdResult := NIL 
	::oWSGetProfileByIdResult := NIL 
	::oWSGetListIntegratorLogsResult := NIL 
	::oWSGetOperationByProfileIdResult := NIL 
	::oWSGetListApplicationUsersResult := NIL 
	::nuserId            := NIL 
	::cnovo              := NIL 
	::cconfirm           := NIL 
	::oWSResetPasswordResult := NIL 
	::nperfilId          := NIL 
	::lstatus            := NIL 
	::oWSAddApplicationUserResult := NIL 
	::lfront             := NIL 
	::cOperationCode     := NIL 
	::oWSModuleId        := NIL 
	::oWSAddProfileResult := NIL 
	::oWSGetEticketByIncidentIdResult := NIL 
	::oWSGetIncidentResult := NIL 
	::cOsId              := NIL 
	::oWSGetIncidentByOsResult := NIL 
	::ccallCenterId      := NIL 
	::oWSGetIncidentByCallCenterIdResult := NIL 
	::cPreOsId           := NIL 
	::oWSGetIncidentByPreOsResult := NIL 
	::oWSGetIncidentByEticketObjectCodeResult := NIL 
	::ccpf               := NIL 
	::oWSGetIncidentByCPFResult := NIL 
	::oWSGetIncidentByMsnResult := NIL 
	::nobjeto_id         := NIL 
	::oWSGetIncidentByReceivedCurrierObjectResult := NIL 
	::oWSGetIncidentLockedResult := NIL 
=======
WSMETHOD RESET WSCLIENT WSWSBGH
	::oWSOPARAMCLIENT    := NIL 
	::oWSGET_CLIENTRESULT := NIL 
	::oWSACABECZZ3       := NIL 
	::oWSAITENSSZ9       := NIL 
	::cGRAVACADASTRORESULT := NIL 

	// Estruturas mantidas por compatibilidade - NÃO USAR
	::oWSSTRUC_PARAM_CLIENT := NIL
	::oWSCABECALHOZZ3    := NIL
	::oWSITENSSZ9        := NIL
>>>>>>> .r192
	::Init()
Return

WSMETHOD CLONE WSCLIENT WSWSBGH
Local oClone := WSWSBGH():New()
	oClone:_URL          := ::_URL 
<<<<<<< .mine
	oClone:nid           := ::nid
	oClone:oWSEditaEmailResult :=  IIF(::oWSEditaEmailResult = NIL , NIL ,::oWSEditaEmailResult:Clone() )
	oClone:nindicentId   := ::nindicentId
	oClone:oWSuser       :=  IIF(::oWSuser = NIL , NIL ,::oWSuser:Clone() )
	oClone:oWSGetObjectShipmentsByIncidentIdResult :=  IIF(::oWSGetObjectShipmentsByIncidentIdResult = NIL , NIL ,::oWSGetObjectShipmentsByIncidentIdResult:Clone() )
	oClone:cobjectCode   := ::cobjectCode
	oClone:oWSGetObjectShipmentByObjectCodeResult :=  IIF(::oWSGetObjectShipmentByObjectCodeResult = NIL , NIL ,::oWSGetObjectShipmentByObjectCodeResult:Clone() )
	oClone:ncourrierObjectId := ::ncourrierObjectId
	oClone:oWSGetObjectShipmentByCourierObjectIdResult :=  IIF(::oWSGetObjectShipmentByCourierObjectIdResult = NIL , NIL ,::oWSGetObjectShipmentByCourierObjectIdResult:Clone() )
	oClone:oWSGetListShipimentTypesResult :=  IIF(::oWSGetListShipimentTypesResult = NIL , NIL ,::oWSGetListShipimentTypesResult:Clone() )
	oClone:oWSaction     :=  IIF(::oWSaction = NIL , NIL ,::oWSaction:Clone() )
	oClone:nreasonReturningId := ::nreasonReturningId
	oClone:creasonReturningDetail := ::creasonReturningDetail
	oClone:nincidentId   := ::nincidentId
	oClone:caddress      := ::caddress
	oClone:cnumberAddress := ::cnumberAddress
	oClone:ccomplement   := ::ccomplement
	oClone:cneighborhood := ::cneighborhood
	oClone:czip          := ::czip
	oClone:ccity         := ::ccity
	oClone:cstate        := ::cstate
	oClone:oWSAddNewAddressToResendResult :=  IIF(::oWSAddNewAddressToResendResult = NIL , NIL ,::oWSAddNewAddressToResendResult:Clone() )
	oClone:cobservationCallCenter := ::cobservationCallCenter
	oClone:oWSAddNewAddressToResendCallCenterResult :=  IIF(::oWSAddNewAddressToResendCallCenterResult = NIL , NIL ,::oWSAddNewAddressToResendCallCenterResult:Clone() )
	oClone:oWStype       :=  IIF(::oWStype = NIL , NIL ,::oWStype:Clone() )
	oClone:cchangeDate   := ::cchangeDate
	oClone:oWSChangeIncidentStatusToResult :=  IIF(::oWSChangeIncidentStatusToResult = NIL , NIL ,::oWSChangeIncidentStatusToResult:Clone() )
	oClone:nShipmentTypeId := ::nShipmentTypeId
	oClone:oWSGetEticketAvailablesResult :=  IIF(::oWSGetEticketAvailablesResult = NIL , NIL ,::oWSGetEticketAvailablesResult:Clone() )
	oClone:cemail        := ::cemail
	oClone:oWSListEmailMonitorResult :=  IIF(::oWSListEmailMonitorResult = NIL , NIL ,::oWSListEmailMonitorResult:Clone() )
	oClone:cmotivo       := ::cmotivo
	oClone:lCadastra_motivo_ReenvioResult := ::lCadastra_motivo_ReenvioResult
	oClone:lDeteleMotivoReenvioResult := ::lDeteleMotivoReenvioResult
	oClone:oWSGetListIBGEByCityResult :=  IIF(::oWSGetListIBGEByCityResult = NIL , NIL ,::oWSGetListIBGEByCityResult:Clone() )
	oClone:oWSGetListIBGEByCityStateResult :=  IIF(::oWSGetListIBGEByCityStateResult = NIL , NIL ,::oWSGetListIBGEByCityStateResult:Clone() )
	oClone:nrecno        := ::nrecno
	oClone:oWSAddIBGEResult :=  IIF(::oWSAddIBGEResult = NIL , NIL ,::oWSAddIBGEResult:Clone() )
	oClone:cdescription  := ::cdescription
	oClone:oWSGetListProductsByDescriptionResult :=  IIF(::oWSGetListProductsByDescriptionResult = NIL , NIL ,::oWSGetListProductsByDescriptionResult:Clone() )
	oClone:oWSGetListProductsByDescriptionSB1020Result :=  IIF(::oWSGetListProductsByDescriptionSB1020Result = NIL , NIL ,::oWSGetListProductsByDescriptionSB1020Result:Clone() )
	oClone:oWSGetListProductTypeResult :=  IIF(::oWSGetListProductTypeResult = NIL , NIL ,::oWSGetListProductTypeResult:Clone() )
	oClone:oWSGetListMailMoxResult :=  IIF(::oWSGetListMailMoxResult = NIL , NIL ,::oWSGetListMailMoxResult:Clone() )
	oClone:oWSGetListProductTypeByIncidentIdResult :=  IIF(::oWSGetListProductTypeByIncidentIdResult = NIL , NIL ,::oWSGetListProductTypeByIncidentIdResult:Clone() )
	oClone:oWSGetListStatesResult :=  IIF(::oWSGetListStatesResult = NIL , NIL ,::oWSGetListStatesResult:Clone() )
	oClone:czipCode      := ::czipCode
	oClone:oWSGetListAddressesByZipCodeResult :=  IIF(::oWSGetListAddressesByZipCodeResult = NIL , NIL ,::oWSGetListAddressesByZipCodeResult:Clone() )
	oClone:oWSGetAddressByZipCodeResult :=  IIF(::oWSGetAddressByZipCodeResult = NIL , NIL ,::oWSGetAddressByZipCodeResult:Clone() )
	oClone:oWSGetIncidentReturnedResult :=  IIF(::oWSGetIncidentReturnedResult = NIL , NIL ,::oWSGetIncidentReturnedResult:Clone() )
	oClone:noperationId  := ::noperationId
	oClone:oWSGetIncidentStatusByTypeResult :=  IIF(::oWSGetIncidentStatusByTypeResult = NIL , NIL ,::oWSGetIncidentStatusByTypeResult:Clone() )
	oClone:ccarCode      := ::ccarCode
	oClone:oWSGetIncidentStatusByCARCodeResult :=  IIF(::oWSGetIncidentStatusByCARCodeResult = NIL , NIL ,::oWSGetIncidentStatusByCARCodeResult:Clone() )
	oClone:nquantidade   := ::nquantidade
	oClone:nskip         := ::nskip
	oClone:oWSGetListOpenedEticketsResult :=  IIF(::oWSGetListOpenedEticketsResult = NIL , NIL ,::oWSGetListOpenedEticketsResult:Clone() )
	oClone:ceticket      := ::ceticket
	oClone:oWSGetIncidentByGeneratedEticketResult :=  IIF(::oWSGetIncidentByGeneratedEticketResult = NIL , NIL ,::oWSGetIncidentByGeneratedEticketResult:Clone() )
	oClone:oWSincident   :=  IIF(::oWSincident = NIL , NIL ,::oWSincident:Clone() )
	oClone:oWSAddIncidentByClientResult :=  IIF(::oWSAddIncidentByClientResult = NIL , NIL ,::oWSAddIncidentByClientResult:Clone() )
	oClone:oWSGenerateEticketByIncidentResult :=  IIF(::oWSGenerateEticketByIncidentResult = NIL , NIL ,::oWSGenerateEticketByIncidentResult:Clone() )
	oClone:oWSGetListLockingsResult :=  IIF(::oWSGetListLockingsResult = NIL , NIL ,::oWSGetListLockingsResult:Clone() )
	oClone:oWSGetIncidentByIncidentLockingIdResult :=  IIF(::oWSGetIncidentByIncidentLockingIdResult = NIL , NIL ,::oWSGetIncidentByIncidentLockingIdResult:Clone() )
	oClone:nlockingHistoryId := ::nlockingHistoryId
	oClone:lsinc         := ::lsinc
	oClone:lUnlockingIncidentResult := ::lUnlockingIncidentResult
	oClone:ncourierObjectId := ::ncourierObjectId
	oClone:oWSGetCourierObjectResult :=  IIF(::oWSGetCourierObjectResult = NIL , NIL ,::oWSGetCourierObjectResult:Clone() )
	oClone:oWSGetAllObjectReasonReturningResult :=  IIF(::oWSGetAllObjectReasonReturningResult = NIL , NIL ,::oWSGetAllObjectReasonReturningResult:Clone() )
	oClone:oWSGetHistoriesByCourierObjectResult :=  IIF(::oWSGetHistoriesByCourierObjectResult = NIL , NIL ,::oWSGetHistoriesByCourierObjectResult:Clone() )
	oClone:cnumero       := ::cnumero
	oClone:cSerie        := ::cSerie
	oClone:oWSGetCourierObjectByNotaFiscalSaidaResult :=  IIF(::oWSGetCourierObjectByNotaFiscalSaidaResult = NIL , NIL ,::oWSGetCourierObjectByNotaFiscalSaidaResult:Clone() )
	oClone:oWSGetCourierObjectByCodeResult :=  IIF(::oWSGetCourierObjectByCodeResult = NIL , NIL ,::oWSGetCourierObjectByCodeResult:Clone() )
	oClone:cmsn          := ::cmsn
	oClone:oWSGetCourierObjectByIncomingMsnResult :=  IIF(::oWSGetCourierObjectByIncomingMsnResult = NIL , NIL ,::oWSGetCourierObjectByIncomingMsnResult:Clone() )
	oClone:oWSGetCourierObjectByReceivedMsnResult :=  IIF(::oWSGetCourierObjectByReceivedMsnResult = NIL , NIL ,::oWSGetCourierObjectByReceivedMsnResult:Clone() )
	oClone:oWSGetObjectProblemLinkResult :=  IIF(::oWSGetObjectProblemLinkResult = NIL , NIL ,::oWSGetObjectProblemLinkResult:Clone() )
	oClone:oWSRemoveObjectProblemLinkByObjectCodeResult :=  IIF(::oWSRemoveObjectProblemLinkByObjectCodeResult = NIL , NIL ,::oWSRemoveObjectProblemLinkByObjectCodeResult:Clone() )
	oClone:oWScourierObject :=  IIF(::oWScourierObject = NIL , NIL ,::oWScourierObject:Clone() )
	oClone:oWSUpdateCourierObjectResult :=  IIF(::oWSUpdateCourierObjectResult = NIL , NIL ,::oWSUpdateCourierObjectResult:Clone() )
	oClone:oWSResetIncidentObjectReceivedByIncidentIdResult :=  IIF(::oWSResetIncidentObjectReceivedByIncidentIdResult = NIL , NIL ,::oWSResetIncidentObjectReceivedByIncidentIdResult:Clone() )
	oClone:cimei         := ::cimei
	oClone:oWSAddProblemLinkedReceivedCourierObjectResult :=  IIF(::oWSAddProblemLinkedReceivedCourierObjectResult = NIL , NIL ,::oWSAddProblemLinkedReceivedCourierObjectResult:Clone() )
	oClone:cdocument     := ::cdocument
	oClone:nproductTypeId := ::nproductTypeId
	oClone:lforceAtuSiga := ::lforceAtuSiga
	oClone:lignoreCliSiga := ::lignoreCliSiga
	oClone:oWSAddReceivedCourierObjectResult :=  IIF(::oWSAddReceivedCourierObjectResult = NIL , NIL ,::oWSAddReceivedCourierObjectResult:Clone() )
	oClone:cDe           := ::cDe
	oClone:cAte          := ::cAte
	oClone:oWSAddEticketResult :=  IIF(::oWSAddEticketResult = NIL , NIL ,::oWSAddEticketResult:Clone() )
	oClone:coperation    := ::coperation
	oClone:cname         := ::cname
	oClone:cpath         := ::cpath
	oClone:lavaliable    := ::lavaliable
	oClone:oWSAddAlterOperationResult :=  IIF(::oWSAddAlterOperationResult = NIL , NIL ,::oWSAddAlterOperationResult:Clone() )
	oClone:oWScad        :=  IIF(::oWScad = NIL , NIL ,::oWScad:Clone() )
	oClone:lSaveEmailResult := ::lSaveEmailResult
	oClone:oWSListEmailsResult :=  IIF(::oWSListEmailsResult = NIL , NIL ,::oWSListEmailsResult:Clone() )
	oClone:cUsername     := ::cUsername
	oClone:cPassword     := ::cPassword
	oClone:oWSValidateResult :=  IIF(::oWSValidateResult = NIL , NIL ,::oWSValidateResult:Clone() )
	oClone:oWSconn       :=  IIF(::oWSconn = NIL , NIL ,::oWSconn:Clone() )
	oClone:oWSLoginResult :=  IIF(::oWSLoginResult = NIL , NIL ,::oWSLoginResult:Clone() )
	oClone:oWSLogoffResult :=  IIF(::oWSLogoffResult = NIL , NIL ,::oWSLogoffResult:Clone() )
	oClone:oWSGetUserPermissionsResult :=  IIF(::oWSGetUserPermissionsResult = NIL , NIL ,::oWSGetUserPermissionsResult:Clone() )
	oClone:oWSGetListOperationsResult :=  IIF(::oWSGetListOperationsResult = NIL , NIL ,::oWSGetListOperationsResult:Clone() )
	oClone:oWSGetOperationByIdResult :=  IIF(::oWSGetOperationByIdResult = NIL , NIL ,::oWSGetOperationByIdResult:Clone() )
	oClone:oWSGetListAllOperationsResult :=  IIF(::oWSGetListAllOperationsResult = NIL , NIL ,::oWSGetListAllOperationsResult:Clone() )
	oClone:oWSGetListOperationsZZJ020Result :=  IIF(::oWSGetListOperationsZZJ020Result = NIL , NIL ,::oWSGetListOperationsZZJ020Result:Clone() )
	oClone:oWSGetListProfilesResult :=  IIF(::oWSGetListProfilesResult = NIL , NIL ,::oWSGetListProfilesResult:Clone() )
	oClone:oWSGetListModulesResult :=  IIF(::oWSGetListModulesResult = NIL , NIL ,::oWSGetListModulesResult:Clone() )
	oClone:nprofileId    := ::nprofileId
	oClone:oWSGetListModuleByProfileIdResult :=  IIF(::oWSGetListModuleByProfileIdResult = NIL , NIL ,::oWSGetListModuleByProfileIdResult:Clone() )
	oClone:oWSGetProfileByIdResult :=  IIF(::oWSGetProfileByIdResult = NIL , NIL ,::oWSGetProfileByIdResult:Clone() )
	oClone:oWSGetListIntegratorLogsResult :=  IIF(::oWSGetListIntegratorLogsResult = NIL , NIL ,::oWSGetListIntegratorLogsResult:Clone() )
	oClone:oWSGetOperationByProfileIdResult :=  IIF(::oWSGetOperationByProfileIdResult = NIL , NIL ,::oWSGetOperationByProfileIdResult:Clone() )
	oClone:oWSGetListApplicationUsersResult :=  IIF(::oWSGetListApplicationUsersResult = NIL , NIL ,::oWSGetListApplicationUsersResult:Clone() )
	oClone:nuserId       := ::nuserId
	oClone:cnovo         := ::cnovo
	oClone:cconfirm      := ::cconfirm
	oClone:oWSResetPasswordResult :=  IIF(::oWSResetPasswordResult = NIL , NIL ,::oWSResetPasswordResult:Clone() )
	oClone:nperfilId     := ::nperfilId
	oClone:lstatus       := ::lstatus
	oClone:oWSAddApplicationUserResult :=  IIF(::oWSAddApplicationUserResult = NIL , NIL ,::oWSAddApplicationUserResult:Clone() )
	oClone:lfront        := ::lfront
	oClone:cOperationCode := ::cOperationCode
	oClone:oWSModuleId   :=  IIF(::oWSModuleId = NIL , NIL ,::oWSModuleId:Clone() )
	oClone:oWSAddProfileResult :=  IIF(::oWSAddProfileResult = NIL , NIL ,::oWSAddProfileResult:Clone() )
	oClone:oWSGetEticketByIncidentIdResult :=  IIF(::oWSGetEticketByIncidentIdResult = NIL , NIL ,::oWSGetEticketByIncidentIdResult:Clone() )
	oClone:oWSGetIncidentResult :=  IIF(::oWSGetIncidentResult = NIL , NIL ,::oWSGetIncidentResult:Clone() )
	oClone:cOsId         := ::cOsId
	oClone:oWSGetIncidentByOsResult :=  IIF(::oWSGetIncidentByOsResult = NIL , NIL ,::oWSGetIncidentByOsResult:Clone() )
	oClone:ccallCenterId := ::ccallCenterId
	oClone:oWSGetIncidentByCallCenterIdResult :=  IIF(::oWSGetIncidentByCallCenterIdResult = NIL , NIL ,::oWSGetIncidentByCallCenterIdResult:Clone() )
	oClone:cPreOsId      := ::cPreOsId
	oClone:oWSGetIncidentByPreOsResult :=  IIF(::oWSGetIncidentByPreOsResult = NIL , NIL ,::oWSGetIncidentByPreOsResult:Clone() )
	oClone:oWSGetIncidentByEticketObjectCodeResult :=  IIF(::oWSGetIncidentByEticketObjectCodeResult = NIL , NIL ,::oWSGetIncidentByEticketObjectCodeResult:Clone() )
	oClone:ccpf          := ::ccpf
	oClone:oWSGetIncidentByCPFResult :=  IIF(::oWSGetIncidentByCPFResult = NIL , NIL ,::oWSGetIncidentByCPFResult:Clone() )
	oClone:oWSGetIncidentByMsnResult :=  IIF(::oWSGetIncidentByMsnResult = NIL , NIL ,::oWSGetIncidentByMsnResult:Clone() )
	oClone:nobjeto_id    := ::nobjeto_id
	oClone:oWSGetIncidentByReceivedCurrierObjectResult :=  IIF(::oWSGetIncidentByReceivedCurrierObjectResult = NIL , NIL ,::oWSGetIncidentByReceivedCurrierObjectResult:Clone() )
	oClone:oWSGetIncidentLockedResult :=  IIF(::oWSGetIncidentLockedResult = NIL , NIL ,::oWSGetIncidentLockedResult:Clone() )
=======
	oClone:oWSOPARAMCLIENT :=  IIF(::oWSOPARAMCLIENT = NIL , NIL ,::oWSOPARAMCLIENT:Clone() )
	oClone:oWSGET_CLIENTRESULT :=  IIF(::oWSGET_CLIENTRESULT = NIL , NIL ,::oWSGET_CLIENTRESULT:Clone() )
	oClone:oWSACABECZZ3  :=  IIF(::oWSACABECZZ3 = NIL , NIL ,::oWSACABECZZ3:Clone() )
	oClone:oWSAITENSSZ9  :=  IIF(::oWSAITENSSZ9 = NIL , NIL ,::oWSAITENSSZ9:Clone() )
	oClone:cGRAVACADASTRORESULT := ::cGRAVACADASTRORESULT

	// Estruturas mantidas por compatibilidade - NÃO USAR
	oClone:oWSSTRUC_PARAM_CLIENT := oClone:oWSOPARAMCLIENT
	oClone:oWSCABECALHOZZ3 := oClone:oWSACABECZZ3
	oClone:oWSITENSSZ9   := oClone:oWSAITENSSZ9
>>>>>>> .r192
Return oClone

<<<<<<< .mine
// WSDL Method EditaEmail of Service WSPublicService

WSMETHOD EditaEmail WSSEND nid WSRECEIVE oWSEditaEmailResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<EditaEmail xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("id", ::nid, nid , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += "</EditaEmail>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/EditaEmail",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSEditaEmailResult:SoapRecv( WSAdvValue( oXmlRet,"_EDITAEMAILRESPONSE:_EDITAEMAILRESULT","Email",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetObjectShipmentsByIncidentId of Service WSPublicService

WSMETHOD GetObjectShipmentsByIncidentId WSSEND nindicentId,oWSuser WSRECEIVE oWSGetObjectShipmentsByIncidentIdResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetObjectShipmentsByIncidentId xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("indicentId", ::nindicentId, nindicentId , "long", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetObjectShipmentsByIncidentId>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetObjectShipmentsByIncidentId",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetObjectShipmentsByIncidentIdResult:SoapRecv( WSAdvValue( oXmlRet,"_GETOBJECTSHIPMENTSBYINCIDENTIDRESPONSE:_GETOBJECTSHIPMENTSBYINCIDENTIDRESULT","ListObjectShipments",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetObjectShipmentByObjectCode of Service WSPublicService
=======
// WSDL Method GET_CLIENT of Service WSWSBGH
>>>>>>> .r192

<<<<<<< .mine
WSMETHOD GetObjectShipmentByObjectCode WSSEND cobjectCode,oWSuser WSRECEIVE oWSGetObjectShipmentByObjectCodeResult WSCLIENT WSPublicService
=======
WSMETHOD GET_CLIENT WSSEND oWSOPARAMCLIENT WSRECEIVE oWSGET_CLIENTRESULT WSCLIENT WSWSBGH
>>>>>>> .r192
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

<<<<<<< .mine
cSoap += '<GetObjectShipmentByObjectCode xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("objectCode", ::cobjectCode, cobjectCode , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetObjectShipmentByObjectCode>"
=======
cSoap += '<GET_CLIENT xmlns="http://172.16.0.5:8093/">'
cSoap += WSSoapValue("OPARAMCLIENT", ::oWSOPARAMCLIENT, oWSOPARAMCLIENT , "STRUC_PARAM_CLIENT", .T. , .F., 0 , NIL, .F.) 
cSoap += "</GET_CLIENT>"
>>>>>>> .r192

oXmlRet := SvcSoapCall(	Self,cSoap,; 
<<<<<<< .mine
	"http://tempuri.org/IPublicService/GetObjectShipmentByObjectCode",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")
=======
	"http://172.16.0.5:8093/GET_CLIENT",; 
	"DOCUMENT","http://172.16.0.5:8093/",,"1.031217",; 
	"http://172.16.0.5:8093/WSBGH.apw")
>>>>>>> .r192

::Init()
::oWSGET_CLIENTRESULT:SoapRecv( WSAdvValue( oXmlRet,"_GET_CLIENTRESPONSE:_GET_CLIENTRESULT","STRUC_SEND_CLIENTE",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

<<<<<<< .mine
// WSDL Method GetObjectShipmentByCourierObjectId of Service WSPublicService

WSMETHOD GetObjectShipmentByCourierObjectId WSSEND ncourrierObjectId,oWSuser WSRECEIVE oWSGetObjectShipmentByCourierObjectIdResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetObjectShipmentByCourierObjectId xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("courrierObjectId", ::ncourrierObjectId, ncourrierObjectId , "long", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetObjectShipmentByCourierObjectId>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetObjectShipmentByCourierObjectId",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetObjectShipmentByCourierObjectIdResult:SoapRecv( WSAdvValue( oXmlRet,"_GETOBJECTSHIPMENTBYCOURIEROBJECTIDRESPONSE:_GETOBJECTSHIPMENTBYCOURIEROBJECTIDRESULT","ObjectShipment",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListShipimentTypes of Service WSPublicService

WSMETHOD GetListShipimentTypes WSSEND oWSuser WSRECEIVE oWSGetListShipimentTypesResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListShipimentTypes xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListShipimentTypes>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListShipimentTypes",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListShipimentTypesResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTSHIPIMENTTYPESRESPONSE:_GETLISTSHIPIMENTTYPESRESULT","ListShipmentTypes",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method AddNewAddressToResend of Service WSPublicService
=======
// WSDL Method GRAVACADASTRO of Service WSWSBGH
>>>>>>> .r192

<<<<<<< .mine
WSMETHOD AddNewAddressToResend WSSEND oWSaction,nreasonReturningId,creasonReturningDetail,nincidentId,caddress,cnumberAddress,ccomplement,cneighborhood,czip,ccity,cstate,oWSuser WSRECEIVE oWSAddNewAddressToResendResult WSCLIENT WSPublicService
=======
WSMETHOD GRAVACADASTRO WSSEND oWSACABECZZ3,oWSAITENSSZ9 WSRECEIVE cGRAVACADASTRORESULT WSCLIENT WSWSBGH
>>>>>>> .r192
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

<<<<<<< .mine
cSoap += '<AddNewAddressToResend xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("action", ::oWSaction, oWSaction , "ActionResend", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("reasonReturningId", ::nreasonReturningId, nreasonReturningId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("reasonReturningDetail", ::creasonReturningDetail, creasonReturningDetail , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("incidentId", ::nincidentId, nincidentId , "long", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("address", ::caddress, caddress , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("numberAddress", ::cnumberAddress, cnumberAddress , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("complement", ::ccomplement, ccomplement , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("neighborhood", ::cneighborhood, cneighborhood , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("zip", ::czip, czip , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("city", ::ccity, ccity , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("state", ::cstate, cstate , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</AddNewAddressToResend>"
=======
cSoap += '<GRAVACADASTRO xmlns="http://172.16.0.5:8093/">'
cSoap += WSSoapValue("ACABECZZ3", ::oWSACABECZZ3, oWSACABECZZ3 , "CABECALHOZZ3", .T. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("AITENSSZ9", ::oWSAITENSSZ9, oWSAITENSSZ9 , "ITENSSZ9", .T. , .F., 0 , NIL, .F.) 
cSoap += "</GRAVACADASTRO>"
>>>>>>> .r192

oXmlRet := SvcSoapCall(	Self,cSoap,; 
<<<<<<< .mine
	"http://tempuri.org/IPublicService/AddNewAddressToResend",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")
=======
	"http://172.16.0.5:8093/GRAVACADASTRO",; 
	"DOCUMENT","http://172.16.0.5:8093/",,"1.031217",; 
	"http://172.16.0.5:8093/WSBGH.apw")
>>>>>>> .r192

::Init()
::cGRAVACADASTRORESULT :=  WSAdvValue( oXmlRet,"_GRAVACADASTRORESPONSE:_GRAVACADASTRORESULT:TEXT","string",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

<<<<<<< .mine
// WSDL Method AddNewAddressToResendCallCenter of Service WSPublicService

WSMETHOD AddNewAddressToResendCallCenter WSSEND oWSaction,nreasonReturningId,creasonReturningDetail,nincidentId,caddress,cnumberAddress,ccomplement,cneighborhood,czip,ccity,cstate,cobservationCallCenter,oWSuser WSRECEIVE oWSAddNewAddressToResendCallCenterResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<AddNewAddressToResendCallCenter xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("action", ::oWSaction, oWSaction , "ActionResend", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("reasonReturningId", ::nreasonReturningId, nreasonReturningId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("reasonReturningDetail", ::creasonReturningDetail, creasonReturningDetail , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("incidentId", ::nincidentId, nincidentId , "long", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("address", ::caddress, caddress , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("numberAddress", ::cnumberAddress, cnumberAddress , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("complement", ::ccomplement, ccomplement , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("neighborhood", ::cneighborhood, cneighborhood , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("zip", ::czip, czip , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("city", ::ccity, ccity , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("state", ::cstate, cstate , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("observationCallCenter", ::cobservationCallCenter, cobservationCallCenter , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</AddNewAddressToResendCallCenter>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/AddNewAddressToResendCallCenter",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSAddNewAddressToResendCallCenterResult:SoapRecv( WSAdvValue( oXmlRet,"_ADDNEWADDRESSTORESENDCALLCENTERRESPONSE:_ADDNEWADDRESSTORESENDCALLCENTERRESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method ChangeIncidentStatusTo of Service WSPublicService
=======
>>>>>>> .r192

<<<<<<< .mine
WSMETHOD ChangeIncidentStatusTo WSSEND nincidentId,oWStype,cchangeDate,oWSuser WSRECEIVE oWSChangeIncidentStatusToResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet
=======
// WSDL Data Structure STRUC_PARAM_CLIENT
>>>>>>> .r192

<<<<<<< .mine
BEGIN WSMETHOD

cSoap += '<ChangeIncidentStatusTo xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("incidentId", ::nincidentId, nincidentId , "long", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("type", ::oWStype, oWStype , "IncidentStatusType", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("changeDate", ::cchangeDate, cchangeDate , "dateTime", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</ChangeIncidentStatusTo>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/ChangeIncidentStatusTo",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSChangeIncidentStatusToResult:SoapRecv( WSAdvValue( oXmlRet,"_CHANGEINCIDENTSTATUSTORESPONSE:_CHANGEINCIDENTSTATUSTORESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetEticketAvailables of Service WSPublicService

WSMETHOD GetEticketAvailables WSSEND nShipmentTypeId,oWSuser WSRECEIVE oWSGetEticketAvailablesResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetEticketAvailables xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("ShipmentTypeId", ::nShipmentTypeId, nShipmentTypeId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetEticketAvailables>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetEticketAvailables",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetEticketAvailablesResult:SoapRecv( WSAdvValue( oXmlRet,"_GETETICKETAVAILABLESRESPONSE:_GETETICKETAVAILABLESRESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method CadastraEmailMonitor of Service WSPublicService

WSMETHOD CadastraEmailMonitor WSSEND cemail WSRECEIVE NULLPARAM WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<CadastraEmailMonitor xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("email", ::cemail, cemail , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += "</CadastraEmailMonitor>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/CadastraEmailMonitor",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method ListEmailMonitor of Service WSPublicService

WSMETHOD ListEmailMonitor WSSEND NULLPARAM WSRECEIVE oWSListEmailMonitorResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<ListEmailMonitor xmlns="http://tempuri.org/">'
cSoap += "</ListEmailMonitor>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/ListEmailMonitor",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSListEmailMonitorResult:SoapRecv( WSAdvValue( oXmlRet,"_LISTEMAILMONITORRESPONSE:_LISTEMAILMONITORRESULT","ArrayOfeticketsMonitorConfig",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method DeleteEmailMonitor of Service WSPublicService

WSMETHOD DeleteEmailMonitor WSSEND nid WSRECEIVE NULLPARAM WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<DeleteEmailMonitor xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("id", ::nid, nid , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += "</DeleteEmailMonitor>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/DeleteEmailMonitor",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method Cadastra_motivo_Reenvio of Service WSPublicService

WSMETHOD Cadastra_motivo_Reenvio WSSEND cmotivo,oWSuser WSRECEIVE lCadastra_motivo_ReenvioResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<Cadastra_motivo_Reenvio xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("motivo", ::cmotivo, cmotivo , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</Cadastra_motivo_Reenvio>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/Cadastra_motivo_Reenvio",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::lCadastra_motivo_ReenvioResult :=  WSAdvValue( oXmlRet,"_CADASTRA_MOTIVO_REENVIORESPONSE:_CADASTRA_MOTIVO_REENVIORESULT:TEXT","boolean",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method DeteleMotivoReenvio of Service WSPublicService

WSMETHOD DeteleMotivoReenvio WSSEND nid WSRECEIVE lDeteleMotivoReenvioResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<DeteleMotivoReenvio xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("id", ::nid, nid , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += "</DeteleMotivoReenvio>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/DeteleMotivoReenvio",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::lDeteleMotivoReenvioResult :=  WSAdvValue( oXmlRet,"_DETELEMOTIVOREENVIORESPONSE:_DETELEMOTIVOREENVIORESULT:TEXT","boolean",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListIBGEByCity of Service WSPublicService

WSMETHOD GetListIBGEByCity WSSEND ccity,oWSuser WSRECEIVE oWSGetListIBGEByCityResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListIBGEByCity xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("city", ::ccity, ccity , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListIBGEByCity>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListIBGEByCity",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListIBGEByCityResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTIBGEBYCITYRESPONSE:_GETLISTIBGEBYCITYRESULT","ListIBGECC2020",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListIBGEByCityState of Service WSPublicService

WSMETHOD GetListIBGEByCityState WSSEND ccity,cstate,oWSuser WSRECEIVE oWSGetListIBGEByCityStateResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListIBGEByCityState xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("city", ::ccity, ccity , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("state", ::cstate, cstate , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListIBGEByCityState>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListIBGEByCityState",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListIBGEByCityStateResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTIBGEBYCITYSTATERESPONSE:_GETLISTIBGEBYCITYSTATERESULT","ListIBGECC2020",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method AddIBGE of Service WSPublicService

WSMETHOD AddIBGE WSSEND nincidentId,nrecno,oWSuser WSRECEIVE oWSAddIBGEResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<AddIBGE xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("incidentId", ::nincidentId, nincidentId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("recno", ::nrecno, nrecno , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</AddIBGE>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/AddIBGE",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSAddIBGEResult:SoapRecv( WSAdvValue( oXmlRet,"_ADDIBGERESPONSE:_ADDIBGERESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListProductsByDescription of Service WSPublicService

WSMETHOD GetListProductsByDescription WSSEND cdescription,oWSuser WSRECEIVE oWSGetListProductsByDescriptionResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListProductsByDescription xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("description", ::cdescription, cdescription , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListProductsByDescription>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListProductsByDescription",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListProductsByDescriptionResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTPRODUCTSBYDESCRIPTIONRESPONSE:_GETLISTPRODUCTSBYDESCRIPTIONRESULT","ListProducts",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListProductsByDescriptionSB1020 of Service WSPublicService

WSMETHOD GetListProductsByDescriptionSB1020 WSSEND cdescription,nincidentId,oWSuser WSRECEIVE oWSGetListProductsByDescriptionSB1020Result WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListProductsByDescriptionSB1020 xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("description", ::cdescription, cdescription , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("incidentId", ::nincidentId, nincidentId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListProductsByDescriptionSB1020>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListProductsByDescriptionSB1020",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListProductsByDescriptionSB1020Result:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTPRODUCTSBYDESCRIPTIONSB1020RESPONSE:_GETLISTPRODUCTSBYDESCRIPTIONSB1020RESULT","ListProductsSB1020",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListProductType of Service WSPublicService

WSMETHOD GetListProductType WSSEND oWSuser WSRECEIVE oWSGetListProductTypeResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListProductType xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListProductType>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListProductType",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListProductTypeResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTPRODUCTTYPERESPONSE:_GETLISTPRODUCTTYPERESULT","ListProductType",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListMailMox of Service WSPublicService

WSMETHOD GetListMailMox WSSEND oWSuser WSRECEIVE oWSGetListMailMoxResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListMailMox xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListMailMox>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListMailMox",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListMailMoxResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTMAILMOXRESPONSE:_GETLISTMAILMOXRESULT","ListMailBox",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListProductTypeByIncidentId of Service WSPublicService

WSMETHOD GetListProductTypeByIncidentId WSSEND nincidentId,oWSuser WSRECEIVE oWSGetListProductTypeByIncidentIdResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListProductTypeByIncidentId xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("incidentId", ::nincidentId, nincidentId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListProductTypeByIncidentId>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListProductTypeByIncidentId",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListProductTypeByIncidentIdResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTPRODUCTTYPEBYINCIDENTIDRESPONSE:_GETLISTPRODUCTTYPEBYINCIDENTIDRESULT","ListProductType",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListStates of Service WSPublicService

WSMETHOD GetListStates WSSEND oWSuser WSRECEIVE oWSGetListStatesResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListStates xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListStates>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListStates",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListStatesResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTSTATESRESPONSE:_GETLISTSTATESRESULT","ListStates",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListAddressesByZipCode of Service WSPublicService

WSMETHOD GetListAddressesByZipCode WSSEND czipCode,oWSuser WSRECEIVE oWSGetListAddressesByZipCodeResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListAddressesByZipCode xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("zipCode", ::czipCode, czipCode , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListAddressesByZipCode>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListAddressesByZipCode",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListAddressesByZipCodeResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTADDRESSESBYZIPCODERESPONSE:_GETLISTADDRESSESBYZIPCODERESULT","ListAddresses",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetAddressByZipCode of Service WSPublicService

WSMETHOD GetAddressByZipCode WSSEND czipCode,oWSuser WSRECEIVE oWSGetAddressByZipCodeResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetAddressByZipCode xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("zipCode", ::czipCode, czipCode , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetAddressByZipCode>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetAddressByZipCode",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetAddressByZipCodeResult:SoapRecv( WSAdvValue( oXmlRet,"_GETADDRESSBYZIPCODERESPONSE:_GETADDRESSBYZIPCODERESULT","Address",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentReturned of Service WSPublicService

WSMETHOD GetIncidentReturned WSSEND oWSuser WSRECEIVE oWSGetIncidentReturnedResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentReturned xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentReturned>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentReturned",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentReturnedResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTRETURNEDRESPONSE:_GETINCIDENTRETURNEDRESULT","ListIncidents",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentStatusByType of Service WSPublicService

WSMETHOD GetIncidentStatusByType WSSEND oWStype,noperationId,oWSuser WSRECEIVE oWSGetIncidentStatusByTypeResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentStatusByType xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("type", ::oWStype, oWStype , "IncidentStatusType", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("operationId", ::noperationId, noperationId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentStatusByType>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentStatusByType",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentStatusByTypeResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTSTATUSBYTYPERESPONSE:_GETINCIDENTSTATUSBYTYPERESULT","IncidentStatus",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentStatusByCARCode of Service WSPublicService

WSMETHOD GetIncidentStatusByCARCode WSSEND ccarCode,oWSuser WSRECEIVE oWSGetIncidentStatusByCARCodeResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentStatusByCARCode xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("carCode", ::ccarCode, ccarCode , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentStatusByCARCode>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentStatusByCARCode",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentStatusByCARCodeResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTSTATUSBYCARCODERESPONSE:_GETINCIDENTSTATUSBYCARCODERESULT","IncidentStatus",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListOpenedEtickets of Service WSPublicService

WSMETHOD GetListOpenedEtickets WSSEND nquantidade,nskip,oWSuser WSRECEIVE oWSGetListOpenedEticketsResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListOpenedEtickets xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("quantidade", ::nquantidade, nquantidade , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("skip", ::nskip, nskip , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListOpenedEtickets>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListOpenedEtickets",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListOpenedEticketsResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTOPENEDETICKETSRESPONSE:_GETLISTOPENEDETICKETSRESULT","ListEtickets",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentByGeneratedEticket of Service WSPublicService

WSMETHOD GetIncidentByGeneratedEticket WSSEND ceticket,oWSuser WSRECEIVE oWSGetIncidentByGeneratedEticketResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentByGeneratedEticket xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("eticket", ::ceticket, ceticket , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentByGeneratedEticket>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentByGeneratedEticket",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentByGeneratedEticketResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTBYGENERATEDETICKETRESPONSE:_GETINCIDENTBYGENERATEDETICKETRESULT","ListIncidents",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method AddIncidentByClient of Service WSPublicService

WSMETHOD AddIncidentByClient WSSEND oWSincident,oWSuser WSRECEIVE oWSAddIncidentByClientResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<AddIncidentByClient xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("incident", ::oWSincident, oWSincident , "Incident", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</AddIncidentByClient>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/AddIncidentByClient",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSAddIncidentByClientResult:SoapRecv( WSAdvValue( oXmlRet,"_ADDINCIDENTBYCLIENTRESPONSE:_ADDINCIDENTBYCLIENTRESULT","Incident",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GenerateEticketByIncident of Service WSPublicService

WSMETHOD GenerateEticketByIncident WSSEND nincidentId,oWSuser WSRECEIVE oWSGenerateEticketByIncidentResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GenerateEticketByIncident xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("incidentId", ::nincidentId, nincidentId , "long", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GenerateEticketByIncident>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GenerateEticketByIncident",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGenerateEticketByIncidentResult:SoapRecv( WSAdvValue( oXmlRet,"_GENERATEETICKETBYINCIDENTRESPONSE:_GENERATEETICKETBYINCIDENTRESULT","Incident",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListLockings of Service WSPublicService

WSMETHOD GetListLockings WSSEND oWSuser WSRECEIVE oWSGetListLockingsResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListLockings xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListLockings>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListLockings",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListLockingsResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTLOCKINGSRESPONSE:_GETLISTLOCKINGSRESULT","ListIncidentLockingHistory",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentByIncidentLockingId of Service WSPublicService

WSMETHOD GetIncidentByIncidentLockingId WSSEND nid,oWSuser WSRECEIVE oWSGetIncidentByIncidentLockingIdResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentByIncidentLockingId xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("id", ::nid, nid , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentByIncidentLockingId>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentByIncidentLockingId",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentByIncidentLockingIdResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTBYINCIDENTLOCKINGIDRESPONSE:_GETINCIDENTBYINCIDENTLOCKINGIDRESULT","Incident",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method UnlockingIncident of Service WSPublicService

WSMETHOD UnlockingIncident WSSEND nlockingHistoryId,lsinc,oWSuser WSRECEIVE lUnlockingIncidentResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<UnlockingIncident xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("lockingHistoryId", ::nlockingHistoryId, nlockingHistoryId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("sinc", ::lsinc, lsinc , "boolean", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</UnlockingIncident>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/UnlockingIncident",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::lUnlockingIncidentResult :=  WSAdvValue( oXmlRet,"_UNLOCKINGINCIDENTRESPONSE:_UNLOCKINGINCIDENTRESULT:TEXT","boolean",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetCourierObject of Service WSPublicService

WSMETHOD GetCourierObject WSSEND ncourierObjectId,oWSuser WSRECEIVE oWSGetCourierObjectResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetCourierObject xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("courierObjectId", ::ncourierObjectId, ncourierObjectId , "long", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetCourierObject>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetCourierObject",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetCourierObjectResult:SoapRecv( WSAdvValue( oXmlRet,"_GETCOURIEROBJECTRESPONSE:_GETCOURIEROBJECTRESULT","CourierObject",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetAllObjectReasonReturning of Service WSPublicService

WSMETHOD GetAllObjectReasonReturning WSSEND oWSuser WSRECEIVE oWSGetAllObjectReasonReturningResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetAllObjectReasonReturning xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetAllObjectReasonReturning>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetAllObjectReasonReturning",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetAllObjectReasonReturningResult:SoapRecv( WSAdvValue( oXmlRet,"_GETALLOBJECTREASONRETURNINGRESPONSE:_GETALLOBJECTREASONRETURNINGRESULT","ListObjectReasonReturning",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetHistoriesByCourierObject of Service WSPublicService

WSMETHOD GetHistoriesByCourierObject WSSEND ncourierObjectId,oWSuser WSRECEIVE oWSGetHistoriesByCourierObjectResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetHistoriesByCourierObject xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("courierObjectId", ::ncourierObjectId, ncourierObjectId , "long", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetHistoriesByCourierObject>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetHistoriesByCourierObject",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetHistoriesByCourierObjectResult:SoapRecv( WSAdvValue( oXmlRet,"_GETHISTORIESBYCOURIEROBJECTRESPONSE:_GETHISTORIESBYCOURIEROBJECTRESULT","ListReturnedCourierObjectHistory",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetCourierObjectByNotaFiscalSaida of Service WSPublicService

WSMETHOD GetCourierObjectByNotaFiscalSaida WSSEND cnumero,cSerie,oWSuser WSRECEIVE oWSGetCourierObjectByNotaFiscalSaidaResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetCourierObjectByNotaFiscalSaida xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("numero", ::cnumero, cnumero , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("Serie", ::cSerie, cSerie , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetCourierObjectByNotaFiscalSaida>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetCourierObjectByNotaFiscalSaida",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetCourierObjectByNotaFiscalSaidaResult:SoapRecv( WSAdvValue( oXmlRet,"_GETCOURIEROBJECTBYNOTAFISCALSAIDARESPONSE:_GETCOURIEROBJECTBYNOTAFISCALSAIDARESULT","ListCourierObjects",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetCourierObjectByCode of Service WSPublicService

WSMETHOD GetCourierObjectByCode WSSEND cobjectCode,oWSuser WSRECEIVE oWSGetCourierObjectByCodeResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetCourierObjectByCode xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("objectCode", ::cobjectCode, cobjectCode , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetCourierObjectByCode>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetCourierObjectByCode",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetCourierObjectByCodeResult:SoapRecv( WSAdvValue( oXmlRet,"_GETCOURIEROBJECTBYCODERESPONSE:_GETCOURIEROBJECTBYCODERESULT","ListCourierObjects",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetCourierObjectByIncomingMsn of Service WSPublicService

WSMETHOD GetCourierObjectByIncomingMsn WSSEND cmsn,oWSuser WSRECEIVE oWSGetCourierObjectByIncomingMsnResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetCourierObjectByIncomingMsn xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("msn", ::cmsn, cmsn , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetCourierObjectByIncomingMsn>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetCourierObjectByIncomingMsn",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetCourierObjectByIncomingMsnResult:SoapRecv( WSAdvValue( oXmlRet,"_GETCOURIEROBJECTBYINCOMINGMSNRESPONSE:_GETCOURIEROBJECTBYINCOMINGMSNRESULT","ListCourierObjects",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetCourierObjectByReceivedMsn of Service WSPublicService

WSMETHOD GetCourierObjectByReceivedMsn WSSEND cmsn,oWSuser WSRECEIVE oWSGetCourierObjectByReceivedMsnResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetCourierObjectByReceivedMsn xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("msn", ::cmsn, cmsn , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetCourierObjectByReceivedMsn>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetCourierObjectByReceivedMsn",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetCourierObjectByReceivedMsnResult:SoapRecv( WSAdvValue( oXmlRet,"_GETCOURIEROBJECTBYRECEIVEDMSNRESPONSE:_GETCOURIEROBJECTBYRECEIVEDMSNRESULT","ListCourierObjects",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetObjectProblemLink of Service WSPublicService

WSMETHOD GetObjectProblemLink WSSEND oWSuser WSRECEIVE oWSGetObjectProblemLinkResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetObjectProblemLink xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetObjectProblemLink>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetObjectProblemLink",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetObjectProblemLinkResult:SoapRecv( WSAdvValue( oXmlRet,"_GETOBJECTPROBLEMLINKRESPONSE:_GETOBJECTPROBLEMLINKRESULT","ListCourierObjects",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method RemoveObjectProblemLinkByObjectCode of Service WSPublicService

WSMETHOD RemoveObjectProblemLinkByObjectCode WSSEND cobjectCode,oWSuser WSRECEIVE oWSRemoveObjectProblemLinkByObjectCodeResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<RemoveObjectProblemLinkByObjectCode xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("objectCode", ::cobjectCode, cobjectCode , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</RemoveObjectProblemLinkByObjectCode>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/RemoveObjectProblemLinkByObjectCode",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSRemoveObjectProblemLinkByObjectCodeResult:SoapRecv( WSAdvValue( oXmlRet,"_REMOVEOBJECTPROBLEMLINKBYOBJECTCODERESPONSE:_REMOVEOBJECTPROBLEMLINKBYOBJECTCODERESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method UpdateCourierObject of Service WSPublicService

WSMETHOD UpdateCourierObject WSSEND oWScourierObject,oWSuser WSRECEIVE oWSUpdateCourierObjectResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<UpdateCourierObject xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("courierObject", ::oWScourierObject, oWScourierObject , "CourierObject", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</UpdateCourierObject>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/UpdateCourierObject",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSUpdateCourierObjectResult:SoapRecv( WSAdvValue( oXmlRet,"_UPDATECOURIEROBJECTRESPONSE:_UPDATECOURIEROBJECTRESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method ResetIncidentObjectReceivedByIncidentId of Service WSPublicService

WSMETHOD ResetIncidentObjectReceivedByIncidentId WSSEND nincidentId,oWSuser WSRECEIVE oWSResetIncidentObjectReceivedByIncidentIdResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<ResetIncidentObjectReceivedByIncidentId xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("incidentId", ::nincidentId, nincidentId , "long", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</ResetIncidentObjectReceivedByIncidentId>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/ResetIncidentObjectReceivedByIncidentId",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSResetIncidentObjectReceivedByIncidentIdResult:SoapRecv( WSAdvValue( oXmlRet,"_RESETINCIDENTOBJECTRECEIVEDBYINCIDENTIDRESPONSE:_RESETINCIDENTOBJECTRECEIVEDBYINCIDENTIDRESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method AddProblemLinkedReceivedCourierObject of Service WSPublicService

WSMETHOD AddProblemLinkedReceivedCourierObject WSSEND cobjectCode,noperationId,ceTicket,cimei,cmsn,oWSuser WSRECEIVE oWSAddProblemLinkedReceivedCourierObjectResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<AddProblemLinkedReceivedCourierObject xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("objectCode", ::cobjectCode, cobjectCode , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("operationId", ::noperationId, noperationId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("eTicket", ::ceTicket, ceTicket , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("imei", ::cimei, cimei , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("msn", ::cmsn, cmsn , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</AddProblemLinkedReceivedCourierObject>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/AddProblemLinkedReceivedCourierObject",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSAddProblemLinkedReceivedCourierObjectResult:SoapRecv( WSAdvValue( oXmlRet,"_ADDPROBLEMLINKEDRECEIVEDCOURIEROBJECTRESPONSE:_ADDPROBLEMLINKEDRECEIVEDCOURIEROBJECTRESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method AddReceivedCourierObject of Service WSPublicService

WSMETHOD AddReceivedCourierObject WSSEND nincidentId,cobjectCode,cdocument,cimei,cmsn,nproductTypeId,ccarCode,lforceAtuSiga,lignoreCliSiga,oWSuser WSRECEIVE oWSAddReceivedCourierObjectResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<AddReceivedCourierObject xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("incidentId", ::nincidentId, nincidentId , "long", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("objectCode", ::cobjectCode, cobjectCode , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("document", ::cdocument, cdocument , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("imei", ::cimei, cimei , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("msn", ::cmsn, cmsn , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("productTypeId", ::nproductTypeId, nproductTypeId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("carCode", ::ccarCode, ccarCode , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("forceAtuSiga", ::lforceAtuSiga, lforceAtuSiga , "boolean", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("ignoreCliSiga", ::lignoreCliSiga, lignoreCliSiga , "boolean", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</AddReceivedCourierObject>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/AddReceivedCourierObject",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSAddReceivedCourierObjectResult:SoapRecv( WSAdvValue( oXmlRet,"_ADDRECEIVEDCOURIEROBJECTRESPONSE:_ADDRECEIVEDCOURIEROBJECTRESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method AddEticket of Service WSPublicService

WSMETHOD AddEticket WSSEND cDe,cAte,nShipmentTypeId,oWSuser WSRECEIVE oWSAddEticketResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<AddEticket xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("De", ::cDe, cDe , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("Ate", ::cAte, cAte , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("ShipmentTypeId", ::nShipmentTypeId, nShipmentTypeId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</AddEticket>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/AddEticket",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSAddEticketResult:SoapRecv( WSAdvValue( oXmlRet,"_ADDETICKETRESPONSE:_ADDETICKETRESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method AddAlterOperation of Service WSPublicService

WSMETHOD AddAlterOperation WSSEND noperationId,coperation,cname,cpath,lavaliable,oWSuser WSRECEIVE oWSAddAlterOperationResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<AddAlterOperation xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("operationId", ::noperationId, noperationId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("operation", ::coperation, coperation , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("name", ::cname, cname , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("path", ::cpath, cpath , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("avaliable", ::lavaliable, lavaliable , "boolean", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</AddAlterOperation>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/AddAlterOperation",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSAddAlterOperationResult:SoapRecv( WSAdvValue( oXmlRet,"_ADDALTEROPERATIONRESPONSE:_ADDALTEROPERATIONRESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method SaveEmail of Service WSPublicService

WSMETHOD SaveEmail WSSEND oWScad WSRECEIVE lSaveEmailResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<SaveEmail xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("cad", ::oWScad, oWScad , "Email", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</SaveEmail>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/SaveEmail",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::lSaveEmailResult   :=  WSAdvValue( oXmlRet,"_SAVEEMAILRESPONSE:_SAVEEMAILRESULT:TEXT","boolean",NIL,NIL,NIL,NIL,NIL,NIL) 

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method ListEmails of Service WSPublicService

WSMETHOD ListEmails WSSEND NULLPARAM WSRECEIVE oWSListEmailsResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<ListEmails xmlns="http://tempuri.org/">'
cSoap += "</ListEmails>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/ListEmails",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSListEmailsResult:SoapRecv( WSAdvValue( oXmlRet,"_LISTEMAILSRESPONSE:_LISTEMAILSRESULT","ArrayOfEmail",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method DeleteEmail of Service WSPublicService

WSMETHOD DeleteEmail WSSEND nid WSRECEIVE NULLPARAM WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<DeleteEmail xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("id", ::nid, nid , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += "</DeleteEmail>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/DeleteEmail",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method Validate of Service WSPublicService

WSMETHOD Validate WSSEND cUsername,cPassword WSRECEIVE oWSValidateResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<Validate xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("Username", ::cUsername, cUsername , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("Password", ::cPassword, cPassword , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += "</Validate>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/Validate",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSValidateResult:SoapRecv( WSAdvValue( oXmlRet,"_VALIDATERESPONSE:_VALIDATERESULT","ServiceConnection",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method Login of Service WSPublicService

WSMETHOD Login WSSEND oWSconn,cusername,cpassword WSRECEIVE oWSLoginResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<Login xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("conn", ::oWSconn, oWSconn , "ServiceConnection", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("username", ::cusername, cusername , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("password", ::cpassword, cpassword , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += "</Login>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/Login",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSLoginResult:SoapRecv( WSAdvValue( oXmlRet,"_LOGINRESPONSE:_LOGINRESULT","ApplicationUser",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method Logoff of Service WSPublicService

WSMETHOD Logoff WSSEND NULLPARAM WSRECEIVE oWSLogoffResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<Logoff xmlns="http://tempuri.org/">'
cSoap += "</Logoff>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/Logoff",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSLogoffResult:SoapRecv( WSAdvValue( oXmlRet,"_LOGOFFRESPONSE:_LOGOFFRESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetUserPermissions of Service WSPublicService

WSMETHOD GetUserPermissions WSSEND oWSuser WSRECEIVE oWSGetUserPermissionsResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetUserPermissions xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetUserPermissions>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetUserPermissions",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetUserPermissionsResult:SoapRecv( WSAdvValue( oXmlRet,"_GETUSERPERMISSIONSRESPONSE:_GETUSERPERMISSIONSRESULT","UserPermissions",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListOperations of Service WSPublicService

WSMETHOD GetListOperations WSSEND oWSuser WSRECEIVE oWSGetListOperationsResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListOperations xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListOperations>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListOperations",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListOperationsResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTOPERATIONSRESPONSE:_GETLISTOPERATIONSRESULT","ListOperations",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetOperationById of Service WSPublicService

WSMETHOD GetOperationById WSSEND noperationId,oWSuser WSRECEIVE oWSGetOperationByIdResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetOperationById xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("operationId", ::noperationId, noperationId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetOperationById>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetOperationById",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetOperationByIdResult:SoapRecv( WSAdvValue( oXmlRet,"_GETOPERATIONBYIDRESPONSE:_GETOPERATIONBYIDRESULT","Operation",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListAllOperations of Service WSPublicService

WSMETHOD GetListAllOperations WSSEND oWSuser WSRECEIVE oWSGetListAllOperationsResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListAllOperations xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListAllOperations>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListAllOperations",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListAllOperationsResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTALLOPERATIONSRESPONSE:_GETLISTALLOPERATIONSRESULT","ListOperations",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListOperationsZZJ020 of Service WSPublicService

WSMETHOD GetListOperationsZZJ020 WSSEND oWSuser WSRECEIVE oWSGetListOperationsZZJ020Result WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListOperationsZZJ020 xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListOperationsZZJ020>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListOperationsZZJ020",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListOperationsZZJ020Result:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTOPERATIONSZZJ020RESPONSE:_GETLISTOPERATIONSZZJ020RESULT","ListOperationsZZJ020",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListProfiles of Service WSPublicService

WSMETHOD GetListProfiles WSSEND oWSuser WSRECEIVE oWSGetListProfilesResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListProfiles xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListProfiles>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListProfiles",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListProfilesResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTPROFILESRESPONSE:_GETLISTPROFILESRESULT","ListProfiles",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListModules of Service WSPublicService

WSMETHOD GetListModules WSSEND oWSuser WSRECEIVE oWSGetListModulesResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListModules xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListModules>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListModules",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListModulesResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTMODULESRESPONSE:_GETLISTMODULESRESULT","ListModules",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListModuleByProfileId of Service WSPublicService

WSMETHOD GetListModuleByProfileId WSSEND nprofileId,oWSuser WSRECEIVE oWSGetListModuleByProfileIdResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListModuleByProfileId xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("profileId", ::nprofileId, nprofileId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListModuleByProfileId>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListModuleByProfileId",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListModuleByProfileIdResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTMODULEBYPROFILEIDRESPONSE:_GETLISTMODULEBYPROFILEIDRESULT","ListModules",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetProfileById of Service WSPublicService

WSMETHOD GetProfileById WSSEND nprofileId,oWSuser WSRECEIVE oWSGetProfileByIdResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetProfileById xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("profileId", ::nprofileId, nprofileId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetProfileById>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetProfileById",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetProfileByIdResult:SoapRecv( WSAdvValue( oXmlRet,"_GETPROFILEBYIDRESPONSE:_GETPROFILEBYIDRESULT","ListProfiles",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListIntegratorLogs of Service WSPublicService

WSMETHOD GetListIntegratorLogs WSSEND oWSuser WSRECEIVE oWSGetListIntegratorLogsResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListIntegratorLogs xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListIntegratorLogs>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListIntegratorLogs",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListIntegratorLogsResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTINTEGRATORLOGSRESPONSE:_GETLISTINTEGRATORLOGSRESULT","ListIntegratorLogs",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetOperationByProfileId of Service WSPublicService

WSMETHOD GetOperationByProfileId WSSEND nprofileId,oWSuser WSRECEIVE oWSGetOperationByProfileIdResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetOperationByProfileId xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("profileId", ::nprofileId, nprofileId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetOperationByProfileId>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetOperationByProfileId",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetOperationByProfileIdResult:SoapRecv( WSAdvValue( oXmlRet,"_GETOPERATIONBYPROFILEIDRESPONSE:_GETOPERATIONBYPROFILEIDRESULT","Operation",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetListApplicationUsers of Service WSPublicService

WSMETHOD GetListApplicationUsers WSSEND oWSuser WSRECEIVE oWSGetListApplicationUsersResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetListApplicationUsers xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetListApplicationUsers>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetListApplicationUsers",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetListApplicationUsersResult:SoapRecv( WSAdvValue( oXmlRet,"_GETLISTAPPLICATIONUSERSRESPONSE:_GETLISTAPPLICATIONUSERSRESULT","ListApplicationUsers",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method ResetPassword of Service WSPublicService

WSMETHOD ResetPassword WSSEND nuserId,cnovo,cconfirm,oWSuser WSRECEIVE oWSResetPasswordResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<ResetPassword xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("userId", ::nuserId, nuserId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("novo", ::cnovo, cnovo , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("confirm", ::cconfirm, cconfirm , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</ResetPassword>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/ResetPassword",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSResetPasswordResult:SoapRecv( WSAdvValue( oXmlRet,"_RESETPASSWORDRESPONSE:_RESETPASSWORDRESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method AddApplicationUser of Service WSPublicService

WSMETHOD AddApplicationUser WSSEND cname,cusername,cpassword,cconfirm,nperfilId,lstatus,nuserId,oWSuser WSRECEIVE oWSAddApplicationUserResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<AddApplicationUser xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("name", ::cname, cname , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("username", ::cusername, cusername , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("password", ::cpassword, cpassword , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("confirm", ::cconfirm, cconfirm , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("perfilId", ::nperfilId, nperfilId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("status", ::lstatus, lstatus , "boolean", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("userId", ::nuserId, nuserId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</AddApplicationUser>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/AddApplicationUser",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSAddApplicationUserResult:SoapRecv( WSAdvValue( oXmlRet,"_ADDAPPLICATIONUSERRESPONSE:_ADDAPPLICATIONUSERRESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method AddProfile of Service WSPublicService

WSMETHOD AddProfile WSSEND cName,lfront,cOperationCode,oWSModuleId,nprofileId,oWSuser WSRECEIVE oWSAddProfileResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<AddProfile xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("Name", ::cName, cName , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("front", ::lfront, lfront , "boolean", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("OperationCode", ::cOperationCode, cOperationCode , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("ModuleId", ::oWSModuleId, oWSModuleId , "ArrayOfint", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("profileId", ::nprofileId, nprofileId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</AddProfile>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/AddProfile",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSAddProfileResult:SoapRecv( WSAdvValue( oXmlRet,"_ADDPROFILERESPONSE:_ADDPROFILERESULT","StatusResult",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetEticketByIncidentId of Service WSPublicService

WSMETHOD GetEticketByIncidentId WSSEND nincidentId,oWSuser WSRECEIVE oWSGetEticketByIncidentIdResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetEticketByIncidentId xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("incidentId", ::nincidentId, nincidentId , "int", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetEticketByIncidentId>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetEticketByIncidentId",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetEticketByIncidentIdResult:SoapRecv( WSAdvValue( oXmlRet,"_GETETICKETBYINCIDENTIDRESPONSE:_GETETICKETBYINCIDENTIDRESULT","Eticket",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncident of Service WSPublicService

WSMETHOD GetIncident WSSEND nincidentId,oWSuser WSRECEIVE oWSGetIncidentResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncident xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("incidentId", ::nincidentId, nincidentId , "long", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncident>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncident",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTRESPONSE:_GETINCIDENTRESULT","Incident",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentByOs of Service WSPublicService

WSMETHOD GetIncidentByOs WSSEND cOsId,oWSuser WSRECEIVE oWSGetIncidentByOsResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentByOs xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("OsId", ::cOsId, cOsId , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentByOs>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentByOs",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentByOsResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTBYOSRESPONSE:_GETINCIDENTBYOSRESULT","ListIncidents",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentByCallCenterId of Service WSPublicService

WSMETHOD GetIncidentByCallCenterId WSSEND ccallCenterId,oWStype,oWSuser WSRECEIVE oWSGetIncidentByCallCenterIdResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentByCallCenterId xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("callCenterId", ::ccallCenterId, ccallCenterId , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("type", ::oWStype, oWStype , "IncidentType", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentByCallCenterId>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentByCallCenterId",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentByCallCenterIdResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTBYCALLCENTERIDRESPONSE:_GETINCIDENTBYCALLCENTERIDRESULT","ListIncidents",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentByPreOs of Service WSPublicService

WSMETHOD GetIncidentByPreOs WSSEND cPreOsId,oWStype,oWSuser WSRECEIVE oWSGetIncidentByPreOsResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentByPreOs xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("PreOsId", ::cPreOsId, cPreOsId , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("type", ::oWStype, oWStype , "IncidentType", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentByPreOs>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentByPreOs",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentByPreOsResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTBYPREOSRESPONSE:_GETINCIDENTBYPREOSRESULT","ListIncidents",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentByEticketObjectCode of Service WSPublicService

WSMETHOD GetIncidentByEticketObjectCode WSSEND cobjectCode,oWStype,oWSuser WSRECEIVE oWSGetIncidentByEticketObjectCodeResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentByEticketObjectCode xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("objectCode", ::cobjectCode, cobjectCode , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("type", ::oWStype, oWStype , "IncidentType", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentByEticketObjectCode>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentByEticketObjectCode",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentByEticketObjectCodeResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTBYETICKETOBJECTCODERESPONSE:_GETINCIDENTBYETICKETOBJECTCODERESULT","ListIncidents",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentByCPF of Service WSPublicService

WSMETHOD GetIncidentByCPF WSSEND ccpf,oWStype,oWSuser WSRECEIVE oWSGetIncidentByCPFResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentByCPF xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("cpf", ::ccpf, ccpf , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("type", ::oWStype, oWStype , "IncidentType", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentByCPF>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentByCPF",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentByCPFResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTBYCPFRESPONSE:_GETINCIDENTBYCPFRESULT","ListIncidents",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentByMsn of Service WSPublicService

WSMETHOD GetIncidentByMsn WSSEND cmsn,oWStype,oWSuser WSRECEIVE oWSGetIncidentByMsnResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentByMsn xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("msn", ::cmsn, cmsn , "string", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("type", ::oWStype, oWStype , "IncidentType", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentByMsn>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentByMsn",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentByMsnResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTBYMSNRESPONSE:_GETINCIDENTBYMSNRESULT","ListIncidents",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentByReceivedCurrierObject of Service WSPublicService

WSMETHOD GetIncidentByReceivedCurrierObject WSSEND nobjeto_id,oWSuser WSRECEIVE oWSGetIncidentByReceivedCurrierObjectResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentByReceivedCurrierObject xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("objeto_id", ::nobjeto_id, nobjeto_id , "long", .F. , .F., 0 , NIL, .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentByReceivedCurrierObject>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentByReceivedCurrierObject",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentByReceivedCurrierObjectResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTBYRECEIVEDCURRIEROBJECTRESPONSE:_GETINCIDENTBYRECEIVEDCURRIEROBJECTRESULT","ListIncidents",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.

// WSDL Method GetIncidentLocked of Service WSPublicService

WSMETHOD GetIncidentLocked WSSEND oWStype,oWSuser WSRECEIVE oWSGetIncidentLockedResult WSCLIENT WSPublicService
Local cSoap := "" , oXmlRet

BEGIN WSMETHOD

cSoap += '<GetIncidentLocked xmlns="http://tempuri.org/">'
cSoap += WSSoapValue("type", ::oWStype, oWStype , "IncidentType", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += WSSoapValue("user", ::oWSuser, oWSuser , "ApplicationUser", .F. , .F., 0 , "http://tempuri.org/", .F.) 
cSoap += "</GetIncidentLocked>"

oXmlRet := SvcSoapCall(	Self,cSoap,; 
	"http://tempuri.org/IPublicService/GetIncidentLocked",; 
	"DOCUMENT","http://tempuri.org/",,,; 
	"http://172.16.0.7:9091/PublicService.svc")

::Init()
::oWSGetIncidentLockedResult:SoapRecv( WSAdvValue( oXmlRet,"_GETINCIDENTLOCKEDRESPONSE:_GETINCIDENTLOCKEDRESULT","ListIncidents",NIL,NIL,NIL,NIL,NIL,NIL) )

END WSMETHOD

oXmlRet := NIL
Return .T.


// WSDL Data Structure Email

WSSTRUCT PublicService_Email
	WSDATA   nID                       AS int OPTIONAL
	WSDATA   cdominio                  AS string OPTIONAL
	WSDATA   cemail                    AS string OPTIONAL
	WSDATA   cextensoes                AS string OPTIONAL
	WSDATA   cpasta                    AS string OPTIONAL
	WSDATA   csenha                    AS string OPTIONAL
=======
WSSTRUCT WSBGH_STRUC_PARAM_CLIENT
	WSDATA   cCCPF                     AS string OPTIONAL
	WSDATA   cCVERATU                  AS string OPTIONAL
	WSDATA   oWSOCADCLIENTE            AS WSBGH_STRUC_CAD_CLIENTE OPTIONAL
>>>>>>> .r192
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
<<<<<<< .mine
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_Email
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_Email
Return

WSMETHOD CLONE WSCLIENT PublicService_Email
	Local oClone := PublicService_Email():NEW()
	oClone:nID                  := ::nID
	oClone:cdominio             := ::cdominio
	oClone:cemail               := ::cemail
	oClone:cextensoes           := ::cextensoes
	oClone:cpasta               := ::cpasta
	oClone:csenha               := ::csenha
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_Email
	Local cSoap := ""
	cSoap += WSSoapValue("ID", ::nID, ::nID , "int", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("dominio", ::cdominio, ::cdominio , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("email", ::cemail, ::cemail , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("extensoes", ::cextensoes, ::cextensoes , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("pasta", ::cpasta, ::cpasta , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("senha", ::csenha, ::csenha , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_Email
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::nID                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cdominio           :=  WSAdvValue( oResponse,"_DOMINIO","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cemail             :=  WSAdvValue( oResponse,"_EMAIL","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cextensoes         :=  WSAdvValue( oResponse,"_EXTENSOES","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cpasta             :=  WSAdvValue( oResponse,"_PASTA","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::csenha             :=  WSAdvValue( oResponse,"_SENHA","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure ApplicationUser

WSSTRUCT PublicService_ApplicationUser
	WSDATA   lAdministrator            AS boolean OPTIONAL
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   cName                     AS string OPTIONAL
	WSDATA   oWSProfile                AS PublicService_Profile OPTIONAL
	WSDATA   lStatus                   AS boolean OPTIONAL
	WSDATA   cToken                    AS string OPTIONAL
	WSDATA   cUsername                 AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ApplicationUser
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ApplicationUser
Return

WSMETHOD CLONE WSCLIENT PublicService_ApplicationUser
	Local oClone := PublicService_ApplicationUser():NEW()
	oClone:lAdministrator       := ::lAdministrator
	oClone:nId                  := ::nId
	oClone:cName                := ::cName
	oClone:oWSProfile           := IIF(::oWSProfile = NIL , NIL , ::oWSProfile:Clone() )
	oClone:lStatus              := ::lStatus
	oClone:cToken               := ::cToken
	oClone:cUsername            := ::cUsername
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_ApplicationUser
	Local cSoap := ""
	cSoap += WSSoapValue("Administrator", ::lAdministrator, ::lAdministrator , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Id", ::nId, ::nId , "int", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Name", ::cName, ::cName , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Profile", ::oWSProfile, ::oWSProfile , "Profile", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Status", ::lStatus, ::lStatus , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Token", ::cToken, ::cToken , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Username", ::cUsername, ::cUsername , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ApplicationUser
	Local oNode4
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::lAdministrator     :=  WSAdvValue( oResponse,"_ADMINISTRATOR","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cName              :=  WSAdvValue( oResponse,"_NAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode4 :=  WSAdvValue( oResponse,"_PROFILE","Profile",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode4 != NIL
		::oWSProfile := PublicService_Profile():New()
		::oWSProfile:SoapRecv(oNode4)
	EndIf
	::lStatus            :=  WSAdvValue( oResponse,"_STATUS","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cToken             :=  WSAdvValue( oResponse,"_TOKEN","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cUsername          :=  WSAdvValue( oResponse,"_USERNAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure ListObjectShipments

WSSTRUCT PublicService_ListObjectShipments
	WSDATA   oWSList                   AS PublicService_ArrayOfObjectShipment OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListObjectShipments
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListObjectShipments
Return

WSMETHOD CLONE WSCLIENT PublicService_ListObjectShipments
	Local oClone := PublicService_ListObjectShipments():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListObjectShipments
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfObjectShipment",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfObjectShipment():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ListShipmentTypes

WSSTRUCT PublicService_ListShipmentTypes
	WSDATA   oWSList                   AS PublicService_ArrayOfShipmentType OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListShipmentTypes
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListShipmentTypes
Return

WSMETHOD CLONE WSCLIENT PublicService_ListShipmentTypes
	Local oClone := PublicService_ListShipmentTypes():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListShipmentTypes
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfShipmentType",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfShipmentType():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Enumeration ActionResend

WSSTRUCT PublicService_ActionResend
	WSDATA   Value                     AS string
	WSDATA   cValueType                AS string
	WSDATA   aValueList                AS Array Of string
	WSMETHOD NEW
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ActionResend
	::Value := NIL
	::cValueType := "string"
	::aValueList := {}
	aadd(::aValueList , "Undefined" )
	aadd(::aValueList , "AlreadyNewAddressWaitingResend" )
	aadd(::aValueList , "ChangeAddressWaitingResend" )
	aadd(::aValueList , "WaitingNewAddress" )
Return Self

WSMETHOD SOAPSEND WSCLIENT PublicService_ActionResend
	Local cSoap := "" 
	cSoap += WSSoapValue("Value", ::Value, NIL , "string", .F. , .F., 3 , NIL, .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ActionResend
	::Value := NIL
	If oResponse = NIL ; Return ; Endif 
	::Value :=  oResponse:TEXT
Return 

WSMETHOD CLONE WSCLIENT PublicService_ActionResend
Local oClone := PublicService_ActionResend():New()
	oClone:Value := ::Value
Return oClone

// WSDL Data Structure StatusResult

WSSTRUCT PublicService_StatusResult
	WSDATA   cCodeError                AS string OPTIONAL
	WSDATA   cMessageAlert             AS string OPTIONAL
	WSDATA   cMessageError             AS string OPTIONAL
	WSDATA   nStatus                   AS int OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_StatusResult
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_StatusResult
Return

WSMETHOD CLONE WSCLIENT PublicService_StatusResult
	Local oClone := PublicService_StatusResult():NEW()
	oClone:cCodeError           := ::cCodeError
	oClone:cMessageAlert        := ::cMessageAlert
	oClone:cMessageError        := ::cMessageError
	oClone:nStatus              := ::nStatus
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_StatusResult
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCodeError         :=  WSAdvValue( oResponse,"_CODEERROR","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cMessageAlert      :=  WSAdvValue( oResponse,"_MESSAGEALERT","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cMessageError      :=  WSAdvValue( oResponse,"_MESSAGEERROR","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nStatus            :=  WSAdvValue( oResponse,"_STATUS","int",NIL,NIL,NIL,"N",NIL,NIL) 
Return

// WSDL Data Structure ArrayOfeticketsMonitorConfig

WSSTRUCT PublicService_ArrayOfeticketsMonitorConfig
	WSDATA   oWSeticketsMonitorConfig  AS PublicService_eticketsMonitorConfig OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfeticketsMonitorConfig
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfeticketsMonitorConfig
	::oWSeticketsMonitorConfig := {} // Array Of  PublicService_ETICKETSMONITORCONFIG():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfeticketsMonitorConfig
	Local oClone := PublicService_ArrayOfeticketsMonitorConfig():NEW()
	oClone:oWSeticketsMonitorConfig := NIL
	If ::oWSeticketsMonitorConfig <> NIL 
		oClone:oWSeticketsMonitorConfig := {}
		aEval( ::oWSeticketsMonitorConfig , { |x| aadd( oClone:oWSeticketsMonitorConfig , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfeticketsMonitorConfig
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_ETICKETSMONITORCONFIG","eticketsMonitorConfig",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSeticketsMonitorConfig , PublicService_eticketsMonitorConfig():New() )
			::oWSeticketsMonitorConfig[len(::oWSeticketsMonitorConfig)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ListIBGECC2020

WSSTRUCT PublicService_ListIBGECC2020
	WSDATA   oWSList                   AS PublicService_ArrayOfIBGECC2020 OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListIBGECC2020
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListIBGECC2020
Return

WSMETHOD CLONE WSCLIENT PublicService_ListIBGECC2020
	Local oClone := PublicService_ListIBGECC2020():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListIBGECC2020
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfIBGECC2020",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfIBGECC2020():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ListProducts

WSSTRUCT PublicService_ListProducts
	WSDATA   oWSList                   AS PublicService_ArrayOfProduct OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListProducts
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListProducts
Return

WSMETHOD CLONE WSCLIENT PublicService_ListProducts
	Local oClone := PublicService_ListProducts():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListProducts
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfProduct",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfProduct():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ListProductsSB1020

WSSTRUCT PublicService_ListProductsSB1020
	WSDATA   oWSList                   AS PublicService_ArrayOfProductSB1020 OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
=======
>>>>>>> .r192
ENDWSSTRUCT

<<<<<<< .mine
WSMETHOD NEW WSCLIENT PublicService_ListProductsSB1020
=======
WSMETHOD NEW WSCLIENT WSBGH_STRUC_PARAM_CLIENT
>>>>>>> .r192
	::Init()
Return Self

<<<<<<< .mine
WSMETHOD INIT WSCLIENT PublicService_ListProductsSB1020
=======
WSMETHOD INIT WSCLIENT WSBGH_STRUC_PARAM_CLIENT
>>>>>>> .r192
Return

<<<<<<< .mine
WSMETHOD CLONE WSCLIENT PublicService_ListProductsSB1020
	Local oClone := PublicService_ListProductsSB1020():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
=======
WSMETHOD CLONE WSCLIENT WSBGH_STRUC_PARAM_CLIENT
	Local oClone := WSBGH_STRUC_PARAM_CLIENT():NEW()
	oClone:cCCPF                := ::cCCPF
	oClone:cCVERATU             := ::cCVERATU
	oClone:oWSOCADCLIENTE       := IIF(::oWSOCADCLIENTE = NIL , NIL , ::oWSOCADCLIENTE:Clone() )
>>>>>>> .r192
Return oClone

<<<<<<< .mine
WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListProductsSB1020
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfProductSB1020",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfProductSB1020():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return
=======
WSMETHOD SOAPSEND WSCLIENT WSBGH_STRUC_PARAM_CLIENT
	Local cSoap := ""
	cSoap += WSSoapValue("CCPF", ::cCCPF, ::cCCPF , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CVERATU", ::cCVERATU, ::cCVERATU , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("OCADCLIENTE", ::oWSOCADCLIENTE, ::oWSOCADCLIENTE , "STRUC_CAD_CLIENTE", .F. , .F., 0 , NIL, .F.) 
Return cSoap
>>>>>>> .r192

<<<<<<< .mine
// WSDL Data Structure ListProductType

WSSTRUCT PublicService_ListProductType
	WSDATA   oWSList                   AS PublicService_ArrayOfProductType OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListProductType
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListProductType
Return

WSMETHOD CLONE WSCLIENT PublicService_ListProductType
	Local oClone := PublicService_ListProductType():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListProductType
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfProductType",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfProductType():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return
=======
// WSDL Data Structure STRUC_SEND_CLIENTE
>>>>>>> .r192

<<<<<<< .mine
// WSDL Data Structure ListMailBox

WSSTRUCT PublicService_ListMailBox
	WSDATA   oWSList                   AS PublicService_ArrayOfMailBox OPTIONAL
=======
WSSTRUCT WSBGH_STRUC_SEND_CLIENTE
	WSDATA   cCMSGERRO                 AS string OPTIONAL
	WSDATA   cCOPC                     AS string OPTIONAL
	WSDATA   cCSENDCODCLI              AS string OPTIONAL
	WSDATA   cCSENDLOJCLI              AS string OPTIONAL
>>>>>>> .r192
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

<<<<<<< .mine
WSMETHOD NEW WSCLIENT PublicService_ListMailBox
=======
WSMETHOD NEW WSCLIENT WSBGH_STRUC_SEND_CLIENTE
>>>>>>> .r192
	::Init()
Return Self

<<<<<<< .mine
WSMETHOD INIT WSCLIENT PublicService_ListMailBox
=======
WSMETHOD INIT WSCLIENT WSBGH_STRUC_SEND_CLIENTE
>>>>>>> .r192
Return

<<<<<<< .mine
WSMETHOD CLONE WSCLIENT PublicService_ListMailBox
	Local oClone := PublicService_ListMailBox():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
=======
WSMETHOD CLONE WSCLIENT WSBGH_STRUC_SEND_CLIENTE
	Local oClone := WSBGH_STRUC_SEND_CLIENTE():NEW()
	oClone:cCMSGERRO            := ::cCMSGERRO
	oClone:cCOPC                := ::cCOPC
	oClone:cCSENDCODCLI         := ::cCSENDCODCLI
	oClone:cCSENDLOJCLI         := ::cCSENDLOJCLI
>>>>>>> .r192
Return oClone

<<<<<<< .mine
WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListMailBox
	Local oNode1
=======
WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT WSBGH_STRUC_SEND_CLIENTE
>>>>>>> .r192
	::Init()
	If oResponse = NIL ; Return ; Endif 
<<<<<<< .mine
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfMailBox",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfMailBox():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
=======
	::cCMSGERRO          :=  WSAdvValue( oResponse,"_CMSGERRO","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCOPC              :=  WSAdvValue( oResponse,"_COPC","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCSENDCODCLI       :=  WSAdvValue( oResponse,"_CSENDCODCLI","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCSENDLOJCLI       :=  WSAdvValue( oResponse,"_CSENDLOJCLI","string",NIL,NIL,NIL,"S",NIL,NIL) 
>>>>>>> .r192
Return

<<<<<<< .mine
// WSDL Data Structure ListStates
=======
// WSDL Data Structure CABECALHOZZ3
>>>>>>> .r192

<<<<<<< .mine
WSSTRUCT PublicService_ListStates
	WSDATA   oWSList                   AS PublicService_ArrayOfState OPTIONAL
=======
WSSTRUCT WSBGH_CABECALHOZZ3
	WSDATA   cCCODSET                  AS string
	WSDATA   cCCODTEC                  AS string
	WSDATA   cCCODUSU                  AS string
	WSDATA   cCDEFINF                  AS string
	WSDATA   cCENCOS                   AS string
	WSDATA   cCFASE1                   AS string
	WSDATA   cCFASE2                   AS string
	WSDATA   cCIMEI                    AS string
	WSDATA   cCLAB                     AS string
	WSDATA   cCNUMOS                   AS string
	WSDATA   cCSENHA                   AS string
	WSDATA   cCSEQ                     AS string
	WSDATA   nNOPERACAO                AS float
>>>>>>> .r192
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
<<<<<<< .mine
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListStates
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListStates
Return

WSMETHOD CLONE WSCLIENT PublicService_ListStates
	Local oClone := PublicService_ListStates():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListStates
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfState",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfState():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ListAddresses

WSSTRUCT PublicService_ListAddresses
	WSDATA   oWSList                   AS PublicService_ArrayOfAddress OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListAddresses
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListAddresses
Return

WSMETHOD CLONE WSCLIENT PublicService_ListAddresses
	Local oClone := PublicService_ListAddresses():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListAddresses
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfAddress",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfAddress():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure Address

WSSTRUCT PublicService_Address
	WSDATA   cAddressType              AS string OPTIONAL
	WSDATA   cName                     AS string OPTIONAL
	WSDATA   cNeighborhood             AS string OPTIONAL
	WSDATA   cZipCode                  AS string OPTIONAL
	WSDATA   cCity                     AS string OPTIONAL
	WSDATA   cState                    AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_Address
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_Address
Return

WSMETHOD CLONE WSCLIENT PublicService_Address
	Local oClone := PublicService_Address():NEW()
	oClone:cAddressType         := ::cAddressType
	oClone:cName                := ::cName
	oClone:cNeighborhood        := ::cNeighborhood
	oClone:cZipCode             := ::cZipCode
	oClone:cCity                := ::cCity
	oClone:cState               := ::cState
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_Address
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cAddressType       :=  WSAdvValue( oResponse,"_ADDRESSTYPE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cName              :=  WSAdvValue( oResponse,"_NAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cNeighborhood      :=  WSAdvValue( oResponse,"_NEIGHBORHOOD","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cZipCode           :=  WSAdvValue( oResponse,"_ZIPCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCity              :=  WSAdvValue( oResponse,"_CITY","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cState             :=  WSAdvValue( oResponse,"_STATE","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure ListIncidents

WSSTRUCT PublicService_ListIncidents
	WSDATA   oWSList                   AS PublicService_ArrayOfIncident OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListIncidents
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListIncidents
Return

WSMETHOD CLONE WSCLIENT PublicService_ListIncidents
	Local oClone := PublicService_ListIncidents():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListIncidents
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfIncident",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfIncident():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure IncidentStatus

WSSTRUCT PublicService_IncidentStatus
	WSDATA   oWSRepairStatus           AS PublicService_RepairStatus OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_IncidentStatus
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_IncidentStatus
Return

WSMETHOD CLONE WSCLIENT PublicService_IncidentStatus
	Local oClone := PublicService_IncidentStatus():NEW()
	oClone:oWSRepairStatus      := IIF(::oWSRepairStatus = NIL , NIL , ::oWSRepairStatus:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_IncidentStatus
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_REPAIRSTATUS","RepairStatus",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSRepairStatus := PublicService_RepairStatus():New()
		::oWSRepairStatus:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ListEtickets

WSSTRUCT PublicService_ListEtickets
	WSDATA   nCount                    AS int OPTIONAL
	WSDATA   oWSList                   AS PublicService_ArrayOfEticket OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListEtickets
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListEtickets
Return

WSMETHOD CLONE WSCLIENT PublicService_ListEtickets
	Local oClone := PublicService_ListEtickets():NEW()
	oClone:nCount               := ::nCount
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListEtickets
	Local oNode2
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::nCount             :=  WSAdvValue( oResponse,"_COUNT","int",NIL,NIL,NIL,"N",NIL,NIL) 
	oNode2 :=  WSAdvValue( oResponse,"_LIST","ArrayOfEticket",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSList := PublicService_ArrayOfEticket():New()
		::oWSList:SoapRecv(oNode2)
	EndIf
Return

// WSDL Data Structure Incident

WSSTRUCT PublicService_Incident
	WSDATA   cAddress                  AS string OPTIONAL
	WSDATA   cAirTimeCarrierCode       AS string OPTIONAL
	WSDATA   nBounceCount              AS int OPTIONAL
	WSDATA   cCity                     AS string OPTIONAL
	WSDATA   cClaimNumber              AS string OPTIONAL
	WSDATA   cClientCARCode            AS string OPTIONAL
	WSDATA   cClientCARLoja            AS string OPTIONAL
	WSDATA   cComplement               AS string OPTIONAL
	WSDATA   lCourierObjectReceived    AS boolean OPTIONAL
	WSDATA   lCourierObjectReturned    AS boolean OPTIONAL
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   cCreateUser               AS string OPTIONAL
	WSDATA   cCustomerComplaint        AS string OPTIONAL
	WSDATA   cCustomerComplaintDescription AS string OPTIONAL
	WSDATA   cCustomerRefNumber        AS string OPTIONAL
	WSDATA   cDisposition              AS string OPTIONAL
	WSDATA   cDispositionDetail        AS string OPTIONAL
	WSDATA   cEmail                    AS string OPTIONAL
	WSDATA   lFinished                 AS boolean OPTIONAL
	WSDATA   cFinishedDate             AS dateTime OPTIONAL
	WSDATA   cFirstName                AS string OPTIONAL
	WSDATA   cFoneFax                  AS string OPTIONAL
	WSDATA   cFoneHome                 AS string OPTIONAL
	WSDATA   cFoneOffice               AS string OPTIONAL
	WSDATA   cIBGECity                 AS string OPTIONAL
	WSDATA   cIBGECode                 AS string OPTIONAL
	WSDATA   cIBGEState                AS string OPTIONAL
	WSDATA   nId                       AS long OPTIONAL
	WSDATA   cIncidentCallCenterId     AS string OPTIONAL
	WSDATA   cIncidentStatus           AS string OPTIONAL
	WSDATA   oWSIncidentStatusHistory  AS PublicService_ArrayOfIncidentStatusHistory OPTIONAL
	WSDATA   cIncomingCPF              AS string OPTIONAL
	WSDATA   cIncomingCarrierModelCode AS string OPTIONAL
	WSDATA   cIncomingCarrirerModelDescription AS string OPTIONAL
	WSDATA   cIncomingESN              AS string OPTIONAL
	WSDATA   cIncomingIMEI             AS string OPTIONAL
	WSDATA   cIncomingMSN              AS string OPTIONAL
	WSDATA   cIncomingPopDate          AS dateTime OPTIONAL
	WSDATA   cIncomingPopNumber        AS string OPTIONAL
	WSDATA   cIncomingPopSerie         AS string OPTIONAL
	WSDATA   cIncomingPopSourceReference AS string OPTIONAL
	WSDATA   cIncomingZip              AS string OPTIONAL
	WSDATA   cLastObservationReturnendCallCenter AS string OPTIONAL
	WSDATA   cLastTicketId             AS string OPTIONAL
	WSDATA   cLastUpdateDate           AS dateTime OPTIONAL
	WSDATA   cLastUpdateUser           AS string OPTIONAL
	WSDATA   lLock                     AS boolean OPTIONAL
	WSDATA   oWSMailBox                AS PublicService_MailBox OPTIONAL
	WSDATA   nMailBoxId                AS int OPTIONAL
	WSDATA   cMinNumberOne             AS string OPTIONAL
	WSDATA   cMinNumberTwo             AS string OPTIONAL
	WSDATA   cNeighborhood             AS string OPTIONAL
	WSDATA   cNumberAddress            AS string OPTIONAL
	WSDATA   oWSObjectShipments        AS PublicService_ArrayOfObjectShipment OPTIONAL
	WSDATA   oWSOperation              AS PublicService_Operation OPTIONAL
	WSDATA   lOptInCorreios            AS boolean OPTIONAL
	WSDATA   lOptInEmail               AS boolean OPTIONAL
	WSDATA   cOsId                     AS string OPTIONAL
	WSDATA   cOutgoingSoftware         AS string OPTIONAL
	WSDATA   cPreOsId                  AS string OPTIONAL
	WSDATA   cProblemFound             AS string OPTIONAL
	WSDATA   oWSProduct                AS PublicService_Product OPTIONAL
	WSDATA   nProductTypeId            AS int OPTIONAL
	WSDATA   cReceivedCPF              AS string OPTIONAL
	WSDATA   cReceivedCarrierModelCode AS string OPTIONAL
	WSDATA   cReceivedCarrierModelDescription AS string OPTIONAL
	WSDATA   oWSReceivedCourierObject  AS PublicService_CourierObject OPTIONAL
	WSDATA   cReceivedESN              AS string OPTIONAL
	WSDATA   cReceivedIMEI             AS string OPTIONAL
	WSDATA   cReceivedMSN              AS string OPTIONAL
	WSDATA   cReceivedPopDate          AS dateTime OPTIONAL
	WSDATA   cReceivedPopNumber        AS string OPTIONAL
	WSDATA   cReceivedPopSerie         AS string OPTIONAL
	WSDATA   cReceivedPopSourceReference AS string OPTIONAL
	WSDATA   cReceivedZip              AS string OPTIONAL
	WSDATA   cRepairAction             AS string OPTIONAL
	WSDATA   oWSRepairStatus           AS PublicService_RepairStatus OPTIONAL
	WSDATA   lReparied                 AS boolean OPTIONAL
	WSDATA   cRepariedDate             AS dateTime OPTIONAL
	WSDATA   cResendAddress            AS string OPTIONAL
	WSDATA   cResendCity               AS string OPTIONAL
	WSDATA   cResendComplement         AS string OPTIONAL
	WSDATA   cResendNeighborhood       AS string OPTIONAL
	WSDATA   cResendNumberAddress      AS string OPTIONAL
	WSDATA   cResendState              AS string OPTIONAL
	WSDATA   cResendZip                AS string OPTIONAL
	WSDATA   oWSReturnedCourierObject  AS PublicService_CourierObject OPTIONAL
	WSDATA   cSA1Address               AS string OPTIONAL
	WSDATA   cSA1City                  AS string OPTIONAL
	WSDATA   cSA1Complement            AS string OPTIONAL
	WSDATA   cSA1Neighborhood          AS string OPTIONAL
	WSDATA   cSA1State                 AS string OPTIONAL
	WSDATA   cSA1XComplement           AS string OPTIONAL
	WSDATA   cSA1ZipCode               AS string OPTIONAL
	WSDATA   cSpecialProjectNumber     AS string OPTIONAL
	WSDATA   cState                    AS string OPTIONAL
	WSDATA   cSurName                  AS string OPTIONAL
	WSDATA   cTechnichianId            AS string OPTIONAL
	WSDATA   cTransactionCode          AS string OPTIONAL
	WSDATA   cWarrantyType             AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
=======
>>>>>>> .r192
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGH_CABECALHOZZ3
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGH_CABECALHOZZ3
Return

<<<<<<< .mine
WSMETHOD CLONE WSCLIENT PublicService_Incident
	Local oClone := PublicService_Incident():NEW()
	oClone:cAddress             := ::cAddress
	oClone:cAirTimeCarrierCode  := ::cAirTimeCarrierCode
	oClone:nBounceCount         := ::nBounceCount
	oClone:cCity                := ::cCity
	oClone:cClaimNumber         := ::cClaimNumber
	oClone:cClientCARCode       := ::cClientCARCode
	oClone:cClientCARLoja       := ::cClientCARLoja
	oClone:cComplement          := ::cComplement
	oClone:lCourierObjectReceived := ::lCourierObjectReceived
	oClone:lCourierObjectReturned := ::lCourierObjectReturned
	oClone:cCreateDate          := ::cCreateDate
	oClone:cCreateUser          := ::cCreateUser
	oClone:cCustomerComplaint   := ::cCustomerComplaint
	oClone:cCustomerComplaintDescription := ::cCustomerComplaintDescription
	oClone:cCustomerRefNumber   := ::cCustomerRefNumber
	oClone:cDisposition         := ::cDisposition
	oClone:cDispositionDetail   := ::cDispositionDetail
	oClone:cEmail               := ::cEmail
	oClone:lFinished            := ::lFinished
	oClone:cFinishedDate        := ::cFinishedDate
	oClone:cFirstName           := ::cFirstName
	oClone:cFoneFax             := ::cFoneFax
	oClone:cFoneHome            := ::cFoneHome
	oClone:cFoneOffice          := ::cFoneOffice
	oClone:cIBGECity            := ::cIBGECity
	oClone:cIBGECode            := ::cIBGECode
	oClone:cIBGEState           := ::cIBGEState
	oClone:nId                  := ::nId
	oClone:cIncidentCallCenterId := ::cIncidentCallCenterId
	oClone:cIncidentStatus      := ::cIncidentStatus
	oClone:oWSIncidentStatusHistory := IIF(::oWSIncidentStatusHistory = NIL , NIL , ::oWSIncidentStatusHistory:Clone() )
	oClone:cIncomingCPF         := ::cIncomingCPF
	oClone:cIncomingCarrierModelCode := ::cIncomingCarrierModelCode
	oClone:cIncomingCarrirerModelDescription := ::cIncomingCarrirerModelDescription
	oClone:cIncomingESN         := ::cIncomingESN
	oClone:cIncomingIMEI        := ::cIncomingIMEI
	oClone:cIncomingMSN         := ::cIncomingMSN
	oClone:cIncomingPopDate     := ::cIncomingPopDate
	oClone:cIncomingPopNumber   := ::cIncomingPopNumber
	oClone:cIncomingPopSerie    := ::cIncomingPopSerie
	oClone:cIncomingPopSourceReference := ::cIncomingPopSourceReference
	oClone:cIncomingZip         := ::cIncomingZip
	oClone:cLastObservationReturnendCallCenter := ::cLastObservationReturnendCallCenter
	oClone:cLastTicketId        := ::cLastTicketId
	oClone:cLastUpdateDate      := ::cLastUpdateDate
	oClone:cLastUpdateUser      := ::cLastUpdateUser
	oClone:lLock                := ::lLock
	oClone:oWSMailBox           := IIF(::oWSMailBox = NIL , NIL , ::oWSMailBox:Clone() )
	oClone:nMailBoxId           := ::nMailBoxId
	oClone:cMinNumberOne        := ::cMinNumberOne
	oClone:cMinNumberTwo        := ::cMinNumberTwo
	oClone:cNeighborhood        := ::cNeighborhood
	oClone:cNumberAddress       := ::cNumberAddress
	oClone:oWSObjectShipments   := IIF(::oWSObjectShipments = NIL , NIL , ::oWSObjectShipments:Clone() )
	oClone:oWSOperation         := IIF(::oWSOperation = NIL , NIL , ::oWSOperation:Clone() )
	oClone:lOptInCorreios       := ::lOptInCorreios
	oClone:lOptInEmail          := ::lOptInEmail
	oClone:cOsId                := ::cOsId
	oClone:cOutgoingSoftware    := ::cOutgoingSoftware
	oClone:cPreOsId             := ::cPreOsId
	oClone:cProblemFound        := ::cProblemFound
	oClone:oWSProduct           := IIF(::oWSProduct = NIL , NIL , ::oWSProduct:Clone() )
	oClone:nProductTypeId       := ::nProductTypeId
	oClone:cReceivedCPF         := ::cReceivedCPF
	oClone:cReceivedCarrierModelCode := ::cReceivedCarrierModelCode
	oClone:cReceivedCarrierModelDescription := ::cReceivedCarrierModelDescription
	oClone:oWSReceivedCourierObject := IIF(::oWSReceivedCourierObject = NIL , NIL , ::oWSReceivedCourierObject:Clone() )
	oClone:cReceivedESN         := ::cReceivedESN
	oClone:cReceivedIMEI        := ::cReceivedIMEI
	oClone:cReceivedMSN         := ::cReceivedMSN
	oClone:cReceivedPopDate     := ::cReceivedPopDate
	oClone:cReceivedPopNumber   := ::cReceivedPopNumber
	oClone:cReceivedPopSerie    := ::cReceivedPopSerie
	oClone:cReceivedPopSourceReference := ::cReceivedPopSourceReference
	oClone:cReceivedZip         := ::cReceivedZip
	oClone:cRepairAction        := ::cRepairAction
	oClone:oWSRepairStatus      := IIF(::oWSRepairStatus = NIL , NIL , ::oWSRepairStatus:Clone() )
	oClone:lReparied            := ::lReparied
	oClone:cRepariedDate        := ::cRepariedDate
	oClone:cResendAddress       := ::cResendAddress
	oClone:cResendCity          := ::cResendCity
	oClone:cResendComplement    := ::cResendComplement
	oClone:cResendNeighborhood  := ::cResendNeighborhood
	oClone:cResendNumberAddress := ::cResendNumberAddress
	oClone:cResendState         := ::cResendState
	oClone:cResendZip           := ::cResendZip
	oClone:oWSReturnedCourierObject := IIF(::oWSReturnedCourierObject = NIL , NIL , ::oWSReturnedCourierObject:Clone() )
	oClone:cSA1Address          := ::cSA1Address
	oClone:cSA1City             := ::cSA1City
	oClone:cSA1Complement       := ::cSA1Complement
	oClone:cSA1Neighborhood     := ::cSA1Neighborhood
	oClone:cSA1State            := ::cSA1State
	oClone:cSA1XComplement      := ::cSA1XComplement
	oClone:cSA1ZipCode          := ::cSA1ZipCode
	oClone:cSpecialProjectNumber := ::cSpecialProjectNumber
	oClone:cState               := ::cState
	oClone:cSurName             := ::cSurName
	oClone:cTechnichianId       := ::cTechnichianId
	oClone:cTransactionCode     := ::cTransactionCode
	oClone:cWarrantyType        := ::cWarrantyType
=======
WSMETHOD CLONE WSCLIENT WSBGH_CABECALHOZZ3
	Local oClone := WSBGH_CABECALHOZZ3():NEW()
	oClone:cCCODSET             := ::cCCODSET
	oClone:cCCODTEC             := ::cCCODTEC
	oClone:cCCODUSU             := ::cCCODUSU
	oClone:cCDEFINF             := ::cCDEFINF
	oClone:cCENCOS              := ::cCENCOS
	oClone:cCFASE1              := ::cCFASE1
	oClone:cCFASE2              := ::cCFASE2
	oClone:cCIMEI               := ::cCIMEI
	oClone:cCLAB                := ::cCLAB
	oClone:cCNUMOS              := ::cCNUMOS
	oClone:cCSENHA              := ::cCSENHA
	oClone:cCSEQ                := ::cCSEQ
	oClone:nNOPERACAO           := ::nNOPERACAO
>>>>>>> .r192
Return oClone

WSMETHOD SOAPSEND WSCLIENT WSBGH_CABECALHOZZ3
	Local cSoap := ""
<<<<<<< .mine
	cSoap += WSSoapValue("Address", ::cAddress, ::cAddress , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("AirTimeCarrierCode", ::cAirTimeCarrierCode, ::cAirTimeCarrierCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("BounceCount", ::nBounceCount, ::nBounceCount , "int", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("City", ::cCity, ::cCity , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ClaimNumber", ::cClaimNumber, ::cClaimNumber , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ClientCARCode", ::cClientCARCode, ::cClientCARCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ClientCARLoja", ::cClientCARLoja, ::cClientCARLoja , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Complement", ::cComplement, ::cComplement , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CourierObjectReceived", ::lCourierObjectReceived, ::lCourierObjectReceived , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CourierObjectReturned", ::lCourierObjectReturned, ::lCourierObjectReturned , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CreateDate", ::cCreateDate, ::cCreateDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CreateUser", ::cCreateUser, ::cCreateUser , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CustomerComplaint", ::cCustomerComplaint, ::cCustomerComplaint , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CustomerComplaintDescription", ::cCustomerComplaintDescription, ::cCustomerComplaintDescription , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CustomerRefNumber", ::cCustomerRefNumber, ::cCustomerRefNumber , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Disposition", ::cDisposition, ::cDisposition , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("DispositionDetail", ::cDispositionDetail, ::cDispositionDetail , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Email", ::cEmail, ::cEmail , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Finished", ::lFinished, ::lFinished , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("FinishedDate", ::cFinishedDate, ::cFinishedDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("FirstName", ::cFirstName, ::cFirstName , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("FoneFax", ::cFoneFax, ::cFoneFax , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("FoneHome", ::cFoneHome, ::cFoneHome , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("FoneOffice", ::cFoneOffice, ::cFoneOffice , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IBGECity", ::cIBGECity, ::cIBGECity , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IBGECode", ::cIBGECode, ::cIBGECode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IBGEState", ::cIBGEState, ::cIBGEState , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Id", ::nId, ::nId , "long", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncidentCallCenterId", ::cIncidentCallCenterId, ::cIncidentCallCenterId , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncidentStatus", ::cIncidentStatus, ::cIncidentStatus , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncidentStatusHistory", ::oWSIncidentStatusHistory, ::oWSIncidentStatusHistory , "ArrayOfIncidentStatusHistory", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncomingCPF", ::cIncomingCPF, ::cIncomingCPF , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncomingCarrierModelCode", ::cIncomingCarrierModelCode, ::cIncomingCarrierModelCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncomingCarrirerModelDescription", ::cIncomingCarrirerModelDescription, ::cIncomingCarrirerModelDescription , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncomingESN", ::cIncomingESN, ::cIncomingESN , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncomingIMEI", ::cIncomingIMEI, ::cIncomingIMEI , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncomingMSN", ::cIncomingMSN, ::cIncomingMSN , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncomingPopDate", ::cIncomingPopDate, ::cIncomingPopDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncomingPopNumber", ::cIncomingPopNumber, ::cIncomingPopNumber , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncomingPopSerie", ::cIncomingPopSerie, ::cIncomingPopSerie , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncomingPopSourceReference", ::cIncomingPopSourceReference, ::cIncomingPopSourceReference , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncomingZip", ::cIncomingZip, ::cIncomingZip , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("LastObservationReturnendCallCenter", ::cLastObservationReturnendCallCenter, ::cLastObservationReturnendCallCenter , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("LastTicketId", ::cLastTicketId, ::cLastTicketId , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("LastUpdateDate", ::cLastUpdateDate, ::cLastUpdateDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("LastUpdateUser", ::cLastUpdateUser, ::cLastUpdateUser , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Lock", ::lLock, ::lLock , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("MailBox", ::oWSMailBox, ::oWSMailBox , "MailBox", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("MailBoxId", ::nMailBoxId, ::nMailBoxId , "int", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("MinNumberOne", ::cMinNumberOne, ::cMinNumberOne , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("MinNumberTwo", ::cMinNumberTwo, ::cMinNumberTwo , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Neighborhood", ::cNeighborhood, ::cNeighborhood , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("NumberAddress", ::cNumberAddress, ::cNumberAddress , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ObjectShipments", ::oWSObjectShipments, ::oWSObjectShipments , "ArrayOfObjectShipment", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Operation", ::oWSOperation, ::oWSOperation , "Operation", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("OptInCorreios", ::lOptInCorreios, ::lOptInCorreios , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("OptInEmail", ::lOptInEmail, ::lOptInEmail , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("OsId", ::cOsId, ::cOsId , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("OutgoingSoftware", ::cOutgoingSoftware, ::cOutgoingSoftware , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("PreOsId", ::cPreOsId, ::cPreOsId , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ProblemFound", ::cProblemFound, ::cProblemFound , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Product", ::oWSProduct, ::oWSProduct , "Product", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ProductTypeId", ::nProductTypeId, ::nProductTypeId , "int", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReceivedCPF", ::cReceivedCPF, ::cReceivedCPF , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReceivedCarrierModelCode", ::cReceivedCarrierModelCode, ::cReceivedCarrierModelCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReceivedCarrierModelDescription", ::cReceivedCarrierModelDescription, ::cReceivedCarrierModelDescription , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReceivedCourierObject", ::oWSReceivedCourierObject, ::oWSReceivedCourierObject , "CourierObject", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReceivedESN", ::cReceivedESN, ::cReceivedESN , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReceivedIMEI", ::cReceivedIMEI, ::cReceivedIMEI , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReceivedMSN", ::cReceivedMSN, ::cReceivedMSN , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReceivedPopDate", ::cReceivedPopDate, ::cReceivedPopDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReceivedPopNumber", ::cReceivedPopNumber, ::cReceivedPopNumber , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReceivedPopSerie", ::cReceivedPopSerie, ::cReceivedPopSerie , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReceivedPopSourceReference", ::cReceivedPopSourceReference, ::cReceivedPopSourceReference , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReceivedZip", ::cReceivedZip, ::cReceivedZip , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("RepairAction", ::cRepairAction, ::cRepairAction , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("RepairStatus", ::oWSRepairStatus, ::oWSRepairStatus , "RepairStatus", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Reparied", ::lReparied, ::lReparied , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("RepariedDate", ::cRepariedDate, ::cRepariedDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ResendAddress", ::cResendAddress, ::cResendAddress , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ResendCity", ::cResendCity, ::cResendCity , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ResendComplement", ::cResendComplement, ::cResendComplement , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ResendNeighborhood", ::cResendNeighborhood, ::cResendNeighborhood , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ResendNumberAddress", ::cResendNumberAddress, ::cResendNumberAddress , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ResendState", ::cResendState, ::cResendState , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ResendZip", ::cResendZip, ::cResendZip , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReturnedCourierObject", ::oWSReturnedCourierObject, ::oWSReturnedCourierObject , "CourierObject", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("SA1Address", ::cSA1Address, ::cSA1Address , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("SA1City", ::cSA1City, ::cSA1City , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("SA1Complement", ::cSA1Complement, ::cSA1Complement , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("SA1Neighborhood", ::cSA1Neighborhood, ::cSA1Neighborhood , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("SA1State", ::cSA1State, ::cSA1State , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("SA1XComplement", ::cSA1XComplement, ::cSA1XComplement , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("SA1ZipCode", ::cSA1ZipCode, ::cSA1ZipCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("SpecialProjectNumber", ::cSpecialProjectNumber, ::cSpecialProjectNumber , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("State", ::cState, ::cState , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("SurName", ::cSurName, ::cSurName , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("TechnichianId", ::cTechnichianId, ::cTechnichianId , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("TransactionCode", ::cTransactionCode, ::cTransactionCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("WarrantyType", ::cWarrantyType, ::cWarrantyType , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
=======
	cSoap += WSSoapValue("CCODSET", ::cCCODSET, ::cCCODSET , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCODTEC", ::cCCODTEC, ::cCCODTEC , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCODUSU", ::cCCODUSU, ::cCCODUSU , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CDEFINF", ::cCDEFINF, ::cCDEFINF , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CENCOS", ::cCENCOS, ::cCENCOS , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CFASE1", ::cCFASE1, ::cCFASE1 , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CFASE2", ::cCFASE2, ::cCFASE2 , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CIMEI", ::cCIMEI, ::cCIMEI , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CLAB", ::cCLAB, ::cCLAB , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CNUMOS", ::cCNUMOS, ::cCNUMOS , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CSENHA", ::cCSENHA, ::cCSENHA , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CSEQ", ::cCSEQ, ::cCSEQ , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("NOPERACAO", ::nNOPERACAO, ::nNOPERACAO , "float", .T. , .F., 0 , NIL, .F.) 
>>>>>>> .r192
Return cSoap

<<<<<<< .mine
WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_Incident
	Local oNode31
	Local oNode48
	Local oNode54
	Local oNode55
	Local oNode62
	Local oNode67
	Local oNode77
	Local oNode87
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cAddress           :=  WSAdvValue( oResponse,"_ADDRESS","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cAirTimeCarrierCode :=  WSAdvValue( oResponse,"_AIRTIMECARRIERCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nBounceCount       :=  WSAdvValue( oResponse,"_BOUNCECOUNT","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cCity              :=  WSAdvValue( oResponse,"_CITY","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cClaimNumber       :=  WSAdvValue( oResponse,"_CLAIMNUMBER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cClientCARCode     :=  WSAdvValue( oResponse,"_CLIENTCARCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cClientCARLoja     :=  WSAdvValue( oResponse,"_CLIENTCARLOJA","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cComplement        :=  WSAdvValue( oResponse,"_COMPLEMENT","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::lCourierObjectReceived :=  WSAdvValue( oResponse,"_COURIEROBJECTRECEIVED","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::lCourierObjectReturned :=  WSAdvValue( oResponse,"_COURIEROBJECTRETURNED","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateUser        :=  WSAdvValue( oResponse,"_CREATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCustomerComplaint :=  WSAdvValue( oResponse,"_CUSTOMERCOMPLAINT","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCustomerComplaintDescription :=  WSAdvValue( oResponse,"_CUSTOMERCOMPLAINTDESCRIPTION","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCustomerRefNumber :=  WSAdvValue( oResponse,"_CUSTOMERREFNUMBER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cDisposition       :=  WSAdvValue( oResponse,"_DISPOSITION","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cDispositionDetail :=  WSAdvValue( oResponse,"_DISPOSITIONDETAIL","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cEmail             :=  WSAdvValue( oResponse,"_EMAIL","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::lFinished          :=  WSAdvValue( oResponse,"_FINISHED","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cFinishedDate      :=  WSAdvValue( oResponse,"_FINISHEDDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cFirstName         :=  WSAdvValue( oResponse,"_FIRSTNAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cFoneFax           :=  WSAdvValue( oResponse,"_FONEFAX","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cFoneHome          :=  WSAdvValue( oResponse,"_FONEHOME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cFoneOffice        :=  WSAdvValue( oResponse,"_FONEOFFICE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIBGECity          :=  WSAdvValue( oResponse,"_IBGECITY","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIBGECode          :=  WSAdvValue( oResponse,"_IBGECODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIBGEState         :=  WSAdvValue( oResponse,"_IBGESTATE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","long",NIL,NIL,NIL,"N",NIL,NIL) 
	::cIncidentCallCenterId :=  WSAdvValue( oResponse,"_INCIDENTCALLCENTERID","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIncidentStatus    :=  WSAdvValue( oResponse,"_INCIDENTSTATUS","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode31 :=  WSAdvValue( oResponse,"_INCIDENTSTATUSHISTORY","ArrayOfIncidentStatusHistory",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode31 != NIL
		::oWSIncidentStatusHistory := PublicService_ArrayOfIncidentStatusHistory():New()
		::oWSIncidentStatusHistory:SoapRecv(oNode31)
	EndIf
	::cIncomingCPF       :=  WSAdvValue( oResponse,"_INCOMINGCPF","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIncomingCarrierModelCode :=  WSAdvValue( oResponse,"_INCOMINGCARRIERMODELCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIncomingCarrirerModelDescription :=  WSAdvValue( oResponse,"_INCOMINGCARRIRERMODELDESCRIPTION","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIncomingESN       :=  WSAdvValue( oResponse,"_INCOMINGESN","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIncomingIMEI      :=  WSAdvValue( oResponse,"_INCOMINGIMEI","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIncomingMSN       :=  WSAdvValue( oResponse,"_INCOMINGMSN","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIncomingPopDate   :=  WSAdvValue( oResponse,"_INCOMINGPOPDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIncomingPopNumber :=  WSAdvValue( oResponse,"_INCOMINGPOPNUMBER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIncomingPopSerie  :=  WSAdvValue( oResponse,"_INCOMINGPOPSERIE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIncomingPopSourceReference :=  WSAdvValue( oResponse,"_INCOMINGPOPSOURCEREFERENCE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIncomingZip       :=  WSAdvValue( oResponse,"_INCOMINGZIP","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastObservationReturnendCallCenter :=  WSAdvValue( oResponse,"_LASTOBSERVATIONRETURNENDCALLCENTER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastTicketId      :=  WSAdvValue( oResponse,"_LASTTICKETID","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastUpdateDate    :=  WSAdvValue( oResponse,"_LASTUPDATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastUpdateUser    :=  WSAdvValue( oResponse,"_LASTUPDATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::lLock              :=  WSAdvValue( oResponse,"_LOCK","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	oNode48 :=  WSAdvValue( oResponse,"_MAILBOX","MailBox",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode48 != NIL
		::oWSMailBox := PublicService_MailBox():New()
		::oWSMailBox:SoapRecv(oNode48)
	EndIf
	::nMailBoxId         :=  WSAdvValue( oResponse,"_MAILBOXID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cMinNumberOne      :=  WSAdvValue( oResponse,"_MINNUMBERONE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cMinNumberTwo      :=  WSAdvValue( oResponse,"_MINNUMBERTWO","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cNeighborhood      :=  WSAdvValue( oResponse,"_NEIGHBORHOOD","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cNumberAddress     :=  WSAdvValue( oResponse,"_NUMBERADDRESS","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode54 :=  WSAdvValue( oResponse,"_OBJECTSHIPMENTS","ArrayOfObjectShipment",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode54 != NIL
		::oWSObjectShipments := PublicService_ArrayOfObjectShipment():New()
		::oWSObjectShipments:SoapRecv(oNode54)
	EndIf
	oNode55 :=  WSAdvValue( oResponse,"_OPERATION","Operation",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode55 != NIL
		::oWSOperation := PublicService_Operation():New()
		::oWSOperation:SoapRecv(oNode55)
	EndIf
	::lOptInCorreios     :=  WSAdvValue( oResponse,"_OPTINCORREIOS","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::lOptInEmail        :=  WSAdvValue( oResponse,"_OPTINEMAIL","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cOsId              :=  WSAdvValue( oResponse,"_OSID","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cOutgoingSoftware  :=  WSAdvValue( oResponse,"_OUTGOINGSOFTWARE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cPreOsId           :=  WSAdvValue( oResponse,"_PREOSID","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cProblemFound      :=  WSAdvValue( oResponse,"_PROBLEMFOUND","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode62 :=  WSAdvValue( oResponse,"_PRODUCT","Product",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode62 != NIL
		::oWSProduct := PublicService_Product():New()
		::oWSProduct:SoapRecv(oNode62)
	EndIf
	::nProductTypeId     :=  WSAdvValue( oResponse,"_PRODUCTTYPEID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cReceivedCPF       :=  WSAdvValue( oResponse,"_RECEIVEDCPF","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReceivedCarrierModelCode :=  WSAdvValue( oResponse,"_RECEIVEDCARRIERMODELCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReceivedCarrierModelDescription :=  WSAdvValue( oResponse,"_RECEIVEDCARRIERMODELDESCRIPTION","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode67 :=  WSAdvValue( oResponse,"_RECEIVEDCOURIEROBJECT","CourierObject",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode67 != NIL
		::oWSReceivedCourierObject := PublicService_CourierObject():New()
		::oWSReceivedCourierObject:SoapRecv(oNode67)
	EndIf
	::cReceivedESN       :=  WSAdvValue( oResponse,"_RECEIVEDESN","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReceivedIMEI      :=  WSAdvValue( oResponse,"_RECEIVEDIMEI","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReceivedMSN       :=  WSAdvValue( oResponse,"_RECEIVEDMSN","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReceivedPopDate   :=  WSAdvValue( oResponse,"_RECEIVEDPOPDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReceivedPopNumber :=  WSAdvValue( oResponse,"_RECEIVEDPOPNUMBER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReceivedPopSerie  :=  WSAdvValue( oResponse,"_RECEIVEDPOPSERIE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReceivedPopSourceReference :=  WSAdvValue( oResponse,"_RECEIVEDPOPSOURCEREFERENCE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReceivedZip       :=  WSAdvValue( oResponse,"_RECEIVEDZIP","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cRepairAction      :=  WSAdvValue( oResponse,"_REPAIRACTION","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode77 :=  WSAdvValue( oResponse,"_REPAIRSTATUS","RepairStatus",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode77 != NIL
		::oWSRepairStatus := PublicService_RepairStatus():New()
		::oWSRepairStatus:SoapRecv(oNode77)
	EndIf
	::lReparied          :=  WSAdvValue( oResponse,"_REPARIED","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cRepariedDate      :=  WSAdvValue( oResponse,"_REPARIEDDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cResendAddress     :=  WSAdvValue( oResponse,"_RESENDADDRESS","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cResendCity        :=  WSAdvValue( oResponse,"_RESENDCITY","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cResendComplement  :=  WSAdvValue( oResponse,"_RESENDCOMPLEMENT","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cResendNeighborhood :=  WSAdvValue( oResponse,"_RESENDNEIGHBORHOOD","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cResendNumberAddress :=  WSAdvValue( oResponse,"_RESENDNUMBERADDRESS","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cResendState       :=  WSAdvValue( oResponse,"_RESENDSTATE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cResendZip         :=  WSAdvValue( oResponse,"_RESENDZIP","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode87 :=  WSAdvValue( oResponse,"_RETURNEDCOURIEROBJECT","CourierObject",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode87 != NIL
		::oWSReturnedCourierObject := PublicService_CourierObject():New()
		::oWSReturnedCourierObject:SoapRecv(oNode87)
	EndIf
	::cSA1Address        :=  WSAdvValue( oResponse,"_SA1ADDRESS","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cSA1City           :=  WSAdvValue( oResponse,"_SA1CITY","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cSA1Complement     :=  WSAdvValue( oResponse,"_SA1COMPLEMENT","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cSA1Neighborhood   :=  WSAdvValue( oResponse,"_SA1NEIGHBORHOOD","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cSA1State          :=  WSAdvValue( oResponse,"_SA1STATE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cSA1XComplement    :=  WSAdvValue( oResponse,"_SA1XCOMPLEMENT","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cSA1ZipCode        :=  WSAdvValue( oResponse,"_SA1ZIPCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cSpecialProjectNumber :=  WSAdvValue( oResponse,"_SPECIALPROJECTNUMBER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cState             :=  WSAdvValue( oResponse,"_STATE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cSurName           :=  WSAdvValue( oResponse,"_SURNAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cTechnichianId     :=  WSAdvValue( oResponse,"_TECHNICHIANID","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cTransactionCode   :=  WSAdvValue( oResponse,"_TRANSACTIONCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cWarrantyType      :=  WSAdvValue( oResponse,"_WARRANTYTYPE","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return
=======
// WSDL Data Structure ITENSSZ9
>>>>>>> .r192

<<<<<<< .mine
// WSDL Data Structure ListIncidentLockingHistory

WSSTRUCT PublicService_ListIncidentLockingHistory
	WSDATA   nCount                    AS int OPTIONAL
	WSDATA   oWSList                   AS PublicService_ArrayOfIncidentLockingHistory OPTIONAL
=======
WSSTRUCT WSBGH_ITENSSZ9
	WSDATA   oWSITENSSZ9               AS WSBGH_ARRAYOFWSITENSSZ9
>>>>>>> .r192
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
<<<<<<< .mine
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListIncidentLockingHistory
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListIncidentLockingHistory
Return

WSMETHOD CLONE WSCLIENT PublicService_ListIncidentLockingHistory
	Local oClone := PublicService_ListIncidentLockingHistory():NEW()
	oClone:nCount               := ::nCount
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListIncidentLockingHistory
	Local oNode2
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::nCount             :=  WSAdvValue( oResponse,"_COUNT","int",NIL,NIL,NIL,"N",NIL,NIL) 
	oNode2 :=  WSAdvValue( oResponse,"_LIST","ArrayOfIncidentLockingHistory",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode2 != NIL
		::oWSList := PublicService_ArrayOfIncidentLockingHistory():New()
		::oWSList:SoapRecv(oNode2)
	EndIf
Return

// WSDL Data Structure CourierObject

WSSTRUCT PublicService_CourierObject
	WSDATA   cCode                     AS string OPTIONAL
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   cCreateUser               AS string OPTIONAL
	WSDATA   cDetailProblemLink        AS string OPTIONAL
	WSDATA   cDropDate                 AS dateTime OPTIONAL
	WSDATA   cEticket                  AS string OPTIONAL
	WSDATA   nId                       AS long OPTIONAL
	WSDATA   lIncoming                 AS boolean OPTIONAL
	WSDATA   cIndicatedIncident        AS string OPTIONAL
	WSDATA   cLastUpdateDate           AS dateTime OPTIONAL
	WSDATA   cLastUpdateUser           AS string OPTIONAL
	WSDATA   oWSObjectProblemLinks     AS PublicService_ArrayOfObjectProblemLink OPTIONAL
	WSDATA   oWSOperation              AS PublicService_Operation OPTIONAL
	WSDATA   cOutDropDate              AS dateTime OPTIONAL
	WSDATA   cOutPostDate              AS dateTime OPTIONAL
	WSDATA   lOutgoing                 AS boolean OPTIONAL
	WSDATA   cPostDate                 AS dateTime OPTIONAL
	WSDATA   lProblemLink              AS boolean OPTIONAL
	WSDATA   cReturnedObjectInvoiceNumber AS string OPTIONAL
	WSDATA   cReturnedObjectInvoiceSerie AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
=======
>>>>>>> .r192
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGH_ITENSSZ9
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGH_ITENSSZ9
Return

WSMETHOD CLONE WSCLIENT WSBGH_ITENSSZ9
	Local oClone := WSBGH_ITENSSZ9():NEW()
	oClone:oWSITENSSZ9          := IIF(::oWSITENSSZ9 = NIL , NIL , ::oWSITENSSZ9:Clone() )
	oClone:cReturnedObjectInvoiceNumber := ::cReturnedObjectInvoiceNumber
	oClone:cReturnedObjectInvoiceSerie := ::cReturnedObjectInvoiceSerie
Return oClone

WSMETHOD SOAPSEND WSCLIENT WSBGH_ITENSSZ9
	Local cSoap := ""
	cSoap += WSSoapValue("ITENSSZ9", ::oWSITENSSZ9, ::oWSITENSSZ9 , "ARRAYOFWSITENSSZ9", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("ReturnedObjectInvoiceNumber", ::cReturnedObjectInvoiceNumber, ::cReturnedObjectInvoiceNumber , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReturnedObjectInvoiceSerie", ::cReturnedObjectInvoiceSerie, ::cReturnedObjectInvoiceSerie , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

<<<<<<< .mine
WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_CourierObject
	Local oNode12
	Local oNode13
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCode              :=  WSAdvValue( oResponse,"_CODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateUser        :=  WSAdvValue( oResponse,"_CREATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cDetailProblemLink :=  WSAdvValue( oResponse,"_DETAILPROBLEMLINK","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cDropDate          :=  WSAdvValue( oResponse,"_DROPDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cEticket           :=  WSAdvValue( oResponse,"_ETICKET","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","long",NIL,NIL,NIL,"N",NIL,NIL) 
	::lIncoming          :=  WSAdvValue( oResponse,"_INCOMING","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cIndicatedIncident :=  WSAdvValue( oResponse,"_INDICATEDINCIDENT","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastUpdateDate    :=  WSAdvValue( oResponse,"_LASTUPDATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastUpdateUser    :=  WSAdvValue( oResponse,"_LASTUPDATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode12 :=  WSAdvValue( oResponse,"_OBJECTPROBLEMLINKS","ArrayOfObjectProblemLink",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode12 != NIL
		::oWSObjectProblemLinks := PublicService_ArrayOfObjectProblemLink():New()
		::oWSObjectProblemLinks:SoapRecv(oNode12)
	EndIf
	oNode13 :=  WSAdvValue( oResponse,"_OPERATION","Operation",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode13 != NIL
		::oWSOperation := PublicService_Operation():New()
		::oWSOperation:SoapRecv(oNode13)
	EndIf
	::cOutDropDate       :=  WSAdvValue( oResponse,"_OUTDROPDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cOutPostDate       :=  WSAdvValue( oResponse,"_OUTPOSTDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::lOutgoing          :=  WSAdvValue( oResponse,"_OUTGOING","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cPostDate          :=  WSAdvValue( oResponse,"_POSTDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::lProblemLink       :=  WSAdvValue( oResponse,"_PROBLEMLINK","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cReturnedObjectInvoiceNumber :=  WSAdvValue( oResponse,"_RETURNEDOBJECTINVOICENUMBER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReturnedObjectInvoiceSerie :=  WSAdvValue( oResponse,"_RETURNEDOBJECTINVOICESERIE","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return
=======
// WSDL Data Structure STRUC_CAD_CLIENTE
>>>>>>> .r192

<<<<<<< .mine
// WSDL Data Structure ListObjectReasonReturning

WSSTRUCT PublicService_ListObjectReasonReturning
	WSDATA   oWSList                   AS PublicService_ArrayOfObjectReasonReturning OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListObjectReasonReturning
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListObjectReasonReturning
Return

WSMETHOD CLONE WSCLIENT PublicService_ListObjectReasonReturning
	Local oClone := PublicService_ListObjectReasonReturning():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListObjectReasonReturning
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfObjectReasonReturning",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfObjectReasonReturning():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ListReturnedCourierObjectHistory

WSSTRUCT PublicService_ListReturnedCourierObjectHistory
	WSDATA   oWSList                   AS PublicService_ArrayOfReturnedCourierObjectHistory OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListReturnedCourierObjectHistory
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListReturnedCourierObjectHistory
Return

WSMETHOD CLONE WSCLIENT PublicService_ListReturnedCourierObjectHistory
	Local oClone := PublicService_ListReturnedCourierObjectHistory():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListReturnedCourierObjectHistory
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfReturnedCourierObjectHistory",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfReturnedCourierObjectHistory():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ListCourierObjects

WSSTRUCT PublicService_ListCourierObjects
	WSDATA   oWSList                   AS PublicService_ArrayOfCourierObject OPTIONAL
=======
WSSTRUCT WSBGH_STRUC_CAD_CLIENTE
	WSDATA   cCBAIENTR                 AS string OPTIONAL
	WSDATA   cCBAIRRO                  AS string OPTIONAL
	WSDATA   cCCCONTAB                 AS string OPTIONAL
	WSDATA   cCCEP                     AS string OPTIONAL
	WSDATA   cCCEPENTR                 AS string OPTIONAL
	WSDATA   cCCNPJ                    AS string OPTIONAL
	WSDATA   cCCODMUN                  AS string OPTIONAL
	WSDATA   cCCONTRIB                 AS string OPTIONAL
	WSDATA   cCDDD                     AS string OPTIONAL
	WSDATA   cCEMAIL                   AS string OPTIONAL
	WSDATA   cCEND                     AS string OPTIONAL
	WSDATA   cCENDENTR                 AS string OPTIONAL
	WSDATA   cCESTADO                  AS string OPTIONAL
	WSDATA   cCFISJUR                  AS string OPTIONAL
	WSDATA   cCINSEST                  AS string OPTIONAL
	WSDATA   cCLOJA                    AS string OPTIONAL
	WSDATA   cCMENSAGEM                AS string OPTIONAL
	WSDATA   cCMUNENTR                 AS string OPTIONAL
	WSDATA   cCMUNIC                   AS string OPTIONAL
	WSDATA   cCNOME                    AS string OPTIONAL
	WSDATA   cCNOMFANT                 AS string OPTIONAL
	WSDATA   cCNUMCOMPL                AS string OPTIONAL
	WSDATA   cCPAIS                    AS string OPTIONAL
	WSDATA   cCPAISBAC                 AS string OPTIONAL
	WSDATA   cCTEL                     AS string OPTIONAL
	WSDATA   cCTIPO                    AS string OPTIONAL
	WSDATA   cCTRANSP                  AS string OPTIONAL
	WSDATA   cCUFENTR                  AS string OPTIONAL
>>>>>>> .r192
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
<<<<<<< .mine
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListCourierObjects
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListCourierObjects
Return

WSMETHOD CLONE WSCLIENT PublicService_ListCourierObjects
	Local oClone := PublicService_ListCourierObjects():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListCourierObjects
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfCourierObject",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfCourierObject():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ArrayOfEmail

WSSTRUCT PublicService_ArrayOfEmail
	WSDATA   oWSEmail                  AS PublicService_Email OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfEmail
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfEmail
	::oWSEmail             := {} // Array Of  PublicService_EMAIL():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfEmail
	Local oClone := PublicService_ArrayOfEmail():NEW()
	oClone:oWSEmail := NIL
	If ::oWSEmail <> NIL 
		oClone:oWSEmail := {}
		aEval( ::oWSEmail , { |x| aadd( oClone:oWSEmail , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfEmail
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_EMAIL","Email",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSEmail , PublicService_Email():New() )
			::oWSEmail[len(::oWSEmail)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ServiceConnection

WSSTRUCT PublicService_ServiceConnection
	WSDATA   cUsername                 AS string OPTIONAL
	WSDATA   cToken                    AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ServiceConnection
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ServiceConnection
Return

WSMETHOD CLONE WSCLIENT PublicService_ServiceConnection
	Local oClone := PublicService_ServiceConnection():NEW()
	oClone:cUsername            := ::cUsername
	oClone:cToken               := ::cToken
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_ServiceConnection
	Local cSoap := ""
	cSoap += WSSoapValue("Username", ::cUsername, ::cUsername , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Token", ::cToken, ::cToken , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ServiceConnection
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cUsername          :=  WSAdvValue( oResponse,"_USERNAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cToken             :=  WSAdvValue( oResponse,"_TOKEN","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure UserPermissions

WSSTRUCT PublicService_UserPermissions
	WSDATA   oWSPermissions            AS PublicService_ArrayOfAccess OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_UserPermissions
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_UserPermissions
Return

WSMETHOD CLONE WSCLIENT PublicService_UserPermissions
	Local oClone := PublicService_UserPermissions():NEW()
	oClone:oWSPermissions       := IIF(::oWSPermissions = NIL , NIL , ::oWSPermissions:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_UserPermissions
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_PERMISSIONS","ArrayOfAccess",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSPermissions := PublicService_ArrayOfAccess():New()
		::oWSPermissions:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ListOperations

WSSTRUCT PublicService_ListOperations
	WSDATA   oWSList                   AS PublicService_ArrayOfOperation OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListOperations
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListOperations
Return

WSMETHOD CLONE WSCLIENT PublicService_ListOperations
	Local oClone := PublicService_ListOperations():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListOperations
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfOperation",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfOperation():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure Operation

WSSTRUCT PublicService_Operation
	WSDATA   lAvailable                AS boolean OPTIONAL
	WSDATA   cCode                     AS string OPTIONAL
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   cName                     AS string OPTIONAL
	WSDATA   cXmlPath                  AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_Operation
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_Operation
Return

WSMETHOD CLONE WSCLIENT PublicService_Operation
	Local oClone := PublicService_Operation():NEW()
	oClone:lAvailable           := ::lAvailable
	oClone:cCode                := ::cCode
	oClone:nId                  := ::nId
	oClone:cName                := ::cName
	oClone:cXmlPath             := ::cXmlPath
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_Operation
	Local cSoap := ""
	cSoap += WSSoapValue("Available", ::lAvailable, ::lAvailable , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Code", ::cCode, ::cCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Id", ::nId, ::nId , "int", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Name", ::cName, ::cName , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("XmlPath", ::cXmlPath, ::cXmlPath , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_Operation
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::lAvailable         :=  WSAdvValue( oResponse,"_AVAILABLE","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cCode              :=  WSAdvValue( oResponse,"_CODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cName              :=  WSAdvValue( oResponse,"_NAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cXmlPath           :=  WSAdvValue( oResponse,"_XMLPATH","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure ListOperationsZZJ020

WSSTRUCT PublicService_ListOperationsZZJ020
	WSDATA   oWSList                   AS PublicService_ArrayOfOperationZZJ020 OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListOperationsZZJ020
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListOperationsZZJ020
Return

WSMETHOD CLONE WSCLIENT PublicService_ListOperationsZZJ020
	Local oClone := PublicService_ListOperationsZZJ020():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListOperationsZZJ020
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfOperationZZJ020",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfOperationZZJ020():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ListProfiles

WSSTRUCT PublicService_ListProfiles
	WSDATA   oWSList                   AS PublicService_ArrayOfProfile OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListProfiles
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListProfiles
Return

WSMETHOD CLONE WSCLIENT PublicService_ListProfiles
	Local oClone := PublicService_ListProfiles():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListProfiles
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfProfile",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfProfile():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ListModules

WSSTRUCT PublicService_ListModules
	WSDATA   oWSList                   AS PublicService_ArrayOfModule OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListModules
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListModules
Return

WSMETHOD CLONE WSCLIENT PublicService_ListModules
	Local oClone := PublicService_ListModules():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListModules
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfModule",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfModule():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ListIntegratorLogs

WSSTRUCT PublicService_ListIntegratorLogs
	WSDATA   oWSList                   AS PublicService_ArrayOfIntegratorLog OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListIntegratorLogs
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListIntegratorLogs
Return

WSMETHOD CLONE WSCLIENT PublicService_ListIntegratorLogs
	Local oClone := PublicService_ListIntegratorLogs():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListIntegratorLogs
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfIntegratorLog",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfIntegratorLog():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ListApplicationUsers

WSSTRUCT PublicService_ListApplicationUsers
	WSDATA   oWSList                   AS PublicService_ArrayOfApplicationUser OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ListApplicationUsers
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ListApplicationUsers
Return

WSMETHOD CLONE WSCLIENT PublicService_ListApplicationUsers
	Local oClone := PublicService_ListApplicationUsers():NEW()
	oClone:oWSList              := IIF(::oWSList = NIL , NIL , ::oWSList:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ListApplicationUsers
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_LIST","ArrayOfApplicationUser",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSList := PublicService_ArrayOfApplicationUser():New()
		::oWSList:SoapRecv(oNode1)
	EndIf
Return

// WSDL Data Structure ArrayOfint

WSSTRUCT PublicService_ArrayOfint
	WSDATA   nint                      AS int OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfint
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfint
	::nint                 := {} // Array Of  0
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfint
	Local oClone := PublicService_ArrayOfint():NEW()
	oClone:nint                 := IIf(::nint <> NIL , aClone(::nint) , NIL )
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_ArrayOfint
	Local cSoap := ""
	aEval( ::nint , {|x| cSoap := cSoap  +  WSSoapValue("int", x , x , "int", .F. , .F., 0 , "http://schemas.microsoft.com/2003/10/Serialization/Arrays", .F.)  } ) 
Return cSoap

// WSDL Data Structure Eticket

WSSTRUCT PublicService_Eticket
	WSDATA   cAddress                  AS string OPTIONAL
	WSDATA   cAddressCity              AS string OPTIONAL
	WSDATA   cAddressComplement        AS string OPTIONAL
	WSDATA   cAddressName              AS string OPTIONAL
	WSDATA   cAddressNeighborhood      AS string OPTIONAL
	WSDATA   cAddressNumber            AS string OPTIONAL
	WSDATA   cAddressState             AS string OPTIONAL
	WSDATA   cAddressZipCode           AS string OPTIONAL
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   nDefaultPrice             AS decimal OPTIONAL
	WSDATA   cESN                      AS string OPTIONAL
	WSDATA   cEmail                    AS string OPTIONAL
	WSDATA   cIncidentPreOsId          AS string OPTIONAL
	WSDATA   cMailBoxCode              AS string OPTIONAL
	WSDATA   cMailBoxType              AS string OPTIONAL
	WSDATA   cName                     AS string OPTIONAL
	WSDATA   cNumber                   AS string OPTIONAL
	WSDATA   lPosted                   AS boolean OPTIONAL
	WSDATA   cPostedObjectCode         AS string OPTIONAL
	WSDATA   cPreOsId                  AS string OPTIONAL
	WSDATA   cSendDate                 AS dateTime OPTIONAL
	WSDATA   lSent                     AS boolean OPTIONAL
	WSDATA   cSentByFile               AS string OPTIONAL
	WSDATA   nShipmentTypeId           AS int OPTIONAL
	WSDATA   lUsed                     AS boolean OPTIONAL
	WSDATA   lValidated                AS boolean OPTIONAL
	WSDATA   cValidationDate           AS dateTime OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_Eticket
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_Eticket
Return

WSMETHOD CLONE WSCLIENT PublicService_Eticket
	Local oClone := PublicService_Eticket():NEW()
	oClone:cAddress             := ::cAddress
	oClone:cAddressCity         := ::cAddressCity
	oClone:cAddressComplement   := ::cAddressComplement
	oClone:cAddressName         := ::cAddressName
	oClone:cAddressNeighborhood := ::cAddressNeighborhood
	oClone:cAddressNumber       := ::cAddressNumber
	oClone:cAddressState        := ::cAddressState
	oClone:cAddressZipCode      := ::cAddressZipCode
	oClone:cCreateDate          := ::cCreateDate
	oClone:nDefaultPrice        := ::nDefaultPrice
	oClone:cESN                 := ::cESN
	oClone:cEmail               := ::cEmail
	oClone:cIncidentPreOsId     := ::cIncidentPreOsId
	oClone:cMailBoxCode         := ::cMailBoxCode
	oClone:cMailBoxType         := ::cMailBoxType
	oClone:cName                := ::cName
	oClone:cNumber              := ::cNumber
	oClone:lPosted              := ::lPosted
	oClone:cPostedObjectCode    := ::cPostedObjectCode
	oClone:cPreOsId             := ::cPreOsId
	oClone:cSendDate            := ::cSendDate
	oClone:lSent                := ::lSent
	oClone:cSentByFile          := ::cSentByFile
	oClone:nShipmentTypeId      := ::nShipmentTypeId
	oClone:lUsed                := ::lUsed
	oClone:lValidated           := ::lValidated
	oClone:cValidationDate      := ::cValidationDate
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_Eticket
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cAddress           :=  WSAdvValue( oResponse,"_ADDRESS","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cAddressCity       :=  WSAdvValue( oResponse,"_ADDRESSCITY","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cAddressComplement :=  WSAdvValue( oResponse,"_ADDRESSCOMPLEMENT","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cAddressName       :=  WSAdvValue( oResponse,"_ADDRESSNAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cAddressNeighborhood :=  WSAdvValue( oResponse,"_ADDRESSNEIGHBORHOOD","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cAddressNumber     :=  WSAdvValue( oResponse,"_ADDRESSNUMBER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cAddressState      :=  WSAdvValue( oResponse,"_ADDRESSSTATE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cAddressZipCode    :=  WSAdvValue( oResponse,"_ADDRESSZIPCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::nDefaultPrice      :=  WSAdvValue( oResponse,"_DEFAULTPRICE","decimal",NIL,NIL,NIL,"N",NIL,NIL) 
	::cESN               :=  WSAdvValue( oResponse,"_ESN","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cEmail             :=  WSAdvValue( oResponse,"_EMAIL","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIncidentPreOsId   :=  WSAdvValue( oResponse,"_INCIDENTPREOSID","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cMailBoxCode       :=  WSAdvValue( oResponse,"_MAILBOXCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cMailBoxType       :=  WSAdvValue( oResponse,"_MAILBOXTYPE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cName              :=  WSAdvValue( oResponse,"_NAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cNumber            :=  WSAdvValue( oResponse,"_NUMBER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::lPosted            :=  WSAdvValue( oResponse,"_POSTED","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cPostedObjectCode  :=  WSAdvValue( oResponse,"_POSTEDOBJECTCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cPreOsId           :=  WSAdvValue( oResponse,"_PREOSID","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cSendDate          :=  WSAdvValue( oResponse,"_SENDDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::lSent              :=  WSAdvValue( oResponse,"_SENT","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cSentByFile        :=  WSAdvValue( oResponse,"_SENTBYFILE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nShipmentTypeId    :=  WSAdvValue( oResponse,"_SHIPMENTTYPEID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::lUsed              :=  WSAdvValue( oResponse,"_USED","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::lValidated         :=  WSAdvValue( oResponse,"_VALIDATED","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cValidationDate    :=  WSAdvValue( oResponse,"_VALIDATIONDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure Profile

WSSTRUCT PublicService_Profile
	WSDATA   lAvailable                AS boolean OPTIONAL
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   cCreateUser               AS string OPTIONAL
	WSDATA   lFront                    AS boolean OPTIONAL
	WSDATA   oWSFrontEnd               AS PublicService_Front OPTIONAL
	WSDATA   nId                       AS long OPTIONAL
	WSDATA   cLastUpdateDate           AS dateTime OPTIONAL
	WSDATA   cLastupdateUser           AS string OPTIONAL
	WSDATA   cName                     AS string OPTIONAL
	WSDATA   oWSOperation              AS PublicService_Operation OPTIONAL
	WSDATA   cOperationCode            AS string OPTIONAL
	WSDATA   oWSPermissions            AS PublicService_ArrayOfAccess OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_Profile
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_Profile
Return

WSMETHOD CLONE WSCLIENT PublicService_Profile
	Local oClone := PublicService_Profile():NEW()
	oClone:lAvailable           := ::lAvailable
	oClone:cCreateDate          := ::cCreateDate
	oClone:cCreateUser          := ::cCreateUser
	oClone:lFront               := ::lFront
	oClone:oWSFrontEnd          := IIF(::oWSFrontEnd = NIL , NIL , ::oWSFrontEnd:Clone() )
	oClone:nId                  := ::nId
	oClone:cLastUpdateDate      := ::cLastUpdateDate
	oClone:cLastupdateUser      := ::cLastupdateUser
	oClone:cName                := ::cName
	oClone:oWSOperation         := IIF(::oWSOperation = NIL , NIL , ::oWSOperation:Clone() )
	oClone:cOperationCode       := ::cOperationCode
	oClone:oWSPermissions       := IIF(::oWSPermissions = NIL , NIL , ::oWSPermissions:Clone() )
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_Profile
	Local cSoap := ""
	cSoap += WSSoapValue("Available", ::lAvailable, ::lAvailable , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CreateDate", ::cCreateDate, ::cCreateDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CreateUser", ::cCreateUser, ::cCreateUser , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Front", ::lFront, ::lFront , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("FrontEnd", ::oWSFrontEnd, ::oWSFrontEnd , "Front", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Id", ::nId, ::nId , "long", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("LastUpdateDate", ::cLastUpdateDate, ::cLastUpdateDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("LastupdateUser", ::cLastupdateUser, ::cLastupdateUser , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Name", ::cName, ::cName , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Operation", ::oWSOperation, ::oWSOperation , "Operation", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("OperationCode", ::cOperationCode, ::cOperationCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Permissions", ::oWSPermissions, ::oWSPermissions , "ArrayOfAccess", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_Profile
	Local oNode5
	Local oNode10
	Local oNode12
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::lAvailable         :=  WSAdvValue( oResponse,"_AVAILABLE","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateUser        :=  WSAdvValue( oResponse,"_CREATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::lFront             :=  WSAdvValue( oResponse,"_FRONT","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	oNode5 :=  WSAdvValue( oResponse,"_FRONTEND","Front",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode5 != NIL
		::oWSFrontEnd := PublicService_Front():New()
		::oWSFrontEnd:SoapRecv(oNode5)
	EndIf
	::nId                :=  WSAdvValue( oResponse,"_ID","long",NIL,NIL,NIL,"N",NIL,NIL) 
	::cLastUpdateDate    :=  WSAdvValue( oResponse,"_LASTUPDATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastupdateUser    :=  WSAdvValue( oResponse,"_LASTUPDATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cName              :=  WSAdvValue( oResponse,"_NAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode10 :=  WSAdvValue( oResponse,"_OPERATION","Operation",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode10 != NIL
		::oWSOperation := PublicService_Operation():New()
		::oWSOperation:SoapRecv(oNode10)
	EndIf
	::cOperationCode     :=  WSAdvValue( oResponse,"_OPERATIONCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode12 :=  WSAdvValue( oResponse,"_PERMISSIONS","ArrayOfAccess",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode12 != NIL
		::oWSPermissions := PublicService_ArrayOfAccess():New()
		::oWSPermissions:SoapRecv(oNode12)
	EndIf
Return

// WSDL Data Structure ArrayOfObjectShipment

WSSTRUCT PublicService_ArrayOfObjectShipment
	WSDATA   oWSObjectShipment         AS PublicService_ObjectShipment OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfObjectShipment
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfObjectShipment
	::oWSObjectShipment    := {} // Array Of  PublicService_OBJECTSHIPMENT():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfObjectShipment
	Local oClone := PublicService_ArrayOfObjectShipment():NEW()
	oClone:oWSObjectShipment := NIL
	If ::oWSObjectShipment <> NIL 
		oClone:oWSObjectShipment := {}
		aEval( ::oWSObjectShipment , { |x| aadd( oClone:oWSObjectShipment , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_ArrayOfObjectShipment
	Local cSoap := ""
	aEval( ::oWSObjectShipment , {|x| cSoap := cSoap  +  WSSoapValue("ObjectShipment", x , x , "ObjectShipment", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.)  } ) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfObjectShipment
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_OBJECTSHIPMENT","ObjectShipment",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSObjectShipment , PublicService_ObjectShipment():New() )
			::oWSObjectShipment[len(::oWSObjectShipment)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfShipmentType

WSSTRUCT PublicService_ArrayOfShipmentType
	WSDATA   oWSShipmentType           AS PublicService_ShipmentType OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfShipmentType
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfShipmentType
	::oWSShipmentType      := {} // Array Of  PublicService_SHIPMENTTYPE():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfShipmentType
	Local oClone := PublicService_ArrayOfShipmentType():NEW()
	oClone:oWSShipmentType := NIL
	If ::oWSShipmentType <> NIL 
		oClone:oWSShipmentType := {}
		aEval( ::oWSShipmentType , { |x| aadd( oClone:oWSShipmentType , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfShipmentType
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_SHIPMENTTYPE","ShipmentType",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSShipmentType , PublicService_ShipmentType():New() )
			::oWSShipmentType[len(::oWSShipmentType)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure eticketsMonitorConfig

WSSTRUCT PublicService_eticketsMonitorConfig
	WSDATA   cEmail                    AS string OPTIONAL
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   cLastSend                 AS dateTime OPTIONAL
	WSDATA   lSend                     AS boolean OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_eticketsMonitorConfig
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_eticketsMonitorConfig
Return

WSMETHOD CLONE WSCLIENT PublicService_eticketsMonitorConfig
	Local oClone := PublicService_eticketsMonitorConfig():NEW()
	oClone:cEmail               := ::cEmail
	oClone:nId                  := ::nId
	oClone:cLastSend            := ::cLastSend
	oClone:lSend                := ::lSend
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_eticketsMonitorConfig
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cEmail             :=  WSAdvValue( oResponse,"_EMAIL","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cLastSend          :=  WSAdvValue( oResponse,"_LASTSEND","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::lSend              :=  WSAdvValue( oResponse,"_SEND","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
Return

// WSDL Data Structure ArrayOfIBGECC2020

WSSTRUCT PublicService_ArrayOfIBGECC2020
	WSDATA   oWSIBGECC2020             AS PublicService_IBGECC2020 OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfIBGECC2020
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfIBGECC2020
	::oWSIBGECC2020        := {} // Array Of  PublicService_IBGECC2020():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfIBGECC2020
	Local oClone := PublicService_ArrayOfIBGECC2020():NEW()
	oClone:oWSIBGECC2020 := NIL
	If ::oWSIBGECC2020 <> NIL 
		oClone:oWSIBGECC2020 := {}
		aEval( ::oWSIBGECC2020 , { |x| aadd( oClone:oWSIBGECC2020 , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfIBGECC2020
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_IBGECC2020","IBGECC2020",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSIBGECC2020 , PublicService_IBGECC2020():New() )
			::oWSIBGECC2020[len(::oWSIBGECC2020)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfProduct

WSSTRUCT PublicService_ArrayOfProduct
	WSDATA   oWSProduct                AS PublicService_Product OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfProduct
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfProduct
	::oWSProduct           := {} // Array Of  PublicService_PRODUCT():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfProduct
	Local oClone := PublicService_ArrayOfProduct():NEW()
	oClone:oWSProduct := NIL
	If ::oWSProduct <> NIL 
		oClone:oWSProduct := {}
		aEval( ::oWSProduct , { |x| aadd( oClone:oWSProduct , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfProduct
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_PRODUCT","Product",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSProduct , PublicService_Product():New() )
			::oWSProduct[len(::oWSProduct)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfProductSB1020

WSSTRUCT PublicService_ArrayOfProductSB1020
	WSDATA   oWSProductSB1020          AS PublicService_ProductSB1020 OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfProductSB1020
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfProductSB1020
	::oWSProductSB1020     := {} // Array Of  PublicService_PRODUCTSB1020():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfProductSB1020
	Local oClone := PublicService_ArrayOfProductSB1020():NEW()
	oClone:oWSProductSB1020 := NIL
	If ::oWSProductSB1020 <> NIL 
		oClone:oWSProductSB1020 := {}
		aEval( ::oWSProductSB1020 , { |x| aadd( oClone:oWSProductSB1020 , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfProductSB1020
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_PRODUCTSB1020","ProductSB1020",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSProductSB1020 , PublicService_ProductSB1020():New() )
			::oWSProductSB1020[len(::oWSProductSB1020)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfProductType

WSSTRUCT PublicService_ArrayOfProductType
	WSDATA   oWSProductType            AS PublicService_ProductType OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfProductType
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfProductType
	::oWSProductType       := {} // Array Of  PublicService_PRODUCTTYPE():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfProductType
	Local oClone := PublicService_ArrayOfProductType():NEW()
	oClone:oWSProductType := NIL
	If ::oWSProductType <> NIL 
		oClone:oWSProductType := {}
		aEval( ::oWSProductType , { |x| aadd( oClone:oWSProductType , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfProductType
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_PRODUCTTYPE","ProductType",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSProductType , PublicService_ProductType():New() )
			::oWSProductType[len(::oWSProductType)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfMailBox

WSSTRUCT PublicService_ArrayOfMailBox
	WSDATA   oWSMailBox                AS PublicService_MailBox OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfMailBox
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfMailBox
	::oWSMailBox           := {} // Array Of  PublicService_MAILBOX():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfMailBox
	Local oClone := PublicService_ArrayOfMailBox():NEW()
	oClone:oWSMailBox := NIL
	If ::oWSMailBox <> NIL 
		oClone:oWSMailBox := {}
		aEval( ::oWSMailBox , { |x| aadd( oClone:oWSMailBox , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfMailBox
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_MAILBOX","MailBox",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSMailBox , PublicService_MailBox():New() )
			::oWSMailBox[len(::oWSMailBox)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfState

WSSTRUCT PublicService_ArrayOfState
	WSDATA   oWSState                  AS PublicService_State OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfState
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfState
	::oWSState             := {} // Array Of  PublicService_STATE():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfState
	Local oClone := PublicService_ArrayOfState():NEW()
	oClone:oWSState := NIL
	If ::oWSState <> NIL 
		oClone:oWSState := {}
		aEval( ::oWSState , { |x| aadd( oClone:oWSState , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfState
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_STATE","State",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSState , PublicService_State():New() )
			::oWSState[len(::oWSState)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfAddress

WSSTRUCT PublicService_ArrayOfAddress
	WSDATA   oWSAddress                AS PublicService_Address OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfAddress
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfAddress
	::oWSAddress           := {} // Array Of  PublicService_ADDRESS():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfAddress
	Local oClone := PublicService_ArrayOfAddress():NEW()
	oClone:oWSAddress := NIL
	If ::oWSAddress <> NIL 
		oClone:oWSAddress := {}
		aEval( ::oWSAddress , { |x| aadd( oClone:oWSAddress , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfAddress
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_ADDRESS","Address",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSAddress , PublicService_Address():New() )
			::oWSAddress[len(::oWSAddress)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfIncident

WSSTRUCT PublicService_ArrayOfIncident
	WSDATA   oWSIncident               AS PublicService_Incident OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfIncident
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfIncident
	::oWSIncident          := {} // Array Of  PublicService_INCIDENT():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfIncident
	Local oClone := PublicService_ArrayOfIncident():NEW()
	oClone:oWSIncident := NIL
	If ::oWSIncident <> NIL 
		oClone:oWSIncident := {}
		aEval( ::oWSIncident , { |x| aadd( oClone:oWSIncident , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfIncident
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_INCIDENT","Incident",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSIncident , PublicService_Incident():New() )
			::oWSIncident[len(::oWSIncident)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure RepairStatus

WSSTRUCT PublicService_RepairStatus
	WSDATA   cCallCenterCode           AS string OPTIONAL
	WSDATA   cCarCode                  AS string OPTIONAL
	WSDATA   cDescription              AS string OPTIONAL
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   oWSIncidentStatusType     AS PublicService_IncidentStatusType OPTIONAL
	WSDATA   lIsChangeable             AS boolean OPTIONAL
	WSDATA   lLockOnChange             AS boolean OPTIONAL
	WSDATA   lOut                      AS boolean OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_RepairStatus
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_RepairStatus
Return

WSMETHOD CLONE WSCLIENT PublicService_RepairStatus
	Local oClone := PublicService_RepairStatus():NEW()
	oClone:cCallCenterCode      := ::cCallCenterCode
	oClone:cCarCode             := ::cCarCode
	oClone:cDescription         := ::cDescription
	oClone:nId                  := ::nId
	oClone:oWSIncidentStatusType := IIF(::oWSIncidentStatusType = NIL , NIL , ::oWSIncidentStatusType:Clone() )
	oClone:lIsChangeable        := ::lIsChangeable
	oClone:lLockOnChange        := ::lLockOnChange
	oClone:lOut                 := ::lOut
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_RepairStatus
	Local cSoap := ""
	cSoap += WSSoapValue("CallCenterCode", ::cCallCenterCode, ::cCallCenterCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CarCode", ::cCarCode, ::cCarCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Description", ::cDescription, ::cDescription , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Id", ::nId, ::nId , "int", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncidentStatusType", ::oWSIncidentStatusType, ::oWSIncidentStatusType , "IncidentStatusType", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IsChangeable", ::lIsChangeable, ::lIsChangeable , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("LockOnChange", ::lLockOnChange, ::lLockOnChange , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Out", ::lOut, ::lOut , "boolean", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_RepairStatus
	Local oNode5
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCallCenterCode    :=  WSAdvValue( oResponse,"_CALLCENTERCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCarCode           :=  WSAdvValue( oResponse,"_CARCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cDescription       :=  WSAdvValue( oResponse,"_DESCRIPTION","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	oNode5 :=  WSAdvValue( oResponse,"_INCIDENTSTATUSTYPE","IncidentStatusType",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode5 != NIL
		::oWSIncidentStatusType := PublicService_IncidentStatusType():New()
		::oWSIncidentStatusType:SoapRecv(oNode5)
	EndIf
	::lIsChangeable      :=  WSAdvValue( oResponse,"_ISCHANGEABLE","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::lLockOnChange      :=  WSAdvValue( oResponse,"_LOCKONCHANGE","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::lOut               :=  WSAdvValue( oResponse,"_OUT","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
Return

// WSDL Data Structure ArrayOfEticket

WSSTRUCT PublicService_ArrayOfEticket
	WSDATA   oWSEticket                AS PublicService_Eticket OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfEticket
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfEticket
	::oWSEticket           := {} // Array Of  PublicService_ETICKET():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfEticket
	Local oClone := PublicService_ArrayOfEticket():NEW()
	oClone:oWSEticket := NIL
	If ::oWSEticket <> NIL 
		oClone:oWSEticket := {}
		aEval( ::oWSEticket , { |x| aadd( oClone:oWSEticket , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfEticket
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_ETICKET","Eticket",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSEticket , PublicService_Eticket():New() )
			::oWSEticket[len(::oWSEticket)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfIncidentStatusHistory

WSSTRUCT PublicService_ArrayOfIncidentStatusHistory
	WSDATA   oWSIncidentStatusHistory  AS PublicService_IncidentStatusHistory OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
=======
>>>>>>> .r192
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGH_STRUC_CAD_CLIENTE
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGH_STRUC_CAD_CLIENTE
Return

WSMETHOD CLONE WSCLIENT WSBGH_STRUC_CAD_CLIENTE
	Local oClone := WSBGH_STRUC_CAD_CLIENTE():NEW()
	oClone:cCBAIENTR            := ::cCBAIENTR
	oClone:cCBAIRRO             := ::cCBAIRRO
	oClone:cCCCONTAB            := ::cCCCONTAB
	oClone:cCCEP                := ::cCCEP
	oClone:cCCEPENTR            := ::cCCEPENTR
	oClone:cCCNPJ               := ::cCCNPJ
	oClone:cCCODMUN             := ::cCCODMUN
	oClone:cCCONTRIB            := ::cCCONTRIB
	oClone:cCDDD                := ::cCDDD
	oClone:cCEMAIL              := ::cCEMAIL
	oClone:cCEND                := ::cCEND
	oClone:cCENDENTR            := ::cCENDENTR
	oClone:cCESTADO             := ::cCESTADO
	oClone:cCFISJUR             := ::cCFISJUR
	oClone:cCINSEST             := ::cCINSEST
	oClone:cCLOJA               := ::cCLOJA
	oClone:cCMENSAGEM           := ::cCMENSAGEM
	oClone:cCMUNENTR            := ::cCMUNENTR
	oClone:cCMUNIC              := ::cCMUNIC
	oClone:cCNOME               := ::cCNOME
	oClone:cCNOMFANT            := ::cCNOMFANT
	oClone:cCNUMCOMPL           := ::cCNUMCOMPL
	oClone:cCPAIS               := ::cCPAIS
	oClone:cCPAISBAC            := ::cCPAISBAC
	oClone:cCTEL                := ::cCTEL
	oClone:cCTIPO               := ::cCTIPO
	oClone:cCTRANSP             := ::cCTRANSP
	oClone:cCUFENTR             := ::cCUFENTR
Return oClone

WSMETHOD SOAPSEND WSCLIENT WSBGH_STRUC_CAD_CLIENTE
	Local cSoap := ""
	cSoap += WSSoapValue("CBAIENTR", ::cCBAIENTR, ::cCBAIENTR , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CBAIRRO", ::cCBAIRRO, ::cCBAIRRO , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCCONTAB", ::cCCCONTAB, ::cCCCONTAB , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCEP", ::cCCEP, ::cCCEP , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCEPENTR", ::cCCEPENTR, ::cCCEPENTR , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCNPJ", ::cCCNPJ, ::cCCNPJ , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCODMUN", ::cCCODMUN, ::cCCODMUN , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CCONTRIB", ::cCCONTRIB, ::cCCONTRIB , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CDDD", ::cCDDD, ::cCDDD , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CEMAIL", ::cCEMAIL, ::cCEMAIL , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CEND", ::cCEND, ::cCEND , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CENDENTR", ::cCENDENTR, ::cCENDENTR , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CESTADO", ::cCESTADO, ::cCESTADO , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CFISJUR", ::cCFISJUR, ::cCFISJUR , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CINSEST", ::cCINSEST, ::cCINSEST , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CLOJA", ::cCLOJA, ::cCLOJA , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CMENSAGEM", ::cCMENSAGEM, ::cCMENSAGEM , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CMUNENTR", ::cCMUNENTR, ::cCMUNENTR , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CMUNIC", ::cCMUNIC, ::cCMUNIC , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CNOME", ::cCNOME, ::cCNOME , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CNOMFANT", ::cCNOMFANT, ::cCNOMFANT , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CNUMCOMPL", ::cCNUMCOMPL, ::cCNUMCOMPL , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CPAIS", ::cCPAIS, ::cCPAIS , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CPAISBAC", ::cCPAISBAC, ::cCPAISBAC , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CTEL", ::cCTEL, ::cCTEL , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CTIPO", ::cCTIPO, ::cCTIPO , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CTRANSP", ::cCTRANSP, ::cCTRANSP , "string", .F. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CUFENTR", ::cCUFENTR, ::cCUFENTR , "string", .F. , .F., 0 , NIL, .F.) 
Return cSoap

// WSDL Data Structure ARRAYOFWSITENSSZ9

<<<<<<< .mine
// WSDL Data Structure MailBox

WSSTRUCT PublicService_MailBox
	WSDATA   cCode                     AS string OPTIONAL
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   cCreateUser               AS string OPTIONAL
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   cLastUPdateUser           AS string OPTIONAL
	WSDATA   cLastUpdateDate           AS dateTime OPTIONAL
	WSDATA   cName                     AS string OPTIONAL
	WSDATA   cType                     AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_MailBox
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_MailBox
Return

WSMETHOD CLONE WSCLIENT PublicService_MailBox
	Local oClone := PublicService_MailBox():NEW()
	oClone:cCode                := ::cCode
	oClone:cCreateDate          := ::cCreateDate
	oClone:cCreateUser          := ::cCreateUser
	oClone:nId                  := ::nId
	oClone:cLastUPdateUser      := ::cLastUPdateUser
	oClone:cLastUpdateDate      := ::cLastUpdateDate
	oClone:cName                := ::cName
	oClone:cType                := ::cType
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_MailBox
	Local cSoap := ""
	cSoap += WSSoapValue("Code", ::cCode, ::cCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CreateDate", ::cCreateDate, ::cCreateDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CreateUser", ::cCreateUser, ::cCreateUser , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Id", ::nId, ::nId , "int", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("LastUPdateUser", ::cLastUPdateUser, ::cLastUPdateUser , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("LastUpdateDate", ::cLastUpdateDate, ::cLastUpdateDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Name", ::cName, ::cName , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Type", ::cType, ::cType , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_MailBox
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCode              :=  WSAdvValue( oResponse,"_CODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateUser        :=  WSAdvValue( oResponse,"_CREATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cLastUPdateUser    :=  WSAdvValue( oResponse,"_LASTUPDATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastUpdateDate    :=  WSAdvValue( oResponse,"_LASTUPDATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cName              :=  WSAdvValue( oResponse,"_NAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cType              :=  WSAdvValue( oResponse,"_TYPE","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure Product

WSSTRUCT PublicService_Product
	WSDATA   cCARCode                  AS string OPTIONAL
	WSDATA   cCallCenterCode           AS string OPTIONAL
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   cCreateUser               AS string OPTIONAL
	WSDATA   cDescription              AS string OPTIONAL
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   cLastUpdateDate           AS dateTime OPTIONAL
	WSDATA   cLastUpdateUser           AS string OPTIONAL
	WSDATA   oWSOperations             AS PublicService_ArrayOfOperation OPTIONAL
=======
WSSTRUCT WSBGH_ARRAYOFWSITENSSZ9
	WSDATA   oWSWSITENSSZ9             AS WSBGH_WSITENSSZ9 OPTIONAL
>>>>>>> .r192
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT WSBGH_ARRAYOFWSITENSSZ9
	::Init()
Return Self

WSMETHOD INIT WSCLIENT WSBGH_ARRAYOFWSITENSSZ9
	::oWSWSITENSSZ9        := {} // Array Of  WSBGH_WSITENSSZ9():New()
Return

<<<<<<< .mine
WSMETHOD CLONE WSCLIENT PublicService_Product
	Local oClone := PublicService_Product():NEW()
	oClone:cCARCode             := ::cCARCode
	oClone:cCallCenterCode      := ::cCallCenterCode
	oClone:cCreateDate          := ::cCreateDate
	oClone:cCreateUser          := ::cCreateUser
	oClone:cDescription         := ::cDescription
	oClone:nId                  := ::nId
	oClone:cLastUpdateDate      := ::cLastUpdateDate
	oClone:cLastUpdateUser      := ::cLastUpdateUser
	oClone:oWSOperations        := IIF(::oWSOperations = NIL , NIL , ::oWSOperations:Clone() )
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_Product
	Local cSoap := ""
	cSoap += WSSoapValue("CARCode", ::cCARCode, ::cCARCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CallCenterCode", ::cCallCenterCode, ::cCallCenterCode , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CreateDate", ::cCreateDate, ::cCreateDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CreateUser", ::cCreateUser, ::cCreateUser , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Description", ::cDescription, ::cDescription , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Id", ::nId, ::nId , "int", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("LastUpdateDate", ::cLastUpdateDate, ::cLastUpdateDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("LastUpdateUser", ::cLastUpdateUser, ::cLastUpdateUser , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Operations", ::oWSOperations, ::oWSOperations , "ArrayOfOperation", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_Product
	Local oNode9
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCARCode           :=  WSAdvValue( oResponse,"_CARCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCallCenterCode    :=  WSAdvValue( oResponse,"_CALLCENTERCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateUser        :=  WSAdvValue( oResponse,"_CREATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cDescription       :=  WSAdvValue( oResponse,"_DESCRIPTION","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cLastUpdateDate    :=  WSAdvValue( oResponse,"_LASTUPDATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastUpdateUser    :=  WSAdvValue( oResponse,"_LASTUPDATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode9 :=  WSAdvValue( oResponse,"_OPERATIONS","ArrayOfOperation",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode9 != NIL
		::oWSOperations := PublicService_ArrayOfOperation():New()
		::oWSOperations:SoapRecv(oNode9)
	EndIf
Return

// WSDL Data Structure ArrayOfIncidentLockingHistory

WSSTRUCT PublicService_ArrayOfIncidentLockingHistory
	WSDATA   oWSIncidentLockingHistory AS PublicService_IncidentLockingHistory OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfIncidentLockingHistory
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfIncidentLockingHistory
	::oWSIncidentLockingHistory := {} // Array Of  PublicService_INCIDENTLOCKINGHISTORY():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfIncidentLockingHistory
	Local oClone := PublicService_ArrayOfIncidentLockingHistory():NEW()
	oClone:oWSIncidentLockingHistory := NIL
	If ::oWSIncidentLockingHistory <> NIL 
		oClone:oWSIncidentLockingHistory := {}
		aEval( ::oWSIncidentLockingHistory , { |x| aadd( oClone:oWSIncidentLockingHistory , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfIncidentLockingHistory
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_INCIDENTLOCKINGHISTORY","IncidentLockingHistory",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSIncidentLockingHistory , PublicService_IncidentLockingHistory():New() )
			::oWSIncidentLockingHistory[len(::oWSIncidentLockingHistory)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfObjectProblemLink

WSSTRUCT PublicService_ArrayOfObjectProblemLink
	WSDATA   oWSObjectProblemLink      AS PublicService_ObjectProblemLink OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfObjectProblemLink
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfObjectProblemLink
	::oWSObjectProblemLink := {} // Array Of  PublicService_OBJECTPROBLEMLINK():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfObjectProblemLink
	Local oClone := PublicService_ArrayOfObjectProblemLink():NEW()
	oClone:oWSObjectProblemLink := NIL
	If ::oWSObjectProblemLink <> NIL 
		oClone:oWSObjectProblemLink := {}
		aEval( ::oWSObjectProblemLink , { |x| aadd( oClone:oWSObjectProblemLink , x:Clone() ) } )
=======
WSMETHOD CLONE WSCLIENT WSBGH_ARRAYOFWSITENSSZ9
	Local oClone := WSBGH_ARRAYOFWSITENSSZ9():NEW()
	oClone:oWSWSITENSSZ9 := NIL
	If ::oWSWSITENSSZ9 <> NIL 
		oClone:oWSWSITENSSZ9 := {}
		aEval( ::oWSWSITENSSZ9 , { |x| aadd( oClone:oWSWSITENSSZ9 , x:Clone() ) } )
>>>>>>> .r192
	Endif 
Return oClone

<<<<<<< .mine
WSMETHOD SOAPSEND WSCLIENT PublicService_ArrayOfObjectProblemLink
	Local cSoap := ""
	aEval( ::oWSObjectProblemLink , {|x| cSoap := cSoap  +  WSSoapValue("ObjectProblemLink", x , x , "ObjectProblemLink", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.)  } ) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfObjectProblemLink
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_OBJECTPROBLEMLINK","ObjectProblemLink",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSObjectProblemLink , PublicService_ObjectProblemLink():New() )
			::oWSObjectProblemLink[len(::oWSObjectProblemLink)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfObjectReasonReturning

WSSTRUCT PublicService_ArrayOfObjectReasonReturning
	WSDATA   oWSObjectReasonReturning  AS PublicService_ObjectReasonReturning OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfObjectReasonReturning
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfObjectReasonReturning
	::oWSObjectReasonReturning := {} // Array Of  PublicService_OBJECTREASONRETURNING():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfObjectReasonReturning
	Local oClone := PublicService_ArrayOfObjectReasonReturning():NEW()
	oClone:oWSObjectReasonReturning := NIL
	If ::oWSObjectReasonReturning <> NIL 
		oClone:oWSObjectReasonReturning := {}
		aEval( ::oWSObjectReasonReturning , { |x| aadd( oClone:oWSObjectReasonReturning , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfObjectReasonReturning
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_OBJECTREASONRETURNING","ObjectReasonReturning",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSObjectReasonReturning , PublicService_ObjectReasonReturning():New() )
			::oWSObjectReasonReturning[len(::oWSObjectReasonReturning)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfReturnedCourierObjectHistory

WSSTRUCT PublicService_ArrayOfReturnedCourierObjectHistory
	WSDATA   oWSReturnedCourierObjectHistory AS PublicService_ReturnedCourierObjectHistory OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfReturnedCourierObjectHistory
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfReturnedCourierObjectHistory
	::oWSReturnedCourierObjectHistory := {} // Array Of  PublicService_RETURNEDCOURIEROBJECTHISTORY():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfReturnedCourierObjectHistory
	Local oClone := PublicService_ArrayOfReturnedCourierObjectHistory():NEW()
	oClone:oWSReturnedCourierObjectHistory := NIL
	If ::oWSReturnedCourierObjectHistory <> NIL 
		oClone:oWSReturnedCourierObjectHistory := {}
		aEval( ::oWSReturnedCourierObjectHistory , { |x| aadd( oClone:oWSReturnedCourierObjectHistory , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfReturnedCourierObjectHistory
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_RETURNEDCOURIEROBJECTHISTORY","ReturnedCourierObjectHistory",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSReturnedCourierObjectHistory , PublicService_ReturnedCourierObjectHistory():New() )
			::oWSReturnedCourierObjectHistory[len(::oWSReturnedCourierObjectHistory)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return
=======
WSMETHOD SOAPSEND WSCLIENT WSBGH_ARRAYOFWSITENSSZ9
	Local cSoap := ""
	aEval( ::oWSWSITENSSZ9 , {|x| cSoap := cSoap  +  WSSoapValue("WSITENSSZ9", x , x , "WSITENSSZ9", .F. , .F., 0 , NIL, .F.)  } ) 
Return cSoap

// WSDL Data Structure WSITENSSZ9
>>>>>>> .r192

WSSTRUCT WSBGH_WSITENSSZ9
	WSDATA   cCCODTEC                  AS string
	WSDATA   cCFASE1                   AS string
	WSDATA   cCIMEI                    AS string
	WSDATA   cCITEM                    AS string
	WSDATA   cCNUMOS                   AS string
	WSDATA   cCPARTNR                  AS string
	WSDATA   nNOPERACAO                AS float
	WSDATA   nNQTY                     AS float
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
<<<<<<< .mine
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfCourierObject
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfCourierObject
	::oWSCourierObject     := {} // Array Of  PublicService_COURIEROBJECT():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfCourierObject
	Local oClone := PublicService_ArrayOfCourierObject():NEW()
	oClone:oWSCourierObject := NIL
	If ::oWSCourierObject <> NIL 
		oClone:oWSCourierObject := {}
		aEval( ::oWSCourierObject , { |x| aadd( oClone:oWSCourierObject , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfCourierObject
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_COURIEROBJECT","CourierObject",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSCourierObject , PublicService_CourierObject():New() )
			::oWSCourierObject[len(::oWSCourierObject)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfAccess

WSSTRUCT PublicService_ArrayOfAccess
	WSDATA   oWSAccess                 AS PublicService_Access OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfAccess
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfAccess
	::oWSAccess            := {} // Array Of  PublicService_ACCESS():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfAccess
	Local oClone := PublicService_ArrayOfAccess():NEW()
	oClone:oWSAccess := NIL
	If ::oWSAccess <> NIL 
		oClone:oWSAccess := {}
		aEval( ::oWSAccess , { |x| aadd( oClone:oWSAccess , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_ArrayOfAccess
	Local cSoap := ""
	aEval( ::oWSAccess , {|x| cSoap := cSoap  +  WSSoapValue("Access", x , x , "Access", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.)  } ) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfAccess
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_ACCESS","Access",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSAccess , PublicService_Access():New() )
			::oWSAccess[len(::oWSAccess)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfOperation

WSSTRUCT PublicService_ArrayOfOperation
	WSDATA   oWSOperation              AS PublicService_Operation OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfOperation
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfOperation
	::oWSOperation         := {} // Array Of  PublicService_OPERATION():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfOperation
	Local oClone := PublicService_ArrayOfOperation():NEW()
	oClone:oWSOperation := NIL
	If ::oWSOperation <> NIL 
		oClone:oWSOperation := {}
		aEval( ::oWSOperation , { |x| aadd( oClone:oWSOperation , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_ArrayOfOperation
	Local cSoap := ""
	aEval( ::oWSOperation , {|x| cSoap := cSoap  +  WSSoapValue("Operation", x , x , "Operation", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.)  } ) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfOperation
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_OPERATION","Operation",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSOperation , PublicService_Operation():New() )
			::oWSOperation[len(::oWSOperation)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfOperationZZJ020

WSSTRUCT PublicService_ArrayOfOperationZZJ020
	WSDATA   oWSOperationZZJ020        AS PublicService_OperationZZJ020 OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfOperationZZJ020
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfOperationZZJ020
	::oWSOperationZZJ020   := {} // Array Of  PublicService_OPERATIONZZJ020():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfOperationZZJ020
	Local oClone := PublicService_ArrayOfOperationZZJ020():NEW()
	oClone:oWSOperationZZJ020 := NIL
	If ::oWSOperationZZJ020 <> NIL 
		oClone:oWSOperationZZJ020 := {}
		aEval( ::oWSOperationZZJ020 , { |x| aadd( oClone:oWSOperationZZJ020 , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfOperationZZJ020
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_OPERATIONZZJ020","OperationZZJ020",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSOperationZZJ020 , PublicService_OperationZZJ020():New() )
			::oWSOperationZZJ020[len(::oWSOperationZZJ020)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfProfile

WSSTRUCT PublicService_ArrayOfProfile
	WSDATA   oWSProfile                AS PublicService_Profile OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfProfile
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfProfile
	::oWSProfile           := {} // Array Of  PublicService_PROFILE():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfProfile
	Local oClone := PublicService_ArrayOfProfile():NEW()
	oClone:oWSProfile := NIL
	If ::oWSProfile <> NIL 
		oClone:oWSProfile := {}
		aEval( ::oWSProfile , { |x| aadd( oClone:oWSProfile , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfProfile
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_PROFILE","Profile",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSProfile , PublicService_Profile():New() )
			::oWSProfile[len(::oWSProfile)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfModule

WSSTRUCT PublicService_ArrayOfModule
	WSDATA   oWSModule                 AS PublicService_Module OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfModule
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfModule
	::oWSModule            := {} // Array Of  PublicService_MODULE():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfModule
	Local oClone := PublicService_ArrayOfModule():NEW()
	oClone:oWSModule := NIL
	If ::oWSModule <> NIL 
		oClone:oWSModule := {}
		aEval( ::oWSModule , { |x| aadd( oClone:oWSModule , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfModule
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_MODULE","Module",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSModule , PublicService_Module():New() )
			::oWSModule[len(::oWSModule)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfIntegratorLog

WSSTRUCT PublicService_ArrayOfIntegratorLog
	WSDATA   oWSIntegratorLog          AS PublicService_IntegratorLog OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfIntegratorLog
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfIntegratorLog
	::oWSIntegratorLog     := {} // Array Of  PublicService_INTEGRATORLOG():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfIntegratorLog
	Local oClone := PublicService_ArrayOfIntegratorLog():NEW()
	oClone:oWSIntegratorLog := NIL
	If ::oWSIntegratorLog <> NIL 
		oClone:oWSIntegratorLog := {}
		aEval( ::oWSIntegratorLog , { |x| aadd( oClone:oWSIntegratorLog , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfIntegratorLog
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_INTEGRATORLOG","IntegratorLog",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSIntegratorLog , PublicService_IntegratorLog():New() )
			::oWSIntegratorLog[len(::oWSIntegratorLog)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Structure ArrayOfApplicationUser

WSSTRUCT PublicService_ArrayOfApplicationUser
	WSDATA   oWSApplicationUser        AS PublicService_ApplicationUser OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ArrayOfApplicationUser
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ArrayOfApplicationUser
	::oWSApplicationUser   := {} // Array Of  PublicService_APPLICATIONUSER():New()
Return

WSMETHOD CLONE WSCLIENT PublicService_ArrayOfApplicationUser
	Local oClone := PublicService_ArrayOfApplicationUser():NEW()
	oClone:oWSApplicationUser := NIL
	If ::oWSApplicationUser <> NIL 
		oClone:oWSApplicationUser := {}
		aEval( ::oWSApplicationUser , { |x| aadd( oClone:oWSApplicationUser , x:Clone() ) } )
	Endif 
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ArrayOfApplicationUser
	Local nRElem1, oNodes1, nTElem1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNodes1 :=  WSAdvValue( oResponse,"_APPLICATIONUSER","ApplicationUser",{},NIL,.T.,"O",NIL,NIL) 
	nTElem1 := len(oNodes1)
	For nRElem1 := 1 to nTElem1 
		If !WSIsNilNode( oNodes1[nRElem1] )
			aadd(::oWSApplicationUser , PublicService_ApplicationUser():New() )
			::oWSApplicationUser[len(::oWSApplicationUser)]:SoapRecv(oNodes1[nRElem1])
		Endif
	Next
Return

// WSDL Data Enumeration Front

WSSTRUCT PublicService_Front
	WSDATA   Value                     AS string
	WSDATA   cValueType                AS string
	WSDATA   aValueList                AS Array Of string
	WSMETHOD NEW
	WSMETHOD CLONE
=======
>>>>>>> .r192
	WSMETHOD SOAPSEND
ENDWSSTRUCT

<<<<<<< .mine
WSMETHOD NEW WSCLIENT PublicService_Front
	::Value := NIL
	::cValueType := "string"
	::aValueList := {}
	aadd(::aValueList , "CallCenter" )
	aadd(::aValueList , "CAR" )
Return Self

WSMETHOD SOAPSEND WSCLIENT PublicService_Front
	Local cSoap := "" 
	cSoap += WSSoapValue("Value", ::Value, NIL , "string", .F. , .F., 3 , NIL, .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_Front
	::Value := NIL
	If oResponse = NIL ; Return ; Endif 
	::Value :=  oResponse:TEXT
Return 

WSMETHOD CLONE WSCLIENT PublicService_Front
Local oClone := PublicService_Front():New()
	oClone:Value := ::Value
Return oClone

// WSDL Data Structure ObjectShipment

WSSTRUCT PublicService_ObjectShipment
	WSDATA   cAddress                  AS string OPTIONAL
	WSDATA   cCity                     AS string OPTIONAL
	WSDATA   cComplement               AS string OPTIONAL
	WSDATA   nCourierObjectId          AS long OPTIONAL
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   cCreateUser               AS string OPTIONAL
	WSDATA   cDateReturning            AS dateTime OPTIONAL
	WSDATA   nId                       AS long OPTIONAL
	WSDATA   nIncidentId               AS long OPTIONAL
	WSDATA   cIncomingZip              AS string OPTIONAL
	WSDATA   cNeighborhood             AS string OPTIONAL
	WSDATA   cNumberAddress            AS string OPTIONAL
	WSDATA   oWSObjectReasonReturning  AS PublicService_ObjectReasonReturning OPTIONAL
	WSDATA   cObservationCallCenter    AS string OPTIONAL
	WSDATA   cOutDropDate              AS dateTime OPTIONAL
	WSDATA   cOutPostDate              AS dateTime OPTIONAL
	WSDATA   cReasonReturningDetail    AS string OPTIONAL
	WSDATA   cReturnedObjectInvoiceNumber AS string OPTIONAL
	WSDATA   cReturnedObjectInvoiceSerie AS string OPTIONAL
	WSDATA   nSequence                 AS int OPTIONAL
	WSDATA   cState                    AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ObjectShipment
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ObjectShipment
Return

WSMETHOD CLONE WSCLIENT PublicService_ObjectShipment
	Local oClone := PublicService_ObjectShipment():NEW()
	oClone:cAddress             := ::cAddress
	oClone:cCity                := ::cCity
	oClone:cComplement          := ::cComplement
	oClone:nCourierObjectId     := ::nCourierObjectId
	oClone:cCreateDate          := ::cCreateDate
	oClone:cCreateUser          := ::cCreateUser
	oClone:cDateReturning       := ::cDateReturning
	oClone:nId                  := ::nId
	oClone:nIncidentId          := ::nIncidentId
	oClone:cIncomingZip         := ::cIncomingZip
	oClone:cNeighborhood        := ::cNeighborhood
	oClone:cNumberAddress       := ::cNumberAddress
	oClone:oWSObjectReasonReturning := IIF(::oWSObjectReasonReturning = NIL , NIL , ::oWSObjectReasonReturning:Clone() )
	oClone:cObservationCallCenter := ::cObservationCallCenter
	oClone:cOutDropDate         := ::cOutDropDate
	oClone:cOutPostDate         := ::cOutPostDate
	oClone:cReasonReturningDetail := ::cReasonReturningDetail
	oClone:cReturnedObjectInvoiceNumber := ::cReturnedObjectInvoiceNumber
	oClone:cReturnedObjectInvoiceSerie := ::cReturnedObjectInvoiceSerie
	oClone:nSequence            := ::nSequence
	oClone:cState               := ::cState
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_ObjectShipment
	Local cSoap := ""
	cSoap += WSSoapValue("Address", ::cAddress, ::cAddress , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("City", ::cCity, ::cCity , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Complement", ::cComplement, ::cComplement , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CourierObjectId", ::nCourierObjectId, ::nCourierObjectId , "long", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CreateDate", ::cCreateDate, ::cCreateDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CreateUser", ::cCreateUser, ::cCreateUser , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("DateReturning", ::cDateReturning, ::cDateReturning , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Id", ::nId, ::nId , "long", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncidentId", ::nIncidentId, ::nIncidentId , "long", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("IncomingZip", ::cIncomingZip, ::cIncomingZip , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Neighborhood", ::cNeighborhood, ::cNeighborhood , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("NumberAddress", ::cNumberAddress, ::cNumberAddress , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ObjectReasonReturning", ::oWSObjectReasonReturning, ::oWSObjectReasonReturning , "ObjectReasonReturning", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ObservationCallCenter", ::cObservationCallCenter, ::cObservationCallCenter , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("OutDropDate", ::cOutDropDate, ::cOutDropDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("OutPostDate", ::cOutPostDate, ::cOutPostDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReasonReturningDetail", ::cReasonReturningDetail, ::cReasonReturningDetail , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReturnedObjectInvoiceNumber", ::cReturnedObjectInvoiceNumber, ::cReturnedObjectInvoiceNumber , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ReturnedObjectInvoiceSerie", ::cReturnedObjectInvoiceSerie, ::cReturnedObjectInvoiceSerie , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Sequence", ::nSequence, ::nSequence , "int", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("State", ::cState, ::cState , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ObjectShipment
	Local oNode13
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cAddress           :=  WSAdvValue( oResponse,"_ADDRESS","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCity              :=  WSAdvValue( oResponse,"_CITY","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cComplement        :=  WSAdvValue( oResponse,"_COMPLEMENT","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nCourierObjectId   :=  WSAdvValue( oResponse,"_COURIEROBJECTID","long",NIL,NIL,NIL,"N",NIL,NIL) 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateUser        :=  WSAdvValue( oResponse,"_CREATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cDateReturning     :=  WSAdvValue( oResponse,"_DATERETURNING","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","long",NIL,NIL,NIL,"N",NIL,NIL) 
	::nIncidentId        :=  WSAdvValue( oResponse,"_INCIDENTID","long",NIL,NIL,NIL,"N",NIL,NIL) 
	::cIncomingZip       :=  WSAdvValue( oResponse,"_INCOMINGZIP","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cNeighborhood      :=  WSAdvValue( oResponse,"_NEIGHBORHOOD","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cNumberAddress     :=  WSAdvValue( oResponse,"_NUMBERADDRESS","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode13 :=  WSAdvValue( oResponse,"_OBJECTREASONRETURNING","ObjectReasonReturning",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode13 != NIL
		::oWSObjectReasonReturning := PublicService_ObjectReasonReturning():New()
		::oWSObjectReasonReturning:SoapRecv(oNode13)
	EndIf
	::cObservationCallCenter :=  WSAdvValue( oResponse,"_OBSERVATIONCALLCENTER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cOutDropDate       :=  WSAdvValue( oResponse,"_OUTDROPDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cOutPostDate       :=  WSAdvValue( oResponse,"_OUTPOSTDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReasonReturningDetail :=  WSAdvValue( oResponse,"_REASONRETURNINGDETAIL","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReturnedObjectInvoiceNumber :=  WSAdvValue( oResponse,"_RETURNEDOBJECTINVOICENUMBER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cReturnedObjectInvoiceSerie :=  WSAdvValue( oResponse,"_RETURNEDOBJECTINVOICESERIE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nSequence          :=  WSAdvValue( oResponse,"_SEQUENCE","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cState             :=  WSAdvValue( oResponse,"_STATE","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure ShipmentType

WSSTRUCT PublicService_ShipmentType
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   cCreateUser               AS string OPTIONAL
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   cLastUpdateDate           AS dateTime OPTIONAL
	WSDATA   cLastUpdateUser           AS string OPTIONAL
	WSDATA   cName                     AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ShipmentType
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ShipmentType
Return

WSMETHOD CLONE WSCLIENT PublicService_ShipmentType
	Local oClone := PublicService_ShipmentType():NEW()
	oClone:cCreateDate          := ::cCreateDate
	oClone:cCreateUser          := ::cCreateUser
	oClone:nId                  := ::nId
	oClone:cLastUpdateDate      := ::cLastUpdateDate
	oClone:cLastUpdateUser      := ::cLastUpdateUser
	oClone:cName                := ::cName
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ShipmentType
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateUser        :=  WSAdvValue( oResponse,"_CREATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cLastUpdateDate    :=  WSAdvValue( oResponse,"_LASTUPDATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastUpdateUser    :=  WSAdvValue( oResponse,"_LASTUPDATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cName              :=  WSAdvValue( oResponse,"_NAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure IBGECC2020

WSSTRUCT PublicService_IBGECC2020
	WSDATA   cCity                     AS string OPTIONAL
	WSDATA   cIBGECode                 AS string OPTIONAL
	WSDATA   nRecno                    AS int OPTIONAL
	WSDATA   cState                    AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_IBGECC2020
=======
WSMETHOD NEW WSCLIENT WSBGH_WSITENSSZ9
>>>>>>> .r192
	::Init()
Return Self

<<<<<<< .mine
WSMETHOD INIT WSCLIENT PublicService_IBGECC2020
=======
WSMETHOD INIT WSCLIENT WSBGH_WSITENSSZ9
>>>>>>> .r192
Return

<<<<<<< .mine
WSMETHOD CLONE WSCLIENT PublicService_IBGECC2020
	Local oClone := PublicService_IBGECC2020():NEW()
	oClone:cCity                := ::cCity
	oClone:cIBGECode            := ::cIBGECode
	oClone:nRecno               := ::nRecno
	oClone:cState               := ::cState
=======
WSMETHOD CLONE WSCLIENT WSBGH_WSITENSSZ9
	Local oClone := WSBGH_WSITENSSZ9():NEW()
	oClone:cCCODTEC             := ::cCCODTEC
	oClone:cCFASE1              := ::cCFASE1
	oClone:cCIMEI               := ::cCIMEI
	oClone:cCITEM               := ::cCITEM
	oClone:cCNUMOS              := ::cCNUMOS
	oClone:cCPARTNR             := ::cCPARTNR
	oClone:nNOPERACAO           := ::nNOPERACAO
	oClone:nNQTY                := ::nNQTY
>>>>>>> .r192
Return oClone

<<<<<<< .mine
WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_IBGECC2020
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCity              :=  WSAdvValue( oResponse,"_CITY","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cIBGECode          :=  WSAdvValue( oResponse,"_IBGECODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nRecno             :=  WSAdvValue( oResponse,"_RECNO","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cState             :=  WSAdvValue( oResponse,"_STATE","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return
=======
WSMETHOD SOAPSEND WSCLIENT WSBGH_WSITENSSZ9
	Local cSoap := ""
	cSoap += WSSoapValue("CCODTEC", ::cCCODTEC, ::cCCODTEC , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CFASE1", ::cCFASE1, ::cCFASE1 , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CIMEI", ::cCIMEI, ::cCIMEI , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CITEM", ::cCITEM, ::cCITEM , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CNUMOS", ::cCNUMOS, ::cCNUMOS , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("CPARTNR", ::cCPARTNR, ::cCPARTNR , "string", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("NOPERACAO", ::nNOPERACAO, ::nNOPERACAO , "float", .T. , .F., 0 , NIL, .F.) 
	cSoap += WSSoapValue("NQTY", ::nNQTY, ::nNQTY , "float", .T. , .F., 0 , NIL, .F.) 
Return cSoap
>>>>>>> .r192

<<<<<<< .mine
// WSDL Data Structure ProductSB1020

WSSTRUCT PublicService_ProductSB1020
	WSDATA   cCARCode                  AS string OPTIONAL
	WSDATA   cDescription              AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ProductSB1020
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ProductSB1020
Return

WSMETHOD CLONE WSCLIENT PublicService_ProductSB1020
	Local oClone := PublicService_ProductSB1020():NEW()
	oClone:cCARCode             := ::cCARCode
	oClone:cDescription         := ::cDescription
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ProductSB1020
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCARCode           :=  WSAdvValue( oResponse,"_CARCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cDescription       :=  WSAdvValue( oResponse,"_DESCRIPTION","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return
=======
>>>>>>> .r192

<<<<<<< .mine
// WSDL Data Structure ProductType

WSSTRUCT PublicService_ProductType
	WSDATA   lCanUseMailBox            AS boolean OPTIONAL
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   cCreateUser               AS string OPTIONAL
	WSDATA   nDefaultPrice             AS decimal OPTIONAL
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   cLastUpdateDate           AS dateTime OPTIONAL
	WSDATA   cLastUpdateUser           AS string OPTIONAL
	WSDATA   cName                     AS string OPTIONAL
	WSDATA   nOperationId              AS int OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ProductType
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ProductType
Return

WSMETHOD CLONE WSCLIENT PublicService_ProductType
	Local oClone := PublicService_ProductType():NEW()
	oClone:lCanUseMailBox       := ::lCanUseMailBox
	oClone:cCreateDate          := ::cCreateDate
	oClone:cCreateUser          := ::cCreateUser
	oClone:nDefaultPrice        := ::nDefaultPrice
	oClone:nId                  := ::nId
	oClone:cLastUpdateDate      := ::cLastUpdateDate
	oClone:cLastUpdateUser      := ::cLastUpdateUser
	oClone:cName                := ::cName
	oClone:nOperationId         := ::nOperationId
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ProductType
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::lCanUseMailBox     :=  WSAdvValue( oResponse,"_CANUSEMAILBOX","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateUser        :=  WSAdvValue( oResponse,"_CREATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nDefaultPrice      :=  WSAdvValue( oResponse,"_DEFAULTPRICE","decimal",NIL,NIL,NIL,"N",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cLastUpdateDate    :=  WSAdvValue( oResponse,"_LASTUPDATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastUpdateUser    :=  WSAdvValue( oResponse,"_LASTUPDATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cName              :=  WSAdvValue( oResponse,"_NAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nOperationId       :=  WSAdvValue( oResponse,"_OPERATIONID","int",NIL,NIL,NIL,"N",NIL,NIL) 
Return

// WSDL Data Structure State

WSSTRUCT PublicService_State
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   cCreateUser               AS string OPTIONAL
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   cLastUpdateDate           AS dateTime OPTIONAL
	WSDATA   cLastUpdateUser           AS string OPTIONAL
	WSDATA   nShipmentTypeId           AS int OPTIONAL
	WSDATA   cUf                       AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_State
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_State
Return

WSMETHOD CLONE WSCLIENT PublicService_State
	Local oClone := PublicService_State():NEW()
	oClone:cCreateDate          := ::cCreateDate
	oClone:cCreateUser          := ::cCreateUser
	oClone:nId                  := ::nId
	oClone:cLastUpdateDate      := ::cLastUpdateDate
	oClone:cLastUpdateUser      := ::cLastUpdateUser
	oClone:nShipmentTypeId      := ::nShipmentTypeId
	oClone:cUf                  := ::cUf
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_State
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateUser        :=  WSAdvValue( oResponse,"_CREATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cLastUpdateDate    :=  WSAdvValue( oResponse,"_LASTUPDATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastUpdateUser    :=  WSAdvValue( oResponse,"_LASTUPDATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nShipmentTypeId    :=  WSAdvValue( oResponse,"_SHIPMENTTYPEID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cUf                :=  WSAdvValue( oResponse,"_UF","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Enumeration IncidentStatusType

WSSTRUCT PublicService_IncidentStatusType
	WSDATA   Value                     AS string
	WSDATA   cValueType                AS string
	WSDATA   aValueList                AS Array Of string
	WSMETHOD NEW
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_IncidentStatusType
	::Value := NIL
	::cValueType := "string"
	::aValueList := {}
	aadd(::aValueList , "Undefined" )
	aadd(::aValueList , "WaitingObject" )
	aadd(::aValueList , "ObjectReceived" )
	aadd(::aValueList , "ObjectRepairing" )
	aadd(::aValueList , "RepairFinished" )
	aadd(::aValueList , "ObjectShipped" )
	aadd(::aValueList , "ReturnedAndWaitingNewAddress" )
	aadd(::aValueList , "ReturnedAndWaitingResend" )
	aadd(::aValueList , "PostedByCAR" )
	aadd(::aValueList , "GoingToShippment" )
	aadd(::aValueList , "DeliveredToClient" )
	aadd(::aValueList , "EticketNotValidated" )
	aadd(::aValueList , "ObjectPosted" )
	aadd(::aValueList , "PostDeliveredToCAR" )
	aadd(::aValueList , "ObjectInjured" )
	aadd(::aValueList , "EticketExpired" )
Return Self

WSMETHOD SOAPSEND WSCLIENT PublicService_IncidentStatusType
	Local cSoap := "" 
	cSoap += WSSoapValue("Value", ::Value, NIL , "string", .F. , .F., 3 , NIL, .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_IncidentStatusType
	::Value := NIL
	If oResponse = NIL ; Return ; Endif 
	::Value :=  oResponse:TEXT
Return 

WSMETHOD CLONE WSCLIENT PublicService_IncidentStatusType
Local oClone := PublicService_IncidentStatusType():New()
	oClone:Value := ::Value
Return oClone

// WSDL Data Structure IncidentStatusHistory

WSSTRUCT PublicService_IncidentStatusHistory
	WSDATA   oWSRepairStatus           AS PublicService_RepairStatus OPTIONAL
	WSDATA   cStatusDate               AS dateTime OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_IncidentStatusHistory
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_IncidentStatusHistory
Return

WSMETHOD CLONE WSCLIENT PublicService_IncidentStatusHistory
	Local oClone := PublicService_IncidentStatusHistory():NEW()
	oClone:oWSRepairStatus      := IIF(::oWSRepairStatus = NIL , NIL , ::oWSRepairStatus:Clone() )
	oClone:cStatusDate          := ::cStatusDate
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_IncidentStatusHistory
	Local cSoap := ""
	cSoap += WSSoapValue("RepairStatus", ::oWSRepairStatus, ::oWSRepairStatus , "RepairStatus", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("StatusDate", ::cStatusDate, ::cStatusDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_IncidentStatusHistory
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_REPAIRSTATUS","RepairStatus",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSRepairStatus := PublicService_RepairStatus():New()
		::oWSRepairStatus:SoapRecv(oNode1)
	EndIf
	::cStatusDate        :=  WSAdvValue( oResponse,"_STATUSDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure IncidentLockingHistory

WSSTRUCT PublicService_IncidentLockingHistory
	WSDATA   cComments                 AS string OPTIONAL
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   cCreateUser               AS string OPTIONAL
	WSDATA   cDateLock                 AS dateTime OPTIONAL
	WSDATA   cDateUnlock               AS dateTime OPTIONAL
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   oWSIncident               AS PublicService_Incident OPTIONAL
	WSDATA   nIncidentId               AS long OPTIONAL
	WSDATA   oWSIncidentLocking        AS PublicService_IncidentLocking OPTIONAL
	WSDATA   nIncidentLockingId        AS int OPTIONAL
	WSDATA   cLastUpdateDate           AS dateTime OPTIONAL
	WSDATA   cLastUpdateUser           AS string OPTIONAL
	WSDATA   cUserLocker               AS string OPTIONAL
	WSDATA   cUserUnlocker             AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_IncidentLockingHistory
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_IncidentLockingHistory
Return

WSMETHOD CLONE WSCLIENT PublicService_IncidentLockingHistory
	Local oClone := PublicService_IncidentLockingHistory():NEW()
	oClone:cComments            := ::cComments
	oClone:cCreateDate          := ::cCreateDate
	oClone:cCreateUser          := ::cCreateUser
	oClone:cDateLock            := ::cDateLock
	oClone:cDateUnlock          := ::cDateUnlock
	oClone:nId                  := ::nId
	oClone:oWSIncident          := IIF(::oWSIncident = NIL , NIL , ::oWSIncident:Clone() )
	oClone:nIncidentId          := ::nIncidentId
	oClone:oWSIncidentLocking   := IIF(::oWSIncidentLocking = NIL , NIL , ::oWSIncidentLocking:Clone() )
	oClone:nIncidentLockingId   := ::nIncidentLockingId
	oClone:cLastUpdateDate      := ::cLastUpdateDate
	oClone:cLastUpdateUser      := ::cLastUpdateUser
	oClone:cUserLocker          := ::cUserLocker
	oClone:cUserUnlocker        := ::cUserUnlocker
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_IncidentLockingHistory
	Local oNode7
	Local oNode9
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cComments          :=  WSAdvValue( oResponse,"_COMMENTS","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateUser        :=  WSAdvValue( oResponse,"_CREATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cDateLock          :=  WSAdvValue( oResponse,"_DATELOCK","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cDateUnlock        :=  WSAdvValue( oResponse,"_DATEUNLOCK","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	oNode7 :=  WSAdvValue( oResponse,"_INCIDENT","Incident",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode7 != NIL
		::oWSIncident := PublicService_Incident():New()
		::oWSIncident:SoapRecv(oNode7)
	EndIf
	::nIncidentId        :=  WSAdvValue( oResponse,"_INCIDENTID","long",NIL,NIL,NIL,"N",NIL,NIL) 
	oNode9 :=  WSAdvValue( oResponse,"_INCIDENTLOCKING","IncidentLocking",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode9 != NIL
		::oWSIncidentLocking := PublicService_IncidentLocking():New()
		::oWSIncidentLocking:SoapRecv(oNode9)
	EndIf
	::nIncidentLockingId :=  WSAdvValue( oResponse,"_INCIDENTLOCKINGID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cLastUpdateDate    :=  WSAdvValue( oResponse,"_LASTUPDATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastUpdateUser    :=  WSAdvValue( oResponse,"_LASTUPDATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cUserLocker        :=  WSAdvValue( oResponse,"_USERLOCKER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cUserUnlocker      :=  WSAdvValue( oResponse,"_USERUNLOCKER","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure ObjectProblemLink

WSSTRUCT PublicService_ObjectProblemLink
	WSDATA   nCourierObjectId          AS long OPTIONAL
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   cCreateUser               AS string OPTIONAL
	WSDATA   cDescription              AS string OPTIONAL
	WSDATA   nId                       AS long OPTIONAL
	WSDATA   oWSProblemLinkType        AS PublicService_ProblemLinkType OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ObjectProblemLink
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ObjectProblemLink
Return

WSMETHOD CLONE WSCLIENT PublicService_ObjectProblemLink
	Local oClone := PublicService_ObjectProblemLink():NEW()
	oClone:nCourierObjectId     := ::nCourierObjectId
	oClone:cCreateDate          := ::cCreateDate
	oClone:cCreateUser          := ::cCreateUser
	oClone:cDescription         := ::cDescription
	oClone:nId                  := ::nId
	oClone:oWSProblemLinkType   := IIF(::oWSProblemLinkType = NIL , NIL , ::oWSProblemLinkType:Clone() )
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_ObjectProblemLink
	Local cSoap := ""
	cSoap += WSSoapValue("CourierObjectId", ::nCourierObjectId, ::nCourierObjectId , "long", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CreateDate", ::cCreateDate, ::cCreateDate , "dateTime", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("CreateUser", ::cCreateUser, ::cCreateUser , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Description", ::cDescription, ::cDescription , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Id", ::nId, ::nId , "long", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("ProblemLinkType", ::oWSProblemLinkType, ::oWSProblemLinkType , "ProblemLinkType", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ObjectProblemLink
	Local oNode6
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::nCourierObjectId   :=  WSAdvValue( oResponse,"_COURIEROBJECTID","long",NIL,NIL,NIL,"N",NIL,NIL) 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateUser        :=  WSAdvValue( oResponse,"_CREATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cDescription       :=  WSAdvValue( oResponse,"_DESCRIPTION","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","long",NIL,NIL,NIL,"N",NIL,NIL) 
	oNode6 :=  WSAdvValue( oResponse,"_PROBLEMLINKTYPE","ProblemLinkType",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode6 != NIL
		::oWSProblemLinkType := PublicService_ProblemLinkType():New()
		::oWSProblemLinkType:SoapRecv(oNode6)
	EndIf
Return

// WSDL Data Structure ReturnedCourierObjectHistory

WSSTRUCT PublicService_ReturnedCourierObjectHistory
	WSDATA   oWSCourierObject          AS PublicService_CourierObject OPTIONAL
	WSDATA   cEctCity                  AS string OPTIONAL
	WSDATA   cEctComment               AS string OPTIONAL
	WSDATA   cEctLocal                 AS string OPTIONAL
	WSDATA   cEctState                 AS string OPTIONAL
	WSDATA   cEctType                  AS string OPTIONAL
	WSDATA   cEctZipcode               AS string OPTIONAL
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   cStatusCode               AS string OPTIONAL
	WSDATA   cStatusDate               AS dateTime OPTIONAL
	WSDATA   cStatusDescription        AS string OPTIONAL
	WSDATA   cStatusOrigin             AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ReturnedCourierObjectHistory
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ReturnedCourierObjectHistory
Return

WSMETHOD CLONE WSCLIENT PublicService_ReturnedCourierObjectHistory
	Local oClone := PublicService_ReturnedCourierObjectHistory():NEW()
	oClone:oWSCourierObject     := IIF(::oWSCourierObject = NIL , NIL , ::oWSCourierObject:Clone() )
	oClone:cEctCity             := ::cEctCity
	oClone:cEctComment          := ::cEctComment
	oClone:cEctLocal            := ::cEctLocal
	oClone:cEctState            := ::cEctState
	oClone:cEctType             := ::cEctType
	oClone:cEctZipcode          := ::cEctZipcode
	oClone:nId                  := ::nId
	oClone:cStatusCode          := ::cStatusCode
	oClone:cStatusDate          := ::cStatusDate
	oClone:cStatusDescription   := ::cStatusDescription
	oClone:cStatusOrigin        := ::cStatusOrigin
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ReturnedCourierObjectHistory
	Local oNode1
	::Init()
	If oResponse = NIL ; Return ; Endif 
	oNode1 :=  WSAdvValue( oResponse,"_COURIEROBJECT","CourierObject",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode1 != NIL
		::oWSCourierObject := PublicService_CourierObject():New()
		::oWSCourierObject:SoapRecv(oNode1)
	EndIf
	::cEctCity           :=  WSAdvValue( oResponse,"_ECTCITY","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cEctComment        :=  WSAdvValue( oResponse,"_ECTCOMMENT","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cEctLocal          :=  WSAdvValue( oResponse,"_ECTLOCAL","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cEctState          :=  WSAdvValue( oResponse,"_ECTSTATE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cEctType           :=  WSAdvValue( oResponse,"_ECTTYPE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cEctZipcode        :=  WSAdvValue( oResponse,"_ECTZIPCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cStatusCode        :=  WSAdvValue( oResponse,"_STATUSCODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cStatusDate        :=  WSAdvValue( oResponse,"_STATUSDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cStatusDescription :=  WSAdvValue( oResponse,"_STATUSDESCRIPTION","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cStatusOrigin      :=  WSAdvValue( oResponse,"_STATUSORIGIN","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Enumeration Access

WSSTRUCT PublicService_Access
	WSDATA   Value                     AS string
	WSDATA   cValueType                AS string
	WSDATA   aValueList                AS Array Of string
	WSMETHOD NEW
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_Access
	::Value := NIL
	::cValueType := "string"
	::aValueList := {}
	aadd(::aValueList , "StatusOs" )
	aadd(::aValueList , "Locking" )
	aadd(::aValueList , "Link" )
	aadd(::aValueList , "Resend" )
	aadd(::aValueList , "PickingObject" )
	aadd(::aValueList , "Incident" )
	aadd(::aValueList , "Administrative" )
	aadd(::aValueList , "Mail" )
Return Self

WSMETHOD SOAPSEND WSCLIENT PublicService_Access
	Local cSoap := "" 
	cSoap += WSSoapValue("Value", ::Value, NIL , "string", .F. , .F., 3 , NIL, .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_Access
	::Value := NIL
	If oResponse = NIL ; Return ; Endif 
	::Value :=  oResponse:TEXT
Return 

WSMETHOD CLONE WSCLIENT PublicService_Access
Local oClone := PublicService_Access():New()
	oClone:Value := ::Value
Return oClone

// WSDL Data Structure OperationZZJ020

WSSTRUCT PublicService_OperationZZJ020
	WSDATA   cDescription              AS string OPTIONAL
	WSDATA   cOperation                AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_OperationZZJ020
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_OperationZZJ020
Return

WSMETHOD CLONE WSCLIENT PublicService_OperationZZJ020
	Local oClone := PublicService_OperationZZJ020():NEW()
	oClone:cDescription         := ::cDescription
	oClone:cOperation           := ::cOperation
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_OperationZZJ020
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cDescription       :=  WSAdvValue( oResponse,"_DESCRIPTION","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cOperation         :=  WSAdvValue( oResponse,"_OPERATION","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure Module

WSSTRUCT PublicService_Module
	WSDATA   lAvailable                AS boolean OPTIONAL
	WSDATA   cCode                     AS string OPTIONAL
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   cCreateUser               AS string OPTIONAL
	WSDATA   oWSFrontEnd               AS PublicService_Front OPTIONAL
	WSDATA   nId                       AS long OPTIONAL
	WSDATA   cLastUpdateDate           AS dateTime OPTIONAL
	WSDATA   cLastUpdateUser           AS string OPTIONAL
	WSDATA   cName                     AS string OPTIONAL
	WSDATA   oWSOperation              AS PublicService_Operation OPTIONAL
	WSDATA   oWSPermissions            AS PublicService_ArrayOfAccess OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_Module
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_Module
Return

WSMETHOD CLONE WSCLIENT PublicService_Module
	Local oClone := PublicService_Module():NEW()
	oClone:lAvailable           := ::lAvailable
	oClone:cCode                := ::cCode
	oClone:cCreateDate          := ::cCreateDate
	oClone:cCreateUser          := ::cCreateUser
	oClone:oWSFrontEnd          := IIF(::oWSFrontEnd = NIL , NIL , ::oWSFrontEnd:Clone() )
	oClone:nId                  := ::nId
	oClone:cLastUpdateDate      := ::cLastUpdateDate
	oClone:cLastUpdateUser      := ::cLastUpdateUser
	oClone:cName                := ::cName
	oClone:oWSOperation         := IIF(::oWSOperation = NIL , NIL , ::oWSOperation:Clone() )
	oClone:oWSPermissions       := IIF(::oWSPermissions = NIL , NIL , ::oWSPermissions:Clone() )
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_Module
	Local oNode5
	Local oNode10
	Local oNode11
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::lAvailable         :=  WSAdvValue( oResponse,"_AVAILABLE","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cCode              :=  WSAdvValue( oResponse,"_CODE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateUser        :=  WSAdvValue( oResponse,"_CREATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode5 :=  WSAdvValue( oResponse,"_FRONTEND","Front",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode5 != NIL
		::oWSFrontEnd := PublicService_Front():New()
		::oWSFrontEnd:SoapRecv(oNode5)
	EndIf
	::nId                :=  WSAdvValue( oResponse,"_ID","long",NIL,NIL,NIL,"N",NIL,NIL) 
	::cLastUpdateDate    :=  WSAdvValue( oResponse,"_LASTUPDATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::cLastUpdateUser    :=  WSAdvValue( oResponse,"_LASTUPDATEUSER","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cName              :=  WSAdvValue( oResponse,"_NAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
	oNode10 :=  WSAdvValue( oResponse,"_OPERATION","Operation",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode10 != NIL
		::oWSOperation := PublicService_Operation():New()
		::oWSOperation:SoapRecv(oNode10)
	EndIf
	oNode11 :=  WSAdvValue( oResponse,"_PERMISSIONS","ArrayOfAccess",NIL,NIL,NIL,"O",NIL,NIL) 
	If oNode11 != NIL
		::oWSPermissions := PublicService_ArrayOfAccess():New()
		::oWSPermissions:SoapRecv(oNode11)
	EndIf
Return

// WSDL Data Structure IntegratorLog

WSSTRUCT PublicService_IntegratorLog
	WSDATA   cAction                   AS string OPTIONAL
	WSDATA   cCreateDate               AS dateTime OPTIONAL
	WSDATA   lError                    AS boolean OPTIONAL
	WSDATA   cMessage                  AS string OPTIONAL
	WSDATA   cMessagePreview           AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_IntegratorLog
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_IntegratorLog
Return

WSMETHOD CLONE WSCLIENT PublicService_IntegratorLog
	Local oClone := PublicService_IntegratorLog():NEW()
	oClone:cAction              := ::cAction
	oClone:cCreateDate          := ::cCreateDate
	oClone:lError               := ::lError
	oClone:cMessage             := ::cMessage
	oClone:cMessagePreview      := ::cMessagePreview
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_IntegratorLog
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cAction            :=  WSAdvValue( oResponse,"_ACTION","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cCreateDate        :=  WSAdvValue( oResponse,"_CREATEDATE","dateTime",NIL,NIL,NIL,"S",NIL,NIL) 
	::lError             :=  WSAdvValue( oResponse,"_ERROR","boolean",NIL,NIL,NIL,"L",NIL,NIL) 
	::cMessage           :=  WSAdvValue( oResponse,"_MESSAGE","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::cMessagePreview    :=  WSAdvValue( oResponse,"_MESSAGEPREVIEW","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure ObjectReasonReturning

WSSTRUCT PublicService_ObjectReasonReturning
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   cName                     AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ObjectReasonReturning
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_ObjectReasonReturning
Return

WSMETHOD CLONE WSCLIENT PublicService_ObjectReasonReturning
	Local oClone := PublicService_ObjectReasonReturning():NEW()
	oClone:nId                  := ::nId
	oClone:cName                := ::cName
Return oClone

WSMETHOD SOAPSEND WSCLIENT PublicService_ObjectReasonReturning
	Local cSoap := ""
	cSoap += WSSoapValue("Id", ::nId, ::nId , "int", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
	cSoap += WSSoapValue("Name", ::cName, ::cName , "string", .F. , .F., 0 , "http://schemas.datacontract.org/2004/07/BGHService.BussinessLayer", .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ObjectReasonReturning
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cName              :=  WSAdvValue( oResponse,"_NAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Structure IncidentLocking

WSSTRUCT PublicService_IncidentLocking
	WSDATA   cDescription              AS string OPTIONAL
	WSDATA   nId                       AS int OPTIONAL
	WSDATA   cName                     AS string OPTIONAL
	WSMETHOD NEW
	WSMETHOD INIT
	WSMETHOD CLONE
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_IncidentLocking
	::Init()
Return Self

WSMETHOD INIT WSCLIENT PublicService_IncidentLocking
Return

WSMETHOD CLONE WSCLIENT PublicService_IncidentLocking
	Local oClone := PublicService_IncidentLocking():NEW()
	oClone:cDescription         := ::cDescription
	oClone:nId                  := ::nId
	oClone:cName                := ::cName
Return oClone

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_IncidentLocking
	::Init()
	If oResponse = NIL ; Return ; Endif 
	::cDescription       :=  WSAdvValue( oResponse,"_DESCRIPTION","string",NIL,NIL,NIL,"S",NIL,NIL) 
	::nId                :=  WSAdvValue( oResponse,"_ID","int",NIL,NIL,NIL,"N",NIL,NIL) 
	::cName              :=  WSAdvValue( oResponse,"_NAME","string",NIL,NIL,NIL,"S",NIL,NIL) 
Return

// WSDL Data Enumeration ProblemLinkType

WSSTRUCT PublicService_ProblemLinkType
	WSDATA   Value                     AS string
	WSDATA   cValueType                AS string
	WSDATA   aValueList                AS Array Of string
	WSMETHOD NEW
	WSMETHOD CLONE
	WSMETHOD SOAPSEND
	WSMETHOD SOAPRECV
ENDWSSTRUCT

WSMETHOD NEW WSCLIENT PublicService_ProblemLinkType
	::Value := NIL
	::cValueType := "string"
	::aValueList := {}
	aadd(::aValueList , "IncidentNotFound" )
	aadd(::aValueList , "EticketNotFound" )
	aadd(::aValueList , "CourierObjectDuplicated" )
	aadd(::aValueList , "InvalidDocumentCustomer" )
	aadd(::aValueList , "InvalidZip" )
	aadd(::aValueList , "ProductNotFound" )
Return Self

WSMETHOD SOAPSEND WSCLIENT PublicService_ProblemLinkType
	Local cSoap := "" 
	cSoap += WSSoapValue("Value", ::Value, NIL , "string", .F. , .F., 3 , NIL, .F.) 
Return cSoap

WSMETHOD SOAPRECV WSSEND oResponse WSCLIENT PublicService_ProblemLinkType
	::Value := NIL
	If oResponse = NIL ; Return ; Endif 
	::Value :=  oResponse:TEXT
Return 

WSMETHOD CLONE WSCLIENT PublicService_ProblemLinkType
Local oClone := PublicService_ProblemLinkType():New()
	oClone:Value := ::Value
Return oClone


=======
>>>>>>> .r192
