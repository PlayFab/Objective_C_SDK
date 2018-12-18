#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"


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
    MultiplayerAzureRegionWestUs
} MultiplayerAzureRegion;

typedef enum
{
    MultiplayerAzureVmSizeStandard_D1_v2,
    MultiplayerAzureVmSizeStandard_D2_v2,
    MultiplayerAzureVmSizeStandard_D3_v2,
    MultiplayerAzureVmSizeStandard_D4_v2,
    MultiplayerAzureVmSizeStandard_D5_v2,
    MultiplayerAzureVmSizeStandard_A1_v2,
    MultiplayerAzureVmSizeStandard_A2_v2,
    MultiplayerAzureVmSizeStandard_A4_v2,
    MultiplayerAzureVmSizeStandard_A8_v2,
    MultiplayerAzureVmSizeStandard_F1,
    MultiplayerAzureVmSizeStandard_F2,
    MultiplayerAzureVmSizeStandard_F4,
    MultiplayerAzureVmSizeStandard_F8,
    MultiplayerAzureVmSizeStandard_F16,
    MultiplayerAzureVmSizeStandard_F2s_v2,
    MultiplayerAzureVmSizeStandard_F4s_v2,
    MultiplayerAzureVmSizeStandard_F8s_v2,
    MultiplayerAzureVmSizeStandard_F16s_v2,
    MultiplayerAzureVmSizeStandard_A1,
    MultiplayerAzureVmSizeStandard_A2,
    MultiplayerAzureVmSizeStandard_A3,
    MultiplayerAzureVmSizeStandard_A4
} MultiplayerAzureVmSize;

typedef enum
{
    MultiplayerContainerFlavorManagedWindowsServerCore,
    MultiplayerContainerFlavorCustomLinux,
    MultiplayerContainerFlavorManagedWindowsServerCorePreview
} MultiplayerContainerFlavor;

typedef enum
{
    MultiplayerProtocolTypeTCP,
    MultiplayerProtocolTypeUDP
} MultiplayerProtocolType;

typedef enum
{
    MultiplayerTitleMultiplayerServerEnabledStatusInitializing,
    MultiplayerTitleMultiplayerServerEnabledStatusEnabled,
    MultiplayerTitleMultiplayerServerEnabledStatusDisabled
} MultiplayerTitleMultiplayerServerEnabledStatus;

//predeclare all non-enum classes

@class MultiplayerAssetReference;

@class MultiplayerAssetReferenceParams;

@class MultiplayerAssetSummary;

@class MultiplayerBuildRegion;

@class MultiplayerBuildRegionParams;

@class MultiplayerBuildSummary;

@class MultiplayerCertificate;

@class MultiplayerCertificateSummary;

@class MultiplayerConnectedPlayer;

@class MultiplayerContainerImageReference;

@class MultiplayerCreateBuildWithCustomContainerRequest;

@class MultiplayerCreateBuildWithCustomContainerResponse;

@class MultiplayerCreateBuildWithManagedContainerRequest;

@class MultiplayerCreateBuildWithManagedContainerResponse;

@class MultiplayerCreateRemoteUserRequest;

@class MultiplayerCreateRemoteUserResponse;

@class MultiplayerDeleteAssetRequest;

@class MultiplayerDeleteBuildRequest;

@class MultiplayerDeleteCertificateRequest;

@class MultiplayerDeleteRemoteUserRequest;

@class MultiplayerEmptyResponse;

@class MultiplayerEnableMultiplayerServersForTitleRequest;

@class MultiplayerEnableMultiplayerServersForTitleResponse;

@class MultiplayerGameCertificateReference;

@class MultiplayerGameCertificateReferenceParams;

@class MultiplayerGetAssetUploadUrlRequest;

@class MultiplayerGetAssetUploadUrlResponse;

@class MultiplayerGetBuildRequest;

@class MultiplayerGetBuildResponse;

@class MultiplayerGetContainerRegistryCredentialsRequest;

@class MultiplayerGetContainerRegistryCredentialsResponse;

@class MultiplayerGetMultiplayerServerDetailsRequest;

@class MultiplayerGetMultiplayerServerDetailsResponse;

@class MultiplayerGetRemoteLoginEndpointRequest;

@class MultiplayerGetRemoteLoginEndpointResponse;

@class MultiplayerGetTitleEnabledForMultiplayerServersStatusRequest;

@class MultiplayerGetTitleEnabledForMultiplayerServersStatusResponse;

@class MultiplayerListAssetSummariesRequest;

@class MultiplayerListAssetSummariesResponse;

@class MultiplayerListBuildSummariesRequest;

@class MultiplayerListBuildSummariesResponse;

@class MultiplayerListCertificateSummariesRequest;

@class MultiplayerListCertificateSummariesResponse;

@class MultiplayerListContainerImagesRequest;

@class MultiplayerListContainerImagesResponse;

@class MultiplayerListContainerImageTagsRequest;

@class MultiplayerListContainerImageTagsResponse;

@class MultiplayerListMultiplayerServersRequest;

@class MultiplayerListMultiplayerServersResponse;

@class MultiplayerListQosServersRequest;

@class MultiplayerListQosServersResponse;

@class MultiplayerListVirtualMachineSummariesRequest;

@class MultiplayerListVirtualMachineSummariesResponse;

@class MultiplayerMultiplayerServerSummary;

@class MultiplayerPort;

@class MultiplayerQosServer;

@class MultiplayerRequestMultiplayerServerRequest;

@class MultiplayerRequestMultiplayerServerResponse;

@class MultiplayerRolloverContainerRegistryCredentialsRequest;

@class MultiplayerRolloverContainerRegistryCredentialsResponse;

@class MultiplayerShutdownMultiplayerServerRequest;

@class MultiplayerUpdateBuildRegionsRequest;

@class MultiplayerUploadCertificateRequest;

@class MultiplayerVirtualMachineSummary;



@interface MultiplayerAssetReference : PlayFabBaseModel


/// <summary>
/// The asset's file name. This is a filename with the .zip, .tar, or .tar.gz extension.
/// </summary>
@property NSString* FileName; 

/// <summary>
/// The asset's mount path.
/// </summary>
@property NSString* MountPath; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerAssetReferenceParams : PlayFabBaseModel


/// <summary>
/// The asset's file name. This must be a filename with the .zip, .tar, or .tar.gz extension.
/// </summary>
@property NSString* FileName; 

/// <summary>
/// The asset's mount path.
/// </summary>
@property NSString* MountPath; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerAssetSummary : PlayFabBaseModel


/// <summary>
/// The asset's file name. This is a filename with the .zip, .tar, or .tar.gz extension.
/// </summary>
@property NSString* FileName; 

/// <summary>
/// The metadata associated with the asset.
/// </summary>
@property NSDictionary* Metadata; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerBuildRegion : PlayFabBaseModel


/// <summary>
/// The maximum number of multiplayer servers for the region.
/// </summary>
@property NSNumber* MaxServers; 

/// <summary>
/// The build region.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// The number of standby multiplayer servers for the region.
/// </summary>
@property NSNumber* StandbyServers; 

/// <summary>
/// The status of multiplayer servers in the build region. Valid values are - Unknown, Initialized, Deploying, Deployed, Unhealthy.
/// </summary>
@property NSString* Status; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerBuildRegionParams : PlayFabBaseModel


/// <summary>
/// The maximum number of multiplayer servers for the region.
/// </summary>
@property NSNumber* MaxServers; 

/// <summary>
/// The build region.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// The number of standby multiplayer servers for the region.
/// </summary>
@property NSNumber* StandbyServers; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerBuildSummary : PlayFabBaseModel


/// <summary>
/// The guid string build ID of the build.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// The build name.
/// </summary>
@property NSString* BuildName; 

/// <summary>
/// The time the build was created in UTC.
/// </summary>
@property NSDate* CreationTime; 

/// <summary>
/// The metadata of the build.
/// </summary>
@property NSDictionary* Metadata; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCertificate : PlayFabBaseModel


/// <summary>
/// Base64 encoded string contents of the certificate.
/// </summary>
@property NSString* Base64EncodedValue; 

/// <summary>
/// A name for the certificate. This is used to reference certificates in build configurations.
/// </summary>
@property NSString* Name; 

/// <summary>
/// If required for your PFX certificate, use this field to provide a password that will be used to install the certificate on the container.
/// </summary>
@property NSString* Password; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCertificateSummary : PlayFabBaseModel


/// <summary>
/// The name of the certificate.
/// </summary>
@property NSString* Name; 

/// <summary>
/// The thumbprint for the certificate.
/// </summary>
@property NSString* Thumbprint; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerConnectedPlayer : PlayFabBaseModel


/// <summary>
/// The player ID of the player connected to the multiplayer server.
/// </summary>
@property NSString* PlayerId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerContainerImageReference : PlayFabBaseModel


/// <summary>
/// The container image name.
/// </summary>
@property NSString* ImageName; 

/// <summary>
/// The container tag.
/// </summary>
@property NSString* Tag; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Creates a multiplayer server build with a custom container and returns information about the build creation request.
/// </summary>
@interface MultiplayerCreateBuildWithCustomContainerRequest : PlayFabBaseModel


/// <summary>
/// The build name.
/// </summary>
@property NSString* BuildName; 

/// <summary>
/// The flavor of container to create a build from.
/// </summary>
@property MultiplayerContainerFlavor pfContainerFlavor; 

/// <summary>
/// The name of the container repository.
/// </summary>
@property NSString* ContainerRepositoryName; 

/// <summary>
/// The container command to run when the multiplayer server has been allocated, including any arguments.
/// </summary>
@property NSString* ContainerRunCommand; 

/// <summary>
/// The tag for the container.
/// </summary>
@property NSString* ContainerTag; 

/// <summary>
/// The list of game assets related to the build.
/// </summary>
@property NSArray* GameAssetReferences; 

/// <summary>
/// The game certificates for the build.
/// </summary>
@property NSArray* GameCertificateReferences; 

/// <summary>
/// Metadata to tag the build. The keys are case insensitive. The build metadata is made available to the server through Game Server SDK (GSDK).
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/// The number of multiplayer servers to host on a single VM.
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/// The ports to map the build on.
/// </summary>
@property NSArray* Ports; 

/// <summary>
/// The region configurations for the build.
/// </summary>
@property NSArray* RegionConfigurations; 

/// <summary>
/// The VM size to create the build on.
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCreateBuildWithCustomContainerResponse : PlayFabBaseModel


/// <summary>
/// The guid string build ID. Must be unique for every build.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// The build name.
/// </summary>
@property NSString* BuildName; 

/// <summary>
/// The flavor of container of the build.
/// </summary>
@property MultiplayerContainerFlavor pfContainerFlavor; 

/// <summary>
/// The container command to run when the multiplayer server has been allocated, including any arguments.
/// </summary>
@property NSString* ContainerRunCommand; 

/// <summary>
/// The time the build was created in UTC.
/// </summary>
@property NSDate* CreationTime; 

/// <summary>
/// The custom game container image reference information.
/// </summary>
@property MultiplayerContainerImageReference* CustomGameContainerImage; 

/// <summary>
/// The game assets for the build.
/// </summary>
@property NSArray* GameAssetReferences; 

/// <summary>
/// The game certificates for the build.
/// </summary>
@property NSArray* GameCertificateReferences; 

/// <summary>
/// The metadata of the build.
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/// The number of multiplayer servers to host on a single VM of the build.
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/// The ports the build is mapped on.
/// </summary>
@property NSArray* Ports; 

/// <summary>
/// The region configuration for the build.
/// </summary>
@property NSArray* RegionConfigurations; 

/// <summary>
/// The VM size the build was created on.
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Creates a multiplayer server build with a managed container and returns information about the build creation request.
/// </summary>
@interface MultiplayerCreateBuildWithManagedContainerRequest : PlayFabBaseModel


/// <summary>
/// The build name.
/// </summary>
@property NSString* BuildName; 

/// <summary>
/// The flavor of container to create a build from.
/// </summary>
@property MultiplayerContainerFlavor pfContainerFlavor; 

/// <summary>
/// The list of game assets related to the build.
/// </summary>
@property NSArray* GameAssetReferences; 

/// <summary>
/// The game certificates for the build.
/// </summary>
@property NSArray* GameCertificateReferences; 

/// <summary>
/// Metadata to tag the build. The keys are case insensitive. The build metadata is made available to the server through Game Server SDK (GSDK).
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/// The number of multiplayer servers to host on a single VM.
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/// The ports to map the build on.
/// </summary>
@property NSArray* Ports; 

/// <summary>
/// The region configurations for the build.
/// </summary>
@property NSArray* RegionConfigurations; 

/// <summary>
/// The command to run when the multiplayer server is started, including any arguments.
/// </summary>
@property NSString* StartMultiplayerServerCommand; 

/// <summary>
/// The VM size to create the build on.
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCreateBuildWithManagedContainerResponse : PlayFabBaseModel


/// <summary>
/// The guid string build ID. Must be unique for every build.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// The build name.
/// </summary>
@property NSString* BuildName; 

/// <summary>
/// The flavor of container of the build.
/// </summary>
@property MultiplayerContainerFlavor pfContainerFlavor; 

/// <summary>
/// The time the build was created in UTC.
/// </summary>
@property NSDate* CreationTime; 

/// <summary>
/// The game assets for the build.
/// </summary>
@property NSArray* GameAssetReferences; 

/// <summary>
/// The game certificates for the build.
/// </summary>
@property NSArray* GameCertificateReferences; 

/// <summary>
/// The metadata of the build.
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/// The number of multiplayer servers to host on a single VM of the build.
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/// The ports the build is mapped on.
/// </summary>
@property NSArray* Ports; 

/// <summary>
/// The region configuration for the build.
/// </summary>
@property NSArray* RegionConfigurations; 

/// <summary>
/// The command to run when the multiplayer server has been allocated, including any arguments.
/// </summary>
@property NSString* StartMultiplayerServerCommand; 

/// <summary>
/// The VM size the build was created on.
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Creates a remote user to log on to a VM for a multiplayer server build in a specific region. Returns user credential information necessary to log on.
/// </summary>
@interface MultiplayerCreateRemoteUserRequest : PlayFabBaseModel


/// <summary>
/// The guid string build ID of to create the remote user for.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// The expiration time for the remote user created. Defaults to expiring in one day if not specified.
/// </summary>
@property NSDate* ExpirationTime; 

/// <summary>
/// The region of virtual machine to create the remote user for.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// The username to create the remote user with.
/// </summary>
@property NSString* Username; 

/// <summary>
/// The virtual machine ID the multiplayer server is located on.
/// </summary>
@property NSString* VmId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerCreateRemoteUserResponse : PlayFabBaseModel


/// <summary>
/// The expiration time for the remote user created.
/// </summary>
@property NSDate* ExpirationTime; 

/// <summary>
/// The generated password for the remote user that was created.
/// </summary>
@property NSString* Password; 

/// <summary>
/// The username for the remote user that was created.
/// </summary>
@property NSString* Username; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Deletes a multiplayer server game asset for a title.
/// </summary>
@interface MultiplayerDeleteAssetRequest : PlayFabBaseModel


/// <summary>
/// The filename of the asset to delete. This must be a filename with the .zip, .tar, or .tar.gz extension.
/// </summary>
@property NSString* FileName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Deletes a multiplayer server build.
/// </summary>
@interface MultiplayerDeleteBuildRequest : PlayFabBaseModel


/// <summary>
/// The guid string build ID of the build to delete.
/// </summary>
@property NSString* BuildId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Deletes a multiplayer server game certificate.
/// </summary>
@interface MultiplayerDeleteCertificateRequest : PlayFabBaseModel


/// <summary>
/// The name of the certificate.
/// </summary>
@property NSString* Name; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Deletes a remote user to log on to a VM for a multiplayer server build in a specific region. Returns user credential information necessary to log on.
/// </summary>
@interface MultiplayerDeleteRemoteUserRequest : PlayFabBaseModel


/// <summary>
/// The guid string build ID of the multiplayer server where the remote user is to delete.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// The region of the multiplayer server where the remote user is to delete.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// The username of the remote user to delete.
/// </summary>
@property NSString* Username; 

/// <summary>
/// The virtual machine ID the multiplayer server is located on.
/// </summary>
@property NSString* VmId; 
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
/// Enables the multiplayer server feature for a title and returns the enabled status. The enabled status can be Initializing, Enabled, and Disabled. It can up to 20 minutes or more for the title to be enabled for the feature. On average, it can take up to 20 minutes for the title to be enabled for the feature.
/// </summary>
@interface MultiplayerEnableMultiplayerServersForTitleRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerEnableMultiplayerServersForTitleResponse : PlayFabBaseModel


/// <summary>
/// The enabled status for the multiplayer server features for the title.
/// </summary>
@property MultiplayerTitleMultiplayerServerEnabledStatus Status; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGameCertificateReference : PlayFabBaseModel


/// <summary>
/// An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
/// </summary>
@property NSString* GsdkAlias; 

/// <summary>
/// The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.
/// </summary>
@property NSString* Name; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGameCertificateReferenceParams : PlayFabBaseModel


/// <summary>
/// An alias for the game certificate. The game server will reference this alias via GSDK config to retrieve the game certificate. This alias is used as an identifier in game server code to allow a new certificate with different Name field to be uploaded without the need to change any game server code to reference the new Name.
/// </summary>
@property NSString* GsdkAlias; 

/// <summary>
/// The name of the game certificate. This name should match the name of a certificate that was previously uploaded to this title.
/// </summary>
@property NSString* Name; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Gets the URL to upload assets to.
/// </summary>
@interface MultiplayerGetAssetUploadUrlRequest : PlayFabBaseModel


/// <summary>
/// The asset's file name to get the upload URL for. This must be a filename with the .zip, .tar, or .tar.gz extension.
/// </summary>
@property NSString* FileName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetAssetUploadUrlResponse : PlayFabBaseModel


/// <summary>
/// The asset's upload URL.
/// </summary>
@property NSString* AssetUploadUrl; 

/// <summary>
/// The asset's file name to get the upload URL for. This must be a filename will be a file with the .zip, .tar, or .tar.gz extension.
/// </summary>
@property NSString* FileName; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Returns the details about a multiplayer server build.
/// </summary>
@interface MultiplayerGetBuildRequest : PlayFabBaseModel


/// <summary>
/// The guid string build ID of the build to get.
/// </summary>
@property NSString* BuildId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetBuildResponse : PlayFabBaseModel


/// <summary>
/// The guid string build ID of the build.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// The build name.
/// </summary>
@property NSString* BuildName; 

/// <summary>
/// The current build status. Valid values are - Deploying, Deployed, DeletingRegion, Unhealthy.
/// </summary>
@property NSString* BuildStatus; 

/// <summary>
/// The flavor of container of he build.
/// </summary>
@property MultiplayerContainerFlavor pfContainerFlavor; 

/// <summary>
/// The container command to run when the multiplayer server has been allocated, including any arguments. This only applies to custom builds. If the build is a managed build, this field will be null.
/// </summary>
@property NSString* ContainerRunCommand; 

/// <summary>
/// The time the build was created in UTC.
/// </summary>
@property NSDate* CreationTime; 

/// <summary>
/// The custom game container image for a custom build.
/// </summary>
@property MultiplayerContainerImageReference* CustomGameContainerImage; 

/// <summary>
/// The game assets for the build.
/// </summary>
@property NSArray* GameAssetReferences; 

/// <summary>
/// The game certificates for the build.
/// </summary>
@property NSArray* GameCertificateReferences; 

/// <summary>
/// Metadata of the build. The keys are case insensitive. The build metadata is made available to the server through Game Server SDK (GSDK).
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/// The number of multiplayer servers to hosted on a single VM of the build.
/// </summary>
@property NSNumber* MultiplayerServerCountPerVm; 

/// <summary>
/// The ports the build is mapped on.
/// </summary>
@property NSArray* Ports; 

/// <summary>
/// The region configuration for the build.
/// </summary>
@property NSArray* RegionConfigurations; 

/// <summary>
/// The command to run when the multiplayer server has been allocated, including any arguments. This only applies to managed builds. If the build is a custom build, this field will be null.
/// </summary>
@property NSString* StartMultiplayerServerCommand; 

/// <summary>
/// The VM size the build was created on.
/// </summary>
@property MultiplayerAzureVmSize VmSize; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Gets credentials to the container registry where game developers can upload custom container images to before creating a new build.
/// </summary>
@interface MultiplayerGetContainerRegistryCredentialsRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetContainerRegistryCredentialsResponse : PlayFabBaseModel


/// <summary>
/// The url of the container registry.
/// </summary>
@property NSString* DnsName; 

/// <summary>
/// The password for accessing the container registry.
/// </summary>
@property NSString* Password; 

/// <summary>
/// The username for accessing the container registry.
/// </summary>
@property NSString* Username; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Gets multiplayer server session details for a build in a specific region.
/// </summary>
@interface MultiplayerGetMultiplayerServerDetailsRequest : PlayFabBaseModel


/// <summary>
/// The guid string build ID of the multiplayer server to get details for.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// The region the multiplayer server is located in to get details for.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// The title generated guid string session ID of the multiplayer server to get details for. This is to keep track of multiplayer server sessions.
/// </summary>
@property NSString* SessionId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetMultiplayerServerDetailsResponse : PlayFabBaseModel


/// <summary>
/// The connected players in the multiplayer server.
/// </summary>
@property NSArray* ConnectedPlayers; 

/// <summary>
/// The fully qualified domain name of the virtual machine that is hosting this multiplayer server.
/// </summary>
@property NSString* FQDN; 

/// <summary>
/// The IPv4 address of the virtual machine that is hosting this multiplayer server.
/// </summary>
@property NSString* IPV4Address; 

/// <summary>
/// The time (UTC) at which a change in the multiplayer server state was observed.
/// </summary>
@property NSDate* LastStateTransitionTime; 

/// <summary>
/// The ports the multiplayer server uses.
/// </summary>
@property NSArray* Ports; 

/// <summary>
/// The region the multiplayer server is located in.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// The string server ID of the multiplayer server generated by PlayFab.
/// </summary>
@property NSString* ServerId; 

/// <summary>
/// The guid string session ID of the multiplayer server.
/// </summary>
@property NSString* SessionId; 

/// <summary>
/// The state of the multiplayer server.
/// </summary>
@property NSString* State; 

/// <summary>
/// The virtual machine ID that the multiplayer server is located on.
/// </summary>
@property NSString* VmId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Gets a remote login endpoint to a VM that is hosting a multiplayer server build in a specific region.
/// </summary>
@interface MultiplayerGetRemoteLoginEndpointRequest : PlayFabBaseModel


/// <summary>
/// The guid string build ID of the multiplayer server to get remote login information for.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// The region of the multiplayer server to get remote login information for.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// The virtual machine ID the multiplayer server is located on.
/// </summary>
@property NSString* VmId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetRemoteLoginEndpointResponse : PlayFabBaseModel


/// <summary>
/// The remote login IPV4 address of multiplayer server.
/// </summary>
@property NSString* IPV4Address; 

/// <summary>
/// The remote login port of multiplayer server.
/// </summary>
@property NSNumber* Port; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Gets the status of whether a title is enabled for the multiplayer server feature. The enabled status can be Initializing, Enabled, and Disabled.
/// </summary>
@interface MultiplayerGetTitleEnabledForMultiplayerServersStatusRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerGetTitleEnabledForMultiplayerServersStatusResponse : PlayFabBaseModel


/// <summary>
/// The enabled status for the multiplayer server features for the title.
/// </summary>
@property MultiplayerTitleMultiplayerServerEnabledStatus Status; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Returns a list of multiplayer server game asset summaries for a title.
/// </summary>
@interface MultiplayerListAssetSummariesRequest : PlayFabBaseModel


/// <summary>
/// The page size for the request.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The skip token for the paged request.
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListAssetSummariesResponse : PlayFabBaseModel


/// <summary>
/// The list of asset summaries.
/// </summary>
@property NSArray* AssetSummaries; 

/// <summary>
/// The page size on the response.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The skip token for the paged response.
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Returns a list of summarized details of all multiplayer server builds for a title.
/// </summary>
@interface MultiplayerListBuildSummariesRequest : PlayFabBaseModel


/// <summary>
/// The page size for the request.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The skip token for the paged request.
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListBuildSummariesResponse : PlayFabBaseModel


/// <summary>
/// The list of build summaries for a title.
/// </summary>
@property NSArray* BuildSummaries; 

/// <summary>
/// The page size on the response.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The skip token for the paged response.
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Returns a list of multiplayer server game certificates for a title.
/// </summary>
@interface MultiplayerListCertificateSummariesRequest : PlayFabBaseModel


/// <summary>
/// The page size for the request.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The skip token for the paged request.
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListCertificateSummariesResponse : PlayFabBaseModel


/// <summary>
/// The list of game certificates.
/// </summary>
@property NSArray* CertificateSummaries; 

/// <summary>
/// The page size on the response.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The skip token for the paged response.
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Returns a list of the container images that have been uploaded to the container registry for a title.
/// </summary>
@interface MultiplayerListContainerImagesRequest : PlayFabBaseModel


/// <summary>
/// The page size for the request.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The skip token for the paged request.
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListContainerImagesResponse : PlayFabBaseModel


/// <summary>
/// The list of container images.
/// </summary>
@property NSArray* Images; 

/// <summary>
/// The page size on the response.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The skip token for the paged response.
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Returns a list of the tags for a particular container image that exists in the container registry for a title.
/// </summary>
@interface MultiplayerListContainerImageTagsRequest : PlayFabBaseModel


/// <summary>
/// The container images we want to list tags for.
/// </summary>
@property NSString* ImageName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListContainerImageTagsResponse : PlayFabBaseModel


/// <summary>
/// The list of tags for a particular container image.
/// </summary>
@property NSArray* Tags; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Returns a list of multiplayer servers for a build in a specific region.
/// </summary>
@interface MultiplayerListMultiplayerServersRequest : PlayFabBaseModel


/// <summary>
/// The guid string build ID of the multiplayer servers to list.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// The page size for the request.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The region the multiplayer servers to list.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// The skip token for the paged request.
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListMultiplayerServersResponse : PlayFabBaseModel


/// <summary>
/// The list of multiplayer server summary details.
/// </summary>
@property NSArray* MultiplayerServerSummaries; 

/// <summary>
/// The page size on the response.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The skip token for the paged response.
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Returns a list of quality of service servers.
/// </summary>
@interface MultiplayerListQosServersRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListQosServersResponse : PlayFabBaseModel


/// <summary>
/// The page size on the response.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The list of QoS servers.
/// </summary>
@property NSArray* QosServers; 

/// <summary>
/// The skip token for the paged response.
/// </summary>
@property NSString* SkipToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Returns a list of virtual machines for a title.
/// </summary>
@interface MultiplayerListVirtualMachineSummariesRequest : PlayFabBaseModel


/// <summary>
/// The guid string build ID of the virtual machines to list.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// The page size for the request.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The region of the virtual machines to list.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// The skip token for the paged request.
/// </summary>
@property NSString* SkipToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerListVirtualMachineSummariesResponse : PlayFabBaseModel


/// <summary>
/// The page size on the response.
/// </summary>
@property NSNumber* PageSize; 

/// <summary>
/// The skip token for the paged response.
/// </summary>
@property NSString* SkipToken; 

/// <summary>
/// The list of virtual machine summaries.
/// </summary>
@property NSArray* VirtualMachines; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerMultiplayerServerSummary : PlayFabBaseModel


/// <summary>
/// The connected players in the multiplayer server.
/// </summary>
@property NSArray* ConnectedPlayers; 

/// <summary>
/// The time (UTC) at which a change in the multiplayer server state was observed.
/// </summary>
@property NSDate* LastStateTransitionTime; 

/// <summary>
/// The region the multiplayer server is located in.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// The string server ID of the multiplayer server generated by PlayFab.
/// </summary>
@property NSString* ServerId; 

/// <summary>
/// The title generated guid string session ID of the multiplayer server.
/// </summary>
@property NSString* SessionId; 

/// <summary>
/// The state of the multiplayer server.
/// </summary>
@property NSString* State; 

/// <summary>
/// The virtual machine ID that the multiplayer server is located on.
/// </summary>
@property NSString* VmId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerPort : PlayFabBaseModel


/// <summary>
/// The name for the port.
/// </summary>
@property NSString* Name; 

/// <summary>
/// The number for the port.
/// </summary>
@property NSNumber* Num; 

/// <summary>
/// The protocol for the port.
/// </summary>
@property MultiplayerProtocolType Protocol; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerQosServer : PlayFabBaseModel


/// <summary>
/// The region the QoS server is located in.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// The QoS server URL.
/// </summary>
@property NSString* ServerUrl; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Requests a multiplayer server session from a particular build in any of the given preferred regions.
/// </summary>
@interface MultiplayerRequestMultiplayerServerRequest : PlayFabBaseModel


/// <summary>
/// The guid string build ID of the multiplayer server to request.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// Initial list of players (potentially matchmade) allowed to connect to the game. This list is passed to the game server when requested (via GSDK) and can be used to validate players connecting to it.
/// </summary>
@property NSArray* InitialPlayers; 

/// <summary>
/// The preferred regions to request a multiplayer server from. The Multiplayer Service will iterate through the regions in the specified order and allocate a server from the first one that has servers available.
/// </summary>
@property NSArray* PreferredRegions; 

/// <summary>
/// Data encoded as a string that is passed to the game server when requested. This can be used to to communicate information such as game mode or map through the request flow.
/// </summary>
@property NSString* SessionCookie; 

/// <summary>
/// A guid string session ID created track the multiplayer server session over its life.
/// </summary>
@property NSString* SessionId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerRequestMultiplayerServerResponse : PlayFabBaseModel


/// <summary>
/// The connected players in the multiplayer server.
/// </summary>
@property NSArray* ConnectedPlayers; 

/// <summary>
/// The fully qualified domain name of the virtual machine that is hosting this multiplayer server.
/// </summary>
@property NSString* FQDN; 

/// <summary>
/// The IPv4 address of the virtual machine that is hosting this multiplayer server.
/// </summary>
@property NSString* IPV4Address; 

/// <summary>
/// The time (UTC) at which a change in the multiplayer server state was observed.
/// </summary>
@property NSDate* LastStateTransitionTime; 

/// <summary>
/// The ports the multiplayer server uses.
/// </summary>
@property NSArray* Ports; 

/// <summary>
/// The region the multiplayer server is located in.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// The string server ID of the multiplayer server generated by PlayFab.
/// </summary>
@property NSString* ServerId; 

/// <summary>
/// The guid string session ID of the multiplayer server.
/// </summary>
@property NSString* SessionId; 

/// <summary>
/// The state of the multiplayer server.
/// </summary>
@property NSString* State; 

/// <summary>
/// The virtual machine ID that the multiplayer server is located on.
/// </summary>
@property NSString* VmId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Gets new credentials to the container registry where game developers can upload custom container images to before creating a new build.
/// </summary>
@interface MultiplayerRolloverContainerRegistryCredentialsRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerRolloverContainerRegistryCredentialsResponse : PlayFabBaseModel


/// <summary>
/// The url of the container registry.
/// </summary>
@property NSString* DnsName; 

/// <summary>
/// The password for accessing the container registry.
/// </summary>
@property NSString* Password; 

/// <summary>
/// The username for accessing the container registry.
/// </summary>
@property NSString* Username; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Executes the shutdown callback from the GSDK and terminates the multiplayer server session. The callback in the GSDK will allow for graceful shutdown with a 15 minute timeoutIf graceful shutdown has not been completed before 15 minutes have elapsed, the multiplayer server session will be forcefully terminated on it's own.
/// </summary>
@interface MultiplayerShutdownMultiplayerServerRequest : PlayFabBaseModel


/// <summary>
/// The guid string build ID of the multiplayer server to delete.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// The region of the multiplayer server to shut down.
/// </summary>
@property MultiplayerAzureRegion Region; 

/// <summary>
/// A guid string session ID of the multiplayer server to shut down.
/// </summary>
@property NSString* SessionId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Updates a multiplayer server build's regions.
/// </summary>
@interface MultiplayerUpdateBuildRegionsRequest : PlayFabBaseModel


/// <summary>
/// The guid string ID of the build we want to update regions for.
/// </summary>
@property NSString* BuildId; 

/// <summary>
/// The updated region configuration that should be applied to the specified build.
/// </summary>
@property NSArray* BuildRegions; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Uploads a multiplayer server game certificate.
/// </summary>
@interface MultiplayerUploadCertificateRequest : PlayFabBaseModel


/// <summary>
/// The game certificate to upload.
/// </summary>
@property MultiplayerCertificate* GameCertificate; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MultiplayerVirtualMachineSummary : PlayFabBaseModel


/// <summary>
/// The virtual machine health status.
/// </summary>
@property NSString* HealthStatus; 

/// <summary>
/// The virtual machine state.
/// </summary>
@property NSString* State; 

/// <summary>
/// The virtual machine ID.
/// </summary>
@property NSString* VmId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

