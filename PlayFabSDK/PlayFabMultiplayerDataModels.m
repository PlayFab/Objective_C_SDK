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
@implementation MultiplayerBuildAliasDetailsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AliasId = [properties valueForKey:@"AliasId"];
    
    self.AliasName = [properties valueForKey:@"AliasName"];
    
    if ([properties objectForKey:@"BuildSelectionCriteria"]){
    NSArray* member_list = [properties objectForKey:@"BuildSelectionCriteria"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerBuildSelectionCriterion new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.BuildSelectionCriteria = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerBuildAliasParams


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AliasId = [properties valueForKey:@"AliasId"];
    

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
    
    self.pfDynamicStandbySettings = [[MultiplayerDynamicStandbySettings new] initWithDictionary:[properties objectForKey:@"DynamicStandbySettings"]];
    
    self.IsAssetReplicationComplete = [[properties valueForKey:@"IsAssetReplicationComplete"] boolValue];
    
    self.MaxServers = [properties valueForKey:@"MaxServers"];
    
    self.MultiplayerServerCountPerVm = [properties valueForKey:@"MultiplayerServerCountPerVm"];
    
    self.Region = [properties valueForKey:@"Region"];
    
    self.pfScheduledStandbySettings = [[MultiplayerScheduledStandbySettings new] initWithDictionary:[properties objectForKey:@"ScheduledStandbySettings"]];
    
    self.StandbyServers = [properties valueForKey:@"StandbyServers"];
    
    self.Status = [properties valueForKey:@"Status"];
    
    self.VmSize = (MultiplayerAzureVmSize)[properties valueForKey:@"MultiplayerVmSize"];
    

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

    
    self.pfDynamicStandbySettings = [[MultiplayerDynamicStandbySettings new] initWithDictionary:[properties objectForKey:@"DynamicStandbySettings"]];
    
    self.MaxServers = [properties valueForKey:@"MaxServers"];
    
    self.MultiplayerServerCountPerVm = [properties valueForKey:@"MultiplayerServerCountPerVm"];
    
    self.Region = [properties valueForKey:@"Region"];
    
    self.pfScheduledStandbySettings = [[MultiplayerScheduledStandbySettings new] initWithDictionary:[properties objectForKey:@"ScheduledStandbySettings"]];
    
    self.StandbyServers = [properties valueForKey:@"StandbyServers"];
    
    self.VmSize = (MultiplayerAzureVmSize)[properties valueForKey:@"MultiplayerVmSize"];
    

    return self;
}
@end
@implementation MultiplayerBuildSelectionCriterion


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"BuildWeightDistribution"]){
    NSDictionary* member_list = [properties objectForKey:@"BuildWeightDistribution"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.BuildWeightDistribution = [mutable_storage copy];
}

    

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

    
    if ([properties objectForKey:@"RegionConfigurations"]){
    NSArray* member_list = [properties objectForKey:@"RegionConfigurations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerBuildRegion new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.RegionConfigurations = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerCancelAllMatchmakingTicketsForPlayerRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.QueueName = [properties valueForKey:@"QueueName"];
    

    return self;
}
@end
@implementation MultiplayerCancelAllMatchmakingTicketsForPlayerResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation MultiplayerCancelAllServerBackfillTicketsForPlayerRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.QueueName = [properties valueForKey:@"QueueName"];
    

    return self;
}
@end
@implementation MultiplayerCancelAllServerBackfillTicketsForPlayerResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation MultiplayerCancelMatchmakingTicketRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.QueueName = [properties valueForKey:@"QueueName"];
    
    self.TicketId = [properties valueForKey:@"TicketId"];
    

    return self;
}
@end
@implementation MultiplayerCancelMatchmakingTicketResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation MultiplayerCancelServerBackfillTicketRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.QueueName = [properties valueForKey:@"QueueName"];
    
    self.TicketId = [properties valueForKey:@"TicketId"];
    

    return self;
}
@end
@implementation MultiplayerCancelServerBackfillTicketResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
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
@implementation MultiplayerCoreCapacity


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Available = [properties valueForKey:@"Available"];
    
    self.Region = [properties valueForKey:@"Region"];
    
    self.Total = [properties valueForKey:@"Total"];
    
    self.VmFamily = (MultiplayerAzureVmFamily)[properties valueForKey:@"MultiplayerVmFamily"];
    

    return self;
}
@end
@implementation MultiplayerCoreCapacityChange


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.NewCoreLimit = [properties valueForKey:@"NewCoreLimit"];
    
    self.Region = [properties valueForKey:@"Region"];
    
    self.VmFamily = (MultiplayerAzureVmFamily)[properties valueForKey:@"MultiplayerVmFamily"];
    

    return self;
}
@end
@implementation MultiplayerCreateBuildAliasRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AliasName = [properties valueForKey:@"AliasName"];
    
    if ([properties objectForKey:@"BuildSelectionCriteria"]){
    NSArray* member_list = [properties objectForKey:@"BuildSelectionCriteria"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerBuildSelectionCriterion new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.BuildSelectionCriteria = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    

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

    
    self.AreAssetsReadonly = [[properties valueForKey:@"AreAssetsReadonly"] boolValue];
    
    self.BuildName = [properties valueForKey:@"BuildName"];
    
    self.pfContainerFlavor = (MultiplayerContainerFlavor)[properties valueForKey:@"MultiplayerContainerFlavor"];
    
    self.pfContainerImageReference = [[MultiplayerContainerImageReference new] initWithDictionary:[properties objectForKey:@"ContainerImageReference"]];
    
    self.ContainerRunCommand = [properties valueForKey:@"ContainerRunCommand"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
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

    
    self.pfLinuxInstrumentationConfiguration = [[MultiplayerLinuxInstrumentationConfiguration new] initWithDictionary:[properties objectForKey:@"LinuxInstrumentationConfiguration"]];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.MonitoringApplicationConfiguration = [[MultiplayerMonitoringApplicationConfigurationParams new] initWithDictionary:[properties objectForKey:@"MonitoringApplicationConfiguration"]];
    
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

    
    self.UseStreamingForAssetDownloads = [[properties valueForKey:@"UseStreamingForAssetDownloads"] boolValue];
    
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

    
    self.AreAssetsReadonly = [[properties valueForKey:@"AreAssetsReadonly"] boolValue];
    
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

    
    self.pfLinuxInstrumentationConfiguration = [[MultiplayerLinuxInstrumentationConfiguration new] initWithDictionary:[properties objectForKey:@"LinuxInstrumentationConfiguration"]];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.pfMonitoringApplicationConfiguration = [[MultiplayerMonitoringApplicationConfiguration new] initWithDictionary:[properties objectForKey:@"MonitoringApplicationConfiguration"]];
    
    self.MultiplayerServerCountPerVm = [properties valueForKey:@"MultiplayerServerCountPerVm"];
    
    self.OsPlatform = [properties valueForKey:@"OsPlatform"];
    
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

    
    self.ServerType = [properties valueForKey:@"ServerType"];
    
    self.UseStreamingForAssetDownloads = [[properties valueForKey:@"UseStreamingForAssetDownloads"] boolValue];
    
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

    
    self.AreAssetsReadonly = [[properties valueForKey:@"AreAssetsReadonly"] boolValue];
    
    self.BuildName = [properties valueForKey:@"BuildName"];
    
    self.pfContainerFlavor = (MultiplayerContainerFlavor)[properties valueForKey:@"MultiplayerContainerFlavor"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
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

    
    self.GameWorkingDirectory = [properties valueForKey:@"GameWorkingDirectory"];
    
    self.pfInstrumentationConfiguration = [[MultiplayerInstrumentationConfiguration new] initWithDictionary:[properties objectForKey:@"InstrumentationConfiguration"]];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.MonitoringApplicationConfiguration = [[MultiplayerMonitoringApplicationConfigurationParams new] initWithDictionary:[properties objectForKey:@"MonitoringApplicationConfiguration"]];
    
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
    
    self.UseStreamingForAssetDownloads = [[properties valueForKey:@"UseStreamingForAssetDownloads"] boolValue];
    
    self.VmSize = (MultiplayerAzureVmSize)[properties valueForKey:@"MultiplayerVmSize"];
    
    self.pfWindowsCrashDumpConfiguration = [[MultiplayerWindowsCrashDumpConfiguration new] initWithDictionary:[properties objectForKey:@"WindowsCrashDumpConfiguration"]];
    

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

    
    self.AreAssetsReadonly = [[properties valueForKey:@"AreAssetsReadonly"] boolValue];
    
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

    
    self.GameWorkingDirectory = [properties valueForKey:@"GameWorkingDirectory"];
    
    self.pfInstrumentationConfiguration = [[MultiplayerInstrumentationConfiguration new] initWithDictionary:[properties objectForKey:@"InstrumentationConfiguration"]];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.pfMonitoringApplicationConfiguration = [[MultiplayerMonitoringApplicationConfiguration new] initWithDictionary:[properties objectForKey:@"MonitoringApplicationConfiguration"]];
    
    self.MultiplayerServerCountPerVm = [properties valueForKey:@"MultiplayerServerCountPerVm"];
    
    self.OsPlatform = [properties valueForKey:@"OsPlatform"];
    
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

    
    self.ServerType = [properties valueForKey:@"ServerType"];
    
    self.StartMultiplayerServerCommand = [properties valueForKey:@"StartMultiplayerServerCommand"];
    
    self.UseStreamingForAssetDownloads = [[properties valueForKey:@"UseStreamingForAssetDownloads"] boolValue];
    
    self.VmSize = (MultiplayerAzureVmSize)[properties valueForKey:@"MultiplayerVmSize"];
    

    return self;
}
@end
@implementation MultiplayerCreateBuildWithProcessBasedServerRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AreAssetsReadonly = [[properties valueForKey:@"AreAssetsReadonly"] boolValue];
    
    self.BuildName = [properties valueForKey:@"BuildName"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
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

    
    self.GameWorkingDirectory = [properties valueForKey:@"GameWorkingDirectory"];
    
    self.pfInstrumentationConfiguration = [[MultiplayerInstrumentationConfiguration new] initWithDictionary:[properties objectForKey:@"InstrumentationConfiguration"]];
    
    self.IsOSPreview = [[properties valueForKey:@"IsOSPreview"] boolValue];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.MonitoringApplicationConfiguration = [[MultiplayerMonitoringApplicationConfigurationParams new] initWithDictionary:[properties objectForKey:@"MonitoringApplicationConfiguration"]];
    
    self.MultiplayerServerCountPerVm = [properties valueForKey:@"MultiplayerServerCountPerVm"];
    
    self.OsPlatform = [properties valueForKey:@"OsPlatform"];
    
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
    
    self.UseStreamingForAssetDownloads = [[properties valueForKey:@"UseStreamingForAssetDownloads"] boolValue];
    
    self.VmSize = (MultiplayerAzureVmSize)[properties valueForKey:@"MultiplayerVmSize"];
    

    return self;
}
@end
@implementation MultiplayerCreateBuildWithProcessBasedServerResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AreAssetsReadonly = [[properties valueForKey:@"AreAssetsReadonly"] boolValue];
    
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

    
    self.GameWorkingDirectory = [properties valueForKey:@"GameWorkingDirectory"];
    
    self.pfInstrumentationConfiguration = [[MultiplayerInstrumentationConfiguration new] initWithDictionary:[properties objectForKey:@"InstrumentationConfiguration"]];
    
    self.IsOSPreview = [[properties valueForKey:@"IsOSPreview"] boolValue];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.pfMonitoringApplicationConfiguration = [[MultiplayerMonitoringApplicationConfiguration new] initWithDictionary:[properties objectForKey:@"MonitoringApplicationConfiguration"]];
    
    self.MultiplayerServerCountPerVm = [properties valueForKey:@"MultiplayerServerCountPerVm"];
    
    self.OsPlatform = [properties valueForKey:@"OsPlatform"];
    
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

    
    self.ServerType = [properties valueForKey:@"ServerType"];
    
    self.StartMultiplayerServerCommand = [properties valueForKey:@"StartMultiplayerServerCommand"];
    
    self.UseStreamingForAssetDownloads = [[properties valueForKey:@"UseStreamingForAssetDownloads"] boolValue];
    
    self.VmSize = (MultiplayerAzureVmSize)[properties valueForKey:@"MultiplayerVmSize"];
    

    return self;
}
@end
@implementation MultiplayerCreateLobbyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfAccessPolicy = (MultiplayerAccessPolicy)[properties valueForKey:@"MultiplayerAccessPolicy"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"LobbyData"]){
    NSDictionary* member_list = [properties objectForKey:@"LobbyData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.LobbyData = [mutable_storage copy];
}

    
    self.MaxPlayers = [properties valueForKey:@"MaxPlayers"];
    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerMember new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Members = [mutable_storage copy];
}

    
    self.Owner = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"Owner"]];
    
    self.pfOwnerMigrationPolicy = (MultiplayerOwnerMigrationPolicy)[properties valueForKey:@"MultiplayerOwnerMigrationPolicy"];
    
    if ([properties objectForKey:@"SearchData"]){
    NSDictionary* member_list = [properties objectForKey:@"SearchData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.SearchData = [mutable_storage copy];
}

    
    self.UseConnections = [[properties valueForKey:@"UseConnections"] boolValue];
    

    return self;
}
@end
@implementation MultiplayerCreateLobbyResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ConnectionString = [properties valueForKey:@"ConnectionString"];
    
    self.LobbyId = [properties valueForKey:@"LobbyId"];
    

    return self;
}
@end
@implementation MultiplayerCreateMatchmakingTicketRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Creator = [[MultiplayerMatchmakingPlayer new] initWithDictionary:[properties objectForKey:@"Creator"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.GiveUpAfterSeconds = [properties valueForKey:@"GiveUpAfterSeconds"];
    
    if ([properties objectForKey:@"MembersToMatchWith"]){
    NSArray* member_list = [properties objectForKey:@"MembersToMatchWith"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerEntityKey new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.MembersToMatchWith = [mutable_storage copy];
}

    
    self.QueueName = [properties valueForKey:@"QueueName"];
    

    return self;
}
@end
@implementation MultiplayerCreateMatchmakingTicketResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.TicketId = [properties valueForKey:@"TicketId"];
    

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
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.ExpirationTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"ExpirationTime"]];
    
    self.Region = [properties valueForKey:@"Region"];
    
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
@implementation MultiplayerCreateServerBackfillTicketRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.GiveUpAfterSeconds = [properties valueForKey:@"GiveUpAfterSeconds"];
    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerMatchmakingPlayerWithTeamAssignment new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Members = [mutable_storage copy];
}

    
    self.QueueName = [properties valueForKey:@"QueueName"];
    
    self.pfServerDetails = [[MultiplayerServerDetails new] initWithDictionary:[properties objectForKey:@"ServerDetails"]];
    

    return self;
}
@end
@implementation MultiplayerCreateServerBackfillTicketResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.TicketId = [properties valueForKey:@"TicketId"];
    

    return self;
}
@end
@implementation MultiplayerCreateServerMatchmakingTicketRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.GiveUpAfterSeconds = [properties valueForKey:@"GiveUpAfterSeconds"];
    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerMatchmakingPlayer new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Members = [mutable_storage copy];
}

    
    self.QueueName = [properties valueForKey:@"QueueName"];
    

    return self;
}
@end
@implementation MultiplayerCreateTitleMultiplayerServersQuotaChangeRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ChangeDescription = [properties valueForKey:@"ChangeDescription"];
    
    if ([properties objectForKey:@"Changes"]){
    NSArray* member_list = [properties objectForKey:@"Changes"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerCoreCapacityChange new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Changes = [mutable_storage copy];
}

    
    self.ContactEmail = [properties valueForKey:@"ContactEmail"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Notes = [properties valueForKey:@"Notes"];
    
    self.StartDate = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"StartDate"]];
    

    return self;
}
@end
@implementation MultiplayerCreateTitleMultiplayerServersQuotaChangeResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.RequestId = [properties valueForKey:@"RequestId"];
    
    self.WasApproved = [[properties valueForKey:@"WasApproved"] boolValue];
    

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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.FileName = [properties valueForKey:@"FileName"];
    

    return self;
}
@end
@implementation MultiplayerDeleteBuildAliasRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AliasId = [properties valueForKey:@"AliasId"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerDeleteBuildRegionRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Region = [properties valueForKey:@"Region"];
    

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
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    

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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Name = [properties valueForKey:@"Name"];
    

    return self;
}
@end
@implementation MultiplayerDeleteContainerImageRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.ImageName = [properties valueForKey:@"ImageName"];
    

    return self;
}
@end
@implementation MultiplayerDeleteLobbyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.LobbyId = [properties valueForKey:@"LobbyId"];
    

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
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Region = [properties valueForKey:@"Region"];
    
    self.Username = [properties valueForKey:@"Username"];
    
    self.VmId = [properties valueForKey:@"VmId"];
    

    return self;
}
@end
@implementation MultiplayerDynamicStandbySettings


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"DynamicFloorMultiplierThresholds"]){
    NSArray* member_list = [properties objectForKey:@"DynamicFloorMultiplierThresholds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerDynamicStandbyThreshold new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.DynamicFloorMultiplierThresholds = [mutable_storage copy];
}

    
    self.IsEnabled = [[properties valueForKey:@"IsEnabled"] boolValue];
    
    self.RampDownSeconds = [properties valueForKey:@"RampDownSeconds"];
    

    return self;
}
@end
@implementation MultiplayerDynamicStandbyThreshold


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Multiplier = [properties valueForKey:@"Multiplier"];
    
    self.TriggerThresholdPercentage = [properties valueForKey:@"TriggerThresholdPercentage"];
    

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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
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
@implementation MultiplayerEntityKey


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Type = [properties valueForKey:@"Type"];
    

    return self;
}
@end
@implementation MultiplayerFindFriendLobbiesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.ExcludeFacebookFriends = [[properties valueForKey:@"ExcludeFacebookFriends"] boolValue];
    
    self.ExcludeSteamFriends = [[properties valueForKey:@"ExcludeSteamFriends"] boolValue];
    
    self.Filter = [properties valueForKey:@"Filter"];
    
    self.OrderBy = [properties valueForKey:@"OrderBy"];
    
    self.Pagination = [[MultiplayerPaginationRequest new] initWithDictionary:[properties objectForKey:@"Pagination"]];
    
    self.XboxToken = [properties valueForKey:@"XboxToken"];
    

    return self;
}
@end
@implementation MultiplayerFindFriendLobbiesResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Lobbies"]){
    NSArray* member_list = [properties objectForKey:@"Lobbies"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerFriendLobbySummary new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Lobbies = [mutable_storage copy];
}

    
    self.Pagination = [[MultiplayerPaginationResponse new] initWithDictionary:[properties objectForKey:@"Pagination"]];
    

    return self;
}
@end
@implementation MultiplayerFindLobbiesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Filter = [properties valueForKey:@"Filter"];
    
    self.OrderBy = [properties valueForKey:@"OrderBy"];
    
    self.Pagination = [[MultiplayerPaginationRequest new] initWithDictionary:[properties objectForKey:@"Pagination"]];
    

    return self;
}
@end
@implementation MultiplayerFindLobbiesResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Lobbies"]){
    NSArray* member_list = [properties objectForKey:@"Lobbies"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerLobbySummary new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Lobbies = [mutable_storage copy];
}

    
    self.Pagination = [[MultiplayerPaginationResponse new] initWithDictionary:[properties objectForKey:@"Pagination"]];
    

    return self;
}
@end
@implementation MultiplayerFriendLobbySummary


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ConnectionString = [properties valueForKey:@"ConnectionString"];
    
    self.CurrentPlayers = [properties valueForKey:@"CurrentPlayers"];
    
    if ([properties objectForKey:@"Friends"]){
    NSArray* member_list = [properties objectForKey:@"Friends"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerEntityKey new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Friends = [mutable_storage copy];
}

    
    self.LobbyId = [properties valueForKey:@"LobbyId"];
    
    self.MaxPlayers = [properties valueForKey:@"MaxPlayers"];
    
    self.Owner = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"Owner"]];
    
    if ([properties objectForKey:@"SearchData"]){
    NSDictionary* member_list = [properties objectForKey:@"SearchData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.SearchData = [mutable_storage copy];
}

    

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
@implementation MultiplayerGetAssetDownloadUrlRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.FileName = [properties valueForKey:@"FileName"];
    

    return self;
}
@end
@implementation MultiplayerGetAssetDownloadUrlResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AssetDownloadUrl = [properties valueForKey:@"AssetDownloadUrl"];
    
    self.FileName = [properties valueForKey:@"FileName"];
    

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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
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
@implementation MultiplayerGetBuildAliasRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AliasId = [properties valueForKey:@"AliasId"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    

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
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    

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

    
    self.AreAssetsReadonly = [[properties valueForKey:@"AreAssetsReadonly"] boolValue];
    
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

    
    self.pfInstrumentationConfiguration = [[MultiplayerInstrumentationConfiguration new] initWithDictionary:[properties objectForKey:@"InstrumentationConfiguration"]];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.MultiplayerServerCountPerVm = [properties valueForKey:@"MultiplayerServerCountPerVm"];
    
    self.OsPlatform = [properties valueForKey:@"OsPlatform"];
    
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

    
    self.ServerType = [properties valueForKey:@"ServerType"];
    
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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
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
@implementation MultiplayerGetLobbyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.LobbyId = [properties valueForKey:@"LobbyId"];
    

    return self;
}
@end
@implementation MultiplayerGetLobbyResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfLobby = [[MultiplayerLobby new] initWithDictionary:[properties objectForKey:@"Lobby"]];
    

    return self;
}
@end
@implementation MultiplayerGetMatchmakingTicketRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.EscapeObject = [[properties valueForKey:@"EscapeObject"] boolValue];
    
    self.QueueName = [properties valueForKey:@"QueueName"];
    
    self.TicketId = [properties valueForKey:@"TicketId"];
    

    return self;
}
@end
@implementation MultiplayerGetMatchmakingTicketResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CancellationReasonString = [properties valueForKey:@"CancellationReasonString"];
    
    self.ChangeNumber = [properties valueForKey:@"ChangeNumber"];
    
    self.Created = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Created"]];
    
    self.Creator = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"Creator"]];
    
    self.GiveUpAfterSeconds = [properties valueForKey:@"GiveUpAfterSeconds"];
    
    self.MatchId = [properties valueForKey:@"MatchId"];
    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerMatchmakingPlayer new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Members = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"MembersToMatchWith"]){
    NSArray* member_list = [properties objectForKey:@"MembersToMatchWith"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerEntityKey new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.MembersToMatchWith = [mutable_storage copy];
}

    
    self.QueueName = [properties valueForKey:@"QueueName"];
    
    self.Status = [properties valueForKey:@"Status"];
    
    self.TicketId = [properties valueForKey:@"TicketId"];
    

    return self;
}
@end
@implementation MultiplayerGetMatchRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.EscapeObject = [[properties valueForKey:@"EscapeObject"] boolValue];
    
    self.MatchId = [properties valueForKey:@"MatchId"];
    
    self.QueueName = [properties valueForKey:@"QueueName"];
    
    self.ReturnMemberAttributes = [[properties valueForKey:@"ReturnMemberAttributes"] boolValue];
    

    return self;
}
@end
@implementation MultiplayerGetMatchResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ArrangementString = [properties valueForKey:@"ArrangementString"];
    
    self.MatchId = [properties valueForKey:@"MatchId"];
    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerMatchmakingPlayerWithTeamAssignment new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Members = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"RegionPreferences"]){
    NSArray* member_list = [properties objectForKey:@"RegionPreferences"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.RegionPreferences = [mutable_storage copy];
}

    
    self.pfServerDetails = [[MultiplayerServerDetails new] initWithDictionary:[properties objectForKey:@"ServerDetails"]];
    

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
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Region = [properties valueForKey:@"Region"];
    
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

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
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

    
    self.Region = [properties valueForKey:@"Region"];
    
    self.ServerId = [properties valueForKey:@"ServerId"];
    
    self.SessionId = [properties valueForKey:@"SessionId"];
    
    self.State = [properties valueForKey:@"State"];
    
    self.VmId = [properties valueForKey:@"VmId"];
    

    return self;
}
@end
@implementation MultiplayerGetMultiplayerServerLogsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.ServerId = [properties valueForKey:@"ServerId"];
    

    return self;
}
@end
@implementation MultiplayerGetMultiplayerServerLogsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.LogDownloadUrl = [properties valueForKey:@"LogDownloadUrl"];
    

    return self;
}
@end
@implementation MultiplayerGetMultiplayerSessionLogsBySessionIdRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.SessionId = [properties valueForKey:@"SessionId"];
    

    return self;
}
@end
@implementation MultiplayerGetQueueStatisticsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.QueueName = [properties valueForKey:@"QueueName"];
    

    return self;
}
@end
@implementation MultiplayerGetQueueStatisticsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.NumberOfPlayersMatching = [properties valueForKey:@"NumberOfPlayersMatching"];
    
    self.TimeToMatchStatisticsInSeconds = [[MultiplayerStatistics new] initWithDictionary:[properties objectForKey:@"TimeToMatchStatisticsInSeconds"]];
    

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
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Region = [properties valueForKey:@"Region"];
    
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
@implementation MultiplayerGetServerBackfillTicketRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.EscapeObject = [[properties valueForKey:@"EscapeObject"] boolValue];
    
    self.QueueName = [properties valueForKey:@"QueueName"];
    
    self.TicketId = [properties valueForKey:@"TicketId"];
    

    return self;
}
@end
@implementation MultiplayerGetServerBackfillTicketResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CancellationReasonString = [properties valueForKey:@"CancellationReasonString"];
    
    self.Created = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Created"]];
    
    self.GiveUpAfterSeconds = [properties valueForKey:@"GiveUpAfterSeconds"];
    
    self.MatchId = [properties valueForKey:@"MatchId"];
    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerMatchmakingPlayerWithTeamAssignment new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Members = [mutable_storage copy];
}

    
    self.QueueName = [properties valueForKey:@"QueueName"];
    
    self.pfServerDetails = [[MultiplayerServerDetails new] initWithDictionary:[properties objectForKey:@"ServerDetails"]];
    
    self.Status = [properties valueForKey:@"Status"];
    
    self.TicketId = [properties valueForKey:@"TicketId"];
    

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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
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
@implementation MultiplayerGetTitleMultiplayerServersQuotaChangeRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.RequestId = [properties valueForKey:@"RequestId"];
    

    return self;
}
@end
@implementation MultiplayerGetTitleMultiplayerServersQuotaChangeResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Change = [[MultiplayerQuotaChange new] initWithDictionary:[properties objectForKey:@"Change"]];
    

    return self;
}
@end
@implementation MultiplayerGetTitleMultiplayerServersQuotasRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerGetTitleMultiplayerServersQuotasResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Quotas = [[MultiplayerTitleMultiplayerServersQuotas new] initWithDictionary:[properties objectForKey:@"Quotas"]];
    

    return self;
}
@end
@implementation MultiplayerInstrumentationConfiguration


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.IsEnabled = [[properties valueForKey:@"IsEnabled"] boolValue];
    
    if ([properties objectForKey:@"ProcessesToMonitor"]){
    NSArray* member_list = [properties objectForKey:@"ProcessesToMonitor"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.ProcessesToMonitor = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerInviteToLobbyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.InviteeEntity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"InviteeEntity"]];
    
    self.LobbyId = [properties valueForKey:@"LobbyId"];
    
    self.MemberEntity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"MemberEntity"]];
    

    return self;
}
@end
@implementation MultiplayerJoinArrangedLobbyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfAccessPolicy = (MultiplayerAccessPolicy)[properties valueForKey:@"MultiplayerAccessPolicy"];
    
    self.ArrangementString = [properties valueForKey:@"ArrangementString"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.MaxPlayers = [properties valueForKey:@"MaxPlayers"];
    
    if ([properties objectForKey:@"MemberData"]){
    NSDictionary* member_list = [properties objectForKey:@"MemberData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.MemberData = [mutable_storage copy];
}

    
    self.MemberEntity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"MemberEntity"]];
    
    self.pfOwnerMigrationPolicy = (MultiplayerOwnerMigrationPolicy)[properties valueForKey:@"MultiplayerOwnerMigrationPolicy"];
    
    self.UseConnections = [[properties valueForKey:@"UseConnections"] boolValue];
    

    return self;
}
@end
@implementation MultiplayerJoinLobbyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ConnectionString = [properties valueForKey:@"ConnectionString"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"MemberData"]){
    NSDictionary* member_list = [properties objectForKey:@"MemberData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.MemberData = [mutable_storage copy];
}

    
    self.MemberEntity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"MemberEntity"]];
    

    return self;
}
@end
@implementation MultiplayerJoinLobbyResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.LobbyId = [properties valueForKey:@"LobbyId"];
    

    return self;
}
@end
@implementation MultiplayerJoinMatchmakingTicketRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Member = [[MultiplayerMatchmakingPlayer new] initWithDictionary:[properties objectForKey:@"Member"]];
    
    self.QueueName = [properties valueForKey:@"QueueName"];
    
    self.TicketId = [properties valueForKey:@"TicketId"];
    

    return self;
}
@end
@implementation MultiplayerJoinMatchmakingTicketResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation MultiplayerLeaveLobbyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.LobbyId = [properties valueForKey:@"LobbyId"];
    
    self.MemberEntity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"MemberEntity"]];
    

    return self;
}
@end
@implementation MultiplayerLinuxInstrumentationConfiguration


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.IsEnabled = [[properties valueForKey:@"IsEnabled"] boolValue];
    

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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
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
@implementation MultiplayerListBuildAliasesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.SkipToken = [properties valueForKey:@"SkipToken"];
    

    return self;
}
@end
@implementation MultiplayerListBuildAliasesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"BuildAliases"]){
    NSArray* member_list = [properties objectForKey:@"BuildAliases"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerBuildAliasDetailsResponse new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.BuildAliases = [mutable_storage copy];
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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
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
@implementation MultiplayerListMatchmakingTicketsForPlayerRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.QueueName = [properties valueForKey:@"QueueName"];
    

    return self;
}
@end
@implementation MultiplayerListMatchmakingTicketsForPlayerResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"TicketIds"]){
    NSArray* member_list = [properties objectForKey:@"TicketIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.TicketIds = [mutable_storage copy];
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
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.Region = [properties valueForKey:@"Region"];
    
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
@implementation MultiplayerListPartyQosServersRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerListPartyQosServersResponse


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
@implementation MultiplayerListQosServersForTitleRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.IncludeAllRegions = [[properties valueForKey:@"IncludeAllRegions"] boolValue];
    

    return self;
}
@end
@implementation MultiplayerListQosServersForTitleResponse


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
@implementation MultiplayerListServerBackfillTicketsForPlayerRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.QueueName = [properties valueForKey:@"QueueName"];
    

    return self;
}
@end
@implementation MultiplayerListServerBackfillTicketsForPlayerResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"TicketIds"]){
    NSArray* member_list = [properties objectForKey:@"TicketIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.TicketIds = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerListTitleMultiplayerServersQuotaChangesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerListTitleMultiplayerServersQuotaChangesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Changes"]){
    NSArray* member_list = [properties objectForKey:@"Changes"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerQuotaChange new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Changes = [mutable_storage copy];
}

    

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
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.PageSize = [properties valueForKey:@"PageSize"];
    
    self.Region = [properties valueForKey:@"Region"];
    
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
@implementation MultiplayerLobby


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfAccessPolicy = (MultiplayerAccessPolicy)[properties valueForKey:@"MultiplayerAccessPolicy"];
    
    self.ChangeNumber = [properties valueForKey:@"ChangeNumber"];
    
    self.ConnectionString = [properties valueForKey:@"ConnectionString"];
    
    if ([properties objectForKey:@"LobbyData"]){
    NSDictionary* member_list = [properties objectForKey:@"LobbyData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.LobbyData = [mutable_storage copy];
}

    
    self.LobbyId = [properties valueForKey:@"LobbyId"];
    
    self.MaxPlayers = [properties valueForKey:@"MaxPlayers"];
    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerMember new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Members = [mutable_storage copy];
}

    
    self.pfMembershipLock = (MultiplayerMembershipLock)[properties valueForKey:@"MultiplayerMembershipLock"];
    
    self.Owner = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"Owner"]];
    
    self.pfOwnerMigrationPolicy = (MultiplayerOwnerMigrationPolicy)[properties valueForKey:@"MultiplayerOwnerMigrationPolicy"];
    
    self.PubSubConnectionHandle = [properties valueForKey:@"PubSubConnectionHandle"];
    
    if ([properties objectForKey:@"SearchData"]){
    NSDictionary* member_list = [properties objectForKey:@"SearchData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.SearchData = [mutable_storage copy];
}

    
    self.UseConnections = [[properties valueForKey:@"UseConnections"] boolValue];
    

    return self;
}
@end
@implementation MultiplayerLobbyEmptyResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation MultiplayerLobbySummary


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ConnectionString = [properties valueForKey:@"ConnectionString"];
    
    self.CurrentPlayers = [properties valueForKey:@"CurrentPlayers"];
    
    self.LobbyId = [properties valueForKey:@"LobbyId"];
    
    self.MaxPlayers = [properties valueForKey:@"MaxPlayers"];
    
    self.Owner = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"Owner"]];
    
    if ([properties objectForKey:@"SearchData"]){
    NSDictionary* member_list = [properties objectForKey:@"SearchData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.SearchData = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerMatchmakingPlayer


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Attributes = [[MultiplayerMatchmakingPlayerAttributes new] initWithDictionary:[properties objectForKey:@"Attributes"]];
    
    self.Entity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation MultiplayerMatchmakingPlayerAttributes


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DataObject = [properties valueForKey:@"DataObject"];
    
    self.EscapedDataObject = [properties valueForKey:@"EscapedDataObject"];
    

    return self;
}
@end
@implementation MultiplayerMatchmakingPlayerWithTeamAssignment


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Attributes = [[MultiplayerMatchmakingPlayerAttributes new] initWithDictionary:[properties objectForKey:@"Attributes"]];
    
    self.Entity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.TeamId = [properties valueForKey:@"TeamId"];
    

    return self;
}
@end
@implementation MultiplayerMember


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"MemberData"]){
    NSDictionary* member_list = [properties objectForKey:@"MemberData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.MemberData = [mutable_storage copy];
}

    
    self.MemberEntity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"MemberEntity"]];
    
    self.PubSubConnectionHandle = [properties valueForKey:@"PubSubConnectionHandle"];
    

    return self;
}
@end
@implementation MultiplayerMonitoringApplicationConfiguration


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfAssetReference = [[MultiplayerAssetReference new] initWithDictionary:[properties objectForKey:@"AssetReference"]];
    
    self.ExecutionScriptName = [properties valueForKey:@"ExecutionScriptName"];
    
    self.InstallationScriptName = [properties valueForKey:@"InstallationScriptName"];
    
    self.OnStartRuntimeInMinutes = [properties valueForKey:@"OnStartRuntimeInMinutes"];
    

    return self;
}
@end
@implementation MultiplayerMonitoringApplicationConfigurationParams


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AssetReference = [[MultiplayerAssetReferenceParams new] initWithDictionary:[properties objectForKey:@"AssetReference"]];
    
    self.ExecutionScriptName = [properties valueForKey:@"ExecutionScriptName"];
    
    self.InstallationScriptName = [properties valueForKey:@"InstallationScriptName"];
    
    self.OnStartRuntimeInMinutes = [properties valueForKey:@"OnStartRuntimeInMinutes"];
    

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
    
    self.Region = [properties valueForKey:@"Region"];
    
    self.ServerId = [properties valueForKey:@"ServerId"];
    
    self.SessionId = [properties valueForKey:@"SessionId"];
    
    self.State = [properties valueForKey:@"State"];
    
    self.VmId = [properties valueForKey:@"VmId"];
    

    return self;
}
@end
@implementation MultiplayerPaginationRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ContinuationToken = [properties valueForKey:@"ContinuationToken"];
    
    self.PageSizeRequested = [properties valueForKey:@"PageSizeRequested"];
    

    return self;
}
@end
@implementation MultiplayerPaginationResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ContinuationToken = [properties valueForKey:@"ContinuationToken"];
    
    self.TotalMatchedLobbyCount = [properties valueForKey:@"TotalMatchedLobbyCount"];
    

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

    
    self.Region = [properties valueForKey:@"Region"];
    
    self.ServerUrl = [properties valueForKey:@"ServerUrl"];
    

    return self;
}
@end
@implementation MultiplayerQuotaChange


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ChangeDescription = [properties valueForKey:@"ChangeDescription"];
    
    if ([properties objectForKey:@"Changes"]){
    NSArray* member_list = [properties objectForKey:@"Changes"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerCoreCapacityChange new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Changes = [mutable_storage copy];
}

    
    self.IsPendingReview = [[properties valueForKey:@"IsPendingReview"] boolValue];
    
    self.Notes = [properties valueForKey:@"Notes"];
    
    self.RequestId = [properties valueForKey:@"RequestId"];
    
    self.ReviewComments = [properties valueForKey:@"ReviewComments"];
    
    self.WasApproved = [[properties valueForKey:@"WasApproved"] boolValue];
    

    return self;
}
@end
@implementation MultiplayerRemoveMemberFromLobbyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.LobbyId = [properties valueForKey:@"LobbyId"];
    
    self.MemberEntity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"MemberEntity"]];
    
    self.PreventRejoin = [[properties valueForKey:@"PreventRejoin"] boolValue];
    

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

    
    self.pfBuildAliasParams = [[MultiplayerBuildAliasParams new] initWithDictionary:[properties objectForKey:@"BuildAliasParams"]];
    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
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
        [mutable_storage addObject:[member_list objectAtIndex:i]];
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

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
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

    
    self.Region = [properties valueForKey:@"Region"];
    
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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
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
@implementation MultiplayerSchedule


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Description = [properties valueForKey:@"Description"];
    
    self.EndTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"EndTime"]];
    
    self.IsDisabled = [[properties valueForKey:@"IsDisabled"] boolValue];
    
    self.IsRecurringWeekly = [[properties valueForKey:@"IsRecurringWeekly"] boolValue];
    
    self.StartTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"StartTime"]];
    
    self.TargetStandby = [properties valueForKey:@"TargetStandby"];
    

    return self;
}
@end
@implementation MultiplayerScheduledStandbySettings


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.IsEnabled = [[properties valueForKey:@"IsEnabled"] boolValue];
    
    if ([properties objectForKey:@"ScheduleList"]){
    NSArray* member_list = [properties objectForKey:@"ScheduleList"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerSchedule new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.ScheduleList = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerServerDetails


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Fqdn = [properties valueForKey:@"Fqdn"];
    
    self.IPV4Address = [properties valueForKey:@"IPV4Address"];
    
    if ([properties objectForKey:@"Ports"]){
    NSArray* member_list = [properties objectForKey:@"Ports"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerPort new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Ports = [mutable_storage copy];
}

    
    self.Region = [properties valueForKey:@"Region"];
    

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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.SessionId = [properties valueForKey:@"SessionId"];
    

    return self;
}
@end
@implementation MultiplayerStatistics


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Average = [properties valueForKey:@"Average"];
    
    self.Percentile50 = [properties valueForKey:@"Percentile50"];
    
    self.Percentile90 = [properties valueForKey:@"Percentile90"];
    
    self.Percentile99 = [properties valueForKey:@"Percentile99"];
    

    return self;
}
@end
@implementation MultiplayerSubscribeToLobbyResourceRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.pfEntityKey = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"EntityKey"]];
    
    self.PubSubConnectionHandle = [properties valueForKey:@"PubSubConnectionHandle"];
    
    self.ResourceId = [properties valueForKey:@"ResourceId"];
    
    self.SubscriptionVersion = [properties valueForKey:@"SubscriptionVersion"];
    
    self.Type = (MultiplayerSubscriptionType)[properties valueForKey:@"MultiplayerType"];
    

    return self;
}
@end
@implementation MultiplayerSubscribeToLobbyResourceResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Topic = [properties valueForKey:@"Topic"];
    

    return self;
}
@end
@implementation MultiplayerTitleMultiplayerServersQuotas


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CoreCapacities"]){
    NSArray* member_list = [properties objectForKey:@"CoreCapacities"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerCoreCapacity new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.CoreCapacities = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerUnsubscribeFromLobbyResourceRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.pfEntityKey = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"EntityKey"]];
    
    self.PubSubConnectionHandle = [properties valueForKey:@"PubSubConnectionHandle"];
    
    self.ResourceId = [properties valueForKey:@"ResourceId"];
    
    self.SubscriptionVersion = [properties valueForKey:@"SubscriptionVersion"];
    
    self.Type = (MultiplayerSubscriptionType)[properties valueForKey:@"MultiplayerType"];
    

    return self;
}
@end
@implementation MultiplayerUntagContainerImageRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.ImageName = [properties valueForKey:@"ImageName"];
    
    self.Tag = [properties valueForKey:@"Tag"];
    

    return self;
}
@end
@implementation MultiplayerUpdateBuildAliasRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AliasId = [properties valueForKey:@"AliasId"];
    
    self.AliasName = [properties valueForKey:@"AliasName"];
    
    if ([properties objectForKey:@"BuildSelectionCriteria"]){
    NSArray* member_list = [properties objectForKey:@"BuildSelectionCriteria"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[MultiplayerBuildSelectionCriterion new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.BuildSelectionCriteria = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerUpdateBuildNameRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.BuildName = [properties valueForKey:@"BuildName"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerUpdateBuildRegionRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildId = [properties valueForKey:@"BuildId"];
    
    self.BuildRegion = [[MultiplayerBuildRegionParams new] initWithDictionary:[properties objectForKey:@"BuildRegion"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    

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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation MultiplayerUpdateLobbyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfAccessPolicy = (MultiplayerAccessPolicy)[properties valueForKey:@"MultiplayerAccessPolicy"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"LobbyData"]){
    NSDictionary* member_list = [properties objectForKey:@"LobbyData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.LobbyData = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"LobbyDataToDelete"]){
    NSArray* member_list = [properties objectForKey:@"LobbyDataToDelete"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.LobbyDataToDelete = [mutable_storage copy];
}

    
    self.LobbyId = [properties valueForKey:@"LobbyId"];
    
    self.MaxPlayers = [properties valueForKey:@"MaxPlayers"];
    
    if ([properties objectForKey:@"MemberData"]){
    NSDictionary* member_list = [properties objectForKey:@"MemberData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.MemberData = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"MemberDataToDelete"]){
    NSArray* member_list = [properties objectForKey:@"MemberDataToDelete"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.MemberDataToDelete = [mutable_storage copy];
}

    
    self.MemberEntity = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"MemberEntity"]];
    
    self.pfMembershipLock = (MultiplayerMembershipLock)[properties valueForKey:@"MultiplayerMembershipLock"];
    
    self.Owner = [[MultiplayerEntityKey new] initWithDictionary:[properties objectForKey:@"Owner"]];
    
    if ([properties objectForKey:@"SearchData"]){
    NSDictionary* member_list = [properties objectForKey:@"SearchData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.SearchData = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"SearchDataToDelete"]){
    NSArray* member_list = [properties objectForKey:@"SearchDataToDelete"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.SearchDataToDelete = [mutable_storage copy];
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

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
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
@implementation MultiplayerWindowsCrashDumpConfiguration


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CustomDumpFlags = [properties valueForKey:@"CustomDumpFlags"];
    
    self.DumpType = [properties valueForKey:@"DumpType"];
    
    self.IsEnabled = [[properties valueForKey:@"IsEnabled"] boolValue];
    

    return self;
}
@end
