#import "PlayFabMultiplayerDataModels.h"


@implementation MultiplayerAssetReference


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FileName = [properties valueForKey:@"FileName"];
    
    self.MountPath = [properties valueForKey:@"MountPath"];
    

    return self;
}
@end
@implementation MultiplayerAssetReferenceParams


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FileName = [properties valueForKey:@"FileName"];
    
    self.MountPath = [properties valueForKey:@"MountPath"];
    

    return self;
}
@end
@implementation MultiplayerAssetSummary


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FileName = [properties valueForKey:@"FileName"];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerBuildRegion


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfCurrentServerStats = [[MultiplayerCurrentServerStats new] initWithDictionary:[properties objectForKey:@"CurrentServerStats"]];
    
    self.MaxServers = [properties valueForKey:@"MaxServers"];
    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.StandbyServers = [properties valueForKey:@"StandbyServers"];
    
    self.Status = [properties valueForKey:@"Status"];
    

    return self;
}
@end
@implementation MultiplayerBuildRegionParams


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.MaxServers = [properties valueForKey:@"MaxServers"];
    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.StandbyServers = [properties valueForKey:@"StandbyServers"];
    

    return self;
}
@end
@implementation MultiplayerBuildSummary


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.BuildName = [properties valueForKey:@"BuildName"];
    
    self.CreationTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"CreationTime"]];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerCertificate


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Base64EncodedValue = [properties valueForKey:@"Base64EncodedValue"];
    
    self.Name = [properties valueForKey:@"Name"];
    
    self.Password = [properties valueForKey:@"Password"];
    

    return self;
}
@end
@implementation MultiplayerCertificateSummary


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Name = [properties valueForKey:@"Name"];
    
    self.Thumbprint = [properties valueForKey:@"Thumbprint"];
    

    return self;
}
@end
@implementation MultiplayerConnectedPlayer


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayerId = [properties valueForKey:@"PlayerId"];
    

    return self;
}
@end
@implementation MultiplayerContainerImageReference


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ImageName = [properties valueForKey:@"ImageName"];
    
    self.Tag = [properties valueForKey:@"Tag"];
    

    return self;
}
@end
@implementation MultiplayerCreateBuildWithCustomContainerRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildName = [properties valueForKey:@"BuildName"];
    
    self.pfContainerFlavor = (MultiplayerContainerFlavor)[properties valueForKey:@"MultiplayerContainerFlavor"];
    
    self.ContainerRepositoryName = [properties valueForKey:@"ContainerRepositoryName"];
    
    self.ContainerRunCommand = [properties valueForKey:@"ContainerRunCommand"];
    
    self.ContainerTag = [properties valueForKey:@"ContainerTag"];
    
    if ([properties objectForKey:@"GameAssetReferences"]){
    NSArray* member_list = [properties objectForKey:@"GameAssetReferences"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerAssetReferenceParams new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GameAssetReferences = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"GameCertificateReferences"]){
    NSArray* member_list = [properties objectForKey:@"GameCertificateReferences"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerGameCertificateReferenceParams new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GameCertificateReferences = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.MultiplayerServerCountPerVm = [properties valueForKey:@"MultiplayerServerCountPerVm"];
    
    if ([properties objectForKey:@"Ports"]){
    NSArray* member_list = [properties objectForKey:@"Ports"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerPort new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Ports = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"RegionConfigurations"]){
    NSArray* member_list = [properties objectForKey:@"RegionConfigurations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerBuildRegionParams new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.RegionConfigurations = [mutable_storage copy];
}

    
    self.VmSize = (MultiplayerAzureVmSize)[properties valueForKey:@"MultiplayerVmSize"];
    

    return self;
}
@end
@implementation MultiplayerCreateBuildWithCustomContainerResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.BuildName = [properties valueForKey:@"BuildName"];
    
    self.pfContainerFlavor = (MultiplayerContainerFlavor)[properties valueForKey:@"MultiplayerContainerFlavor"];
    
    self.ContainerRunCommand = [properties valueForKey:@"ContainerRunCommand"];
    
    self.CreationTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"CreationTime"]];
    
    self.CustomGameContainerImage = [[MultiplayerContainerImageReference new] initWithDictionary:[properties objectForKey:@"CustomGameContainerImage"]];
    
    if ([properties objectForKey:@"GameAssetReferences"]){
    NSArray* member_list = [properties objectForKey:@"GameAssetReferences"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerAssetReference new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GameAssetReferences = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"GameCertificateReferences"]){
    NSArray* member_list = [properties objectForKey:@"GameCertificateReferences"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerGameCertificateReference new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GameCertificateReferences = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.MultiplayerServerCountPerVm = [properties valueForKey:@"MultiplayerServerCountPerVm"];
    
    if ([properties objectForKey:@"Ports"]){
    NSArray* member_list = [properties objectForKey:@"Ports"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerPort new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Ports = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"RegionConfigurations"]){
    NSArray* member_list = [properties objectForKey:@"RegionConfigurations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerBuildRegion new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.RegionConfigurations = [mutable_storage copy];
}

    
    self.VmSize = (MultiplayerAzureVmSize)[properties valueForKey:@"MultiplayerVmSize"];
    

    return self;
}
@end
@implementation MultiplayerCreateBuildWithManagedContainerRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildName = [properties valueForKey:@"BuildName"];
    
    self.pfContainerFlavor = (MultiplayerContainerFlavor)[properties valueForKey:@"MultiplayerContainerFlavor"];
    
    if ([properties objectForKey:@"GameAssetReferences"]){
    NSArray* member_list = [properties objectForKey:@"GameAssetReferences"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerAssetReferenceParams new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GameAssetReferences = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"GameCertificateReferences"]){
    NSArray* member_list = [properties objectForKey:@"GameCertificateReferences"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerGameCertificateReferenceParams new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GameCertificateReferences = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.MultiplayerServerCountPerVm = [properties valueForKey:@"MultiplayerServerCountPerVm"];
    
    if ([properties objectForKey:@"Ports"]){
    NSArray* member_list = [properties objectForKey:@"Ports"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerPort new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Ports = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"RegionConfigurations"]){
    NSArray* member_list = [properties objectForKey:@"RegionConfigurations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerBuildRegionParams new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.RegionConfigurations = [mutable_storage copy];
}

    
    self.StartMultiplayerServerCommand = [properties valueForKey:@"StartMultiplayerServerCommand"];
    
    self.VmSize = (MultiplayerAzureVmSize)[properties valueForKey:@"MultiplayerVmSize"];
    

    return self;
}
@end
@implementation MultiplayerCreateBuildWithManagedContainerResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.BuildName = [properties valueForKey:@"BuildName"];
    
    self.pfContainerFlavor = (MultiplayerContainerFlavor)[properties valueForKey:@"MultiplayerContainerFlavor"];
    
    self.CreationTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"CreationTime"]];
    
    if ([properties objectForKey:@"GameAssetReferences"]){
    NSArray* member_list = [properties objectForKey:@"GameAssetReferences"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerAssetReference new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GameAssetReferences = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"GameCertificateReferences"]){
    NSArray* member_list = [properties objectForKey:@"GameCertificateReferences"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerGameCertificateReference new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GameCertificateReferences = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.MultiplayerServerCountPerVm = [properties valueForKey:@"MultiplayerServerCountPerVm"];
    
    if ([properties objectForKey:@"Ports"]){
    NSArray* member_list = [properties objectForKey:@"Ports"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerPort new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Ports = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"RegionConfigurations"]){
    NSArray* member_list = [properties objectForKey:@"RegionConfigurations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerBuildRegion new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.RegionConfigurations = [mutable_storage copy];
}

    
    self.StartMultiplayerServerCommand = [properties valueForKey:@"StartMultiplayerServerCommand"];
    
    self.VmSize = (MultiplayerAzureVmSize)[properties valueForKey:@"MultiplayerVmSize"];
    

    return self;
}
@end
@implementation MultiplayerCreateRemoteUserRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.ExpirationTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"ExpirationTime"]];
    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.Username = [properties valueForKey:@"Username"];
    
    self.VmId = [properties valueForKey:@"VmId"];
    

    return self;
}
@end
@implementation MultiplayerCreateRemoteUserResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ExpirationTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"ExpirationTime"]];
    
    self.Password = [properties valueForKey:@"Password"];
    
    self.Username = [properties valueForKey:@"Username"];
    

    return self;
}
@end
@implementation MultiplayerCurrentServerStats


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Active = [properties valueForKey:@"Active"];
    
    self.Propping = [properties valueForKey:@"Propping"];
    
    self.StandingBy = [properties valueForKey:@"StandingBy"];
    
    self.Total = [properties valueForKey:@"Total"];
    

    return self;
}
@end
@implementation MultiplayerDeleteAssetRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FileName = [properties valueForKey:@"FileName"];
    

    return self;
}
@end
@implementation MultiplayerDeleteBuildRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    

    return self;
}
@end
@implementation MultiplayerDeleteCertificateRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Name = [properties valueForKey:@"Name"];
    

    return self;
}
@end
@implementation MultiplayerDeleteRemoteUserRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.Username = [properties valueForKey:@"Username"];
    
    self.VmId = [properties valueForKey:@"VmId"];
    

    return self;
}
@end
@implementation MultiplayerEmptyResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation MultiplayerEnableMultiplayerServersForTitleRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation MultiplayerEnableMultiplayerServersForTitleResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Status = (MultiplayerTitleMultiplayerServerEnabledStatus)[properties valueForKey:@"MultiplayerStatus"];
    

    return self;
}
@end
@implementation MultiplayerGameCertificateReference


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.GsdkAlias = [properties valueForKey:@"GsdkAlias"];
    
    self.Name = [properties valueForKey:@"Name"];
    

    return self;
}
@end
@implementation MultiplayerGameCertificateReferenceParams


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.GsdkAlias = [properties valueForKey:@"GsdkAlias"];
    
    self.Name = [properties valueForKey:@"Name"];
    

    return self;
}
@end
@implementation MultiplayerGetAssetUploadUrlRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FileName = [properties valueForKey:@"FileName"];
    

    return self;
}
@end
@implementation MultiplayerGetAssetUploadUrlResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AssetUploadUrl = [properties valueForKey:@"AssetUploadUrl"];
    
    self.FileName = [properties valueForKey:@"FileName"];
    

    return self;
}
@end
@implementation MultiplayerGetBuildRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    

    return self;
}
@end
@implementation MultiplayerGetBuildResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.BuildName = [properties valueForKey:@"BuildName"];
    
    self.BuildStatus = [properties valueForKey:@"BuildStatus"];
    
    self.pfContainerFlavor = (MultiplayerContainerFlavor)[properties valueForKey:@"MultiplayerContainerFlavor"];
    
    self.ContainerRunCommand = [properties valueForKey:@"ContainerRunCommand"];
    
    self.CreationTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"CreationTime"]];
    
    self.CustomGameContainerImage = [[MultiplayerContainerImageReference new] initWithDictionary:[properties objectForKey:@"CustomGameContainerImage"]];
    
    if ([properties objectForKey:@"GameAssetReferences"]){
    NSArray* member_list = [properties objectForKey:@"GameAssetReferences"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerAssetReference new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GameAssetReferences = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"GameCertificateReferences"]){
    NSArray* member_list = [properties objectForKey:@"GameCertificateReferences"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerGameCertificateReference new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GameCertificateReferences = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.MultiplayerServerCountPerVm = [properties valueForKey:@"MultiplayerServerCountPerVm"];
    
    if ([properties objectForKey:@"Ports"]){
    NSArray* member_list = [properties objectForKey:@"Ports"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerPort new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Ports = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"RegionConfigurations"]){
    NSArray* member_list = [properties objectForKey:@"RegionConfigurations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerBuildRegion new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.RegionConfigurations = [mutable_storage copy];
}

    
    self.StartMultiplayerServerCommand = [properties valueForKey:@"StartMultiplayerServerCommand"];
    
    self.VmSize = (MultiplayerAzureVmSize)[properties valueForKey:@"MultiplayerVmSize"];
    

    return self;
}
@end
@implementation MultiplayerGetContainerRegistryCredentialsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation MultiplayerGetContainerRegistryCredentialsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DnsName = [properties valueForKey:@"DnsName"];
    
    self.Password = [properties valueForKey:@"Password"];
    
    self.Username = [properties valueForKey:@"Username"];
    

    return self;
}
@end
@implementation MultiplayerGetMultiplayerServerDetailsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.SessionId = [properties valueForKey:@"SessionId"];
    

    return self;
}
@end
@implementation MultiplayerGetMultiplayerServerDetailsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"ConnectedPlayers"]){
    NSArray* member_list = [properties objectForKey:@"ConnectedPlayers"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerConnectedPlayer new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.ConnectedPlayers = [mutable_storage copy];
}

    
    self.FQDN = [properties valueForKey:@"FQDN"];
    
    self.IPV4Address = [properties valueForKey:@"IPV4Address"];
    
    self.LastStateTransitionTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastStateTransitionTime"]];
    
    if ([properties objectForKey:@"Ports"]){
    NSArray* member_list = [properties objectForKey:@"Ports"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerPort new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Ports = [mutable_storage copy];
}

    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.ServerId = [properties valueForKey:@"ServerId"];
    
    self.SessionId = [properties valueForKey:@"SessionId"];
    
    self.State = [properties valueForKey:@"State"];
    
    self.VmId = [properties valueForKey:@"VmId"];
    

    return self;
}
@end
@implementation MultiplayerGetRemoteLoginEndpointRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.VmId = [properties valueForKey:@"VmId"];
    

    return self;
}
@end
@implementation MultiplayerGetRemoteLoginEndpointResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.IPV4Address = [properties valueForKey:@"IPV4Address"];
    
    self.Port = [properties valueForKey:@"Port"];
    

    return self;
}
@end
@implementation MultiplayerGetTitleEnabledForMultiplayerServersStatusRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation MultiplayerGetTitleEnabledForMultiplayerServersStatusResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Status = (MultiplayerTitleMultiplayerServerEnabledStatus)[properties valueForKey:@"MultiplayerStatus"];
    

    return self;
}
@end
@implementation MultiplayerListAssetSummariesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListAssetSummariesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"AssetSummaries"]){
    NSArray* member_list = [properties objectForKey:@"AssetSummaries"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerAssetSummary new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.AssetSummaries = [mutable_storage copy];
}

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListBuildSummariesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListBuildSummariesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"BuildSummaries"]){
    NSArray* member_list = [properties objectForKey:@"BuildSummaries"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerBuildSummary new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.BuildSummaries = [mutable_storage copy];
}

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListCertificateSummariesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListCertificateSummariesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CertificateSummaries"]){
    NSArray* member_list = [properties objectForKey:@"CertificateSummaries"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerCertificateSummary new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.CertificateSummaries = [mutable_storage copy];
}

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListContainerImagesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListContainerImagesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Images"]){
    NSArray* member_list = [properties objectForKey:@"Images"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Images = [mutable_storage copy];
}

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListContainerImageTagsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ImageName = [properties valueForKey:@"ImageName"];
    

    return self;
}
@end
@implementation MultiplayerListContainerImageTagsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Tags"]){
    NSArray* member_list = [properties objectForKey:@"Tags"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Tags = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerListMultiplayerServersRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListMultiplayerServersResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"MultiplayerServerSummaries"]){
    NSArray* member_list = [properties objectForKey:@"MultiplayerServerSummaries"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerMultiplayerServerSummary new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.MultiplayerServerSummaries = [mutable_storage copy];
}

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListQosServersRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation MultiplayerListQosServersResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    if ([properties objectForKey:@"QosServers"]){
    NSArray* member_list = [properties objectForKey:@"QosServers"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerQosServer new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.QosServers = [mutable_storage copy];
}

    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListVirtualMachineSummariesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListVirtualMachineSummariesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    
    if ([properties objectForKey:@"VirtualMachines"]){
    NSArray* member_list = [properties objectForKey:@"VirtualMachines"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerVirtualMachineSummary new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.VirtualMachines = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerMultiplayerServerSummary


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"ConnectedPlayers"]){
    NSArray* member_list = [properties objectForKey:@"ConnectedPlayers"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerConnectedPlayer new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.ConnectedPlayers = [mutable_storage copy];
}

    
    self.LastStateTransitionTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastStateTransitionTime"]];
    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.ServerId = [properties valueForKey:@"ServerId"];
    
    self.SessionId = [properties valueForKey:@"SessionId"];
    
    self.State = [properties valueForKey:@"State"];
    
    self.VmId = [properties valueForKey:@"VmId"];
    

    return self;
}
@end
@implementation MultiplayerPort


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Name = [properties valueForKey:@"Name"];
    
    self.Num = [properties valueForKey:@"Num"];
    
    self.Protocol = (MultiplayerProtocolType)[properties valueForKey:@"MultiplayerProtocol"];
    

    return self;
}
@end
@implementation MultiplayerQosServer


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.ServerUrl = [properties valueForKey:@"ServerUrl"];
    

    return self;
}
@end
@implementation MultiplayerRequestMultiplayerServerRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    if ([properties objectForKey:@"InitialPlayers"]){
    NSArray* member_list = [properties objectForKey:@"InitialPlayers"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.InitialPlayers = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"PreferredRegions"]){
    NSArray* member_list = [properties objectForKey:@"PreferredRegions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:(MultiplayerAzureRegion)[member_list objectAtIndex:i]];
    }
    self.PreferredRegions = [mutable_storage copy];
}

    
    self.SessionCookie = [properties valueForKey:@"SessionCookie"];
    
    self.SessionId = [properties valueForKey:@"SessionId"];
    

    return self;
}
@end
@implementation MultiplayerRequestMultiplayerServerResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"ConnectedPlayers"]){
    NSArray* member_list = [properties objectForKey:@"ConnectedPlayers"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerConnectedPlayer new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.ConnectedPlayers = [mutable_storage copy];
}

    
    self.FQDN = [properties valueForKey:@"FQDN"];
    
    self.IPV4Address = [properties valueForKey:@"IPV4Address"];
    
    self.LastStateTransitionTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastStateTransitionTime"]];
    
    if ([properties objectForKey:@"Ports"]){
    NSArray* member_list = [properties objectForKey:@"Ports"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerPort new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Ports = [mutable_storage copy];
}

    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.ServerId = [properties valueForKey:@"ServerId"];
    
    self.SessionId = [properties valueForKey:@"SessionId"];
    
    self.State = [properties valueForKey:@"State"];
    
    self.VmId = [properties valueForKey:@"VmId"];
    

    return self;
}
@end
@implementation MultiplayerRolloverContainerRegistryCredentialsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation MultiplayerRolloverContainerRegistryCredentialsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DnsName = [properties valueForKey:@"DnsName"];
    
    self.Password = [properties valueForKey:@"Password"];
    
    self.Username = [properties valueForKey:@"Username"];
    

    return self;
}
@end
@implementation MultiplayerShutdownMultiplayerServerRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.Region = (MultiplayerAzureRegion)[properties valueForKey:@"MultiplayerRegion"];
    
    self.SessionId = [properties valueForKey:@"SessionId"];
    

    return self;
}
@end
@implementation MultiplayerUpdateBuildRegionsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    if ([properties objectForKey:@"BuildRegions"]){
    NSArray* member_list = [properties objectForKey:@"BuildRegions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerBuildRegionParams new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.BuildRegions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerUploadCertificateRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.GameCertificate = [[MultiplayerCertificate new] initWithDictionary:[properties objectForKey:@"GameCertificate"]];
    

    return self;
}
@end
@implementation MultiplayerVirtualMachineSummary


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.HealthStatus = [properties valueForKey:@"HealthStatus"];
    
    self.State = [properties valueForKey:@"State"];
    
    self.VmId = [properties valueForKey:@"VmId"];
    

    return self;
}
@end
