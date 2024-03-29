#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"


typedef enum
{
    MultiplayerAccessPolicyPublic,
    MultiplayerAccessPolicyFriends,
    MultiplayerAccessPolicyPrivate
} MultiplayerAccessPolicy;

typedef enum
{
    MultiplayerAzureRegionAustraliaEast,
    MultiplayerAzureRegionAustraliaSoutheast,
    MultiplayerAzureRegionBrazilSouth,
    MultiplayerAzureRegionCentralUs,
    MultiplayerAzureRegionEastAsia,
    MultiplayerAzureRegionEastUs,
    MultiplayerAzureRegionEastUs2,
    MultiplayerAzureRegionJapanEast,
    MultiplayerAzureRegionJapanWest,
    MultiplayerAzureRegionNorthCentralUs,
    MultiplayerAzureRegionNorthEurope,
    MultiplayerAzureRegionSouthCentralUs,
    MultiplayerAzureRegionSoutheastAsia,
    MultiplayerAzureRegionWestEurope,
    MultiplayerAzureRegionWestUs,
    MultiplayerAzureRegionSouthAfricaNorth,
    MultiplayerAzureRegionWestCentralUs,
    MultiplayerAzureRegionKoreaCentral,
    MultiplayerAzureRegionFranceCentral,
    MultiplayerAzureRegionWestUs2,
    MultiplayerAzureRegionCentralIndia,
    MultiplayerAzureRegionUaeNorth,
    MultiplayerAzureRegionUkSouth
} MultiplayerAzureRegion;

typedef enum
{
    MultiplayerAzureVmFamilyA,
    MultiplayerAzureVmFamilyAv2,
    MultiplayerAzureVmFamilyDv2,
    MultiplayerAzureVmFamilyDv3,
    MultiplayerAzureVmFamilyF,
    MultiplayerAzureVmFamilyFsv2,
    MultiplayerAzureVmFamilyDasv4,
    MultiplayerAzureVmFamilyDav4,
    MultiplayerAzureVmFamilyEav4,
    MultiplayerAzureVmFamilyEasv4,
    MultiplayerAzureVmFamilyEv4,
    MultiplayerAzureVmFamilyEsv4,
    MultiplayerAzureVmFamilyDsv3,
    MultiplayerAzureVmFamilyDsv2,
    MultiplayerAzureVmFamilyNCasT4_v3,
    MultiplayerAzureVmFamilyDdv4,
    MultiplayerAzureVmFamilyDdsv4,
    MultiplayerAzureVmFamilyHBv3
} MultiplayerAzureVmFamily;

typedef enum
{
    MultiplayerAzureVmSizeStandard_A1,
    MultiplayerAzureVmSizeStandard_A2,
    MultiplayerAzureVmSizeStandard_A3,
    MultiplayerAzureVmSizeStandard_A4,
    MultiplayerAzureVmSizeStandard_A1_v2,
    MultiplayerAzureVmSizeStandard_A2_v2,
    MultiplayerAzureVmSizeStandard_A4_v2,
    MultiplayerAzureVmSizeStandard_A8_v2,
    MultiplayerAzureVmSizeStandard_D1_v2,
    MultiplayerAzureVmSizeStandard_D2_v2,
    MultiplayerAzureVmSizeStandard_D3_v2,
    MultiplayerAzureVmSizeStandard_D4_v2,
    MultiplayerAzureVmSizeStandard_D5_v2,
    MultiplayerAzureVmSizeStandard_D2_v3,
    MultiplayerAzureVmSizeStandard_D4_v3,
    MultiplayerAzureVmSizeStandard_D8_v3,
    MultiplayerAzureVmSizeStandard_D16_v3,
    MultiplayerAzureVmSizeStandard_F1,
    MultiplayerAzureVmSizeStandard_F2,
    MultiplayerAzureVmSizeStandard_F4,
    MultiplayerAzureVmSizeStandard_F8,
    MultiplayerAzureVmSizeStandard_F16,
    MultiplayerAzureVmSizeStandard_F2s_v2,
    MultiplayerAzureVmSizeStandard_F4s_v2,
    MultiplayerAzureVmSizeStandard_F8s_v2,
    MultiplayerAzureVmSizeStandard_F16s_v2,
    MultiplayerAzureVmSizeStandard_D2as_v4,
    MultiplayerAzureVmSizeStandard_D4as_v4,
    MultiplayerAzureVmSizeStandard_D8as_v4,
    MultiplayerAzureVmSizeStandard_D16as_v4,
    MultiplayerAzureVmSizeStandard_D2a_v4,
    MultiplayerAzureVmSizeStandard_D4a_v4,
    MultiplayerAzureVmSizeStandard_D8a_v4,
    MultiplayerAzureVmSizeStandard_D16a_v4,
    MultiplayerAzureVmSizeStandard_E2a_v4,
    MultiplayerAzureVmSizeStandard_E4a_v4,
    MultiplayerAzureVmSizeStandard_E8a_v4,
    MultiplayerAzureVmSizeStandard_E16a_v4,
    MultiplayerAzureVmSizeStandard_E2as_v4,
    MultiplayerAzureVmSizeStandard_E4as_v4,
    MultiplayerAzureVmSizeStandard_E8as_v4,
    MultiplayerAzureVmSizeStandard_E16as_v4,
    MultiplayerAzureVmSizeStandard_D2s_v3,
    MultiplayerAzureVmSizeStandard_D4s_v3,
    MultiplayerAzureVmSizeStandard_D8s_v3,
    MultiplayerAzureVmSizeStandard_D16s_v3,
    MultiplayerAzureVmSizeStandard_DS1_v2,
    MultiplayerAzureVmSizeStandard_DS2_v2,
    MultiplayerAzureVmSizeStandard_DS3_v2,
    MultiplayerAzureVmSizeStandard_DS4_v2,
    MultiplayerAzureVmSizeStandard_DS5_v2,
    MultiplayerAzureVmSizeStandard_NC4as_T4_v3,
    MultiplayerAzureVmSizeStandard_D2d_v4,
    MultiplayerAzureVmSizeStandard_D4d_v4,
    MultiplayerAzureVmSizeStandard_D8d_v4,
    MultiplayerAzureVmSizeStandard_D16d_v4,
    MultiplayerAzureVmSizeStandard_D2ds_v4,
    MultiplayerAzureVmSizeStandard_D4ds_v4,
    MultiplayerAzureVmSizeStandard_D8ds_v4,
    MultiplayerAzureVmSizeStandard_D16ds_v4,
    MultiplayerAzureVmSizeStandard_HB120_16rs_v3,
    MultiplayerAzureVmSizeStandard_HB120_32rs_v3,
    MultiplayerAzureVmSizeStandard_HB120_64rs_v3,
    MultiplayerAzureVmSizeStandard_HB120_96rs_v3,
    MultiplayerAzureVmSizeStandard_HB120rs_v3
} MultiplayerAzureVmSize;

typedef enum
{
    MultiplayerCancellationReasonRequested,
    MultiplayerCancellationReasonInternal,
    MultiplayerCancellationReasonTimeout
} MultiplayerCancellationReason;

typedef enum
{
    MultiplayerContainerFlavorManagedWindowsServerCore,
    MultiplayerContainerFlavorCustomLinux,
    MultiplayerContainerFlavorManagedWindowsServerCorePreview,
    MultiplayerContainerFlavorInvalid
} MultiplayerContainerFlavor;

typedef enum
{
    MultiplayerProtocolTypeTCP,
    MultiplayerProtocolTypeUDP
} MultiplayerProtocolType;

typedef enum
{
    MultiplayerOwnerMigrationPolicyNone,
    MultiplayerOwnerMigrationPolicyAutomatic,
    MultiplayerOwnerMigrationPolicyManual,
    MultiplayerOwnerMigrationPolicyServer
} MultiplayerOwnerMigrationPolicy;

typedef enum
{
    MultiplayerTitleMultiplayerServerEnabledStatusInitializing,
    MultiplayerTitleMultiplayerServerEnabledStatusEnabled,
    MultiplayerTitleMultiplayerServerEnabledStatusDisabled
} MultiplayerTitleMultiplayerServerEnabledStatus;

typedef enum
{
    MultiplayerMembershipLockUnlocked,
    MultiplayerMembershipLockLocked
} MultiplayerMembershipLock;

typedef enum
{
    MultiplayerOsPlatformWindows,
    MultiplayerOsPlatformLinux
} MultiplayerOsPlatform;

typedef enum
{
    MultiplayerServerTypeContainer,
    MultiplayerServerTypeProcess
} MultiplayerServerType;

typedef enum
{
    MultiplayerSubscriptionTypeLobbyChange,
    MultiplayerSubscriptionTypeLobbyInvite
} MultiplayerSubscriptionType;

//predeclare all non-enum classes

@class MultiplayerAssetReference;

@class MultiplayerAssetReferenceParams;

@class MultiplayerAssetSummary;

@class MultiplayerBuildAliasDetailsResponse;

@class MultiplayerBuildAliasParams;

@class MultiplayerBuildRegion;

@class MultiplayerBuildRegionParams;

@class MultiplayerBuildSelectionCriterion;

@class MultiplayerBuildSummary;

@class MultiplayerCancelAllMatchmakingTicketsForPlayerRequest;

@class MultiplayerCancelAllMatchmakingTicketsForPlayerResult;

@class MultiplayerCancelAllServerBackfillTicketsForPlayerRequest;

@class MultiplayerCancelAllServerBackfillTicketsForPlayerResult;

@class MultiplayerCancelMatchmakingTicketRequest;

@class MultiplayerCancelMatchmakingTicketResult;

@class MultiplayerCancelServerBackfillTicketRequest;

@class MultiplayerCancelServerBackfillTicketResult;

@class MultiplayerCertificate;

@class MultiplayerCertificateSummary;

@class MultiplayerConnectedPlayer;

@class MultiplayerContainerImageReference;

@class MultiplayerCoreCapacity;

@class MultiplayerCoreCapacityChange;

@class MultiplayerCreateBuildAliasRequest;

@class MultiplayerCreateBuildWithCustomContainerRequest;

@class MultiplayerCreateBuildWithCustomContainerResponse;

@class MultiplayerCreateBuildWithManagedContainerRequest;

@class MultiplayerCreateBuildWithManagedContainerResponse;

@class MultiplayerCreateBuildWithProcessBasedServerRequest;

@class MultiplayerCreateBuildWithProcessBasedServerResponse;

@class MultiplayerCreateLobbyRequest;

@class MultiplayerCreateLobbyResult;

@class MultiplayerCreateMatchmakingTicketRequest;

@class MultiplayerCreateMatchmakingTicketResult;

@class MultiplayerCreateRemoteUserRequest;

@class MultiplayerCreateRemoteUserResponse;

@class MultiplayerCreateServerBackfillTicketRequest;

@class MultiplayerCreateServerBackfillTicketResult;

@class MultiplayerCreateServerMatchmakingTicketRequest;

@class MultiplayerCreateTitleMultiplayerServersQuotaChangeRequest;

@class MultiplayerCreateTitleMultiplayerServersQuotaChangeResponse;

@class MultiplayerCurrentServerStats;

@class MultiplayerDeleteAssetRequest;

@class MultiplayerDeleteBuildAliasRequest;

@class MultiplayerDeleteBuildRegionRequest;

@class MultiplayerDeleteBuildRequest;

@class MultiplayerDeleteCertificateRequest;

@class MultiplayerDeleteContainerImageRequest;

@class MultiplayerDeleteLobbyRequest;

@class MultiplayerDeleteRemoteUserRequest;

@class MultiplayerDynamicStandbySettings;

@class MultiplayerDynamicStandbyThreshold;

@class MultiplayerEmptyResponse;

@class MultiplayerEnableMultiplayerServersForTitleRequest;

@class MultiplayerEnableMultiplayerServersForTitleResponse;

@class MultiplayerEntityKey;

@class MultiplayerFindFriendLobbiesRequest;

@class MultiplayerFindFriendLobbiesResult;

@class MultiplayerFindLobbiesRequest;

@class MultiplayerFindLobbiesResult;

@class MultiplayerFriendLobbySummary;

@class MultiplayerGameCertificateReference;

@class MultiplayerGameCertificateReferenceParams;

@class MultiplayerGetAssetDownloadUrlRequest;

@class MultiplayerGetAssetDownloadUrlResponse;

@class MultiplayerGetAssetUploadUrlRequest;

@class MultiplayerGetAssetUploadUrlResponse;

@class MultiplayerGetBuildAliasRequest;

@class MultiplayerGetBuildRequest;

@class MultiplayerGetBuildResponse;

@class MultiplayerGetContainerRegistryCredentialsRequest;

@class MultiplayerGetContainerRegistryCredentialsResponse;

@class MultiplayerGetLobbyRequest;

@class MultiplayerGetLobbyResult;

@class MultiplayerGetMatchmakingTicketRequest;

@class MultiplayerGetMatchmakingTicketResult;

@class MultiplayerGetMatchRequest;

@class MultiplayerGetMatchResult;

@class MultiplayerGetMultiplayerServerDetailsRequest;

@class MultiplayerGetMultiplayerServerDetailsResponse;

@class MultiplayerGetMultiplayerServerLogsRequest;

@class MultiplayerGetMultiplayerServerLogsResponse;

@class MultiplayerGetMultiplayerSessionLogsBySessionIdRequest;

@class MultiplayerGetQueueStatisticsRequest;

@class MultiplayerGetQueueStatisticsResult;

@class MultiplayerGetRemoteLoginEndpointRequest;

@class MultiplayerGetRemoteLoginEndpointResponse;

@class MultiplayerGetServerBackfillTicketRequest;

@class MultiplayerGetServerBackfillTicketResult;

@class MultiplayerGetTitleEnabledForMultiplayerServersStatusRequest;

@class MultiplayerGetTitleEnabledForMultiplayerServersStatusResponse;

@class MultiplayerGetTitleMultiplayerServersQuotaChangeRequest;

@class MultiplayerGetTitleMultiplayerServersQuotaChangeResponse;

@class MultiplayerGetTitleMultiplayerServersQuotasRequest;

@class MultiplayerGetTitleMultiplayerServersQuotasResponse;

@class MultiplayerInstrumentationConfiguration;

@class MultiplayerInviteToLobbyRequest;

@class MultiplayerJoinArrangedLobbyRequest;

@class MultiplayerJoinLobbyRequest;

@class MultiplayerJoinLobbyResult;

@class MultiplayerJoinMatchmakingTicketRequest;

@class MultiplayerJoinMatchmakingTicketResult;

@class MultiplayerLeaveLobbyRequest;

@class MultiplayerLinuxInstrumentationConfiguration;

@class MultiplayerListAssetSummariesRequest;

@class MultiplayerListAssetSummariesResponse;

@class MultiplayerListBuildAliasesRequest;

@class MultiplayerListBuildAliasesResponse;

@class MultiplayerListBuildSummariesRequest;

@class MultiplayerListBuildSummariesResponse;

@class MultiplayerListCertificateSummariesRequest;

@class MultiplayerListCertificateSummariesResponse;

@class MultiplayerListContainerImagesRequest;

@class MultiplayerListContainerImagesResponse;

@class MultiplayerListContainerImageTagsRequest;

@class MultiplayerListContainerImageTagsResponse;

@class MultiplayerListMatchmakingTicketsForPlayerRequest;

@class MultiplayerListMatchmakingTicketsForPlayerResult;

@class MultiplayerListMultiplayerServersRequest;

@class MultiplayerListMultiplayerServersResponse;

@class MultiplayerListPartyQosServersRequest;

@class MultiplayerListPartyQosServersResponse;

@class MultiplayerListQosServersForTitleRequest;

@class MultiplayerListQosServersForTitleResponse;

@class MultiplayerListServerBackfillTicketsForPlayerRequest;

@class MultiplayerListServerBackfillTicketsForPlayerResult;

@class MultiplayerListTitleMultiplayerServersQuotaChangesRequest;

@class MultiplayerListTitleMultiplayerServersQuotaChangesResponse;

@class MultiplayerListVirtualMachineSummariesRequest;

@class MultiplayerListVirtualMachineSummariesResponse;

@class MultiplayerLobby;

@class MultiplayerLobbyEmptyResult;

@class MultiplayerLobbySummary;

@class MultiplayerMatchmakingPlayer;

@class MultiplayerMatchmakingPlayerAttributes;

@class MultiplayerMatchmakingPlayerWithTeamAssignment;

@class MultiplayerMember;

@class MultiplayerMonitoringApplicationConfiguration;

@class MultiplayerMonitoringApplicationConfigurationParams;

@class MultiplayerMultiplayerServerSummary;

@class MultiplayerPaginationRequest;

@class MultiplayerPaginationResponse;

@class MultiplayerPort;

@class MultiplayerQosServer;

@class MultiplayerQuotaChange;

@class MultiplayerRemoveMemberFromLobbyRequest;

@class MultiplayerRequestMultiplayerServerRequest;

@class MultiplayerRequestMultiplayerServerResponse;

@class MultiplayerRolloverContainerRegistryCredentialsRequest;

@class MultiplayerRolloverContainerRegistryCredentialsResponse;

@class MultiplayerSchedule;

@class MultiplayerScheduledStandbySettings;

@class MultiplayerServerDetails;

@class MultiplayerShutdownMultiplayerServerRequest;

@class MultiplayerStatistics;

@class MultiplayerSubscribeToLobbyResourceRequest;

@class MultiplayerSubscribeToLobbyResourceResult;

@class MultiplayerTitleMultiplayerServersQuotas;

@class MultiplayerUnsubscribeFromLobbyResourceRequest;

@class MultiplayerUntagContainerImageRequest;

@class MultiplayerUpdateBuildAliasRequest;

@class MultiplayerUpdateBuildNameRequest;

@class MultiplayerUpdateBuildRegionRequest;

@class MultiplayerUpdateBuildRegionsRequest;

@class MultiplayerUpdateLobbyRequest;

@class MultiplayerUploadCertificateRequest;

@class MultiplayerVirtualMachineSummary;

@class MultiplayerWindowsCrashDumpConfiguration;



@interface MultiplayerAssetReference : PlayFabBaseModel


/// <summary>
/*
/// The asset's file name. This is a filename with the .zip, .tar, or .tar.gz extension.
*/
/// </summary>
@property NSString* FileName; 

/// <summary>
/*
/// The asset's mount path.
*/
/// </summary>
@property NSString* MountPath; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerAssetReferenceParams : PlayFabBaseModel


/// <summary>
/*
/// The asset's file name.
*/
/// </summary>
@property NSString* FileName; 

/// <summary>
/*
/// The asset's mount path.
*/
/// </summary>
@property NSString* MountPath; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerAssetSummary : PlayFabBaseModel


/// <summary>
/*
/// The asset's file name. This is a filename with the .zip, .tar, or .tar.gz extension.
*/
/// </summary>
@property NSString* FileName; 

/// <summary>
/*
/// The metadata associated with the asset.
*/
/// </summary>
@property NSDictionary* Metadata; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerBuildAliasDetailsResponse : PlayFabBaseModel


/// <summary>
/*
/// The guid string alias Id of the alias to be created or updated.
*/
/// </summary>
@property NSString* AliasId; 

/// <summary>
/*
/// The alias name.
*/
/// </summary>
@property NSString* AliasName; 

/// <summary>
/*
/// Array of build selection criteria.
*/
/// </summary>
@property NSArray* BuildSelectionCriteria; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerBuildAliasParams : PlayFabBaseModel


/// <summary>
/*
/// The guid string alias ID to use for the request.
*/
/// </summary>
@property NSString* AliasId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerBuildRegion : PlayFabBaseModel


/// <summary>
/*
/// The current multiplayer server stats for the region.
*/
/// </summary>
@property MultiplayerCurrentServerStats* pfCurrentServerStats; 

/// <summary>
/*
/// Optional settings to control dynamic adjustment of standby target
*/
/// </summary>
@property MultiplayerDynamicStandbySettings* pfDynamicStandbySettings; 

/// <summary>
/*
/// Whether the game assets provided for the build have been replicated to this region.
*/
/// </summary>
@property bool IsAssetReplicationComplete; 

/// <summary>
/*
/// The maximum number of multiplayer servers for the region.
*/
/// </summary>
@property NSNumber* MaxServers; 

/// <summary>
/*
/// Regional override for the number of multiplayer servers to host on a single VM of the build.
*/
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/*
/// The build region.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// Optional settings to set the standby target to specified values during the supplied schedules
*/
/// </summary>
@property MultiplayerScheduledStandbySettings* pfScheduledStandbySettings; 

/// <summary>
/*
/// The target number of standby multiplayer servers for the region.
*/
/// </summary>
@property NSNumber* StandbyServers; 

/// <summary>
/*
/// The status of multiplayer servers in the build region. Valid values are - Unknown, Initialized, Deploying, Deployed, Unhealthy, Deleting, Deleted.
*/
/// </summary>
@property NSString* Status; 

/// <summary>
/*
/// Regional override for the VM size the build was created on.
*/
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerBuildRegionParams : PlayFabBaseModel


/// <summary>
/*
/// Optional settings to control dynamic adjustment of standby target. If not specified, dynamic standby is disabled
*/
/// </summary>
@property MultiplayerDynamicStandbySettings* pfDynamicStandbySettings; 

/// <summary>
/*
/// The maximum number of multiplayer servers for the region.
*/
/// </summary>
@property NSNumber* MaxServers; 

/// <summary>
/*
/// Regional override for the number of multiplayer servers to host on a single VM of the build.
*/
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/*
/// The build region.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// Optional settings to set the standby target to specified values during the supplied schedules
*/
/// </summary>
@property MultiplayerScheduledStandbySettings* pfScheduledStandbySettings; 

/// <summary>
/*
/// The number of standby multiplayer servers for the region.
*/
/// </summary>
@property NSNumber* StandbyServers; 

/// <summary>
/*
/// Regional override for the VM size the build was created on.
*/
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerBuildSelectionCriterion : PlayFabBaseModel


/// <summary>
/*
/// Dictionary of build ids and their respective weights for distribution of allocation requests.
*/
/// </summary>
@property NSDictionary* BuildWeightDistribution; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerBuildSummary : PlayFabBaseModel


/// <summary>
/*
/// The guid string build ID of the build.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The build name.
*/
/// </summary>
@property NSString* BuildName; 

/// <summary>
/*
/// The time the build was created in UTC.
*/
/// </summary>
@property NSDate* CreationTime; 

/// <summary>
/*
/// The metadata of the build.
*/
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/*
/// The configuration and status for each region in the build.
*/
/// </summary>
@property NSArray* RegionConfigurations; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Cancels all tickets of which the player is a member in a given queue that are not cancelled or matched. This API is useful if you lose track of what tickets the player is a member of (if the title crashes for instance) and want to "reset". The Entity field is optional if the caller is a player and defaults to that player. Players may not cancel tickets for other people. The Entity field is required if the caller is a server (authenticated as the title).
*/
/// </summary>
@interface MultiplayerCancelAllMatchmakingTicketsForPlayerRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity key of the player whose tickets should be canceled.
*/
/// </summary>
@property MultiplayerEntityKey* Entity; 

/// <summary>
/*
/// The name of the queue from which a player's tickets should be canceled.
*/
/// </summary>
@property NSString* QueueName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCancelAllMatchmakingTicketsForPlayerResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Cancels all backfill tickets of which the player is a member in a given queue that are not cancelled or matched. This API is useful if you lose track of what tickets the player is a member of (if the server crashes for instance) and want to "reset".
*/
/// </summary>
@interface MultiplayerCancelAllServerBackfillTicketsForPlayerRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity key of the player whose backfill tickets should be canceled.
*/
/// </summary>
@property MultiplayerEntityKey* Entity; 

/// <summary>
/*
/// The name of the queue from which a player's backfill tickets should be canceled.
*/
/// </summary>
@property NSString* QueueName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCancelAllServerBackfillTicketsForPlayerResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Only servers and ticket members can cancel a ticket. The ticket can be in five different states when it is cancelled. 1: the ticket is waiting for members to join it, and it has not started matching. If the ticket is cancelled at this stage, it will never match. 2: the ticket is matching. If the ticket is cancelled, it will stop matching. 3: the ticket is matched. A matched ticket cannot be cancelled. 4: the ticket is already cancelled and nothing happens. 5: the ticket is waiting for a server. If the ticket is cancelled, server allocation will be stopped. A server may still be allocated due to a race condition, but that will not be reflected in the ticket. There may be race conditions between the ticket getting matched and the client making a cancellation request. The client must handle the possibility that the cancel request fails if a match is found before the cancellation request is processed. We do not allow resubmitting a cancelled ticket because players must consent to enter matchmaking again. Create a new ticket instead.
*/
/// </summary>
@interface MultiplayerCancelMatchmakingTicketRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The name of the queue the ticket is in.
*/
/// </summary>
@property NSString* QueueName; 

/// <summary>
/*
/// The Id of the ticket to find a match for.
*/
/// </summary>
@property NSString* TicketId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCancelMatchmakingTicketResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Only servers can cancel a backfill ticket. The ticket can be in three different states when it is cancelled. 1: the ticket is matching. If the ticket is cancelled, it will stop matching. 2: the ticket is matched. A matched ticket cannot be cancelled. 3: the ticket is already cancelled and nothing happens. There may be race conditions between the ticket getting matched and the server making a cancellation request. The server must handle the possibility that the cancel request fails if a match is found before the cancellation request is processed. We do not allow resubmitting a cancelled ticket. Create a new ticket instead.
*/
/// </summary>
@interface MultiplayerCancelServerBackfillTicketRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The name of the queue the ticket is in.
*/
/// </summary>
@property NSString* QueueName; 

/// <summary>
/*
/// The Id of the ticket to find a match for.
*/
/// </summary>
@property NSString* TicketId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCancelServerBackfillTicketResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCertificate : PlayFabBaseModel


/// <summary>
/*
/// Base64 encoded string contents of the certificate.
*/
/// </summary>
@property NSString* Base64EncodedValue; 

/// <summary>
/*
/// A name for the certificate. This is used to reference certificates in build configurations.
*/
/// </summary>
@property NSString* Name; 

/// <summary>
/*
/// If required for your PFX certificate, use this field to provide a password that will be used to install the certificate on the container.
*/
/// </summary>
@property NSString* Password; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCertificateSummary : PlayFabBaseModel


/// <summary>
/*
/// The name of the certificate.
*/
/// </summary>
@property NSString* Name; 

/// <summary>
/*
/// The thumbprint for the certificate.
*/
/// </summary>
@property NSString* Thumbprint; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerConnectedPlayer : PlayFabBaseModel


/// <summary>
/*
/// The player ID of the player connected to the multiplayer server.
*/
/// </summary>
@property NSString* PlayerId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerContainerImageReference : PlayFabBaseModel


/// <summary>
/*
/// The container image name.
*/
/// </summary>
@property NSString* ImageName; 

/// <summary>
/*
/// The container tag.
*/
/// </summary>
@property NSString* Tag; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCoreCapacity : PlayFabBaseModel


/// <summary>
/*
/// The available core capacity for the (Region, VmFamily)
*/
/// </summary>
@property NSNumber* Available; 

/// <summary>
/*
/// The AzureRegion
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// The total core capacity for the (Region, VmFamily)
*/
/// </summary>
@property NSNumber* Total; 

/// <summary>
/*
/// The AzureVmFamily
*/
/// </summary>
@property MultiplayerAzureVmFamily VmFamily; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCoreCapacityChange : PlayFabBaseModel


/// <summary>
/*
/// New quota core limit for the given vm family/region.
*/
/// </summary>
@property NSNumber* NewCoreLimit; 

/// <summary>
/*
/// Region to change.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// Virtual machine family to change.
*/
/// </summary>
@property MultiplayerAzureVmFamily VmFamily; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Creates a multiplayer server build alias and returns the created alias.
*/
/// </summary>
@interface MultiplayerCreateBuildAliasRequest : PlayFabBaseModel


/// <summary>
/*
/// The alias name.
*/
/// </summary>
@property NSString* AliasName; 

/// <summary>
/*
/// Array of build selection criteria.
*/
/// </summary>
@property NSArray* BuildSelectionCriteria; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Creates a multiplayer server build with a custom container and returns information about the build creation request.
*/
/// </summary>
@interface MultiplayerCreateBuildWithCustomContainerRequest : PlayFabBaseModel


/// <summary>
/*
/// When true, assets will not be copied for each server inside the VM. All serverswill run from the same set of assets, or will have the same assets mounted in the container.
*/
/// </summary>
@property bool AreAssetsReadonly; 

/// <summary>
/*
/// The build name.
*/
/// </summary>
@property NSString* BuildName; 

/// <summary>
/*
/// The flavor of container to create a build from.
*/
/// </summary>
@property MultiplayerContainerFlavor pfContainerFlavor; 

/// <summary>
/*
/// The container reference, consisting of the image name and tag.
*/
/// </summary>
@property MultiplayerContainerImageReference* pfContainerImageReference; 

/// <summary>
/*
/// The container command to run when the multiplayer server has been allocated, including any arguments.
*/
/// </summary>
@property NSString* ContainerRunCommand; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The list of game assets related to the build.
*/
/// </summary>
@property NSArray* GameAssetReferences; 

/// <summary>
/*
/// The game certificates for the build.
*/
/// </summary>
@property NSArray* GameCertificateReferences; 

/// <summary>
/*
/// The Linux instrumentation configuration for the build.
*/
/// </summary>
@property MultiplayerLinuxInstrumentationConfiguration* pfLinuxInstrumentationConfiguration; 

/// <summary>
/*
/// Metadata to tag the build. The keys are case insensitive. The build metadata is made available to the server through Game Server SDK (GSDK).Constraints: Maximum number of keys: 30, Maximum key length: 50, Maximum value length: 100
*/
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/*
/// The configuration for the monitoring application on the build
*/
/// </summary>
@property MultiplayerMonitoringApplicationConfigurationParams* MonitoringApplicationConfiguration; 

/// <summary>
/*
/// The number of multiplayer servers to host on a single VM.
*/
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/*
/// The ports to map the build on.
*/
/// </summary>
@property NSArray* Ports; 

/// <summary>
/*
/// The region configurations for the build.
*/
/// </summary>
@property NSArray* RegionConfigurations; 

/// <summary>
/*
/// When true, assets will be downloaded and uncompressed in memory, without the compressedversion being written first to disc.
*/
/// </summary>
@property bool UseStreamingForAssetDownloads; 

/// <summary>
/*
/// The VM size to create the build on.
*/
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCreateBuildWithCustomContainerResponse : PlayFabBaseModel


/// <summary>
/*
/// When true, assets will not be copied for each server inside the VM. All serverswill run from the same set of assets, or will have the same assets mounted in the container.
*/
/// </summary>
@property bool AreAssetsReadonly; 

/// <summary>
/*
/// The guid string build ID. Must be unique for every build.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The build name.
*/
/// </summary>
@property NSString* BuildName; 

/// <summary>
/*
/// The flavor of container of the build.
*/
/// </summary>
@property MultiplayerContainerFlavor pfContainerFlavor; 

/// <summary>
/*
/// The container command to run when the multiplayer server has been allocated, including any arguments.
*/
/// </summary>
@property NSString* ContainerRunCommand; 

/// <summary>
/*
/// The time the build was created in UTC.
*/
/// </summary>
@property NSDate* CreationTime; 

/// <summary>
/*
/// The custom game container image reference information.
*/
/// </summary>
@property MultiplayerContainerImageReference* CustomGameContainerImage; 

/// <summary>
/*
/// The game assets for the build.
*/
/// </summary>
@property NSArray* GameAssetReferences; 

/// <summary>
/*
/// The game certificates for the build.
*/
/// </summary>
@property NSArray* GameCertificateReferences; 

/// <summary>
/*
/// The Linux instrumentation configuration for this build.
*/
/// </summary>
@property MultiplayerLinuxInstrumentationConfiguration* pfLinuxInstrumentationConfiguration; 

/// <summary>
/*
/// The metadata of the build.
*/
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/*
/// The configuration for the monitoring application for the build
*/
/// </summary>
@property MultiplayerMonitoringApplicationConfiguration* pfMonitoringApplicationConfiguration; 

/// <summary>
/*
/// The number of multiplayer servers to host on a single VM of the build.
*/
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/*
/// The OS platform used for running the game process.
*/
/// </summary>
@property NSString* OsPlatform; 

/// <summary>
/*
/// The ports the build is mapped on.
*/
/// </summary>
@property NSArray* Ports; 

/// <summary>
/*
/// The region configuration for the build.
*/
/// </summary>
@property NSArray* RegionConfigurations; 

/// <summary>
/*
/// The type of game server being hosted.
*/
/// </summary>
@property NSString* ServerType; 

/// <summary>
/*
/// When true, assets will be downloaded and uncompressed in memory, without the compressedversion being written first to disc.
*/
/// </summary>
@property bool UseStreamingForAssetDownloads; 

/// <summary>
/*
/// The VM size the build was created on.
*/
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Creates a multiplayer server build with a managed container and returns information about the build creation request.
*/
/// </summary>
@interface MultiplayerCreateBuildWithManagedContainerRequest : PlayFabBaseModel


/// <summary>
/*
/// When true, assets will not be copied for each server inside the VM. All serverswill run from the same set of assets, or will have the same assets mounted in the container.
*/
/// </summary>
@property bool AreAssetsReadonly; 

/// <summary>
/*
/// The build name.
*/
/// </summary>
@property NSString* BuildName; 

/// <summary>
/*
/// The flavor of container to create a build from.
*/
/// </summary>
@property MultiplayerContainerFlavor pfContainerFlavor; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The list of game assets related to the build.
*/
/// </summary>
@property NSArray* GameAssetReferences; 

/// <summary>
/*
/// The game certificates for the build.
*/
/// </summary>
@property NSArray* GameCertificateReferences; 

/// <summary>
/*
/// The directory containing the game executable. This would be the start path of the game assets that contain the main game server executable. If not provided, a best effort will be made to extract it from the start game command.
*/
/// </summary>
@property NSString* GameWorkingDirectory; 

/// <summary>
/*
/// The instrumentation configuration for the build.
*/
/// </summary>
@property MultiplayerInstrumentationConfiguration* pfInstrumentationConfiguration; 

/// <summary>
/*
/// Metadata to tag the build. The keys are case insensitive. The build metadata is made available to the server through Game Server SDK (GSDK).Constraints: Maximum number of keys: 30, Maximum key length: 50, Maximum value length: 100
*/
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/*
/// The configuration for the monitoring application on the build
*/
/// </summary>
@property MultiplayerMonitoringApplicationConfigurationParams* MonitoringApplicationConfiguration; 

/// <summary>
/*
/// The number of multiplayer servers to host on a single VM.
*/
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/*
/// The ports to map the build on.
*/
/// </summary>
@property NSArray* Ports; 

/// <summary>
/*
/// The region configurations for the build.
*/
/// </summary>
@property NSArray* RegionConfigurations; 

/// <summary>
/*
/// The command to run when the multiplayer server is started, including any arguments.
*/
/// </summary>
@property NSString* StartMultiplayerServerCommand; 

/// <summary>
/*
/// When true, assets will be downloaded and uncompressed in memory, without the compressedversion being written first to disc.
*/
/// </summary>
@property bool UseStreamingForAssetDownloads; 

/// <summary>
/*
/// The VM size to create the build on.
*/
/// </summary>
@property MultiplayerAzureVmSize VmSize; 

/// <summary>
/*
/// The crash dump configuration for the build.
*/
/// </summary>
@property MultiplayerWindowsCrashDumpConfiguration* pfWindowsCrashDumpConfiguration; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCreateBuildWithManagedContainerResponse : PlayFabBaseModel


/// <summary>
/*
/// When true, assets will not be copied for each server inside the VM. All serverswill run from the same set of assets, or will have the same assets mounted in the container.
*/
/// </summary>
@property bool AreAssetsReadonly; 

/// <summary>
/*
/// The guid string build ID. Must be unique for every build.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The build name.
*/
/// </summary>
@property NSString* BuildName; 

/// <summary>
/*
/// The flavor of container of the build.
*/
/// </summary>
@property MultiplayerContainerFlavor pfContainerFlavor; 

/// <summary>
/*
/// The time the build was created in UTC.
*/
/// </summary>
@property NSDate* CreationTime; 

/// <summary>
/*
/// The game assets for the build.
*/
/// </summary>
@property NSArray* GameAssetReferences; 

/// <summary>
/*
/// The game certificates for the build.
*/
/// </summary>
@property NSArray* GameCertificateReferences; 

/// <summary>
/*
/// The directory containing the game executable. This would be the start path of the game assets that contain the main game server executable. If not provided, a best effort will be made to extract it from the start game command.
*/
/// </summary>
@property NSString* GameWorkingDirectory; 

/// <summary>
/*
/// The instrumentation configuration for this build.
*/
/// </summary>
@property MultiplayerInstrumentationConfiguration* pfInstrumentationConfiguration; 

/// <summary>
/*
/// The metadata of the build.
*/
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/*
/// The configuration for the monitoring application for the build
*/
/// </summary>
@property MultiplayerMonitoringApplicationConfiguration* pfMonitoringApplicationConfiguration; 

/// <summary>
/*
/// The number of multiplayer servers to host on a single VM of the build.
*/
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/*
/// The OS platform used for running the game process.
*/
/// </summary>
@property NSString* OsPlatform; 

/// <summary>
/*
/// The ports the build is mapped on.
*/
/// </summary>
@property NSArray* Ports; 

/// <summary>
/*
/// The region configuration for the build.
*/
/// </summary>
@property NSArray* RegionConfigurations; 

/// <summary>
/*
/// The type of game server being hosted.
*/
/// </summary>
@property NSString* ServerType; 

/// <summary>
/*
/// The command to run when the multiplayer server has been allocated, including any arguments.
*/
/// </summary>
@property NSString* StartMultiplayerServerCommand; 

/// <summary>
/*
/// When true, assets will be downloaded and uncompressed in memory, without the compressedversion being written first to disc.
*/
/// </summary>
@property bool UseStreamingForAssetDownloads; 

/// <summary>
/*
/// The VM size the build was created on.
*/
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Creates a multiplayer server build with the game server running as a process and returns information about the build creation request.
*/
/// </summary>
@interface MultiplayerCreateBuildWithProcessBasedServerRequest : PlayFabBaseModel


/// <summary>
/*
/// When true, assets will not be copied for each server inside the VM. All serverswill run from the same set of assets, or will have the same assets mounted in the container.
*/
/// </summary>
@property bool AreAssetsReadonly; 

/// <summary>
/*
/// The build name.
*/
/// </summary>
@property NSString* BuildName; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The list of game assets related to the build.
*/
/// </summary>
@property NSArray* GameAssetReferences; 

/// <summary>
/*
/// The game certificates for the build.
*/
/// </summary>
@property NSArray* GameCertificateReferences; 

/// <summary>
/*
/// The working directory for the game process. If this is not provided, the working directory will be set based on the mount path of the game server executable.
*/
/// </summary>
@property NSString* GameWorkingDirectory; 

/// <summary>
/*
/// The instrumentation configuration for the build.
*/
/// </summary>
@property MultiplayerInstrumentationConfiguration* pfInstrumentationConfiguration; 

/// <summary>
/*
/// Indicates whether this build will be created using the OS Preview versionPreview OS is recommended for dev builds to detect any breaking changes before they are released to retail. Retail builds should set this value to false.
*/
/// </summary>
@property bool IsOSPreview; 

/// <summary>
/*
/// Metadata to tag the build. The keys are case insensitive. The build metadata is made available to the server through Game Server SDK (GSDK).Constraints: Maximum number of keys: 30, Maximum key length: 50, Maximum value length: 100
*/
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/*
/// The configuration for the monitoring application on the build
*/
/// </summary>
@property MultiplayerMonitoringApplicationConfigurationParams* MonitoringApplicationConfiguration; 

/// <summary>
/*
/// The number of multiplayer servers to host on a single VM.
*/
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/*
/// The OS platform used for running the game process.
*/
/// </summary>
@property NSString* OsPlatform; 

/// <summary>
/*
/// The ports to map the build on.
*/
/// </summary>
@property NSArray* Ports; 

/// <summary>
/*
/// The region configurations for the build.
*/
/// </summary>
@property NSArray* RegionConfigurations; 

/// <summary>
/*
/// The command to run when the multiplayer server is started, including any arguments. The path to any executable should be relative to the root asset folder when unzipped.
*/
/// </summary>
@property NSString* StartMultiplayerServerCommand; 

/// <summary>
/*
/// When true, assets will be downloaded and uncompressed in memory, without the compressedversion being written first to disc.
*/
/// </summary>
@property bool UseStreamingForAssetDownloads; 

/// <summary>
/*
/// The VM size to create the build on.
*/
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCreateBuildWithProcessBasedServerResponse : PlayFabBaseModel


/// <summary>
/*
/// When true, assets will not be copied for each server inside the VM. All serverswill run from the same set of assets, or will have the same assets mounted in the container.
*/
/// </summary>
@property bool AreAssetsReadonly; 

/// <summary>
/*
/// The guid string build ID. Must be unique for every build.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The build name.
*/
/// </summary>
@property NSString* BuildName; 

/// <summary>
/*
/// The flavor of container of the build.
*/
/// </summary>
@property MultiplayerContainerFlavor pfContainerFlavor; 

/// <summary>
/*
/// The time the build was created in UTC.
*/
/// </summary>
@property NSDate* CreationTime; 

/// <summary>
/*
/// The game assets for the build.
*/
/// </summary>
@property NSArray* GameAssetReferences; 

/// <summary>
/*
/// The game certificates for the build.
*/
/// </summary>
@property NSArray* GameCertificateReferences; 

/// <summary>
/*
/// The working directory for the game process. If this is not provided, the working directory will be set based on the mount path of the game server executable.
*/
/// </summary>
@property NSString* GameWorkingDirectory; 

/// <summary>
/*
/// The instrumentation configuration for this build.
*/
/// </summary>
@property MultiplayerInstrumentationConfiguration* pfInstrumentationConfiguration; 

/// <summary>
/*
/// Indicates whether this build will be created using the OS Preview versionPreview OS is recommended for dev builds to detect any breaking changes before they are released to retail. Retail builds should set this value to false.
*/
/// </summary>
@property bool IsOSPreview; 

/// <summary>
/*
/// The metadata of the build.
*/
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/*
/// The configuration for the monitoring application for the build
*/
/// </summary>
@property MultiplayerMonitoringApplicationConfiguration* pfMonitoringApplicationConfiguration; 

/// <summary>
/*
/// The number of multiplayer servers to host on a single VM of the build.
*/
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/*
/// The OS platform used for running the game process.
*/
/// </summary>
@property NSString* OsPlatform; 

/// <summary>
/*
/// The ports the build is mapped on.
*/
/// </summary>
@property NSArray* Ports; 

/// <summary>
/*
/// The region configuration for the build.
*/
/// </summary>
@property NSArray* RegionConfigurations; 

/// <summary>
/*
/// The type of game server being hosted.
*/
/// </summary>
@property NSString* ServerType; 

/// <summary>
/*
/// The command to run when the multiplayer server is started, including any arguments. The path to any executable is relative to the root asset folder when unzipped.
*/
/// </summary>
@property NSString* StartMultiplayerServerCommand; 

/// <summary>
/*
/// When true, assets will be downloaded and uncompressed in memory, without the compressedversion being written first to disc.
*/
/// </summary>
@property bool UseStreamingForAssetDownloads; 

/// <summary>
/*
/// The VM size the build was created on.
*/
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to create a lobby. A Server or client can create a lobby.
*/
/// </summary>
@interface MultiplayerCreateLobbyRequest : PlayFabBaseModel


/// <summary>
/*
/// The policy indicating who is allowed to join the lobby, and the visibility to queries. May be 'Public', 'Friends' or 'Private'. Public means the lobby is both visible in queries and any player may join, including invited players. Friends means that users who are bidirectional friends of members in the lobby may search to find friend lobbies, to retrieve its connection string. Private means the lobby is not visible in queries, and a player must receive an invitation to join. Defaults to 'Public' on creation. Can only be changed by the lobby owner.
*/
/// </summary>
@property MultiplayerAccessPolicy pfAccessPolicy; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The private key-value pairs which are only visible to members of the lobby. At most 30 key-value pairs may be stored here, keys are limited to 30 characters and values to 1000. The total size of all lobbyData values may not exceed 4096 bytes. Keys are case sensitive.
*/
/// </summary>
@property NSDictionary* LobbyData; 

/// <summary>
/*
/// The maximum number of players allowed in the lobby. The value must be between 2 and 128.
*/
/// </summary>
@property NSNumber* MaxPlayers; 

/// <summary>
/*
/// The member initially added to the lobby. Client must specify exactly one member, which is the creator's entity and member data. Member PubSubConnectionHandle must be null or empty. Game servers must not specify any members.
*/
/// </summary>
@property NSArray* Members; 

/// <summary>
/*
/// The lobby owner. Must be the calling entity.
*/
/// </summary>
@property MultiplayerEntityKey* Owner; 

/// <summary>
/*
/// The policy for how a new owner is chosen. May be 'Automatic', 'Manual' or 'None'. Can only be specified by clients. If client-owned and 'Automatic' - The Lobby service will automatically assign another connected owner when the current owner leaves or disconnects. The useConnections property must be true. If client - owned and 'Manual' - Ownership is protected as long as the current owner is connected. If the current owner leaves or disconnects any member may set themselves as the current owner. The useConnections property must be true. If client-owned and 'None' - Any member can set ownership. The useConnections property can be either true or false.
*/
/// </summary>
@property MultiplayerOwnerMigrationPolicy pfOwnerMigrationPolicy; 

/// <summary>
/*
/// The public key-value pairs which allow queries to differentiate between lobbies. Queries will refer to these key-value pairs in their filter and order by clauses to retrieve lobbies fitting the specified criteria. At most 30 key-value pairs may be stored here. Keys are of the format string_key1, string_key2 ... string_key30 for string values, or number_key1, number_key2, ... number_key30 for numeric values.Numeric values are floats. Values can be at most 256 characters long. The total size of all searchData values may not exceed 1024 bytes.
*/
/// </summary>
@property NSDictionary* SearchData; 

/// <summary>
/*
/// A setting to control whether connections are used. Defaults to true. When true, notifications are sent to subscribed players, disconnect detection removes connectionHandles, only owner migration policies using connections are allowed, and lobbies must have at least one connected member to be searchable or be a server hosted lobby with a connected server. If false, then notifications are not sent, connections are not allowed, and lobbies do not need connections to be searchable.
*/
/// </summary>
@property bool UseConnections; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCreateLobbyResult : PlayFabBaseModel


/// <summary>
/*
/// A field which indicates which lobby the user will be joining.
*/
/// </summary>
@property NSString* ConnectionString; 

/// <summary>
/*
/// Id to uniquely identify a lobby.
*/
/// </summary>
@property NSString* LobbyId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// The client specifies the creator's attributes and optionally a list of other users to match with.
*/
/// </summary>
@interface MultiplayerCreateMatchmakingTicketRequest : PlayFabBaseModel


/// <summary>
/*
/// The User who created this ticket.
*/
/// </summary>
@property MultiplayerMatchmakingPlayer* Creator; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// How long to attempt matching this ticket in seconds.
*/
/// </summary>
@property NSNumber* GiveUpAfterSeconds; 

/// <summary>
/*
/// A list of Entity Keys of other users to match with.
*/
/// </summary>
@property NSArray* MembersToMatchWith; 

/// <summary>
/*
/// The Id of a match queue.
*/
/// </summary>
@property NSString* QueueName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCreateMatchmakingTicketResult : PlayFabBaseModel


/// <summary>
/*
/// The Id of the ticket to find a match for.
*/
/// </summary>
@property NSString* TicketId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Creates a remote user to log on to a VM for a multiplayer server build in a specific region. Returns user credential information necessary to log on.
*/
/// </summary>
@interface MultiplayerCreateRemoteUserRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string build ID of to create the remote user for.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The expiration time for the remote user created. Defaults to expiring in one day if not specified.
*/
/// </summary>
@property NSDate* ExpirationTime; 

/// <summary>
/*
/// The region of virtual machine to create the remote user for.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// The username to create the remote user with.
*/
/// </summary>
@property NSString* Username; 

/// <summary>
/*
/// The virtual machine ID the multiplayer server is located on.
*/
/// </summary>
@property NSString* VmId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCreateRemoteUserResponse : PlayFabBaseModel


/// <summary>
/*
/// The expiration time for the remote user created.
*/
/// </summary>
@property NSDate* ExpirationTime; 

/// <summary>
/*
/// The generated password for the remote user that was created.
*/
/// </summary>
@property NSString* Password; 

/// <summary>
/*
/// The username for the remote user that was created.
*/
/// </summary>
@property NSString* Username; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// The server specifies all the members, their teams and their attributes, and the server details if applicable.
*/
/// </summary>
@interface MultiplayerCreateServerBackfillTicketRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// How long to attempt matching this ticket in seconds.
*/
/// </summary>
@property NSNumber* GiveUpAfterSeconds; 

/// <summary>
/*
/// The users who will be part of this ticket, along with their team assignments.
*/
/// </summary>
@property NSArray* Members; 

/// <summary>
/*
/// The Id of a match queue.
*/
/// </summary>
@property NSString* QueueName; 

/// <summary>
/*
/// The details of the server the members are connected to.
*/
/// </summary>
@property MultiplayerServerDetails* pfServerDetails; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCreateServerBackfillTicketResult : PlayFabBaseModel


/// <summary>
/*
/// The Id of the ticket to find a match for.
*/
/// </summary>
@property NSString* TicketId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// The server specifies all the members and their attributes.
*/
/// </summary>
@interface MultiplayerCreateServerMatchmakingTicketRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// How long to attempt matching this ticket in seconds.
*/
/// </summary>
@property NSNumber* GiveUpAfterSeconds; 

/// <summary>
/*
/// The users who will be part of this ticket.
*/
/// </summary>
@property NSArray* Members; 

/// <summary>
/*
/// The Id of a match queue.
*/
/// </summary>
@property NSString* QueueName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Creates a request to change a title's multiplayer server quotas.
*/
/// </summary>
@interface MultiplayerCreateTitleMultiplayerServersQuotaChangeRequest : PlayFabBaseModel


/// <summary>
/*
/// A brief description of the requested changes.
*/
/// </summary>
@property NSString* ChangeDescription; 

/// <summary>
/*
/// Changes to make to the titles cores quota.
*/
/// </summary>
@property NSArray* Changes; 

/// <summary>
/*
/// Email to be contacted by our team about this request. Only required when a request is not approved.
*/
/// </summary>
@property NSString* ContactEmail; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Additional information about this request that our team can use to better understand the requirements.
*/
/// </summary>
@property NSString* Notes; 

/// <summary>
/*
/// When these changes would need to be in effect. Only required when a request is not approved.
*/
/// </summary>
@property NSDate* StartDate; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCreateTitleMultiplayerServersQuotaChangeResponse : PlayFabBaseModel


/// <summary>
/*
/// Id of the change request that was created.
*/
/// </summary>
@property NSString* RequestId; 

/// <summary>
/*
/// Determines if the request was approved or not. When false, our team is reviewing and may respond within 2 business days.
*/
/// </summary>
@property bool WasApproved; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCurrentServerStats : PlayFabBaseModel


/// <summary>
/*
/// The number of active multiplayer servers.
*/
/// </summary>
@property NSNumber* Active; 

/// <summary>
/*
/// The number of multiplayer servers still downloading game resources (such as assets).
*/
/// </summary>
@property NSNumber* Propping; 

/// <summary>
/*
/// The number of standingby multiplayer servers.
*/
/// </summary>
@property NSNumber* StandingBy; 

/// <summary>
/*
/// The total number of multiplayer servers.
*/
/// </summary>
@property NSNumber* Total; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Deletes a multiplayer server game asset for a title.
*/
/// </summary>
@interface MultiplayerDeleteAssetRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The filename of the asset to delete.
*/
/// </summary>
@property NSString* FileName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Deletes a multiplayer server build alias.
*/
/// </summary>
@interface MultiplayerDeleteBuildAliasRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string alias ID of the alias to perform the action on.
*/
/// </summary>
@property NSString* AliasId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Removes a multiplayer server build's region.
*/
/// </summary>
@interface MultiplayerDeleteBuildRegionRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string ID of the build we want to update regions for.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The build region to delete.
*/
/// </summary>
@property NSString* Region; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Deletes a multiplayer server build.
*/
/// </summary>
@interface MultiplayerDeleteBuildRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string build ID of the build to delete.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Deletes a multiplayer server game certificate.
*/
/// </summary>
@interface MultiplayerDeleteCertificateRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The name of the certificate.
*/
/// </summary>
@property NSString* Name; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Removes the specified container image repository. After this operation, a 'docker pull' will fail for all the tags of the specified image. Morever, ListContainerImages will not return the specified image.
*/
/// </summary>
@interface MultiplayerDeleteContainerImageRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The container image repository we want to delete.
*/
/// </summary>
@property NSString* ImageName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to delete a lobby. Only servers can delete lobbies.
*/
/// </summary>
@interface MultiplayerDeleteLobbyRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The id of the lobby.
*/
/// </summary>
@property NSString* LobbyId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Deletes a remote user to log on to a VM for a multiplayer server build in a specific region. Returns user credential information necessary to log on.
*/
/// </summary>
@interface MultiplayerDeleteRemoteUserRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string build ID of the multiplayer server where the remote user is to delete.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The region of the multiplayer server where the remote user is to delete.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// The username of the remote user to delete.
*/
/// </summary>
@property NSString* Username; 

/// <summary>
/*
/// The virtual machine ID the multiplayer server is located on.
*/
/// </summary>
@property NSString* VmId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerDynamicStandbySettings : PlayFabBaseModel


/// <summary>
/*
/// List of auto standing by trigger values and corresponding standing by multiplier. Defaults to 1.5X at 50%, 3X at 25%, and 4X at 5%
*/
/// </summary>
@property NSArray* DynamicFloorMultiplierThresholds; 

/// <summary>
/*
/// When true, dynamic standby will be enabled
*/
/// </summary>
@property bool IsEnabled; 

/// <summary>
/*
/// The time it takes to reduce target standing by to configured floor value after an increase. Defaults to 30 minutes
*/
/// </summary>
@property NSNumber* RampDownSeconds; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerDynamicStandbyThreshold : PlayFabBaseModel


/// <summary>
/*
/// When the trigger threshold is reached, multiply by this value
*/
/// </summary>
@property NSNumber* Multiplier; 

/// <summary>
/*
/// The multiplier will be applied when the actual standby divided by target standby floor is less than this value
*/
/// </summary>
@property NSNumber* TriggerThresholdPercentage; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerEmptyResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Enables the multiplayer server feature for a title and returns the enabled status. The enabled status can be Initializing, Enabled, and Disabled. It can up to 20 minutes or more for the title to be enabled for the feature. On average, it can take up to 20 minutes for the title to be enabled for the feature.
*/
/// </summary>
@interface MultiplayerEnableMultiplayerServersForTitleRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerEnableMultiplayerServersForTitleResponse : PlayFabBaseModel


/// <summary>
/*
/// The enabled status for the multiplayer server features for the title.
*/
/// </summary>
@property MultiplayerTitleMultiplayerServerEnabledStatus Status; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Combined entity type and ID structure which uniquely identifies a single entity.
*/
/// </summary>
@interface MultiplayerEntityKey : PlayFabBaseModel


/// <summary>
/*
/// Unique ID of the entity.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// Entity type. See https://docs.microsoft.com/gaming/playfab/features/data/entities/available-built-in-entity-types
*/
/// </summary>
@property NSString* Type; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to find friends lobbies. Only a client can find friend lobbies.
*/
/// </summary>
@interface MultiplayerFindFriendLobbiesRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Controls whether this query should link to friends made on the Facebook network. Defaults to false
*/
/// </summary>
@property bool ExcludeFacebookFriends; 

/// <summary>
/*
/// Controls whether this query should link to friends made on the Steam network. Defaults to false
*/
/// </summary>
@property bool ExcludeSteamFriends; 

/// <summary>
/*
/// OData style string that contains one or more filters. The OR and grouping operators are not allowed.
*/
/// </summary>
@property NSString* Filter; 

/// <summary>
/*
/// OData style string that contains sorting for this query. To sort by closest, a moniker `distance{number_key1 = 5}` can be used to sort by distance from the given number. This field only supports either one sort clause or one distance clause.
*/
/// </summary>
@property NSString* OrderBy; 

/// <summary>
/*
/// Request pagination information.
*/
/// </summary>
@property MultiplayerPaginationRequest* Pagination; 

/// <summary>
/*
/// Xbox token if Xbox friends should be included. Requires Xbox be configured on PlayFab.
*/
/// </summary>
@property NSString* XboxToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerFindFriendLobbiesResult : PlayFabBaseModel


/// <summary>
/*
/// Array of lobbies found that matched FindFriendLobbies request.
*/
/// </summary>
@property NSArray* Lobbies; 

/// <summary>
/*
/// Pagination response for FindFriendLobbies request.
*/
/// </summary>
@property MultiplayerPaginationResponse* Pagination; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to find lobbies.
*/
/// </summary>
@interface MultiplayerFindLobbiesRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// OData style string that contains one or more filters. The OR and grouping operators are not allowed.
*/
/// </summary>
@property NSString* Filter; 

/// <summary>
/*
/// OData style string that contains sorting for this query. To sort by closest, a moniker `distance{number_key1 = 5}` can be used to sort by distance from the given number. This field only supports either one sort clause or one distance clause.
*/
/// </summary>
@property NSString* OrderBy; 

/// <summary>
/*
/// Request pagination information.
*/
/// </summary>
@property MultiplayerPaginationRequest* Pagination; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerFindLobbiesResult : PlayFabBaseModel


/// <summary>
/*
/// Array of lobbies found that matched FindLobbies request.
*/
/// </summary>
@property NSArray* Lobbies; 

/// <summary>
/*
/// Pagination response for FindLobbies request.
*/
/// </summary>
@property MultiplayerPaginationResponse* Pagination; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerFriendLobbySummary : PlayFabBaseModel


/// <summary>
/*
/// A string used to join the lobby.This field is populated by the Lobby service.Invites are performed by communicating this connectionString to other players.
*/
/// </summary>
@property NSString* ConnectionString; 

/// <summary>
/*
/// The current number of players in the lobby.
*/
/// </summary>
@property NSNumber* CurrentPlayers; 

/// <summary>
/*
/// Friends in Lobby.
*/
/// </summary>
@property NSArray* Friends; 

/// <summary>
/*
/// Id to uniquely identify a lobby.
*/
/// </summary>
@property NSString* LobbyId; 

/// <summary>
/*
/// The maximum number of players allowed in the lobby.
*/
/// </summary>
@property NSNumber* MaxPlayers; 

/// <summary>
/*
/// The client or server entity which owns this lobby.
*/
/// </summary>
@property MultiplayerEntityKey* Owner; 

/// <summary>
/*
/// Search data.
*/
/// </summary>
@property NSDictionary* SearchData; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGameCertificateReference : PlayFabBaseModel


/// <summary>
/*
/// An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
*/
/// </summary>
@property NSString* GsdkAlias; 

/// <summary>
/*
/// The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.
*/
/// </summary>
@property NSString* Name; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGameCertificateReferenceParams : PlayFabBaseModel


/// <summary>
/*
/// An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
*/
/// </summary>
@property NSString* GsdkAlias; 

/// <summary>
/*
/// The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.
*/
/// </summary>
@property NSString* Name; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Gets a URL that can be used to download the specified asset.
*/
/// </summary>
@interface MultiplayerGetAssetDownloadUrlRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The asset's file name to get the download URL for.
*/
/// </summary>
@property NSString* FileName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetAssetDownloadUrlResponse : PlayFabBaseModel


/// <summary>
/*
/// The asset's download URL.
*/
/// </summary>
@property NSString* AssetDownloadUrl; 

/// <summary>
/*
/// The asset's file name to get the download URL for.
*/
/// </summary>
@property NSString* FileName; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Gets the URL to upload assets to.
*/
/// </summary>
@interface MultiplayerGetAssetUploadUrlRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The asset's file name to get the upload URL for.
*/
/// </summary>
@property NSString* FileName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetAssetUploadUrlResponse : PlayFabBaseModel


/// <summary>
/*
/// The asset's upload URL.
*/
/// </summary>
@property NSString* AssetUploadUrl; 

/// <summary>
/*
/// The asset's file name to get the upload URL for.
*/
/// </summary>
@property NSString* FileName; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns the details about a multiplayer server build alias.
*/
/// </summary>
@interface MultiplayerGetBuildAliasRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string alias ID of the alias to perform the action on.
*/
/// </summary>
@property NSString* AliasId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns the details about a multiplayer server build.
*/
/// </summary>
@interface MultiplayerGetBuildRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string build ID of the build to get.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetBuildResponse : PlayFabBaseModel


/// <summary>
/*
/// When true, assets will not be copied for each server inside the VM. All serverswill run from the same set of assets, or will have the same assets mounted in the container.
*/
/// </summary>
@property bool AreAssetsReadonly; 

/// <summary>
/*
/// The guid string build ID of the build.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The build name.
*/
/// </summary>
@property NSString* BuildName; 

/// <summary>
/*
/// The current build status. Valid values are - Deploying, Deployed, DeletingRegion, Unhealthy.
*/
/// </summary>
@property NSString* BuildStatus; 

/// <summary>
/*
/// The flavor of container of he build.
*/
/// </summary>
@property MultiplayerContainerFlavor pfContainerFlavor; 

/// <summary>
/*
/// The container command to run when the multiplayer server has been allocated, including any arguments. This only applies to custom builds. If the build is a managed build, this field will be null.
*/
/// </summary>
@property NSString* ContainerRunCommand; 

/// <summary>
/*
/// The time the build was created in UTC.
*/
/// </summary>
@property NSDate* CreationTime; 

/// <summary>
/*
/// The custom game container image for a custom build.
*/
/// </summary>
@property MultiplayerContainerImageReference* CustomGameContainerImage; 

/// <summary>
/*
/// The game assets for the build.
*/
/// </summary>
@property NSArray* GameAssetReferences; 

/// <summary>
/*
/// The game certificates for the build.
*/
/// </summary>
@property NSArray* GameCertificateReferences; 

/// <summary>
/*
/// The instrumentation configuration of the build.
*/
/// </summary>
@property MultiplayerInstrumentationConfiguration* pfInstrumentationConfiguration; 

/// <summary>
/*
/// Metadata of the build. The keys are case insensitive. The build metadata is made available to the server through Game Server SDK (GSDK).
*/
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/*
/// The number of multiplayer servers to hosted on a single VM of the build.
*/
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/*
/// The OS platform used for running the game process.
*/
/// </summary>
@property NSString* OsPlatform; 

/// <summary>
/*
/// The ports the build is mapped on.
*/
/// </summary>
@property NSArray* Ports; 

/// <summary>
/*
/// The region configuration for the build.
*/
/// </summary>
@property NSArray* RegionConfigurations; 

/// <summary>
/*
/// The type of game server being hosted.
*/
/// </summary>
@property NSString* ServerType; 

/// <summary>
/*
/// The command to run when the multiplayer server has been allocated, including any arguments. This only applies to managed builds. If the build is a custom build, this field will be null.
*/
/// </summary>
@property NSString* StartMultiplayerServerCommand; 

/// <summary>
/*
/// The VM size the build was created on.
*/
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Gets credentials to the container registry where game developers can upload custom container images to before creating a new build.
*/
/// </summary>
@interface MultiplayerGetContainerRegistryCredentialsRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetContainerRegistryCredentialsResponse : PlayFabBaseModel


/// <summary>
/*
/// The url of the container registry.
*/
/// </summary>
@property NSString* DnsName; 

/// <summary>
/*
/// The password for accessing the container registry.
*/
/// </summary>
@property NSString* Password; 

/// <summary>
/*
/// The username for accessing the container registry.
*/
/// </summary>
@property NSString* Username; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to get a lobby.
*/
/// </summary>
@interface MultiplayerGetLobbyRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The id of the lobby.
*/
/// </summary>
@property NSString* LobbyId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetLobbyResult : PlayFabBaseModel


/// <summary>
/*
/// The information pertaining to the requested lobby.
*/
/// </summary>
@property MultiplayerLobby* pfLobby; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// The ticket includes the invited players, their attributes if they have joined, the ticket status, the match Id when applicable, etc. Only servers, the ticket creator and the invited players can get the ticket.
*/
/// </summary>
@interface MultiplayerGetMatchmakingTicketRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Determines whether the matchmaking attributes will be returned as an escaped JSON string or as an un-escaped JSON object.
*/
/// </summary>
@property bool EscapeObject; 

/// <summary>
/*
/// The name of the queue to find a match for.
*/
/// </summary>
@property NSString* QueueName; 

/// <summary>
/*
/// The Id of the ticket to find a match for.
*/
/// </summary>
@property NSString* TicketId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetMatchmakingTicketResult : PlayFabBaseModel


/// <summary>
/*
/// The reason why the current ticket was canceled. This field is only set if the ticket is in canceled state.
*/
/// </summary>
@property NSString* CancellationReasonString; 

/// <summary>
/*
/// Change number used for differentiating older matchmaking status updates from newer ones.
*/
/// </summary>
@property NSNumber* ChangeNumber; 

/// <summary>
/*
/// The server date and time at which ticket was created.
*/
/// </summary>
@property NSDate* Created; 

/// <summary>
/*
/// The Creator's entity key.
*/
/// </summary>
@property MultiplayerEntityKey* Creator; 

/// <summary>
/*
/// How long to attempt matching this ticket in seconds.
*/
/// </summary>
@property NSNumber* GiveUpAfterSeconds; 

/// <summary>
/*
/// The Id of a match.
*/
/// </summary>
@property NSString* MatchId; 

/// <summary>
/*
/// A list of Users that have joined this ticket.
*/
/// </summary>
@property NSArray* Members; 

/// <summary>
/*
/// A list of PlayFab Ids of Users to match with.
*/
/// </summary>
@property NSArray* MembersToMatchWith; 

/// <summary>
/*
/// The Id of a match queue.
*/
/// </summary>
@property NSString* QueueName; 

/// <summary>
/*
/// The current ticket status. Possible values are: WaitingForPlayers, WaitingForMatch, WaitingForServer, Canceled and Matched.
*/
/// </summary>
@property NSString* Status; 

/// <summary>
/*
/// The Id of the ticket to find a match for.
*/
/// </summary>
@property NSString* TicketId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// When matchmaking has successfully matched together a collection of tickets, it produces a 'match' with an Id. The match contains all of the players that were matched together, and their team assigments. Only servers and ticket members can get the match.
*/
/// </summary>
@interface MultiplayerGetMatchRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Determines whether the matchmaking attributes will be returned as an escaped JSON string or as an un-escaped JSON object.
*/
/// </summary>
@property bool EscapeObject; 

/// <summary>
/*
/// The Id of a match.
*/
/// </summary>
@property NSString* MatchId; 

/// <summary>
/*
/// The name of the queue to join.
*/
/// </summary>
@property NSString* QueueName; 

/// <summary>
/*
/// Determines whether the matchmaking attributes for each user should be returned in the response for match request.
*/
/// </summary>
@property bool ReturnMemberAttributes; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetMatchResult : PlayFabBaseModel


/// <summary>
/*
/// A string that is used by players that are matched together to join an arranged lobby.
*/
/// </summary>
@property NSString* ArrangementString; 

/// <summary>
/*
/// The Id of a match.
*/
/// </summary>
@property NSString* MatchId; 

/// <summary>
/*
/// A list of Users that are matched together, along with their team assignments.
*/
/// </summary>
@property NSArray* Members; 

/// <summary>
/*
/// A list of regions that the match could be played in sorted by preference. This value is only set if the queue has a region selection rule.
*/
/// </summary>
@property NSArray* RegionPreferences; 

/// <summary>
/*
/// The details of the server that the match has been allocated to.
*/
/// </summary>
@property MultiplayerServerDetails* pfServerDetails; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Gets multiplayer server session details for a build in a specific region.
*/
/// </summary>
@interface MultiplayerGetMultiplayerServerDetailsRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string build ID of the multiplayer server to get details for.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The region the multiplayer server is located in to get details for.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// The title generated guid string session ID of the multiplayer server to get details for. This is to keep track of multiplayer server sessions.
*/
/// </summary>
@property NSString* SessionId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetMultiplayerServerDetailsResponse : PlayFabBaseModel


/// <summary>
/*
/// The identity of the build in which the server was allocated.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The connected players in the multiplayer server.
*/
/// </summary>
@property NSArray* ConnectedPlayers; 

/// <summary>
/*
/// The fully qualified domain name of the virtual machine that is hosting this multiplayer server.
*/
/// </summary>
@property NSString* FQDN; 

/// <summary>
/*
/// The IPv4 address of the virtual machine that is hosting this multiplayer server.
*/
/// </summary>
@property NSString* IPV4Address; 

/// <summary>
/*
/// The time (UTC) at which a change in the multiplayer server state was observed.
*/
/// </summary>
@property NSDate* LastStateTransitionTime; 

/// <summary>
/*
/// The ports the multiplayer server uses.
*/
/// </summary>
@property NSArray* Ports; 

/// <summary>
/*
/// The region the multiplayer server is located in.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// The string server ID of the multiplayer server generated by PlayFab.
*/
/// </summary>
@property NSString* ServerId; 

/// <summary>
/*
/// The guid string session ID of the multiplayer server.
*/
/// </summary>
@property NSString* SessionId; 

/// <summary>
/*
/// The state of the multiplayer server.
*/
/// </summary>
@property NSString* State; 

/// <summary>
/*
/// The virtual machine ID that the multiplayer server is located on.
*/
/// </summary>
@property NSString* VmId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Gets multiplayer server logs for a specific server id in a region. The logs are available only after a server has terminated.
*/
/// </summary>
@interface MultiplayerGetMultiplayerServerLogsRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The server ID of multiplayer server to get logs for.
*/
/// </summary>
@property NSString* ServerId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetMultiplayerServerLogsResponse : PlayFabBaseModel


/// <summary>
/*
/// URL for logs download.
*/
/// </summary>
@property NSString* LogDownloadUrl; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Gets multiplayer server logs for a specific server id in a region. The logs are available only after a server has terminated.
*/
/// </summary>
@interface MultiplayerGetMultiplayerSessionLogsBySessionIdRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The server ID of multiplayer server to get logs for.
*/
/// </summary>
@property NSString* SessionId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns the matchmaking statistics for a queue. These include the number of players matching and the statistics related to the time to match statistics in seconds (average and percentiles). Statistics are refreshed once every 5 minutes. Servers can access all statistics no matter what the ClientStatisticsVisibility is configured to. Clients can access statistics according to the ClientStatisticsVisibility. Client requests are forbidden if all visibility fields are false.
*/
/// </summary>
@interface MultiplayerGetQueueStatisticsRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The name of the queue.
*/
/// </summary>
@property NSString* QueueName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetQueueStatisticsResult : PlayFabBaseModel


/// <summary>
/*
/// The current number of players in the matchmaking queue, who are waiting to be matched.
*/
/// </summary>
@property NSNumber* NumberOfPlayersMatching; 

/// <summary>
/*
/// Statistics representing the time (in seconds) it takes for tickets to find a match.
*/
/// </summary>
@property MultiplayerStatistics* TimeToMatchStatisticsInSeconds; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Gets a remote login endpoint to a VM that is hosting a multiplayer server build in a specific region.
*/
/// </summary>
@interface MultiplayerGetRemoteLoginEndpointRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string build ID of the multiplayer server to get remote login information for.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The region of the multiplayer server to get remote login information for.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// The virtual machine ID the multiplayer server is located on.
*/
/// </summary>
@property NSString* VmId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetRemoteLoginEndpointResponse : PlayFabBaseModel


/// <summary>
/*
/// The remote login IPV4 address of multiplayer server.
*/
/// </summary>
@property NSString* IPV4Address; 

/// <summary>
/*
/// The remote login port of multiplayer server.
*/
/// </summary>
@property NSNumber* Port; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// The ticket includes the players, their attributes, their teams, the ticket status, the match Id and the server details when applicable, etc. Only servers can get the ticket.
*/
/// </summary>
@interface MultiplayerGetServerBackfillTicketRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Determines whether the matchmaking attributes will be returned as an escaped JSON string or as an un-escaped JSON object.
*/
/// </summary>
@property bool EscapeObject; 

/// <summary>
/*
/// The name of the queue to find a match for.
*/
/// </summary>
@property NSString* QueueName; 

/// <summary>
/*
/// The Id of the ticket to find a match for.
*/
/// </summary>
@property NSString* TicketId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetServerBackfillTicketResult : PlayFabBaseModel


/// <summary>
/*
/// The reason why the current ticket was canceled. This field is only set if the ticket is in canceled state.
*/
/// </summary>
@property NSString* CancellationReasonString; 

/// <summary>
/*
/// The server date and time at which ticket was created.
*/
/// </summary>
@property NSDate* Created; 

/// <summary>
/*
/// How long to attempt matching this ticket in seconds.
*/
/// </summary>
@property NSNumber* GiveUpAfterSeconds; 

/// <summary>
/*
/// The Id of a match.
*/
/// </summary>
@property NSString* MatchId; 

/// <summary>
/*
/// A list of Users that are part of this ticket, along with their team assignments.
*/
/// </summary>
@property NSArray* Members; 

/// <summary>
/*
/// The Id of a match queue.
*/
/// </summary>
@property NSString* QueueName; 

/// <summary>
/*
/// The details of the server the members are connected to.
*/
/// </summary>
@property MultiplayerServerDetails* pfServerDetails; 

/// <summary>
/*
/// The current ticket status. Possible values are: WaitingForMatch, Canceled and Matched.
*/
/// </summary>
@property NSString* Status; 

/// <summary>
/*
/// The Id of the ticket to find a match for.
*/
/// </summary>
@property NSString* TicketId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Gets the status of whether a title is enabled for the multiplayer server feature. The enabled status can be Initializing, Enabled, and Disabled.
*/
/// </summary>
@interface MultiplayerGetTitleEnabledForMultiplayerServersStatusRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetTitleEnabledForMultiplayerServersStatusResponse : PlayFabBaseModel


/// <summary>
/*
/// The enabled status for the multiplayer server features for the title.
*/
/// </summary>
@property MultiplayerTitleMultiplayerServerEnabledStatus Status; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Gets a title's server quota change request.
*/
/// </summary>
@interface MultiplayerGetTitleMultiplayerServersQuotaChangeRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Id of the change request to get.
*/
/// </summary>
@property NSString* RequestId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetTitleMultiplayerServersQuotaChangeResponse : PlayFabBaseModel


/// <summary>
/*
/// The change request for this title.
*/
/// </summary>
@property MultiplayerQuotaChange* Change; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Gets the quotas for a title in relation to multiplayer servers.
*/
/// </summary>
@interface MultiplayerGetTitleMultiplayerServersQuotasRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetTitleMultiplayerServersQuotasResponse : PlayFabBaseModel


/// <summary>
/*
/// The various quotas for multiplayer servers for the title.
*/
/// </summary>
@property MultiplayerTitleMultiplayerServersQuotas* Quotas; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerInstrumentationConfiguration : PlayFabBaseModel


/// <summary>
/*
/// Designates whether windows instrumentation configuration will be enabled for this Build
*/
/// </summary>
@property bool IsEnabled; 

/// <summary>
/*
/// This property is deprecated, use IsEnabled. The list of processes to be monitored on a VM for this build. Providing processes will turn on performance metrics collection for this build. Process names should not include extensions. If the game server process is: GameServer.exe; then, ProcessesToMonitor = [ GameServer ] 
*/
/// </summary>
@property NSArray* ProcessesToMonitor; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to invite a player to a lobby the caller is already a member of. Only a client can invite another player to a lobby.
*/
/// </summary>
@interface MultiplayerInviteToLobbyRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity invited to the lobby.
*/
/// </summary>
@property MultiplayerEntityKey* InviteeEntity; 

/// <summary>
/*
/// The id of the lobby.
*/
/// </summary>
@property NSString* LobbyId; 

/// <summary>
/*
/// The member entity sending the invite. Must be a member of the lobby.
*/
/// </summary>
@property MultiplayerEntityKey* MemberEntity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to join an arranged lobby. Only a client can join an arranged lobby.
*/
/// </summary>
@interface MultiplayerJoinArrangedLobbyRequest : PlayFabBaseModel


/// <summary>
/*
/// The policy indicating who is allowed to join the lobby, and the visibility to queries. May be 'Public', 'Friends' or 'Private'. Public means the lobby is both visible in queries and any player may join, including invited players. Friends means that users who are bidirectional friends of members in the lobby may search to find friend lobbies, to retrieve its connection string. Private means the lobby is not visible in queries, and a player must receive an invitation to join. Defaults to 'Public' on creation. Can only be changed by the lobby owner.
*/
/// </summary>
@property MultiplayerAccessPolicy pfAccessPolicy; 

/// <summary>
/*
/// A field which indicates which lobby the user will be joining. This field is opaque to everyone except the Lobby service and the creator of the arrangementString (Matchmaking). This string defines a unique identifier for the arranged lobby as well as the title and member the string is valid for. Arrangement strings have an expiration.
*/
/// </summary>
@property NSString* ArrangementString; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The maximum number of players allowed in the lobby. The value must be between 2 and 128.
*/
/// </summary>
@property NSNumber* MaxPlayers; 

/// <summary>
/*
/// The private key-value pairs used by the member to communicate information to other members and the owner. Visible to all members of the lobby. At most 30 key-value pairs may be stored here, keys are limited to 30 characters and values to 1000. The total size of all memberData values may not exceed 4096 bytes. Keys are case sensitive.
*/
/// </summary>
@property NSDictionary* MemberData; 

/// <summary>
/*
/// The member entity who is joining the lobby. The first member to join will be the lobby owner.
*/
/// </summary>
@property MultiplayerEntityKey* MemberEntity; 

/// <summary>
/*
/// The policy for how a new owner is chosen. May be 'Automatic', 'Manual' or 'None'. Can only be specified by clients. If client-owned and 'Automatic' - The Lobby service will automatically assign another connected owner when the current owner leaves or disconnects. The useConnections property must be true. If client - owned and 'Manual' - Ownership is protected as long as the current owner is connected. If the current owner leaves or disconnects any member may set themselves as the current owner. The useConnections property must be true. If client-owned and 'None' - Any member can set ownership. The useConnections property can be either true or false.
*/
/// </summary>
@property MultiplayerOwnerMigrationPolicy pfOwnerMigrationPolicy; 

/// <summary>
/*
/// A setting to control whether connections are used. Defaults to true. When true, notifications are sent to subscribed players, disconnect detection removes connectionHandles, only owner migration policies using connections are allowed, and lobbies must have at least one connected member to be searchable or be a server hosted lobby with a connected server. If false, then notifications are not sent, connections are not allowed, and lobbies do not need connections to be searchable.
*/
/// </summary>
@property bool UseConnections; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to join a lobby. Only a client can join a lobby.
*/
/// </summary>
@interface MultiplayerJoinLobbyRequest : PlayFabBaseModel


/// <summary>
/*
/// A field which indicates which lobby the user will be joining. This field is opaque to everyone except the Lobby service.
*/
/// </summary>
@property NSString* ConnectionString; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The private key-value pairs used by the member to communicate information to other members and the owner. Visible to all members of the lobby. At most 30 key-value pairs may be stored here, keys are limited to 30 characters and values to 1000. The total size of all memberData values may not exceed 4096 bytes.Keys are case sensitive.
*/
/// </summary>
@property NSDictionary* MemberData; 

/// <summary>
/*
/// The member entity who is joining the lobby.
*/
/// </summary>
@property MultiplayerEntityKey* MemberEntity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerJoinLobbyResult : PlayFabBaseModel


/// <summary>
/*
/// Successfully joined lobby's id.
*/
/// </summary>
@property NSString* LobbyId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Add the player to a matchmaking ticket and specify all of its matchmaking attributes. Players can join a ticket if and only if their EntityKeys are already listed in the ticket's Members list. The matchmaking service automatically starts matching the ticket against other matchmaking tickets once all players have joined the ticket. It is not possible to join a ticket once it has started matching.
*/
/// </summary>
@interface MultiplayerJoinMatchmakingTicketRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The User who wants to join the ticket. Their Id must be listed in PlayFabIdsToMatchWith.
*/
/// </summary>
@property MultiplayerMatchmakingPlayer* Member; 

/// <summary>
/*
/// The name of the queue to join.
*/
/// </summary>
@property NSString* QueueName; 

/// <summary>
/*
/// The Id of the ticket to find a match for.
*/
/// </summary>
@property NSString* TicketId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerJoinMatchmakingTicketResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to leave a lobby. Only a client can leave a lobby.
*/
/// </summary>
@interface MultiplayerLeaveLobbyRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The id of the lobby.
*/
/// </summary>
@property NSString* LobbyId; 

/// <summary>
/*
/// The member entity leaving the lobby.
*/
/// </summary>
@property MultiplayerEntityKey* MemberEntity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerLinuxInstrumentationConfiguration : PlayFabBaseModel


/// <summary>
/*
/// Designates whether Linux instrumentation configuration will be enabled for this Build
*/
/// </summary>
@property bool IsEnabled; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns a list of multiplayer server game asset summaries for a title.
*/
/// </summary>
@interface MultiplayerListAssetSummariesRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The page size for the request.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The skip token for the paged request.
*/
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListAssetSummariesResponse : PlayFabBaseModel


/// <summary>
/*
/// The list of asset summaries.
*/
/// </summary>
@property NSArray* AssetSummaries; 

/// <summary>
/*
/// The page size on the response.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The skip token for the paged response.
*/
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns a list of summarized details of all multiplayer server builds for a title.
*/
/// </summary>
@interface MultiplayerListBuildAliasesRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The page size for the request.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The skip token for the paged request.
*/
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListBuildAliasesResponse : PlayFabBaseModel


/// <summary>
/*
/// The list of build aliases for the title
*/
/// </summary>
@property NSArray* BuildAliases; 

/// <summary>
/*
/// The page size on the response.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The skip token for the paged response.
*/
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns a list of summarized details of all multiplayer server builds for a title.
*/
/// </summary>
@interface MultiplayerListBuildSummariesRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The page size for the request.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The skip token for the paged request.
*/
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListBuildSummariesResponse : PlayFabBaseModel


/// <summary>
/*
/// The list of build summaries for a title.
*/
/// </summary>
@property NSArray* BuildSummaries; 

/// <summary>
/*
/// The page size on the response.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The skip token for the paged response.
*/
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns a list of multiplayer server game certificates for a title.
*/
/// </summary>
@interface MultiplayerListCertificateSummariesRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The page size for the request.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The skip token for the paged request.
*/
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListCertificateSummariesResponse : PlayFabBaseModel


/// <summary>
/*
/// The list of game certificates.
*/
/// </summary>
@property NSArray* CertificateSummaries; 

/// <summary>
/*
/// The page size on the response.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The skip token for the paged response.
*/
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns a list of the container images that have been uploaded to the container registry for a title.
*/
/// </summary>
@interface MultiplayerListContainerImagesRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The page size for the request.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The skip token for the paged request.
*/
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListContainerImagesResponse : PlayFabBaseModel


/// <summary>
/*
/// The list of container images.
*/
/// </summary>
@property NSArray* Images; 

/// <summary>
/*
/// The page size on the response.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The skip token for the paged response.
*/
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns a list of the tags for a particular container image that exists in the container registry for a title.
*/
/// </summary>
@interface MultiplayerListContainerImageTagsRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The container images we want to list tags for.
*/
/// </summary>
@property NSString* ImageName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListContainerImageTagsResponse : PlayFabBaseModel


/// <summary>
/*
/// The list of tags for a particular container image.
*/
/// </summary>
@property NSArray* Tags; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// If the caller is a title, the EntityKey in the request is required. If the caller is a player, then it is optional. If it is provided it must match the caller's entity.
*/
/// </summary>
@interface MultiplayerListMatchmakingTicketsForPlayerRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity key for which to find the ticket Ids.
*/
/// </summary>
@property MultiplayerEntityKey* Entity; 

/// <summary>
/*
/// The name of the queue to find a match for.
*/
/// </summary>
@property NSString* QueueName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListMatchmakingTicketsForPlayerResult : PlayFabBaseModel


/// <summary>
/*
/// The list of ticket Ids the user is a member of.
*/
/// </summary>
@property NSArray* TicketIds; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns a list of multiplayer servers for a build in a specific region.
*/
/// </summary>
@interface MultiplayerListMultiplayerServersRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string build ID of the multiplayer servers to list.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The page size for the request.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The region the multiplayer servers to list.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// The skip token for the paged request.
*/
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListMultiplayerServersResponse : PlayFabBaseModel


/// <summary>
/*
/// The list of multiplayer server summary details.
*/
/// </summary>
@property NSArray* MultiplayerServerSummaries; 

/// <summary>
/*
/// The page size on the response.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The skip token for the paged response.
*/
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns a list of quality of service servers for party.
*/
/// </summary>
@interface MultiplayerListPartyQosServersRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListPartyQosServersResponse : PlayFabBaseModel


/// <summary>
/*
/// The page size on the response.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The list of QoS servers.
*/
/// </summary>
@property NSArray* QosServers; 

/// <summary>
/*
/// The skip token for the paged response.
*/
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns a list of quality of service servers for a title.
*/
/// </summary>
@interface MultiplayerListQosServersForTitleRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Indicates that the response should contain Qos servers for all regions, including those where there are no builds deployed for the title.
*/
/// </summary>
@property bool IncludeAllRegions; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListQosServersForTitleResponse : PlayFabBaseModel


/// <summary>
/*
/// The page size on the response.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The list of QoS servers.
*/
/// </summary>
@property NSArray* QosServers; 

/// <summary>
/*
/// The skip token for the paged response.
*/
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// List all server backfill ticket Ids the user is a member of.
*/
/// </summary>
@interface MultiplayerListServerBackfillTicketsForPlayerRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity key for which to find the ticket Ids.
*/
/// </summary>
@property MultiplayerEntityKey* Entity; 

/// <summary>
/*
/// The name of the queue the tickets are in.
*/
/// </summary>
@property NSString* QueueName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListServerBackfillTicketsForPlayerResult : PlayFabBaseModel


/// <summary>
/*
/// The list of backfill ticket Ids the user is a member of.
*/
/// </summary>
@property NSArray* TicketIds; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// List all server quota change requests for a title.
*/
/// </summary>
@interface MultiplayerListTitleMultiplayerServersQuotaChangesRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListTitleMultiplayerServersQuotaChangesResponse : PlayFabBaseModel


/// <summary>
/*
/// All change requests for this title.
*/
/// </summary>
@property NSArray* Changes; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns a list of virtual machines for a title.
*/
/// </summary>
@interface MultiplayerListVirtualMachineSummariesRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string build ID of the virtual machines to list.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The page size for the request.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The region of the virtual machines to list.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// The skip token for the paged request.
*/
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListVirtualMachineSummariesResponse : PlayFabBaseModel


/// <summary>
/*
/// The page size on the response.
*/
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/*
/// The skip token for the paged response.
*/
/// </summary>
@property NSString* SkipToken; 

/// <summary>
/*
/// The list of virtual machine summaries.
*/
/// </summary>
@property NSArray* VirtualMachines; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerLobby : PlayFabBaseModel


/// <summary>
/*
/// A setting indicating who is allowed to join this lobby, as well as see it in queries.
*/
/// </summary>
@property MultiplayerAccessPolicy pfAccessPolicy; 

/// <summary>
/*
/// A number that increments once for each request that modifies the lobby.
*/
/// </summary>
@property NSNumber* ChangeNumber; 

/// <summary>
/*
/// A string used to join the lobby. This field is populated by the Lobby service. Invites are performed by communicating this connectionString to other players.
*/
/// </summary>
@property NSString* ConnectionString; 

/// <summary>
/*
/// Lobby data.
*/
/// </summary>
@property NSDictionary* LobbyData; 

/// <summary>
/*
/// Id to uniquely identify a lobby.
*/
/// </summary>
@property NSString* LobbyId; 

/// <summary>
/*
/// The maximum number of players allowed in the lobby.
*/
/// </summary>
@property NSNumber* MaxPlayers; 

/// <summary>
/*
/// Array of all lobby members.
*/
/// </summary>
@property NSArray* Members; 

/// <summary>
/*
/// A setting indicating whether members are allowed to join this lobby. When Locked new members are prevented from joining.
*/
/// </summary>
@property MultiplayerMembershipLock pfMembershipLock; 

/// <summary>
/*
/// The client or server entity which owns this lobby.
*/
/// </summary>
@property MultiplayerEntityKey* Owner; 

/// <summary>
/*
/// A setting indicating the owner migration policy. If server owned, this field is not present.
*/
/// </summary>
@property MultiplayerOwnerMigrationPolicy pfOwnerMigrationPolicy; 

/// <summary>
/*
/// An opaque string stored on a SubscribeToLobbyResource call, which indicates the connection an owner or member has with PubSub.
*/
/// </summary>
@property NSString* PubSubConnectionHandle; 

/// <summary>
/*
/// Search data.
*/
/// </summary>
@property NSDictionary* SearchData; 

/// <summary>
/*
/// A flag which determines if connections are used. Defaults to true. Only set on create.
*/
/// </summary>
@property bool UseConnections; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerLobbyEmptyResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerLobbySummary : PlayFabBaseModel


/// <summary>
/*
/// A string used to join the lobby.This field is populated by the Lobby service.Invites are performed by communicating this connectionString to other players.
*/
/// </summary>
@property NSString* ConnectionString; 

/// <summary>
/*
/// The current number of players in the lobby.
*/
/// </summary>
@property NSNumber* CurrentPlayers; 

/// <summary>
/*
/// Id to uniquely identify a lobby.
*/
/// </summary>
@property NSString* LobbyId; 

/// <summary>
/*
/// The maximum number of players allowed in the lobby.
*/
/// </summary>
@property NSNumber* MaxPlayers; 

/// <summary>
/*
/// The client or server entity which owns this lobby.
*/
/// </summary>
@property MultiplayerEntityKey* Owner; 

/// <summary>
/*
/// Search data.
*/
/// </summary>
@property NSDictionary* SearchData; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// A user in a matchmaking ticket.
*/
/// </summary>
@interface MultiplayerMatchmakingPlayer : PlayFabBaseModel


/// <summary>
/*
/// The user's attributes custom to the title.
*/
/// </summary>
@property MultiplayerMatchmakingPlayerAttributes* Attributes; 

/// <summary>
/*
/// The entity key of the matchmaking user.
*/
/// </summary>
@property MultiplayerEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// The matchmaking attributes for a user.
*/
/// </summary>
@interface MultiplayerMatchmakingPlayerAttributes : PlayFabBaseModel


/// <summary>
/*
/// A data object representing a user's attributes.
*/
/// </summary>
@property NSDictionary* DataObject; 

/// <summary>
/*
/// An escaped data object representing a user's attributes.
*/
/// </summary>
@property NSString* EscapedDataObject; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// A player in a created matchmaking match with a team assignment.
*/
/// </summary>
@interface MultiplayerMatchmakingPlayerWithTeamAssignment : PlayFabBaseModel


/// <summary>
/*
/// The user's attributes custom to the title. These attributes will be null unless the request has ReturnMemberAttributes flag set to true.
*/
/// </summary>
@property MultiplayerMatchmakingPlayerAttributes* Attributes; 

/// <summary>
/*
/// The entity key of the matchmaking user.
*/
/// </summary>
@property MultiplayerEntityKey* Entity; 

/// <summary>
/*
/// The Id of the team the User is assigned to.
*/
/// </summary>
@property NSString* TeamId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerMember : PlayFabBaseModel


/// <summary>
/*
/// Key-value pairs specific to member.
*/
/// </summary>
@property NSDictionary* MemberData; 

/// <summary>
/*
/// The member entity key.
*/
/// </summary>
@property MultiplayerEntityKey* MemberEntity; 

/// <summary>
/*
/// Opaque string, stored on a Subscribe call, which indicates the connection an owner or member has with PubSub.
*/
/// </summary>
@property NSString* PubSubConnectionHandle; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerMonitoringApplicationConfiguration : PlayFabBaseModel


/// <summary>
/*
/// Asset which contains the monitoring application files and scripts.
*/
/// </summary>
@property MultiplayerAssetReference* pfAssetReference; 

/// <summary>
/*
/// Execution script name, this will be the main executable for the monitoring application.
*/
/// </summary>
@property NSString* ExecutionScriptName; 

/// <summary>
/*
/// Installation script name, this will be run before the ExecutionScript.
*/
/// </summary>
@property NSString* InstallationScriptName; 

/// <summary>
/*
/// Timespan the monitoring application will be kept alive when running from the start of the VM
*/
/// </summary>
@property NSNumber* OnStartRuntimeInMinutes; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerMonitoringApplicationConfigurationParams : PlayFabBaseModel


/// <summary>
/*
/// Asset which contains the monitoring application files and scripts.
*/
/// </summary>
@property MultiplayerAssetReferenceParams* AssetReference; 

/// <summary>
/*
/// Execution script name, this will be the main executable for the monitoring application.
*/
/// </summary>
@property NSString* ExecutionScriptName; 

/// <summary>
/*
/// Installation script name, this will be run before the ExecutionScript.
*/
/// </summary>
@property NSString* InstallationScriptName; 

/// <summary>
/*
/// Timespan the monitoring application will be kept alive when running from the start of the VM
*/
/// </summary>
@property NSNumber* OnStartRuntimeInMinutes; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerMultiplayerServerSummary : PlayFabBaseModel


/// <summary>
/*
/// The connected players in the multiplayer server.
*/
/// </summary>
@property NSArray* ConnectedPlayers; 

/// <summary>
/*
/// The time (UTC) at which a change in the multiplayer server state was observed.
*/
/// </summary>
@property NSDate* LastStateTransitionTime; 

/// <summary>
/*
/// The region the multiplayer server is located in.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// The string server ID of the multiplayer server generated by PlayFab.
*/
/// </summary>
@property NSString* ServerId; 

/// <summary>
/*
/// The title generated guid string session ID of the multiplayer server.
*/
/// </summary>
@property NSString* SessionId; 

/// <summary>
/*
/// The state of the multiplayer server.
*/
/// </summary>
@property NSString* State; 

/// <summary>
/*
/// The virtual machine ID that the multiplayer server is located on.
*/
/// </summary>
@property NSString* VmId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerPaginationRequest : PlayFabBaseModel


/// <summary>
/*
/// Continuation token returned as a result in a previous FindLobbies call. Cannot be specified by clients.
*/
/// </summary>
@property NSString* ContinuationToken; 

/// <summary>
/*
/// The number of lobbies that should be retrieved. Cannot be specified by servers, clients may specify any value up to 50
*/
/// </summary>
@property NSNumber* PageSizeRequested; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerPaginationResponse : PlayFabBaseModel


/// <summary>
/*
/// Continuation token returned by server call. Not returned for clients
*/
/// </summary>
@property NSString* ContinuationToken; 

/// <summary>
/*
/// The number of lobbies that matched the search request.
*/
/// </summary>
@property NSNumber* TotalMatchedLobbyCount; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerPort : PlayFabBaseModel


/// <summary>
/*
/// The name for the port.
*/
/// </summary>
@property NSString* Name; 

/// <summary>
/*
/// The number for the port.
*/
/// </summary>
@property NSNumber* Num; 

/// <summary>
/*
/// The protocol for the port.
*/
/// </summary>
@property MultiplayerProtocolType Protocol; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerQosServer : PlayFabBaseModel


/// <summary>
/*
/// The region the QoS server is located in.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// The QoS server URL.
*/
/// </summary>
@property NSString* ServerUrl; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerQuotaChange : PlayFabBaseModel


/// <summary>
/*
/// A brief description of the requested changes.
*/
/// </summary>
@property NSString* ChangeDescription; 

/// <summary>
/*
/// Requested changes to make to the titles cores quota.
*/
/// </summary>
@property NSArray* Changes; 

/// <summary>
/*
/// Whether or not this request is pending a review.
*/
/// </summary>
@property bool IsPendingReview; 

/// <summary>
/*
/// Additional information about this request that our team can use to better understand the requirements.
*/
/// </summary>
@property NSString* Notes; 

/// <summary>
/*
/// Id of the change request.
*/
/// </summary>
@property NSString* RequestId; 

/// <summary>
/*
/// Comments by our team when a request is reviewed.
*/
/// </summary>
@property NSString* ReviewComments; 

/// <summary>
/*
/// Whether or not this request was approved.
*/
/// </summary>
@property bool WasApproved; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to remove a member from a lobby. Owners may remove other members from a lobby. Members cannot remove themselves (use LeaveLobby instead).
*/
/// </summary>
@interface MultiplayerRemoveMemberFromLobbyRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The id of the lobby.
*/
/// </summary>
@property NSString* LobbyId; 

/// <summary>
/*
/// The member entity to be removed from the lobby.
*/
/// </summary>
@property MultiplayerEntityKey* MemberEntity; 

/// <summary>
/*
/// If true, removed member can never rejoin this lobby.
*/
/// </summary>
@property bool PreventRejoin; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Requests a multiplayer server session from a particular build in any of the given preferred regions.
*/
/// </summary>
@interface MultiplayerRequestMultiplayerServerRequest : PlayFabBaseModel


/// <summary>
/*
/// The identifiers of the build alias to use for the request.
*/
/// </summary>
@property MultiplayerBuildAliasParams* pfBuildAliasParams; 

/// <summary>
/*
/// The guid string build ID of the multiplayer server to request.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Initial list of players (potentially matchmade) allowed to connect to the game. This list is passed to the game server when requested (via GSDK) and can be used to validate players connecting to it.
*/
/// </summary>
@property NSArray* InitialPlayers; 

/// <summary>
/*
/// The preferred regions to request a multiplayer server from. The Multiplayer Service will iterate through the regions in the specified order and allocate a server from the first one that has servers available.
*/
/// </summary>
@property NSArray* PreferredRegions; 

/// <summary>
/*
/// Data encoded as a string that is passed to the game server when requested. This can be used to to communicate information such as game mode or map through the request flow.
*/
/// </summary>
@property NSString* SessionCookie; 

/// <summary>
/*
/// A guid string session ID created track the multiplayer server session over its life.
*/
/// </summary>
@property NSString* SessionId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerRequestMultiplayerServerResponse : PlayFabBaseModel


/// <summary>
/*
/// The identity of the build in which the server was allocated.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The connected players in the multiplayer server.
*/
/// </summary>
@property NSArray* ConnectedPlayers; 

/// <summary>
/*
/// The fully qualified domain name of the virtual machine that is hosting this multiplayer server.
*/
/// </summary>
@property NSString* FQDN; 

/// <summary>
/*
/// The IPv4 address of the virtual machine that is hosting this multiplayer server.
*/
/// </summary>
@property NSString* IPV4Address; 

/// <summary>
/*
/// The time (UTC) at which a change in the multiplayer server state was observed.
*/
/// </summary>
@property NSDate* LastStateTransitionTime; 

/// <summary>
/*
/// The ports the multiplayer server uses.
*/
/// </summary>
@property NSArray* Ports; 

/// <summary>
/*
/// The region the multiplayer server is located in.
*/
/// </summary>
@property NSString* Region; 

/// <summary>
/*
/// The string server ID of the multiplayer server generated by PlayFab.
*/
/// </summary>
@property NSString* ServerId; 

/// <summary>
/*
/// The guid string session ID of the multiplayer server.
*/
/// </summary>
@property NSString* SessionId; 

/// <summary>
/*
/// The state of the multiplayer server.
*/
/// </summary>
@property NSString* State; 

/// <summary>
/*
/// The virtual machine ID that the multiplayer server is located on.
*/
/// </summary>
@property NSString* VmId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Gets new credentials to the container registry where game developers can upload custom container images to before creating a new build.
*/
/// </summary>
@interface MultiplayerRolloverContainerRegistryCredentialsRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerRolloverContainerRegistryCredentialsResponse : PlayFabBaseModel


/// <summary>
/*
/// The url of the container registry.
*/
/// </summary>
@property NSString* DnsName; 

/// <summary>
/*
/// The password for accessing the container registry.
*/
/// </summary>
@property NSString* Password; 

/// <summary>
/*
/// The username for accessing the container registry.
*/
/// </summary>
@property NSString* Username; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerSchedule : PlayFabBaseModel


/// <summary>
/*
/// A short description about this schedule. For example, "Game launch on July 15th".
*/
/// </summary>
@property NSString* Description; 

/// <summary>
/*
/// The date and time in UTC at which the schedule ends. If IsRecurringWeekly is true, this schedule will keep renewing for future weeks until disabled or removed.
*/
/// </summary>
@property NSDate* EndTime; 

/// <summary>
/*
/// Disables the schedule.
*/
/// </summary>
@property bool IsDisabled; 

/// <summary>
/*
/// If true, the StartTime and EndTime will get renewed every week.
*/
/// </summary>
@property bool IsRecurringWeekly; 

/// <summary>
/*
/// The date and time in UTC at which the schedule starts.
*/
/// </summary>
@property NSDate* StartTime; 

/// <summary>
/*
/// The standby target to maintain for the duration of the schedule.
*/
/// </summary>
@property NSNumber* TargetStandby; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerScheduledStandbySettings : PlayFabBaseModel


/// <summary>
/*
/// When true, scheduled standby will be enabled
*/
/// </summary>
@property bool IsEnabled; 

/// <summary>
/*
/// A list of non-overlapping schedules
*/
/// </summary>
@property NSArray* ScheduleList; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerServerDetails : PlayFabBaseModel


/// <summary>
/*
/// The fully qualified domain name of the virtual machine that is hosting this multiplayer server.
*/
/// </summary>
@property NSString* Fqdn; 

/// <summary>
/*
/// The IPv4 address of the virtual machine that is hosting this multiplayer server.
*/
/// </summary>
@property NSString* IPV4Address; 

/// <summary>
/*
/// The ports the multiplayer server uses.
*/
/// </summary>
@property NSArray* Ports; 

/// <summary>
/*
/// The server's region.
*/
/// </summary>
@property NSString* Region; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Executes the shutdown callback from the GSDK and terminates the multiplayer server session. The callback in the GSDK will allow for graceful shutdown with a 15 minute timeoutIf graceful shutdown has not been completed before 15 minutes have elapsed, the multiplayer server session will be forcefully terminated on it's own.
*/
/// </summary>
@interface MultiplayerShutdownMultiplayerServerRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// A guid string session ID of the multiplayer server to shut down.
*/
/// </summary>
@property NSString* SessionId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerStatistics : PlayFabBaseModel


/// <summary>
/*
/// The average.
*/
/// </summary>
@property NSNumber* Average; 

/// <summary>
/*
/// The 50th percentile.
*/
/// </summary>
@property NSNumber* Percentile50; 

/// <summary>
/*
/// The 90th percentile.
*/
/// </summary>
@property NSNumber* Percentile90; 

/// <summary>
/*
/// The 99th percentile.
*/
/// </summary>
@property NSNumber* Percentile99; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to subscribe to lobby resource notifications.
*/
/// </summary>
@interface MultiplayerSubscribeToLobbyResourceRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity performing the subscription.
*/
/// </summary>
@property MultiplayerEntityKey* pfEntityKey; 

/// <summary>
/*
/// Opaque string, given to a client upon creating a connection with PubSub.
*/
/// </summary>
@property NSString* PubSubConnectionHandle; 

/// <summary>
/*
/// The name of the resource to subscribe to.
*/
/// </summary>
@property NSString* ResourceId; 

/// <summary>
/*
/// Version number for the subscription of this resource.
*/
/// </summary>
@property NSNumber* SubscriptionVersion; 

/// <summary>
/*
/// Subscription type.
*/
/// </summary>
@property MultiplayerSubscriptionType Type; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerSubscribeToLobbyResourceResult : PlayFabBaseModel


/// <summary>
/*
/// Topic will be returned in all notifications that are the result of this subscription.
*/
/// </summary>
@property NSString* Topic; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerTitleMultiplayerServersQuotas : PlayFabBaseModel


/// <summary>
/*
/// The core capacity for the various regions and VM Family
*/
/// </summary>
@property NSArray* CoreCapacities; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to unsubscribe from lobby notifications. Only a client can unsubscribe from notifications.
*/
/// </summary>
@interface MultiplayerUnsubscribeFromLobbyResourceRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity which performed the subscription.
*/
/// </summary>
@property MultiplayerEntityKey* pfEntityKey; 

/// <summary>
/*
/// Opaque string, given to a client upon creating a connection with PubSub.
*/
/// </summary>
@property NSString* PubSubConnectionHandle; 

/// <summary>
/*
/// The name of the resource to unsubscribe from.
*/
/// </summary>
@property NSString* ResourceId; 

/// <summary>
/*
/// Version number passed for the subscription of this resource.
*/
/// </summary>
@property NSNumber* SubscriptionVersion; 

/// <summary>
/*
/// Subscription type.
*/
/// </summary>
@property MultiplayerSubscriptionType Type; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Removes the specified tag from the image. After this operation, a 'docker pull' will fail for the specified image and tag combination. Morever, ListContainerImageTags will not return the specified tag.
*/
/// </summary>
@interface MultiplayerUntagContainerImageRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The container image which tag we want to remove.
*/
/// </summary>
@property NSString* ImageName; 

/// <summary>
/*
/// The tag we want to remove.
*/
/// </summary>
@property NSString* Tag; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Creates a multiplayer server build alias and returns the created alias.
*/
/// </summary>
@interface MultiplayerUpdateBuildAliasRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string alias Id of the alias to be updated.
*/
/// </summary>
@property NSString* AliasId; 

/// <summary>
/*
/// The alias name.
*/
/// </summary>
@property NSString* AliasName; 

/// <summary>
/*
/// Array of build selection criteria.
*/
/// </summary>
@property NSArray* BuildSelectionCriteria; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Updates a multiplayer server build's name.
*/
/// </summary>
@interface MultiplayerUpdateBuildNameRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string ID of the build we want to update the name of.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The build name.
*/
/// </summary>
@property NSString* BuildName; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Updates a multiplayer server build's region.
*/
/// </summary>
@interface MultiplayerUpdateBuildRegionRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string ID of the build we want to update regions for.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The updated region configuration that should be applied to the specified build.
*/
/// </summary>
@property MultiplayerBuildRegionParams* BuildRegion; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Updates a multiplayer server build's regions.
*/
/// </summary>
@interface MultiplayerUpdateBuildRegionsRequest : PlayFabBaseModel


/// <summary>
/*
/// The guid string ID of the build we want to update regions for.
*/
/// </summary>
@property NSString* BuildId; 

/// <summary>
/*
/// The updated region configuration that should be applied to the specified build.
*/
/// </summary>
@property NSArray* BuildRegions; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Request to update a lobby.
*/
/// </summary>
@interface MultiplayerUpdateLobbyRequest : PlayFabBaseModel


/// <summary>
/*
/// The policy indicating who is allowed to join the lobby, and the visibility to queries. May be 'Public', 'Friends' or 'Private'. Public means the lobby is both visible in queries and any player may join, including invited players. Friends means that users who are bidirectional friends of members in the lobby may search to find friend lobbies, to retrieve its connection string. Private means the lobby is not visible in queries, and a player must receive an invitation to join. Defaults to 'Public' on creation. Can only be changed by the lobby owner.
*/
/// </summary>
@property MultiplayerAccessPolicy pfAccessPolicy; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The private key-value pairs which are only visible to members of the lobby. Optional. Sets or updates key-value pairs on the lobby. Only the current lobby owner can set lobby data. Keys may be an arbitrary string of at most 30 characters. The total size of all lobbyData values may not exceed 4096 bytes. Values are not individually limited. There can be up to 30 key-value pairs stored here. Keys are case sensitive.
*/
/// </summary>
@property NSDictionary* LobbyData; 

/// <summary>
/*
/// The keys to delete from the lobby LobbyData. Optional. Behaves similar to searchDataToDelete, but applies to lobbyData.
*/
/// </summary>
@property NSArray* LobbyDataToDelete; 

/// <summary>
/*
/// The id of the lobby.
*/
/// </summary>
@property NSString* LobbyId; 

/// <summary>
/*
/// The maximum number of players allowed in the lobby. Updates the maximum allowed number of players in the lobby. Only the current lobby owner can set this. If set, the value must be greater than or equal to the number of members currently in the lobby.
*/
/// </summary>
@property NSNumber* MaxPlayers; 

/// <summary>
/*
/// The private key-value pairs used by the member to communicate information to other members and the owner. Optional. Sets or updates new key-value pairs on the caller's member data. New keys will be added with their values and existing keys will be updated with the new values. Visible to all members of the lobby. At most 30 key-value pairs may be stored here, keys are limited to 30 characters and values to 1000. The total size of all memberData values may not exceed 4096 bytes. Keys are case sensitive. Servers cannot specifiy this.
*/
/// </summary>
@property NSDictionary* MemberData; 

/// <summary>
/*
/// The keys to delete from the lobby MemberData. Optional. Deletes key-value pairs on the caller's member data. All the specified keys will be removed from the caller's member data. Keys that do not exist are a no-op. If the key to delete exists in the memberData (same request) it will result in a bad request. Servers cannot specifiy this.
*/
/// </summary>
@property NSArray* MemberDataToDelete; 

/// <summary>
/*
/// The member entity whose data is being modified. Servers cannot specify this.
*/
/// </summary>
@property MultiplayerEntityKey* MemberEntity; 

/// <summary>
/*
/// A setting indicating whether the lobby is locked. May be 'Unlocked' or 'Locked'. When Locked new members are not allowed to join. Defaults to 'Unlocked' on creation. Can only be changed by the lobby owner.
*/
/// </summary>
@property MultiplayerMembershipLock pfMembershipLock; 

/// <summary>
/*
/// The lobby owner. Optional. Set to transfer ownership of the lobby. If client - owned and 'Automatic' - The Lobby service will automatically assign another connected owner when the current owner leaves or disconnects. useConnections must be true. If client - owned and 'Manual' - Ownership is protected as long as the current owner is connected. If the current owner leaves or disconnects any member may set themselves as the current owner. The useConnections property must be true. If client-owned and 'None' - Any member can set ownership. The useConnections property can be either true or false. For all client-owned lobbies when the owner leaves and a new owner can not be automatically selected - The owner field is set to null. For all client-owned lobbies when the owner disconnects and a new owner can not be automatically selected - The owner field remains unchanged and the current owner retains all owner abilities for the lobby. If server-owned (must be 'Server') - Any server can set ownership. The useConnections property must be true.
*/
/// </summary>
@property MultiplayerEntityKey* Owner; 

/// <summary>
/*
/// The public key-value pairs which allow queries to differentiate between lobbies. Optional. Sets or updates key-value pairs on the lobby for use with queries. Only the current lobby owner can set search data. New keys will be added with their values and existing keys will be updated with the new values. There can be up to 30 key-value pairs stored here. Keys are of the format string_key1, string_key2... string_key30 for string values, or number_key1, number_key2, ... number_key30 for numeric values. Numeric values are floats. Values can be at most 256 characters long. The total size of all searchData values may not exceed 1024 bytes.Keys are case sensitive.
*/
/// </summary>
@property NSDictionary* SearchData; 

/// <summary>
/*
/// The keys to delete from the lobby SearchData. Optional. Deletes key-value pairs on the lobby. Only the current lobby owner can delete search data. All the specified keys will be removed from the search data. Keys that do not exist in the lobby are a no-op.If the key to delete exists in the searchData (same request) it will result in a bad request.
*/
/// </summary>
@property NSArray* SearchDataToDelete; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Uploads a multiplayer server game certificate.
*/
/// </summary>
@interface MultiplayerUploadCertificateRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The game certificate to upload.
*/
/// </summary>
@property MultiplayerCertificate* GameCertificate; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerVirtualMachineSummary : PlayFabBaseModel


/// <summary>
/*
/// The virtual machine health status.
*/
/// </summary>
@property NSString* HealthStatus; 

/// <summary>
/*
/// The virtual machine state.
*/
/// </summary>
@property NSString* State; 

/// <summary>
/*
/// The virtual machine ID.
*/
/// </summary>
@property NSString* VmId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerWindowsCrashDumpConfiguration : PlayFabBaseModel


/// <summary>
/*
/// See https://docs.microsoft.com/en-us/windows/win32/wer/collecting-user-mode-dumps for valid values.
*/
/// </summary>
@property NSNumber* CustomDumpFlags; 

/// <summary>
/*
/// See https://docs.microsoft.com/en-us/windows/win32/wer/collecting-user-mode-dumps for valid values.
*/
/// </summary>
@property NSNumber* DumpType; 

/// <summary>
/*
/// Designates whether automatic crash dump capturing will be enabled for this Build.
*/
/// </summary>
@property bool IsEnabled; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

