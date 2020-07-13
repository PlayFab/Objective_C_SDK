#import "PlayFabCloudScriptDataModels.h"


@implementation CloudScriptAdCampaignAttributionModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AttributedAt = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"AttributedAt"]];
    
    self.CampaignId = [properties valueForKey:@"CampaignId"];
    
    self.Platform = [properties valueForKey:@"Platform"];
    

    return self;
}
@end
@implementation CloudScriptContactEmailInfoModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.EmailAddress = [properties valueForKey:@"EmailAddress"];
    
    self.Name = [properties valueForKey:@"Name"];
    
    self.VerificationStatus = (CloudScriptEmailVerificationStatus)[properties valueForKey:@"CloudScriptVerificationStatus"];
    

    return self;
}
@end
@implementation CloudScriptEmptyResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation CloudScriptEntityKey


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
@implementation CloudScriptExecuteCloudScriptResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.APIRequestsIssued = [properties valueForKey:@"APIRequestsIssued"];
    
    self.Error = [[CloudScriptScriptExecutionError new] initWithDictionary:[properties objectForKey:@"Error"]];
    
    self.ExecutionTimeSeconds = [properties valueForKey:@"ExecutionTimeSeconds"];
    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.FunctionResult = [properties valueForKey:@"FunctionResult"];
    
    self.FunctionResultTooLarge = [[properties valueForKey:@"FunctionResultTooLarge"] boolValue];
    
    self.HttpRequestsIssued = [properties valueForKey:@"HttpRequestsIssued"];
    
    if ([properties objectForKey:@"Logs"]){
    NSArray* member_list = [properties objectForKey:@"Logs"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptLogStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Logs = [mutable_storage copy];
}

    
    self.LogsTooLarge = [[properties valueForKey:@"LogsTooLarge"] boolValue];
    
    self.MemoryConsumedBytes = [properties valueForKey:@"MemoryConsumedBytes"];
    
    self.ProcessorTimeSeconds = [properties valueForKey:@"ProcessorTimeSeconds"];
    
    self.Revision = [properties valueForKey:@"Revision"];
    

    return self;
}
@end
@implementation CloudScriptExecuteEntityCloudScriptRequest


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

    
    self.Entity = [[CloudScriptEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.FunctionParameter = [properties valueForKey:@"FunctionParameter"];
    
    self.GeneratePlayStreamEvent = [[properties valueForKey:@"GeneratePlayStreamEvent"] boolValue];
    
    self.RevisionSelection = (CloudScriptCloudScriptRevisionOption)[properties valueForKey:@"CloudScriptRevisionSelection"];
    
    self.SpecificRevision = [properties valueForKey:@"SpecificRevision"];
    

    return self;
}
@end
@implementation CloudScriptExecuteFunctionRequest


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

    
    self.Entity = [[CloudScriptEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.FunctionParameter = [properties valueForKey:@"FunctionParameter"];
    
    self.GeneratePlayStreamEvent = [[properties valueForKey:@"GeneratePlayStreamEvent"] boolValue];
    

    return self;
}
@end
@implementation CloudScriptExecuteFunctionResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Error = [[CloudScriptFunctionExecutionError new] initWithDictionary:[properties objectForKey:@"Error"]];
    
    self.ExecutionTimeMilliseconds = [properties valueForKey:@"ExecutionTimeMilliseconds"];
    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.FunctionResult = [properties valueForKey:@"FunctionResult"];
    
    self.FunctionResultTooLarge = [[properties valueForKey:@"FunctionResultTooLarge"] boolValue];
    

    return self;
}
@end
@implementation CloudScriptFunctionExecutionError


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Error = [properties valueForKey:@"Error"];
    
    self.Message = [properties valueForKey:@"Message"];
    
    self.StackTrace = [properties valueForKey:@"StackTrace"];
    

    return self;
}
@end
@implementation CloudScriptFunctionModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FunctionAddress = [properties valueForKey:@"FunctionAddress"];
    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.TriggerType = [properties valueForKey:@"TriggerType"];
    

    return self;
}
@end
@implementation CloudScriptHttpFunctionModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.FunctionUrl = [properties valueForKey:@"FunctionUrl"];
    

    return self;
}
@end
@implementation CloudScriptLinkedPlatformAccountModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Email = [properties valueForKey:@"Email"];
    
    self.Platform = (CloudScriptLoginIdentityProvider)[properties valueForKey:@"CloudScriptPlatform"];
    
    self.PlatformUserId = [properties valueForKey:@"PlatformUserId"];
    
    self.Username = [properties valueForKey:@"Username"];
    

    return self;
}
@end
@implementation CloudScriptListFunctionsRequest


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
@implementation CloudScriptListFunctionsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Functions"]){
    NSArray* member_list = [properties objectForKey:@"Functions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptFunctionModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Functions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation CloudScriptListHttpFunctionsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Functions"]){
    NSArray* member_list = [properties objectForKey:@"Functions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptHttpFunctionModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Functions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation CloudScriptListQueuedFunctionsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Functions"]){
    NSArray* member_list = [properties objectForKey:@"Functions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptQueuedFunctionModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Functions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation CloudScriptLocationModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.City = [properties valueForKey:@"City"];
    
    self.pfContinentCode = (CloudScriptContinentCode)[properties valueForKey:@"CloudScriptContinentCode"];
    
    self.pfCountryCode = (CloudScriptCountryCode)[properties valueForKey:@"CloudScriptCountryCode"];
    
    self.Latitude = [properties valueForKey:@"Latitude"];
    
    self.Longitude = [properties valueForKey:@"Longitude"];
    

    return self;
}
@end
@implementation CloudScriptLogStatement


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Data = [properties valueForKey:@"Data"];
    
    self.Level = [properties valueForKey:@"Level"];
    
    self.Message = [properties valueForKey:@"Message"];
    

    return self;
}
@end
@implementation CloudScriptMembershipModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.IsActive = [[properties valueForKey:@"IsActive"] boolValue];
    
    self.MembershipExpiration = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"MembershipExpiration"]];
    
    self.MembershipId = [properties valueForKey:@"MembershipId"];
    
    self.OverrideExpiration = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"OverrideExpiration"]];
    
    if ([properties objectForKey:@"Subscriptions"]){
    NSArray* member_list = [properties objectForKey:@"Subscriptions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptSubscriptionModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Subscriptions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation CloudScriptNameIdentifier


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Name = [properties valueForKey:@"Name"];
    

    return self;
}
@end
@implementation CloudScriptPlayerProfileModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"AdCampaignAttributions"]){
    NSArray* member_list = [properties objectForKey:@"AdCampaignAttributions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptAdCampaignAttributionModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.AdCampaignAttributions = [mutable_storage copy];
}

    
    self.AvatarUrl = [properties valueForKey:@"AvatarUrl"];
    
    self.BannedUntil = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"BannedUntil"]];
    
    if ([properties objectForKey:@"ContactEmailAddresses"]){
    NSArray* member_list = [properties objectForKey:@"ContactEmailAddresses"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptContactEmailInfoModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.ContactEmailAddresses = [mutable_storage copy];
}

    
    self.Created = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Created"]];
    
    self.DisplayName = [properties valueForKey:@"DisplayName"];
    
    if ([properties objectForKey:@"ExperimentVariants"]){
    NSArray* member_list = [properties objectForKey:@"ExperimentVariants"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.ExperimentVariants = [mutable_storage copy];
}

    
    self.LastLogin = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastLogin"]];
    
    if ([properties objectForKey:@"LinkedAccounts"]){
    NSArray* member_list = [properties objectForKey:@"LinkedAccounts"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptLinkedPlatformAccountModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.LinkedAccounts = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Locations"]){
    NSArray* member_list = [properties objectForKey:@"Locations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptLocationModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Locations = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Memberships"]){
    NSArray* member_list = [properties objectForKey:@"Memberships"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptMembershipModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Memberships = [mutable_storage copy];
}

    
    self.Origination = (CloudScriptLoginIdentityProvider)[properties valueForKey:@"CloudScriptOrigination"];
    
    self.PlayerId = [properties valueForKey:@"PlayerId"];
    
    self.PublisherId = [properties valueForKey:@"PublisherId"];
    
    if ([properties objectForKey:@"PushNotificationRegistrations"]){
    NSArray* member_list = [properties objectForKey:@"PushNotificationRegistrations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptPushNotificationRegistrationModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.PushNotificationRegistrations = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Statistics"]){
    NSArray* member_list = [properties objectForKey:@"Statistics"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptStatisticModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Statistics = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Tags"]){
    NSArray* member_list = [properties objectForKey:@"Tags"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptTagModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Tags = [mutable_storage copy];
}

    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.TotalValueToDateInUSD = [properties valueForKey:@"TotalValueToDateInUSD"];
    
    if ([properties objectForKey:@"ValuesToDate"]){
    NSArray* member_list = [properties objectForKey:@"ValuesToDate"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CloudScriptValueToDateModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.ValuesToDate = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation CloudScriptPlayStreamEventEnvelopeModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.EntityId = [properties valueForKey:@"EntityId"];
    
    self.EntityType = [properties valueForKey:@"EntityType"];
    
    self.EventData = [properties valueForKey:@"EventData"];
    
    self.EventName = [properties valueForKey:@"EventName"];
    
    self.EventNamespace = [properties valueForKey:@"EventNamespace"];
    
    self.EventSettings = [properties valueForKey:@"EventSettings"];
    

    return self;
}
@end
@implementation CloudScriptPostFunctionResultForEntityTriggeredActionRequest


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

    
    self.Entity = [[CloudScriptEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.FunctionResult = [[CloudScriptExecuteFunctionResult new] initWithDictionary:[properties objectForKey:@"FunctionResult"]];
    

    return self;
}
@end
@implementation CloudScriptPostFunctionResultForFunctionExecutionRequest


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

    
    self.Entity = [[CloudScriptEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.FunctionResult = [[CloudScriptExecuteFunctionResult new] initWithDictionary:[properties objectForKey:@"FunctionResult"]];
    

    return self;
}
@end
@implementation CloudScriptPostFunctionResultForPlayerTriggeredActionRequest


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

    
    self.Entity = [[CloudScriptEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.FunctionResult = [[CloudScriptExecuteFunctionResult new] initWithDictionary:[properties objectForKey:@"FunctionResult"]];
    
    self.PlayerProfile = [[CloudScriptPlayerProfileModel new] initWithDictionary:[properties objectForKey:@"PlayerProfile"]];
    
    self.PlayStreamEventEnvelope = [[CloudScriptPlayStreamEventEnvelopeModel new] initWithDictionary:[properties objectForKey:@"PlayStreamEventEnvelope"]];
    

    return self;
}
@end
@implementation CloudScriptPostFunctionResultForScheduledTaskRequest


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

    
    self.Entity = [[CloudScriptEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.FunctionResult = [[CloudScriptExecuteFunctionResult new] initWithDictionary:[properties objectForKey:@"FunctionResult"]];
    
    self.ScheduledTaskId = [[CloudScriptNameIdentifier new] initWithDictionary:[properties objectForKey:@"ScheduledTaskId"]];
    

    return self;
}
@end
@implementation CloudScriptPushNotificationRegistrationModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.NotificationEndpointARN = [properties valueForKey:@"NotificationEndpointARN"];
    
    self.Platform = (CloudScriptPushNotificationPlatform)[properties valueForKey:@"CloudScriptPlatform"];
    

    return self;
}
@end
@implementation CloudScriptQueuedFunctionModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ConnectionString = [properties valueForKey:@"ConnectionString"];
    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.QueueName = [properties valueForKey:@"QueueName"];
    

    return self;
}
@end
@implementation CloudScriptRegisterHttpFunctionRequest


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

    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.FunctionUrl = [properties valueForKey:@"FunctionUrl"];
    

    return self;
}
@end
@implementation CloudScriptRegisterQueuedFunctionRequest


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

    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.QueueName = [properties valueForKey:@"QueueName"];
    

    return self;
}
@end
@implementation CloudScriptScriptExecutionError


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Error = [properties valueForKey:@"Error"];
    
    self.Message = [properties valueForKey:@"Message"];
    
    self.StackTrace = [properties valueForKey:@"StackTrace"];
    

    return self;
}
@end
@implementation CloudScriptStatisticModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Name = [properties valueForKey:@"Name"];
    
    self.Value = [properties valueForKey:@"Value"];
    
    self.Version = [properties valueForKey:@"Version"];
    

    return self;
}
@end
@implementation CloudScriptSubscriptionModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Expiration = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Expiration"]];
    
    self.InitialSubscriptionTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"InitialSubscriptionTime"]];
    
    self.IsActive = [[properties valueForKey:@"IsActive"] boolValue];
    
    self.Status = (CloudScriptSubscriptionProviderStatus)[properties valueForKey:@"CloudScriptStatus"];
    
    self.SubscriptionId = [properties valueForKey:@"SubscriptionId"];
    
    self.SubscriptionItemId = [properties valueForKey:@"SubscriptionItemId"];
    
    self.SubscriptionProvider = [properties valueForKey:@"SubscriptionProvider"];
    

    return self;
}
@end
@implementation CloudScriptTagModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.TagValue = [properties valueForKey:@"TagValue"];
    

    return self;
}
@end
@implementation CloudScriptUnregisterFunctionRequest


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

    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    

    return self;
}
@end
@implementation CloudScriptValueToDateModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Currency = [properties valueForKey:@"Currency"];
    
    self.TotalValue = [properties valueForKey:@"TotalValue"];
    
    self.TotalValueAsDecimal = [properties valueForKey:@"TotalValueAsDecimal"];
    

    return self;
}
@end
