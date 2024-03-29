#import <Foundation/Foundation.h>

#import "PlayFabMultiplayerDataModels.h"
#import "PlayFabError.h"
#import "PlayFabSettings.h"


@interface PlayFabMultiplayerAPI : NSObject

+(NSString*) GetURL;


		
typedef void(^CancelAllMatchmakingTicketsForPlayerCallback)(MultiplayerCancelAllMatchmakingTicketsForPlayerResult* result, NSObject* userData);
		
typedef void(^CancelAllServerBackfillTicketsForPlayerCallback)(MultiplayerCancelAllServerBackfillTicketsForPlayerResult* result, NSObject* userData);
		
typedef void(^CancelMatchmakingTicketCallback)(MultiplayerCancelMatchmakingTicketResult* result, NSObject* userData);
		
typedef void(^CancelServerBackfillTicketCallback)(MultiplayerCancelServerBackfillTicketResult* result, NSObject* userData);
		
typedef void(^CreateBuildAliasCallback)(MultiplayerBuildAliasDetailsResponse* result, NSObject* userData);
		
typedef void(^CreateBuildWithCustomContainerCallback)(MultiplayerCreateBuildWithCustomContainerResponse* result, NSObject* userData);
		
typedef void(^CreateBuildWithManagedContainerCallback)(MultiplayerCreateBuildWithManagedContainerResponse* result, NSObject* userData);
		
typedef void(^CreateBuildWithProcessBasedServerCallback)(MultiplayerCreateBuildWithProcessBasedServerResponse* result, NSObject* userData);
		
typedef void(^CreateLobbyCallback)(MultiplayerCreateLobbyResult* result, NSObject* userData);
		
typedef void(^CreateMatchmakingTicketCallback)(MultiplayerCreateMatchmakingTicketResult* result, NSObject* userData);
		
typedef void(^CreateRemoteUserCallback)(MultiplayerCreateRemoteUserResponse* result, NSObject* userData);
		
typedef void(^CreateServerBackfillTicketCallback)(MultiplayerCreateServerBackfillTicketResult* result, NSObject* userData);
		
typedef void(^CreateServerMatchmakingTicketCallback)(MultiplayerCreateMatchmakingTicketResult* result, NSObject* userData);
		
typedef void(^CreateTitleMultiplayerServersQuotaChangeCallback)(MultiplayerCreateTitleMultiplayerServersQuotaChangeResponse* result, NSObject* userData);
		
typedef void(^DeleteAssetCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		
typedef void(^DeleteBuildCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		
typedef void(^DeleteBuildAliasCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		
typedef void(^DeleteBuildRegionCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		
typedef void(^DeleteCertificateCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		
typedef void(^DeleteContainerImageRepositoryCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		
typedef void(^DeleteLobbyCallback)(MultiplayerLobbyEmptyResult* result, NSObject* userData);
		
typedef void(^DeleteRemoteUserCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		
typedef void(^EnableMultiplayerServersForTitleCallback)(MultiplayerEnableMultiplayerServersForTitleResponse* result, NSObject* userData);
		
typedef void(^FindFriendLobbiesCallback)(MultiplayerFindFriendLobbiesResult* result, NSObject* userData);
		
typedef void(^FindLobbiesCallback)(MultiplayerFindLobbiesResult* result, NSObject* userData);
		
typedef void(^GetAssetDownloadUrlCallback)(MultiplayerGetAssetDownloadUrlResponse* result, NSObject* userData);
		
typedef void(^GetAssetUploadUrlCallback)(MultiplayerGetAssetUploadUrlResponse* result, NSObject* userData);
		
typedef void(^GetBuildCallback)(MultiplayerGetBuildResponse* result, NSObject* userData);
		
typedef void(^GetBuildAliasCallback)(MultiplayerBuildAliasDetailsResponse* result, NSObject* userData);
		
typedef void(^GetContainerRegistryCredentialsCallback)(MultiplayerGetContainerRegistryCredentialsResponse* result, NSObject* userData);
		
typedef void(^GetLobbyCallback)(MultiplayerGetLobbyResult* result, NSObject* userData);
		
typedef void(^GetMatchCallback)(MultiplayerGetMatchResult* result, NSObject* userData);
		
typedef void(^GetMatchmakingTicketCallback)(MultiplayerGetMatchmakingTicketResult* result, NSObject* userData);
		
typedef void(^GetMultiplayerServerDetailsCallback)(MultiplayerGetMultiplayerServerDetailsResponse* result, NSObject* userData);
		
typedef void(^GetMultiplayerServerLogsCallback)(MultiplayerGetMultiplayerServerLogsResponse* result, NSObject* userData);
		
typedef void(^GetMultiplayerSessionLogsBySessionIdCallback)(MultiplayerGetMultiplayerServerLogsResponse* result, NSObject* userData);
		
typedef void(^GetQueueStatisticsCallback)(MultiplayerGetQueueStatisticsResult* result, NSObject* userData);
		
typedef void(^GetRemoteLoginEndpointCallback)(MultiplayerGetRemoteLoginEndpointResponse* result, NSObject* userData);
		
typedef void(^GetServerBackfillTicketCallback)(MultiplayerGetServerBackfillTicketResult* result, NSObject* userData);
		
typedef void(^GetTitleEnabledForMultiplayerServersStatusCallback)(MultiplayerGetTitleEnabledForMultiplayerServersStatusResponse* result, NSObject* userData);
		
typedef void(^GetTitleMultiplayerServersQuotaChangeCallback)(MultiplayerGetTitleMultiplayerServersQuotaChangeResponse* result, NSObject* userData);
		
typedef void(^GetTitleMultiplayerServersQuotasCallback)(MultiplayerGetTitleMultiplayerServersQuotasResponse* result, NSObject* userData);
		
typedef void(^InviteToLobbyCallback)(MultiplayerLobbyEmptyResult* result, NSObject* userData);
		
typedef void(^JoinArrangedLobbyCallback)(MultiplayerJoinLobbyResult* result, NSObject* userData);
		
typedef void(^JoinLobbyCallback)(MultiplayerJoinLobbyResult* result, NSObject* userData);
		
typedef void(^JoinMatchmakingTicketCallback)(MultiplayerJoinMatchmakingTicketResult* result, NSObject* userData);
		
typedef void(^LeaveLobbyCallback)(MultiplayerLobbyEmptyResult* result, NSObject* userData);
		
typedef void(^ListArchivedMultiplayerServersCallback)(MultiplayerListMultiplayerServersResponse* result, NSObject* userData);
		
typedef void(^ListAssetSummariesCallback)(MultiplayerListAssetSummariesResponse* result, NSObject* userData);
		
typedef void(^ListBuildAliasesCallback)(MultiplayerListBuildAliasesResponse* result, NSObject* userData);
		
typedef void(^ListBuildSummariesV2Callback)(MultiplayerListBuildSummariesResponse* result, NSObject* userData);
		
typedef void(^ListCertificateSummariesCallback)(MultiplayerListCertificateSummariesResponse* result, NSObject* userData);
		
typedef void(^ListContainerImagesCallback)(MultiplayerListContainerImagesResponse* result, NSObject* userData);
		
typedef void(^ListContainerImageTagsCallback)(MultiplayerListContainerImageTagsResponse* result, NSObject* userData);
		
typedef void(^ListMatchmakingTicketsForPlayerCallback)(MultiplayerListMatchmakingTicketsForPlayerResult* result, NSObject* userData);
		
typedef void(^ListMultiplayerServersCallback)(MultiplayerListMultiplayerServersResponse* result, NSObject* userData);
		
typedef void(^ListPartyQosServersCallback)(MultiplayerListPartyQosServersResponse* result, NSObject* userData);
		
typedef void(^ListQosServersForTitleCallback)(MultiplayerListQosServersForTitleResponse* result, NSObject* userData);
		
typedef void(^ListServerBackfillTicketsForPlayerCallback)(MultiplayerListServerBackfillTicketsForPlayerResult* result, NSObject* userData);
		
typedef void(^ListTitleMultiplayerServersQuotaChangesCallback)(MultiplayerListTitleMultiplayerServersQuotaChangesResponse* result, NSObject* userData);
		
typedef void(^ListVirtualMachineSummariesCallback)(MultiplayerListVirtualMachineSummariesResponse* result, NSObject* userData);
		
typedef void(^RemoveMemberCallback)(MultiplayerLobbyEmptyResult* result, NSObject* userData);
		
typedef void(^RequestMultiplayerServerCallback)(MultiplayerRequestMultiplayerServerResponse* result, NSObject* userData);
		
typedef void(^RolloverContainerRegistryCredentialsCallback)(MultiplayerRolloverContainerRegistryCredentialsResponse* result, NSObject* userData);
		
typedef void(^ShutdownMultiplayerServerCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		
typedef void(^SubscribeToLobbyResourceCallback)(MultiplayerSubscribeToLobbyResourceResult* result, NSObject* userData);
		
typedef void(^UnsubscribeFromLobbyResourceCallback)(MultiplayerLobbyEmptyResult* result, NSObject* userData);
		
typedef void(^UntagContainerImageCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		
typedef void(^UpdateBuildAliasCallback)(MultiplayerBuildAliasDetailsResponse* result, NSObject* userData);
		
typedef void(^UpdateBuildNameCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		
typedef void(^UpdateBuildRegionCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		
typedef void(^UpdateBuildRegionsCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		
typedef void(^UpdateLobbyCallback)(MultiplayerLobbyEmptyResult* result, NSObject* userData);
		
typedef void(^UploadCertificateCallback)(MultiplayerEmptyResponse* result, NSObject* userData);
		

+ (PlayFabClientAPI*) GetInstance;

		

// ------------ Generated API calls
		
-(void) CancelAllMatchmakingTicketsForPlayer:(MultiplayerCancelAllMatchmakingTicketsForPlayerRequest*)request success:(CancelAllMatchmakingTicketsForPlayerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CancelAllServerBackfillTicketsForPlayer:(MultiplayerCancelAllServerBackfillTicketsForPlayerRequest*)request success:(CancelAllServerBackfillTicketsForPlayerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CancelMatchmakingTicket:(MultiplayerCancelMatchmakingTicketRequest*)request success:(CancelMatchmakingTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CancelServerBackfillTicket:(MultiplayerCancelServerBackfillTicketRequest*)request success:(CancelServerBackfillTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateBuildAlias:(MultiplayerCreateBuildAliasRequest*)request success:(CreateBuildAliasCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateBuildWithCustomContainer:(MultiplayerCreateBuildWithCustomContainerRequest*)request success:(CreateBuildWithCustomContainerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateBuildWithManagedContainer:(MultiplayerCreateBuildWithManagedContainerRequest*)request success:(CreateBuildWithManagedContainerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateBuildWithProcessBasedServer:(MultiplayerCreateBuildWithProcessBasedServerRequest*)request success:(CreateBuildWithProcessBasedServerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateLobby:(MultiplayerCreateLobbyRequest*)request success:(CreateLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateMatchmakingTicket:(MultiplayerCreateMatchmakingTicketRequest*)request success:(CreateMatchmakingTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateRemoteUser:(MultiplayerCreateRemoteUserRequest*)request success:(CreateRemoteUserCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateServerBackfillTicket:(MultiplayerCreateServerBackfillTicketRequest*)request success:(CreateServerBackfillTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateServerMatchmakingTicket:(MultiplayerCreateServerMatchmakingTicketRequest*)request success:(CreateServerMatchmakingTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateTitleMultiplayerServersQuotaChange:(MultiplayerCreateTitleMultiplayerServersQuotaChangeRequest*)request success:(CreateTitleMultiplayerServersQuotaChangeCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteAsset:(MultiplayerDeleteAssetRequest*)request success:(DeleteAssetCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteBuild:(MultiplayerDeleteBuildRequest*)request success:(DeleteBuildCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteBuildAlias:(MultiplayerDeleteBuildAliasRequest*)request success:(DeleteBuildAliasCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteBuildRegion:(MultiplayerDeleteBuildRegionRequest*)request success:(DeleteBuildRegionCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteCertificate:(MultiplayerDeleteCertificateRequest*)request success:(DeleteCertificateCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteContainerImageRepository:(MultiplayerDeleteContainerImageRequest*)request success:(DeleteContainerImageRepositoryCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteLobby:(MultiplayerDeleteLobbyRequest*)request success:(DeleteLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteRemoteUser:(MultiplayerDeleteRemoteUserRequest*)request success:(DeleteRemoteUserCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) EnableMultiplayerServersForTitle:(MultiplayerEnableMultiplayerServersForTitleRequest*)request success:(EnableMultiplayerServersForTitleCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) FindFriendLobbies:(MultiplayerFindFriendLobbiesRequest*)request success:(FindFriendLobbiesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) FindLobbies:(MultiplayerFindLobbiesRequest*)request success:(FindLobbiesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetAssetDownloadUrl:(MultiplayerGetAssetDownloadUrlRequest*)request success:(GetAssetDownloadUrlCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetAssetUploadUrl:(MultiplayerGetAssetUploadUrlRequest*)request success:(GetAssetUploadUrlCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetBuild:(MultiplayerGetBuildRequest*)request success:(GetBuildCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetBuildAlias:(MultiplayerGetBuildAliasRequest*)request success:(GetBuildAliasCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetContainerRegistryCredentials:(MultiplayerGetContainerRegistryCredentialsRequest*)request success:(GetContainerRegistryCredentialsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetLobby:(MultiplayerGetLobbyRequest*)request success:(GetLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetMatch:(MultiplayerGetMatchRequest*)request success:(GetMatchCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetMatchmakingTicket:(MultiplayerGetMatchmakingTicketRequest*)request success:(GetMatchmakingTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetMultiplayerServerDetails:(MultiplayerGetMultiplayerServerDetailsRequest*)request success:(GetMultiplayerServerDetailsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetMultiplayerServerLogs:(MultiplayerGetMultiplayerServerLogsRequest*)request success:(GetMultiplayerServerLogsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetMultiplayerSessionLogsBySessionId:(MultiplayerGetMultiplayerSessionLogsBySessionIdRequest*)request success:(GetMultiplayerSessionLogsBySessionIdCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetQueueStatistics:(MultiplayerGetQueueStatisticsRequest*)request success:(GetQueueStatisticsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetRemoteLoginEndpoint:(MultiplayerGetRemoteLoginEndpointRequest*)request success:(GetRemoteLoginEndpointCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetServerBackfillTicket:(MultiplayerGetServerBackfillTicketRequest*)request success:(GetServerBackfillTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetTitleEnabledForMultiplayerServersStatus:(MultiplayerGetTitleEnabledForMultiplayerServersStatusRequest*)request success:(GetTitleEnabledForMultiplayerServersStatusCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetTitleMultiplayerServersQuotaChange:(MultiplayerGetTitleMultiplayerServersQuotaChangeRequest*)request success:(GetTitleMultiplayerServersQuotaChangeCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetTitleMultiplayerServersQuotas:(MultiplayerGetTitleMultiplayerServersQuotasRequest*)request success:(GetTitleMultiplayerServersQuotasCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) InviteToLobby:(MultiplayerInviteToLobbyRequest*)request success:(InviteToLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) JoinArrangedLobby:(MultiplayerJoinArrangedLobbyRequest*)request success:(JoinArrangedLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) JoinLobby:(MultiplayerJoinLobbyRequest*)request success:(JoinLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) JoinMatchmakingTicket:(MultiplayerJoinMatchmakingTicketRequest*)request success:(JoinMatchmakingTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) LeaveLobby:(MultiplayerLeaveLobbyRequest*)request success:(LeaveLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListArchivedMultiplayerServers:(MultiplayerListMultiplayerServersRequest*)request success:(ListArchivedMultiplayerServersCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListAssetSummaries:(MultiplayerListAssetSummariesRequest*)request success:(ListAssetSummariesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListBuildAliases:(MultiplayerListBuildAliasesRequest*)request success:(ListBuildAliasesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListBuildSummariesV2:(MultiplayerListBuildSummariesRequest*)request success:(ListBuildSummariesV2Callback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListCertificateSummaries:(MultiplayerListCertificateSummariesRequest*)request success:(ListCertificateSummariesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListContainerImages:(MultiplayerListContainerImagesRequest*)request success:(ListContainerImagesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListContainerImageTags:(MultiplayerListContainerImageTagsRequest*)request success:(ListContainerImageTagsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListMatchmakingTicketsForPlayer:(MultiplayerListMatchmakingTicketsForPlayerRequest*)request success:(ListMatchmakingTicketsForPlayerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListMultiplayerServers:(MultiplayerListMultiplayerServersRequest*)request success:(ListMultiplayerServersCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListPartyQosServers:(MultiplayerListPartyQosServersRequest*)request success:(ListPartyQosServersCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListQosServersForTitle:(MultiplayerListQosServersForTitleRequest*)request success:(ListQosServersForTitleCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListServerBackfillTicketsForPlayer:(MultiplayerListServerBackfillTicketsForPlayerRequest*)request success:(ListServerBackfillTicketsForPlayerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListTitleMultiplayerServersQuotaChanges:(MultiplayerListTitleMultiplayerServersQuotaChangesRequest*)request success:(ListTitleMultiplayerServersQuotaChangesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListVirtualMachineSummaries:(MultiplayerListVirtualMachineSummariesRequest*)request success:(ListVirtualMachineSummariesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) RemoveMember:(MultiplayerRemoveMemberFromLobbyRequest*)request success:(RemoveMemberCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) RequestMultiplayerServer:(MultiplayerRequestMultiplayerServerRequest*)request success:(RequestMultiplayerServerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) RolloverContainerRegistryCredentials:(MultiplayerRolloverContainerRegistryCredentialsRequest*)request success:(RolloverContainerRegistryCredentialsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ShutdownMultiplayerServer:(MultiplayerShutdownMultiplayerServerRequest*)request success:(ShutdownMultiplayerServerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) SubscribeToLobbyResource:(MultiplayerSubscribeToLobbyResourceRequest*)request success:(SubscribeToLobbyResourceCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UnsubscribeFromLobbyResource:(MultiplayerUnsubscribeFromLobbyResourceRequest*)request success:(UnsubscribeFromLobbyResourceCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UntagContainerImage:(MultiplayerUntagContainerImageRequest*)request success:(UntagContainerImageCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UpdateBuildAlias:(MultiplayerUpdateBuildAliasRequest*)request success:(UpdateBuildAliasCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UpdateBuildName:(MultiplayerUpdateBuildNameRequest*)request success:(UpdateBuildNameCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UpdateBuildRegion:(MultiplayerUpdateBuildRegionRequest*)request success:(UpdateBuildRegionCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UpdateBuildRegions:(MultiplayerUpdateBuildRegionsRequest*)request success:(UpdateBuildRegionsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UpdateLobby:(MultiplayerUpdateLobbyRequest*)request success:(UpdateLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UploadCertificate:(MultiplayerUploadCertificateRequest*)request success:(UploadCertificateCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		

@end
