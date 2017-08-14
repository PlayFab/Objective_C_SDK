#import "PlayFabClientDataModels.h"


@implementation AcceptTradeRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OfferingPlayerId = [properties valueForKey:@"OfferingPlayerId"];
    
    self.TradeId = [properties valueForKey:@"TradeId"];
    
    if ([properties objectForKey:@"AcceptedInventoryInstanceIds"]){
    NSArray* member_list = [properties objectForKey:@"AcceptedInventoryInstanceIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.AcceptedInventoryInstanceIds = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation AcceptTradeResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Trade = [[TradeInfo new] initWithDictionary:[properties objectForKey:@"Trade"]];
    

    return self;
}
@end
@implementation AdCampaignAttributionModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Platform = [properties valueForKey:@"Platform"];
    
    self.CampaignId = [properties valueForKey:@"CampaignId"];
    
    self.AttributedAt = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"AttributedAt"]];
    

    return self;
}
@end
@implementation AddFriendRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FriendPlayFabId = [properties valueForKey:@"FriendPlayFabId"];
    
    self.FriendUsername = [properties valueForKey:@"FriendUsername"];
    
    self.FriendEmail = [properties valueForKey:@"FriendEmail"];
    
    self.FriendTitleDisplayName = [properties valueForKey:@"FriendTitleDisplayName"];
    

    return self;
}
@end
@implementation AddFriendResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Created = [[properties valueForKey:@"Created"] boolValue];
    

    return self;
}
@end
@implementation AddGenericIDRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.GenericId = [[GenericServiceId new] initWithDictionary:[properties objectForKey:@"GenericId"]];
    

    return self;
}
@end
@implementation AddGenericIDResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation AddSharedGroupMembersRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.SharedGroupId = [properties valueForKey:@"SharedGroupId"];
    
    if ([properties objectForKey:@"PlayFabIds"]){
    NSArray* member_list = [properties objectForKey:@"PlayFabIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.PlayFabIds = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation AddSharedGroupMembersResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation AddUsernamePasswordRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Username = [properties valueForKey:@"Username"];
    
    self.Email = [properties valueForKey:@"Email"];
    
    self.Password = [properties valueForKey:@"Password"];
    

    return self;
}
@end
@implementation AddUsernamePasswordResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Username = [properties valueForKey:@"Username"];
    

    return self;
}
@end
@implementation AddUserVirtualCurrencyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.VirtualCurrency = [properties valueForKey:@"VirtualCurrency"];
    
    self.Amount = [properties valueForKey:@"Amount"];
    

    return self;
}
@end
@implementation AndroidDevicePushNotificationRegistrationRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DeviceToken = [properties valueForKey:@"DeviceToken"];
    
    self.SendPushNotificationConfirmation = [[properties valueForKey:@"SendPushNotificationConfirmation"] boolValue];
    
    self.ConfirmationMessage = [properties valueForKey:@"ConfirmationMessage"];
    

    return self;
}
@end
@implementation AndroidDevicePushNotificationRegistrationResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation AttributeInstallRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Idfa = [properties valueForKey:@"Idfa"];
    
    self.Adid = [properties valueForKey:@"Adid"];
    

    return self;
}
@end
@implementation AttributeInstallResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation CancelTradeRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.TradeId = [properties valueForKey:@"TradeId"];
    

    return self;
}
@end
@implementation CancelTradeResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Trade = [[TradeInfo new] initWithDictionary:[properties objectForKey:@"Trade"]];
    

    return self;
}
@end
@implementation CartItem


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ItemId = [properties valueForKey:@"ItemId"];
    
    self.ItemClass = [properties valueForKey:@"ItemClass"];
    
    self.ItemInstanceId = [properties valueForKey:@"ItemInstanceId"];
    
    self.DisplayName = [properties valueForKey:@"DisplayName"];
    
    self.Description = [properties valueForKey:@"Description"];
    
    if ([properties objectForKey:@"VirtualCurrencyPrices"]){
    NSDictionary* member_list = [properties objectForKey:@"VirtualCurrencyPrices"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.VirtualCurrencyPrices = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"RealCurrencyPrices"]){
    NSDictionary* member_list = [properties objectForKey:@"RealCurrencyPrices"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.RealCurrencyPrices = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"VCAmount"]){
    NSDictionary* member_list = [properties objectForKey:@"VCAmount"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.VCAmount = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation CatalogItem


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ItemId = [properties valueForKey:@"ItemId"];
    
    self.ItemClass = [properties valueForKey:@"ItemClass"];
    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    
    self.DisplayName = [properties valueForKey:@"DisplayName"];
    
    self.Description = [properties valueForKey:@"Description"];
    
    if ([properties objectForKey:@"VirtualCurrencyPrices"]){
    NSDictionary* member_list = [properties objectForKey:@"VirtualCurrencyPrices"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.VirtualCurrencyPrices = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"RealCurrencyPrices"]){
    NSDictionary* member_list = [properties objectForKey:@"RealCurrencyPrices"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.RealCurrencyPrices = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Tags"]){
    NSArray* member_list = [properties objectForKey:@"Tags"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Tags = [mutable_storage copy];
}

    
    self.CustomData = [properties valueForKey:@"CustomData"];
    
    self.Consumable = [[CatalogItemConsumableInfo new] initWithDictionary:[properties objectForKey:@"Consumable"]];
    
    self.Container = [[CatalogItemContainerInfo new] initWithDictionary:[properties objectForKey:@"Container"]];
    
    self.Bundle = [[CatalogItemBundleInfo new] initWithDictionary:[properties objectForKey:@"Bundle"]];
    
    self.CanBecomeCharacter = [[properties valueForKey:@"CanBecomeCharacter"] boolValue];
    
    self.IsStackable = [[properties valueForKey:@"IsStackable"] boolValue];
    
    self.IsTradable = [[properties valueForKey:@"IsTradable"] boolValue];
    
    self.ItemImageUrl = [properties valueForKey:@"ItemImageUrl"];
    
    self.IsLimitedEdition = [[properties valueForKey:@"IsLimitedEdition"] boolValue];
    
    self.InitialLimitedEditionCount = [properties valueForKey:@"InitialLimitedEditionCount"];
    

    return self;
}
@end
@implementation CatalogItemBundleInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"BundledItems"]){
    NSArray* member_list = [properties objectForKey:@"BundledItems"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.BundledItems = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"BundledResultTables"]){
    NSArray* member_list = [properties objectForKey:@"BundledResultTables"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.BundledResultTables = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"BundledVirtualCurrencies"]){
    NSDictionary* member_list = [properties objectForKey:@"BundledVirtualCurrencies"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.BundledVirtualCurrencies = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation CatalogItemConsumableInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.UsageCount = [properties valueForKey:@"UsageCount"];
    
    self.UsagePeriod = [properties valueForKey:@"UsagePeriod"];
    
    self.UsagePeriodGroup = [properties valueForKey:@"UsagePeriodGroup"];
    

    return self;
}
@end
@implementation CatalogItemContainerInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.KeyItemId = [properties valueForKey:@"KeyItemId"];
    
    if ([properties objectForKey:@"ItemContents"]){
    NSArray* member_list = [properties objectForKey:@"ItemContents"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.ItemContents = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"ResultTableContents"]){
    NSArray* member_list = [properties objectForKey:@"ResultTableContents"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.ResultTableContents = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"VirtualCurrencyContents"]){
    NSDictionary* member_list = [properties objectForKey:@"VirtualCurrencyContents"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.VirtualCurrencyContents = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation CharacterInventory


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    if ([properties objectForKey:@"Inventory"]){
    NSArray* member_list = [properties objectForKey:@"Inventory"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ItemInstance new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Inventory = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation CharacterLeaderboardEntry


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    self.CharacterName = [properties valueForKey:@"CharacterName"];
    
    self.DisplayName = [properties valueForKey:@"DisplayName"];
    
    self.CharacterType = [properties valueForKey:@"CharacterType"];
    
    self.StatValue = [properties valueForKey:@"StatValue"];
    
    self.Position = [properties valueForKey:@"Position"];
    

    return self;
}
@end
@implementation CharacterResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    self.CharacterName = [properties valueForKey:@"CharacterName"];
    
    self.CharacterType = [properties valueForKey:@"CharacterType"];
    

    return self;
}
@end
@implementation CollectionFilter


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Includes"]){
    NSArray* member_list = [properties objectForKey:@"Includes"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[Container_Dictionary_String_String new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Includes = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Excludes"]){
    NSArray* member_list = [properties objectForKey:@"Excludes"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[Container_Dictionary_String_String new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Excludes = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ConfirmPurchaseRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OrderId = [properties valueForKey:@"OrderId"];
    

    return self;
}
@end
@implementation ConfirmPurchaseResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OrderId = [properties valueForKey:@"OrderId"];
    
    self.PurchaseDate = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"PurchaseDate"]];
    
    if ([properties objectForKey:@"Items"]){
    NSArray* member_list = [properties objectForKey:@"Items"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ItemInstance new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Items = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ConsumeItemRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ItemInstanceId = [properties valueForKey:@"ItemInstanceId"];
    
    self.ConsumeCount = [properties valueForKey:@"ConsumeCount"];
    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    

    return self;
}
@end
@implementation ConsumeItemResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ItemInstanceId = [properties valueForKey:@"ItemInstanceId"];
    
    self.RemainingUses = [properties valueForKey:@"RemainingUses"];
    

    return self;
}
@end
@implementation Container_Dictionary_String_String


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSDictionary* member_list = [properties objectForKey:@"Data"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Data = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation CreateSharedGroupRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.SharedGroupId = [properties valueForKey:@"SharedGroupId"];
    

    return self;
}
@end
@implementation CreateSharedGroupResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.SharedGroupId = [properties valueForKey:@"SharedGroupId"];
    

    return self;
}
@end
@implementation CurrentGamesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfRegion = (Region)[properties valueForKey:@"Region"];
    
    self.BuildVersion = [properties valueForKey:@"BuildVersion"];
    
    self.GameMode = [properties valueForKey:@"GameMode"];
    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.TagFilter = [[CollectionFilter new] initWithDictionary:[properties objectForKey:@"TagFilter"]];
    

    return self;
}
@end
@implementation CurrentGamesResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Games"]){
    NSArray* member_list = [properties objectForKey:@"Games"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GameInfo new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Games = [mutable_storage copy];
}

    
    self.PlayerCount = [properties valueForKey:@"PlayerCount"];
    
    self.GameCount = [properties valueForKey:@"GameCount"];
    

    return self;
}
@end
@implementation EmptyResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation ExecuteCloudScriptRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.FunctionParameter = [properties valueForKey:@"FunctionParameter"];
    
    self.RevisionSelection = (CloudScriptRevisionOption)[properties valueForKey:@"RevisionSelection"];
    
    self.SpecificRevision = [properties valueForKey:@"SpecificRevision"];
    
    self.GeneratePlayStreamEvent = [[properties valueForKey:@"GeneratePlayStreamEvent"] boolValue];
    

    return self;
}
@end
@implementation ExecuteCloudScriptResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.Revision = [properties valueForKey:@"Revision"];
    
    self.FunctionResult = [properties valueForKey:@"FunctionResult"];
    
    self.FunctionResultTooLarge = [[properties valueForKey:@"FunctionResultTooLarge"] boolValue];
    
    if ([properties objectForKey:@"Logs"]){
    NSArray* member_list = [properties objectForKey:@"Logs"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[LogStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Logs = [mutable_storage copy];
}

    
    self.LogsTooLarge = [[properties valueForKey:@"LogsTooLarge"] boolValue];
    
    self.ExecutionTimeSeconds = [properties valueForKey:@"ExecutionTimeSeconds"];
    
    self.ProcessorTimeSeconds = [properties valueForKey:@"ProcessorTimeSeconds"];
    
    self.MemoryConsumedBytes = [properties valueForKey:@"MemoryConsumedBytes"];
    
    self.APIRequestsIssued = [properties valueForKey:@"APIRequestsIssued"];
    
    self.HttpRequestsIssued = [properties valueForKey:@"HttpRequestsIssued"];
    
    self.Error = [[ScriptExecutionError new] initWithDictionary:[properties objectForKey:@"Error"]];
    

    return self;
}
@end
@implementation FacebookPlayFabIdPair


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FacebookId = [properties valueForKey:@"FacebookId"];
    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    

    return self;
}
@end
@implementation FriendInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FriendPlayFabId = [properties valueForKey:@"FriendPlayFabId"];
    
    self.Username = [properties valueForKey:@"Username"];
    
    self.TitleDisplayName = [properties valueForKey:@"TitleDisplayName"];
    
    if ([properties objectForKey:@"Tags"]){
    NSArray* member_list = [properties objectForKey:@"Tags"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Tags = [mutable_storage copy];
}

    
    self.CurrentMatchmakerLobbyId = [properties valueForKey:@"CurrentMatchmakerLobbyId"];
    
    self.FacebookInfo = [[UserFacebookInfo new] initWithDictionary:[properties objectForKey:@"FacebookInfo"]];
    
    self.SteamInfo = [[UserSteamInfo new] initWithDictionary:[properties objectForKey:@"SteamInfo"]];
    
    self.GameCenterInfo = [[UserGameCenterInfo new] initWithDictionary:[properties objectForKey:@"GameCenterInfo"]];
    
    self.Profile = [[PlayerProfileModel new] initWithDictionary:[properties objectForKey:@"Profile"]];
    

    return self;
}
@end
@implementation GameCenterPlayFabIdPair


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.GameCenterId = [properties valueForKey:@"GameCenterId"];
    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    

    return self;
}
@end
@implementation GameInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfRegion = (Region)[properties valueForKey:@"Region"];
    
    self.LobbyID = [properties valueForKey:@"LobbyID"];
    
    self.BuildVersion = [properties valueForKey:@"BuildVersion"];
    
    self.GameMode = [properties valueForKey:@"GameMode"];
    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.MaxPlayers = [properties valueForKey:@"MaxPlayers"];
    
    if ([properties objectForKey:@"PlayerUserIds"]){
    NSArray* member_list = [properties objectForKey:@"PlayerUserIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.PlayerUserIds = [mutable_storage copy];
}

    
    self.RunTime = [properties valueForKey:@"RunTime"];
    
    self.GameServerState = (GameInstanceState)[properties valueForKey:@"GameServerState"];
    
    self.GameServerData = [properties valueForKey:@"GameServerData"];
    
    if ([properties objectForKey:@"Tags"]){
    NSDictionary* member_list = [properties objectForKey:@"Tags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Tags = [mutable_storage copy];
}

    
    self.LastHeartbeat = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastHeartbeat"]];
    
    self.ServerHostname = [properties valueForKey:@"ServerHostname"];
    
    self.ServerPort = [properties valueForKey:@"ServerPort"];
    

    return self;
}
@end
@implementation GameServerRegionsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildVersion = [properties valueForKey:@"BuildVersion"];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    

    return self;
}
@end
@implementation GameServerRegionsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Regions"]){
    NSArray* member_list = [properties objectForKey:@"Regions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[RegionInfo new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Regions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GenericPlayFabIdPair


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.GenericId = [[GenericServiceId new] initWithDictionary:[properties objectForKey:@"GenericId"]];
    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    

    return self;
}
@end
@implementation GenericServiceId


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ServiceName = [properties valueForKey:@"ServiceName"];
    
    self.UserId = [properties valueForKey:@"UserId"];
    

    return self;
}
@end
@implementation GetAccountInfoRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.Username = [properties valueForKey:@"Username"];
    
    self.Email = [properties valueForKey:@"Email"];
    
    self.TitleDisplayName = [properties valueForKey:@"TitleDisplayName"];
    

    return self;
}
@end
@implementation GetAccountInfoResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AccountInfo = [[UserAccountInfo new] initWithDictionary:[properties objectForKey:@"AccountInfo"]];
    

    return self;
}
@end
@implementation GetCatalogItemsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    

    return self;
}
@end
@implementation GetCatalogItemsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Catalog"]){
    NSArray* member_list = [properties objectForKey:@"Catalog"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CatalogItem new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Catalog = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetCharacterDataRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    if ([properties objectForKey:@"Keys"]){
    NSArray* member_list = [properties objectForKey:@"Keys"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Keys = [mutable_storage copy];
}

    
    self.IfChangedFromDataVersion = [properties valueForKey:@"IfChangedFromDataVersion"];
    

    return self;
}
@end
@implementation GetCharacterDataResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    if ([properties objectForKey:@"Data"]){
    NSDictionary* member_list = [properties objectForKey:@"Data"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[UserDataRecord new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Data = [mutable_storage copy];
}

    
    self.DataVersion = [properties valueForKey:@"DataVersion"];
    

    return self;
}
@end
@implementation GetCharacterInventoryRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    

    return self;
}
@end
@implementation GetCharacterInventoryResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    if ([properties objectForKey:@"Inventory"]){
    NSArray* member_list = [properties objectForKey:@"Inventory"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ItemInstance new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Inventory = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"VirtualCurrency"]){
    NSDictionary* member_list = [properties objectForKey:@"VirtualCurrency"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.VirtualCurrency = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"VirtualCurrencyRechargeTimes"]){
    NSDictionary* member_list = [properties objectForKey:@"VirtualCurrencyRechargeTimes"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[VirtualCurrencyRechargeTime new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.VirtualCurrencyRechargeTimes = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetCharacterLeaderboardRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CharacterType = [properties valueForKey:@"CharacterType"];
    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.StartPosition = [properties valueForKey:@"StartPosition"];
    
    self.MaxResultsCount = [properties valueForKey:@"MaxResultsCount"];
    

    return self;
}
@end
@implementation GetCharacterLeaderboardResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Leaderboard"]){
    NSArray* member_list = [properties objectForKey:@"Leaderboard"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CharacterLeaderboardEntry new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Leaderboard = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetCharacterStatisticsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    

    return self;
}
@end
@implementation GetCharacterStatisticsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"CharacterStatistics"]){
    NSDictionary* member_list = [properties objectForKey:@"CharacterStatistics"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CharacterStatistics = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetContentDownloadUrlRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Key = [properties valueForKey:@"Key"];
    
    self.HttpMethod = [properties valueForKey:@"HttpMethod"];
    
    self.ThruCDN = [[properties valueForKey:@"ThruCDN"] boolValue];
    

    return self;
}
@end
@implementation GetContentDownloadUrlResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.URL = [properties valueForKey:@"URL"];
    

    return self;
}
@end
@implementation GetFriendLeaderboardAroundPlayerRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.MaxResultsCount = [properties valueForKey:@"MaxResultsCount"];
    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.IncludeSteamFriends = [[properties valueForKey:@"IncludeSteamFriends"] boolValue];
    
    self.IncludeFacebookFriends = [[properties valueForKey:@"IncludeFacebookFriends"] boolValue];
    
    self.Version = [properties valueForKey:@"Version"];
    
    self.ProfileConstraints = [[PlayerProfileViewConstraints new] initWithDictionary:[properties objectForKey:@"ProfileConstraints"]];
    

    return self;
}
@end
@implementation GetFriendLeaderboardAroundPlayerResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Leaderboard"]){
    NSArray* member_list = [properties objectForKey:@"Leaderboard"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[PlayerLeaderboardEntry new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Leaderboard = [mutable_storage copy];
}

    
    self.Version = [properties valueForKey:@"Version"];
    
    self.NextReset = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"NextReset"]];
    

    return self;
}
@end
@implementation GetFriendLeaderboardRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.StartPosition = [properties valueForKey:@"StartPosition"];
    
    self.MaxResultsCount = [properties valueForKey:@"MaxResultsCount"];
    
    self.IncludeSteamFriends = [[properties valueForKey:@"IncludeSteamFriends"] boolValue];
    
    self.IncludeFacebookFriends = [[properties valueForKey:@"IncludeFacebookFriends"] boolValue];
    
    self.Version = [properties valueForKey:@"Version"];
    
    self.ProfileConstraints = [[PlayerProfileViewConstraints new] initWithDictionary:[properties objectForKey:@"ProfileConstraints"]];
    

    return self;
}
@end
@implementation GetFriendsListRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.IncludeSteamFriends = [[properties valueForKey:@"IncludeSteamFriends"] boolValue];
    
    self.IncludeFacebookFriends = [[properties valueForKey:@"IncludeFacebookFriends"] boolValue];
    
    self.ProfileConstraints = [[PlayerProfileViewConstraints new] initWithDictionary:[properties objectForKey:@"ProfileConstraints"]];
    

    return self;
}
@end
@implementation GetFriendsListResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Friends"]){
    NSArray* member_list = [properties objectForKey:@"Friends"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[FriendInfo new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Friends = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetLeaderboardAroundCharacterRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    self.CharacterType = [properties valueForKey:@"CharacterType"];
    
    self.MaxResultsCount = [properties valueForKey:@"MaxResultsCount"];
    

    return self;
}
@end
@implementation GetLeaderboardAroundCharacterResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Leaderboard"]){
    NSArray* member_list = [properties objectForKey:@"Leaderboard"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CharacterLeaderboardEntry new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Leaderboard = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetLeaderboardAroundPlayerRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.MaxResultsCount = [properties valueForKey:@"MaxResultsCount"];
    
    self.Version = [properties valueForKey:@"Version"];
    
    self.ProfileConstraints = [[PlayerProfileViewConstraints new] initWithDictionary:[properties objectForKey:@"ProfileConstraints"]];
    

    return self;
}
@end
@implementation GetLeaderboardAroundPlayerResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Leaderboard"]){
    NSArray* member_list = [properties objectForKey:@"Leaderboard"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[PlayerLeaderboardEntry new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Leaderboard = [mutable_storage copy];
}

    
    self.Version = [properties valueForKey:@"Version"];
    
    self.NextReset = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"NextReset"]];
    

    return self;
}
@end
@implementation GetLeaderboardForUsersCharactersRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.MaxResultsCount = [properties valueForKey:@"MaxResultsCount"];
    

    return self;
}
@end
@implementation GetLeaderboardForUsersCharactersResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Leaderboard"]){
    NSArray* member_list = [properties objectForKey:@"Leaderboard"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CharacterLeaderboardEntry new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Leaderboard = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetLeaderboardRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.StartPosition = [properties valueForKey:@"StartPosition"];
    
    self.MaxResultsCount = [properties valueForKey:@"MaxResultsCount"];
    
    self.Version = [properties valueForKey:@"Version"];
    
    self.ProfileConstraints = [[PlayerProfileViewConstraints new] initWithDictionary:[properties objectForKey:@"ProfileConstraints"]];
    

    return self;
}
@end
@implementation GetLeaderboardResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Leaderboard"]){
    NSArray* member_list = [properties objectForKey:@"Leaderboard"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[PlayerLeaderboardEntry new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Leaderboard = [mutable_storage copy];
}

    
    self.Version = [properties valueForKey:@"Version"];
    
    self.NextReset = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"NextReset"]];
    

    return self;
}
@end
@implementation GetPhotonAuthenticationTokenRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PhotonApplicationId = [properties valueForKey:@"PhotonApplicationId"];
    

    return self;
}
@end
@implementation GetPhotonAuthenticationTokenResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PhotonCustomAuthenticationToken = [properties valueForKey:@"PhotonCustomAuthenticationToken"];
    

    return self;
}
@end
@implementation GetPlayerCombinedInfoRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation GetPlayerCombinedInfoRequestParams


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.GetUserAccountInfo = [[properties valueForKey:@"GetUserAccountInfo"] boolValue];
    
    self.GetUserInventory = [[properties valueForKey:@"GetUserInventory"] boolValue];
    
    self.GetUserVirtualCurrency = [[properties valueForKey:@"GetUserVirtualCurrency"] boolValue];
    
    self.GetUserData = [[properties valueForKey:@"GetUserData"] boolValue];
    
    if ([properties objectForKey:@"UserDataKeys"]){
    NSArray* member_list = [properties objectForKey:@"UserDataKeys"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.UserDataKeys = [mutable_storage copy];
}

    
    self.GetUserReadOnlyData = [[properties valueForKey:@"GetUserReadOnlyData"] boolValue];
    
    if ([properties objectForKey:@"UserReadOnlyDataKeys"]){
    NSArray* member_list = [properties objectForKey:@"UserReadOnlyDataKeys"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.UserReadOnlyDataKeys = [mutable_storage copy];
}

    
    self.GetCharacterInventories = [[properties valueForKey:@"GetCharacterInventories"] boolValue];
    
    self.GetCharacterList = [[properties valueForKey:@"GetCharacterList"] boolValue];
    
    self.GetTitleData = [[properties valueForKey:@"GetTitleData"] boolValue];
    
    if ([properties objectForKey:@"TitleDataKeys"]){
    NSArray* member_list = [properties objectForKey:@"TitleDataKeys"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.TitleDataKeys = [mutable_storage copy];
}

    
    self.GetPlayerStatistics = [[properties valueForKey:@"GetPlayerStatistics"] boolValue];
    
    if ([properties objectForKey:@"PlayerStatisticNames"]){
    NSArray* member_list = [properties objectForKey:@"PlayerStatisticNames"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.PlayerStatisticNames = [mutable_storage copy];
}

    
    self.GetPlayerProfile = [[properties valueForKey:@"GetPlayerProfile"] boolValue];
    
    self.ProfileConstraints = [[PlayerProfileViewConstraints new] initWithDictionary:[properties objectForKey:@"ProfileConstraints"]];
    

    return self;
}
@end
@implementation GetPlayerCombinedInfoResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.InfoResultPayload = [[GetPlayerCombinedInfoResultPayload new] initWithDictionary:[properties objectForKey:@"InfoResultPayload"]];
    

    return self;
}
@end
@implementation GetPlayerCombinedInfoResultPayload


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AccountInfo = [[UserAccountInfo new] initWithDictionary:[properties objectForKey:@"AccountInfo"]];
    
    if ([properties objectForKey:@"UserInventory"]){
    NSArray* member_list = [properties objectForKey:@"UserInventory"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ItemInstance new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.UserInventory = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"UserVirtualCurrency"]){
    NSDictionary* member_list = [properties objectForKey:@"UserVirtualCurrency"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.UserVirtualCurrency = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"UserVirtualCurrencyRechargeTimes"]){
    NSDictionary* member_list = [properties objectForKey:@"UserVirtualCurrencyRechargeTimes"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[VirtualCurrencyRechargeTime new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.UserVirtualCurrencyRechargeTimes = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"UserData"]){
    NSDictionary* member_list = [properties objectForKey:@"UserData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[UserDataRecord new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.UserData = [mutable_storage copy];
}

    
    self.UserDataVersion = [properties valueForKey:@"UserDataVersion"];
    
    if ([properties objectForKey:@"UserReadOnlyData"]){
    NSDictionary* member_list = [properties objectForKey:@"UserReadOnlyData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[UserDataRecord new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.UserReadOnlyData = [mutable_storage copy];
}

    
    self.UserReadOnlyDataVersion = [properties valueForKey:@"UserReadOnlyDataVersion"];
    
    if ([properties objectForKey:@"CharacterList"]){
    NSArray* member_list = [properties objectForKey:@"CharacterList"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CharacterResult new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.CharacterList = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"CharacterInventories"]){
    NSArray* member_list = [properties objectForKey:@"CharacterInventories"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CharacterInventory new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.CharacterInventories = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"TitleData"]){
    NSDictionary* member_list = [properties objectForKey:@"TitleData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.TitleData = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"PlayerStatistics"]){
    NSArray* member_list = [properties objectForKey:@"PlayerStatistics"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[StatisticValue new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.PlayerStatistics = [mutable_storage copy];
}

    
    self.PlayerProfile = [[PlayerProfileModel new] initWithDictionary:[properties objectForKey:@"PlayerProfile"]];
    

    return self;
}
@end
@implementation GetPlayerProfileRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.ProfileConstraints = [[PlayerProfileViewConstraints new] initWithDictionary:[properties objectForKey:@"ProfileConstraints"]];
    

    return self;
}
@end
@implementation GetPlayerProfileResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayerProfile = [[PlayerProfileModel new] initWithDictionary:[properties objectForKey:@"PlayerProfile"]];
    

    return self;
}
@end
@implementation GetPlayerSegmentsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation GetPlayerSegmentsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Segments"]){
    NSArray* member_list = [properties objectForKey:@"Segments"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GetSegmentResult new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Segments = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayerStatisticsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"StatisticNames"]){
    NSArray* member_list = [properties objectForKey:@"StatisticNames"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.StatisticNames = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"StatisticNameVersions"]){
    NSArray* member_list = [properties objectForKey:@"StatisticNameVersions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[StatisticNameVersion new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.StatisticNameVersions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayerStatisticsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Statistics"]){
    NSArray* member_list = [properties objectForKey:@"Statistics"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[StatisticValue new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Statistics = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayerStatisticVersionsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    

    return self;
}
@end
@implementation GetPlayerStatisticVersionsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"StatisticVersions"]){
    NSArray* member_list = [properties objectForKey:@"StatisticVersions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[PlayerStatisticVersion new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.StatisticVersions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayerTagsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.Namespace = [properties valueForKey:@"Namespace"];
    

    return self;
}
@end
@implementation GetPlayerTagsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
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
@implementation GetPlayerTradesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.StatusFilter = (TradeStatus)[properties valueForKey:@"StatusFilter"];
    

    return self;
}
@end
@implementation GetPlayerTradesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"OpenedTrades"]){
    NSArray* member_list = [properties objectForKey:@"OpenedTrades"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[TradeInfo new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.OpenedTrades = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"AcceptedTrades"]){
    NSArray* member_list = [properties objectForKey:@"AcceptedTrades"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[TradeInfo new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.AcceptedTrades = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromFacebookIDsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"FacebookIDs"]){
    NSArray* member_list = [properties objectForKey:@"FacebookIDs"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.FacebookIDs = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromFacebookIDsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSArray* member_list = [properties objectForKey:@"Data"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[FacebookPlayFabIdPair new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Data = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromGameCenterIDsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"GameCenterIDs"]){
    NSArray* member_list = [properties objectForKey:@"GameCenterIDs"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.GameCenterIDs = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromGameCenterIDsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSArray* member_list = [properties objectForKey:@"Data"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GameCenterPlayFabIdPair new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Data = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromGenericIDsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"GenericIDs"]){
    NSArray* member_list = [properties objectForKey:@"GenericIDs"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GenericServiceId new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GenericIDs = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromGenericIDsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSArray* member_list = [properties objectForKey:@"Data"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GenericPlayFabIdPair new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Data = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromGoogleIDsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"GoogleIDs"]){
    NSArray* member_list = [properties objectForKey:@"GoogleIDs"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.GoogleIDs = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromGoogleIDsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSArray* member_list = [properties objectForKey:@"Data"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GooglePlayFabIdPair new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Data = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromKongregateIDsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"KongregateIDs"]){
    NSArray* member_list = [properties objectForKey:@"KongregateIDs"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.KongregateIDs = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromKongregateIDsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSArray* member_list = [properties objectForKey:@"Data"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[KongregatePlayFabIdPair new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Data = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromSteamIDsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"SteamStringIDs"]){
    NSArray* member_list = [properties objectForKey:@"SteamStringIDs"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.SteamStringIDs = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromSteamIDsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSArray* member_list = [properties objectForKey:@"Data"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[SteamPlayFabIdPair new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Data = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromTwitchIDsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"TwitchIds"]){
    NSArray* member_list = [properties objectForKey:@"TwitchIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.TwitchIds = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPlayFabIDsFromTwitchIDsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSArray* member_list = [properties objectForKey:@"Data"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[TwitchPlayFabIdPair new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Data = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPublisherDataRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Keys"]){
    NSArray* member_list = [properties objectForKey:@"Keys"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Keys = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPublisherDataResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSDictionary* member_list = [properties objectForKey:@"Data"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Data = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetPurchaseRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OrderId = [properties valueForKey:@"OrderId"];
    

    return self;
}
@end
@implementation GetPurchaseResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OrderId = [properties valueForKey:@"OrderId"];
    
    self.PaymentProvider = [properties valueForKey:@"PaymentProvider"];
    
    self.TransactionId = [properties valueForKey:@"TransactionId"];
    
    self.TransactionStatus = [properties valueForKey:@"TransactionStatus"];
    
    self.PurchaseDate = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"PurchaseDate"]];
    

    return self;
}
@end
@implementation GetSegmentResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Name = [properties valueForKey:@"Name"];
    
    self.ABTestParent = [properties valueForKey:@"ABTestParent"];
    

    return self;
}
@end
@implementation GetSharedGroupDataRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.SharedGroupId = [properties valueForKey:@"SharedGroupId"];
    
    if ([properties objectForKey:@"Keys"]){
    NSArray* member_list = [properties objectForKey:@"Keys"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Keys = [mutable_storage copy];
}

    
    self.GetMembers = [[properties valueForKey:@"GetMembers"] boolValue];
    

    return self;
}
@end
@implementation GetSharedGroupDataResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSDictionary* member_list = [properties objectForKey:@"Data"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[SharedGroupDataRecord new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Data = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Members = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetStoreItemsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    
    self.StoreId = [properties valueForKey:@"StoreId"];
    

    return self;
}
@end
@implementation GetStoreItemsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Store"]){
    NSArray* member_list = [properties objectForKey:@"Store"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[StoreItem new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Store = [mutable_storage copy];
}

    
    self.Source = (SourceType)[properties valueForKey:@"Source"];
    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    
    self.StoreId = [properties valueForKey:@"StoreId"];
    
    self.MarketingData = [[StoreMarketingModel new] initWithDictionary:[properties objectForKey:@"MarketingData"]];
    

    return self;
}
@end
@implementation GetTimeRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation GetTimeResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Time = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Time"]];
    

    return self;
}
@end
@implementation GetTitleDataRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Keys"]){
    NSArray* member_list = [properties objectForKey:@"Keys"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Keys = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetTitleDataResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSDictionary* member_list = [properties objectForKey:@"Data"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Data = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetTitleNewsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Count = [properties valueForKey:@"Count"];
    

    return self;
}
@end
@implementation GetTitleNewsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"News"]){
    NSArray* member_list = [properties objectForKey:@"News"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[TitleNewsItem new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.News = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetTitlePublicKeyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.TitleSharedSecret = [properties valueForKey:@"TitleSharedSecret"];
    

    return self;
}
@end
@implementation GetTitlePublicKeyResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.RSAPublicKey = [properties valueForKey:@"RSAPublicKey"];
    

    return self;
}
@end
@implementation GetTradeStatusRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OfferingPlayerId = [properties valueForKey:@"OfferingPlayerId"];
    
    self.TradeId = [properties valueForKey:@"TradeId"];
    

    return self;
}
@end
@implementation GetTradeStatusResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Trade = [[TradeInfo new] initWithDictionary:[properties objectForKey:@"Trade"]];
    

    return self;
}
@end
@implementation GetUserDataRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Keys"]){
    NSArray* member_list = [properties objectForKey:@"Keys"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Keys = [mutable_storage copy];
}

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.IfChangedFromDataVersion = [properties valueForKey:@"IfChangedFromDataVersion"];
    

    return self;
}
@end
@implementation GetUserDataResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSDictionary* member_list = [properties objectForKey:@"Data"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[UserDataRecord new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Data = [mutable_storage copy];
}

    
    self.DataVersion = [properties valueForKey:@"DataVersion"];
    

    return self;
}
@end
@implementation GetUserInventoryRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation GetUserInventoryResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Inventory"]){
    NSArray* member_list = [properties objectForKey:@"Inventory"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ItemInstance new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Inventory = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"VirtualCurrency"]){
    NSDictionary* member_list = [properties objectForKey:@"VirtualCurrency"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.VirtualCurrency = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"VirtualCurrencyRechargeTimes"]){
    NSDictionary* member_list = [properties objectForKey:@"VirtualCurrencyRechargeTimes"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[VirtualCurrencyRechargeTime new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.VirtualCurrencyRechargeTimes = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetWindowsHelloChallengeRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.PublicKeyHint = [properties valueForKey:@"PublicKeyHint"];
    

    return self;
}
@end
@implementation GetWindowsHelloChallengeResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Challenge = [properties valueForKey:@"Challenge"];
    

    return self;
}
@end
@implementation GooglePlayFabIdPair


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.GoogleId = [properties valueForKey:@"GoogleId"];
    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    

    return self;
}
@end
@implementation GrantCharacterToUserRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    
    self.ItemId = [properties valueForKey:@"ItemId"];
    
    self.CharacterName = [properties valueForKey:@"CharacterName"];
    

    return self;
}
@end
@implementation GrantCharacterToUserResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    self.CharacterType = [properties valueForKey:@"CharacterType"];
    
    self.Result = [[properties valueForKey:@"Result"] boolValue];
    

    return self;
}
@end
@implementation ItemInstance


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ItemId = [properties valueForKey:@"ItemId"];
    
    self.ItemInstanceId = [properties valueForKey:@"ItemInstanceId"];
    
    self.ItemClass = [properties valueForKey:@"ItemClass"];
    
    self.PurchaseDate = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"PurchaseDate"]];
    
    self.Expiration = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Expiration"]];
    
    self.RemainingUses = [properties valueForKey:@"RemainingUses"];
    
    self.UsesIncrementedBy = [properties valueForKey:@"UsesIncrementedBy"];
    
    self.Annotation = [properties valueForKey:@"Annotation"];
    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    
    self.BundleParent = [properties valueForKey:@"BundleParent"];
    
    self.DisplayName = [properties valueForKey:@"DisplayName"];
    
    self.UnitCurrency = [properties valueForKey:@"UnitCurrency"];
    
    self.UnitPrice = [properties valueForKey:@"UnitPrice"];
    
    if ([properties objectForKey:@"BundleContents"]){
    NSArray* member_list = [properties objectForKey:@"BundleContents"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.BundleContents = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"CustomData"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomData"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomData = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ItemPurchaseRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ItemId = [properties valueForKey:@"ItemId"];
    
    self.Quantity = [properties valueForKey:@"Quantity"];
    
    self.Annotation = [properties valueForKey:@"Annotation"];
    
    if ([properties objectForKey:@"UpgradeFromItems"]){
    NSArray* member_list = [properties objectForKey:@"UpgradeFromItems"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.UpgradeFromItems = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation KongregatePlayFabIdPair


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.KongregateId = [properties valueForKey:@"KongregateId"];
    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    

    return self;
}
@end
@implementation LinkAndroidDeviceIDRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AndroidDeviceId = [properties valueForKey:@"AndroidDeviceId"];
    
    self.OS = [properties valueForKey:@"OS"];
    
    self.AndroidDevice = [properties valueForKey:@"AndroidDevice"];
    
    self.ForceLink = [[properties valueForKey:@"ForceLink"] boolValue];
    

    return self;
}
@end
@implementation LinkAndroidDeviceIDResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation LinkCustomIDRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CustomId = [properties valueForKey:@"CustomId"];
    
    self.ForceLink = [[properties valueForKey:@"ForceLink"] boolValue];
    

    return self;
}
@end
@implementation LinkCustomIDResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation LinkedPlatformAccountModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Platform = (LoginIdentityProvider)[properties valueForKey:@"Platform"];
    
    self.PlatformUserId = [properties valueForKey:@"PlatformUserId"];
    
    self.Username = [properties valueForKey:@"Username"];
    
    self.Email = [properties valueForKey:@"Email"];
    

    return self;
}
@end
@implementation LinkFacebookAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AccessToken = [properties valueForKey:@"AccessToken"];
    
    self.ForceLink = [[properties valueForKey:@"ForceLink"] boolValue];
    

    return self;
}
@end
@implementation LinkFacebookAccountResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation LinkGameCenterAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.GameCenterId = [properties valueForKey:@"GameCenterId"];
    
    self.ForceLink = [[properties valueForKey:@"ForceLink"] boolValue];
    

    return self;
}
@end
@implementation LinkGameCenterAccountResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation LinkGoogleAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ServerAuthCode = [properties valueForKey:@"ServerAuthCode"];
    
    self.ForceLink = [[properties valueForKey:@"ForceLink"] boolValue];
    

    return self;
}
@end
@implementation LinkGoogleAccountResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation LinkIOSDeviceIDRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DeviceId = [properties valueForKey:@"DeviceId"];
    
    self.OS = [properties valueForKey:@"OS"];
    
    self.DeviceModel = [properties valueForKey:@"DeviceModel"];
    
    self.ForceLink = [[properties valueForKey:@"ForceLink"] boolValue];
    

    return self;
}
@end
@implementation LinkIOSDeviceIDResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation LinkKongregateAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.KongregateId = [properties valueForKey:@"KongregateId"];
    
    self.AuthTicket = [properties valueForKey:@"AuthTicket"];
    
    self.ForceLink = [[properties valueForKey:@"ForceLink"] boolValue];
    

    return self;
}
@end
@implementation LinkKongregateAccountResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation LinkSteamAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.SteamTicket = [properties valueForKey:@"SteamTicket"];
    
    self.ForceLink = [[properties valueForKey:@"ForceLink"] boolValue];
    

    return self;
}
@end
@implementation LinkSteamAccountResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation LinkTwitchAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AccessToken = [properties valueForKey:@"AccessToken"];
    
    self.ForceLink = [[properties valueForKey:@"ForceLink"] boolValue];
    

    return self;
}
@end
@implementation LinkTwitchAccountResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation LinkWindowsHelloAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.UserName = [properties valueForKey:@"UserName"];
    
    self.PublicKey = [properties valueForKey:@"PublicKey"];
    
    self.DeviceName = [properties valueForKey:@"DeviceName"];
    
    self.ForceLink = [[properties valueForKey:@"ForceLink"] boolValue];
    

    return self;
}
@end
@implementation LinkWindowsHelloAccountResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation ListUsersCharactersRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    

    return self;
}
@end
@implementation ListUsersCharactersResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Characters"]){
    NSArray* member_list = [properties objectForKey:@"Characters"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CharacterResult new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Characters = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation LocationModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfContinentCode = (ContinentCode)[properties valueForKey:@"ContinentCode"];
    
    self.pfCountryCode = (CountryCode)[properties valueForKey:@"CountryCode"];
    
    self.City = [properties valueForKey:@"City"];
    
    self.Latitude = [properties valueForKey:@"Latitude"];
    
    self.Longitude = [properties valueForKey:@"Longitude"];
    

    return self;
}
@end
@implementation LoginResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.SessionTicket = [properties valueForKey:@"SessionTicket"];
    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.NewlyCreated = [[properties valueForKey:@"NewlyCreated"] boolValue];
    
    self.SettingsForUser = [[UserSettings new] initWithDictionary:[properties objectForKey:@"SettingsForUser"]];
    
    self.LastLoginTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastLoginTime"]];
    
    self.InfoResultPayload = [[GetPlayerCombinedInfoResultPayload new] initWithDictionary:[properties objectForKey:@"InfoResultPayload"]];
    

    return self;
}
@end
@implementation LoginWithAndroidDeviceIDRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AndroidDeviceId = [properties valueForKey:@"AndroidDeviceId"];
    
    self.OS = [properties valueForKey:@"OS"];
    
    self.AndroidDevice = [properties valueForKey:@"AndroidDevice"];
    
    self.CreateAccount = [[properties valueForKey:@"CreateAccount"] boolValue];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.EncryptedRequest = [properties valueForKey:@"EncryptedRequest"];
    
    self.PlayerSecret = [properties valueForKey:@"PlayerSecret"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation LoginWithCustomIDRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CustomId = [properties valueForKey:@"CustomId"];
    
    self.CreateAccount = [[properties valueForKey:@"CreateAccount"] boolValue];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.EncryptedRequest = [properties valueForKey:@"EncryptedRequest"];
    
    self.PlayerSecret = [properties valueForKey:@"PlayerSecret"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation LoginWithEmailAddressRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.Email = [properties valueForKey:@"Email"];
    
    self.Password = [properties valueForKey:@"Password"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation LoginWithFacebookRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AccessToken = [properties valueForKey:@"AccessToken"];
    
    self.CreateAccount = [[properties valueForKey:@"CreateAccount"] boolValue];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.EncryptedRequest = [properties valueForKey:@"EncryptedRequest"];
    
    self.PlayerSecret = [properties valueForKey:@"PlayerSecret"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation LoginWithGameCenterRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayerId = [properties valueForKey:@"PlayerId"];
    
    self.CreateAccount = [[properties valueForKey:@"CreateAccount"] boolValue];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.EncryptedRequest = [properties valueForKey:@"EncryptedRequest"];
    
    self.PlayerSecret = [properties valueForKey:@"PlayerSecret"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation LoginWithGoogleAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ServerAuthCode = [properties valueForKey:@"ServerAuthCode"];
    
    self.CreateAccount = [[properties valueForKey:@"CreateAccount"] boolValue];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.EncryptedRequest = [properties valueForKey:@"EncryptedRequest"];
    
    self.PlayerSecret = [properties valueForKey:@"PlayerSecret"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation LoginWithIOSDeviceIDRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DeviceId = [properties valueForKey:@"DeviceId"];
    
    self.OS = [properties valueForKey:@"OS"];
    
    self.DeviceModel = [properties valueForKey:@"DeviceModel"];
    
    self.CreateAccount = [[properties valueForKey:@"CreateAccount"] boolValue];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.EncryptedRequest = [properties valueForKey:@"EncryptedRequest"];
    
    self.PlayerSecret = [properties valueForKey:@"PlayerSecret"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation LoginWithKongregateRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.KongregateId = [properties valueForKey:@"KongregateId"];
    
    self.AuthTicket = [properties valueForKey:@"AuthTicket"];
    
    self.CreateAccount = [[properties valueForKey:@"CreateAccount"] boolValue];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.EncryptedRequest = [properties valueForKey:@"EncryptedRequest"];
    
    self.PlayerSecret = [properties valueForKey:@"PlayerSecret"];
    

    return self;
}
@end
@implementation LoginWithPlayFabRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.Username = [properties valueForKey:@"Username"];
    
    self.Password = [properties valueForKey:@"Password"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation LoginWithSteamRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.SteamTicket = [properties valueForKey:@"SteamTicket"];
    
    self.CreateAccount = [[properties valueForKey:@"CreateAccount"] boolValue];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.EncryptedRequest = [properties valueForKey:@"EncryptedRequest"];
    
    self.PlayerSecret = [properties valueForKey:@"PlayerSecret"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation LoginWithTwitchRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AccessToken = [properties valueForKey:@"AccessToken"];
    
    self.CreateAccount = [[properties valueForKey:@"CreateAccount"] boolValue];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.EncryptedRequest = [properties valueForKey:@"EncryptedRequest"];
    
    self.PlayerSecret = [properties valueForKey:@"PlayerSecret"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation LoginWithWindowsHelloRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.ChallengeSignature = [properties valueForKey:@"ChallengeSignature"];
    
    self.PublicKeyHint = [properties valueForKey:@"PublicKeyHint"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation LogStatement


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Level = [properties valueForKey:@"Level"];
    
    self.Message = [properties valueForKey:@"Message"];
    
    self.Data = [properties valueForKey:@"Data"];
    

    return self;
}
@end
@implementation MatchmakeRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildVersion = [properties valueForKey:@"BuildVersion"];
    
    self.pfRegion = (Region)[properties valueForKey:@"Region"];
    
    self.GameMode = [properties valueForKey:@"GameMode"];
    
    self.LobbyId = [properties valueForKey:@"LobbyId"];
    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    self.StartNewIfNoneFound = [[properties valueForKey:@"StartNewIfNoneFound"] boolValue];
    
    self.TagFilter = [[CollectionFilter new] initWithDictionary:[properties objectForKey:@"TagFilter"]];
    

    return self;
}
@end
@implementation MatchmakeResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.LobbyID = [properties valueForKey:@"LobbyID"];
    
    self.ServerHostname = [properties valueForKey:@"ServerHostname"];
    
    self.ServerPort = [properties valueForKey:@"ServerPort"];
    
    self.Ticket = [properties valueForKey:@"Ticket"];
    
    self.Expires = [properties valueForKey:@"Expires"];
    
    self.PollWaitTimeMS = [properties valueForKey:@"PollWaitTimeMS"];
    
    self.Status = (MatchmakeStatus)[properties valueForKey:@"Status"];
    

    return self;
}
@end
@implementation ModifyUserVirtualCurrencyResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.VirtualCurrency = [properties valueForKey:@"VirtualCurrency"];
    
    self.BalanceChange = [properties valueForKey:@"BalanceChange"];
    
    self.Balance = [properties valueForKey:@"Balance"];
    

    return self;
}
@end
@implementation NameIdentifier


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Name = [properties valueForKey:@"Name"];
    
    self.Id = [properties valueForKey:@"Id"];
    

    return self;
}
@end
@implementation OpenTradeRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"OfferedInventoryInstanceIds"]){
    NSArray* member_list = [properties objectForKey:@"OfferedInventoryInstanceIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.OfferedInventoryInstanceIds = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"RequestedCatalogItemIds"]){
    NSArray* member_list = [properties objectForKey:@"RequestedCatalogItemIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.RequestedCatalogItemIds = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"AllowedPlayerIds"]){
    NSArray* member_list = [properties objectForKey:@"AllowedPlayerIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.AllowedPlayerIds = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation OpenTradeResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Trade = [[TradeInfo new] initWithDictionary:[properties objectForKey:@"Trade"]];
    

    return self;
}
@end
@implementation PayForPurchaseRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OrderId = [properties valueForKey:@"OrderId"];
    
    self.ProviderName = [properties valueForKey:@"ProviderName"];
    
    self.Currency = [properties valueForKey:@"Currency"];
    
    self.ProviderTransactionId = [properties valueForKey:@"ProviderTransactionId"];
    

    return self;
}
@end
@implementation PayForPurchaseResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OrderId = [properties valueForKey:@"OrderId"];
    
    self.Status = (TransactionStatus)[properties valueForKey:@"Status"];
    
    if ([properties objectForKey:@"VCAmount"]){
    NSDictionary* member_list = [properties objectForKey:@"VCAmount"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.VCAmount = [mutable_storage copy];
}

    
    self.PurchaseCurrency = [properties valueForKey:@"PurchaseCurrency"];
    
    self.PurchasePrice = [properties valueForKey:@"PurchasePrice"];
    
    self.CreditApplied = [properties valueForKey:@"CreditApplied"];
    
    self.ProviderData = [properties valueForKey:@"ProviderData"];
    
    self.PurchaseConfirmationPageURL = [properties valueForKey:@"PurchaseConfirmationPageURL"];
    
    if ([properties objectForKey:@"VirtualCurrency"]){
    NSDictionary* member_list = [properties objectForKey:@"VirtualCurrency"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.VirtualCurrency = [mutable_storage copy];
}

    
    self.ProviderToken = [properties valueForKey:@"ProviderToken"];
    

    return self;
}
@end
@implementation PaymentOption


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Currency = [properties valueForKey:@"Currency"];
    
    self.ProviderName = [properties valueForKey:@"ProviderName"];
    
    self.Price = [properties valueForKey:@"Price"];
    
    self.StoreCredit = [properties valueForKey:@"StoreCredit"];
    

    return self;
}
@end
@implementation PlayerLeaderboardEntry


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.DisplayName = [properties valueForKey:@"DisplayName"];
    
    self.StatValue = [properties valueForKey:@"StatValue"];
    
    self.Position = [properties valueForKey:@"Position"];
    
    self.Profile = [[PlayerProfileModel new] initWithDictionary:[properties objectForKey:@"Profile"]];
    

    return self;
}
@end
@implementation PlayerProfileModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PublisherId = [properties valueForKey:@"PublisherId"];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.PlayerId = [properties valueForKey:@"PlayerId"];
    
    self.Created = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Created"]];
    
    self.Origination = (LoginIdentityProvider)[properties valueForKey:@"Origination"];
    
    self.LastLogin = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastLogin"]];
    
    self.BannedUntil = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"BannedUntil"]];
    
    if ([properties objectForKey:@"Locations"]){
    NSArray* member_list = [properties objectForKey:@"Locations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[LocationModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Locations = [mutable_storage copy];
}

    
    self.DisplayName = [properties valueForKey:@"DisplayName"];
    
    self.AvatarUrl = [properties valueForKey:@"AvatarUrl"];
    
    if ([properties objectForKey:@"Tags"]){
    NSArray* member_list = [properties objectForKey:@"Tags"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[TagModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Tags = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"PushNotificationRegistrations"]){
    NSArray* member_list = [properties objectForKey:@"PushNotificationRegistrations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[PushNotificationRegistrationModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.PushNotificationRegistrations = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"LinkedAccounts"]){
    NSArray* member_list = [properties objectForKey:@"LinkedAccounts"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[LinkedPlatformAccountModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.LinkedAccounts = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"AdCampaignAttributions"]){
    NSArray* member_list = [properties objectForKey:@"AdCampaignAttributions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[AdCampaignAttributionModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.AdCampaignAttributions = [mutable_storage copy];
}

    
    self.TotalValueToDateInUSD = [properties valueForKey:@"TotalValueToDateInUSD"];
    
    if ([properties objectForKey:@"ValuesToDate"]){
    NSArray* member_list = [properties objectForKey:@"ValuesToDate"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ValueToDateModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.ValuesToDate = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"VirtualCurrencyBalances"]){
    NSArray* member_list = [properties objectForKey:@"VirtualCurrencyBalances"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[VirtualCurrencyBalanceModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.VirtualCurrencyBalances = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Statistics"]){
    NSArray* member_list = [properties objectForKey:@"Statistics"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[StatisticModel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Statistics = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation PlayerProfileViewConstraints


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ShowDisplayName = [[properties valueForKey:@"ShowDisplayName"] boolValue];
    
    self.ShowCreated = [[properties valueForKey:@"ShowCreated"] boolValue];
    
    self.ShowOrigination = [[properties valueForKey:@"ShowOrigination"] boolValue];
    
    self.ShowLastLogin = [[properties valueForKey:@"ShowLastLogin"] boolValue];
    
    self.ShowBannedUntil = [[properties valueForKey:@"ShowBannedUntil"] boolValue];
    
    self.ShowStatistics = [[properties valueForKey:@"ShowStatistics"] boolValue];
    
    self.ShowCampaignAttributions = [[properties valueForKey:@"ShowCampaignAttributions"] boolValue];
    
    self.ShowPushNotificationRegistrations = [[properties valueForKey:@"ShowPushNotificationRegistrations"] boolValue];
    
    self.ShowLinkedAccounts = [[properties valueForKey:@"ShowLinkedAccounts"] boolValue];
    
    self.ShowTotalValueToDateInUsd = [[properties valueForKey:@"ShowTotalValueToDateInUsd"] boolValue];
    
    self.ShowValuesToDate = [[properties valueForKey:@"ShowValuesToDate"] boolValue];
    
    self.ShowTags = [[properties valueForKey:@"ShowTags"] boolValue];
    
    self.ShowLocations = [[properties valueForKey:@"ShowLocations"] boolValue];
    
    self.ShowAvatarUrl = [[properties valueForKey:@"ShowAvatarUrl"] boolValue];
    

    return self;
}
@end
@implementation PlayerStatisticVersion


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.Version = [properties valueForKey:@"Version"];
    
    self.ScheduledActivationTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"ScheduledActivationTime"]];
    
    self.ActivationTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"ActivationTime"]];
    
    self.ScheduledDeactivationTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"ScheduledDeactivationTime"]];
    
    self.DeactivationTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"DeactivationTime"]];
    

    return self;
}
@end
@implementation PurchaseItemRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ItemId = [properties valueForKey:@"ItemId"];
    
    self.VirtualCurrency = [properties valueForKey:@"VirtualCurrency"];
    
    self.Price = [properties valueForKey:@"Price"];
    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    
    self.StoreId = [properties valueForKey:@"StoreId"];
    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    

    return self;
}
@end
@implementation PurchaseItemResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Items"]){
    NSArray* member_list = [properties objectForKey:@"Items"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ItemInstance new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Items = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation PushNotificationRegistrationModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Platform = (PushNotificationPlatform)[properties valueForKey:@"Platform"];
    
    self.NotificationEndpointARN = [properties valueForKey:@"NotificationEndpointARN"];
    

    return self;
}
@end
@implementation RedeemCouponRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CouponCode = [properties valueForKey:@"CouponCode"];
    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    

    return self;
}
@end
@implementation RedeemCouponResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"GrantedItems"]){
    NSArray* member_list = [properties objectForKey:@"GrantedItems"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ItemInstance new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GrantedItems = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation RegionInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfRegion = (Region)[properties valueForKey:@"Region"];
    
    self.Name = [properties valueForKey:@"Name"];
    
    self.Available = [[properties valueForKey:@"Available"] boolValue];
    
    self.PingUrl = [properties valueForKey:@"PingUrl"];
    

    return self;
}
@end
@implementation RegisterForIOSPushNotificationRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DeviceToken = [properties valueForKey:@"DeviceToken"];
    
    self.SendPushNotificationConfirmation = [[properties valueForKey:@"SendPushNotificationConfirmation"] boolValue];
    
    self.ConfirmationMessage = [properties valueForKey:@"ConfirmationMessage"];
    

    return self;
}
@end
@implementation RegisterForIOSPushNotificationResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation RegisterPlayFabUserRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Username = [properties valueForKey:@"Username"];
    
    self.Email = [properties valueForKey:@"Email"];
    
    self.Password = [properties valueForKey:@"Password"];
    
    self.RequireBothUsernameAndEmail = [[properties valueForKey:@"RequireBothUsernameAndEmail"] boolValue];
    
    self.DisplayName = [properties valueForKey:@"DisplayName"];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.EncryptedRequest = [properties valueForKey:@"EncryptedRequest"];
    
    self.PlayerSecret = [properties valueForKey:@"PlayerSecret"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation RegisterPlayFabUserResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.SessionTicket = [properties valueForKey:@"SessionTicket"];
    
    self.Username = [properties valueForKey:@"Username"];
    
    self.SettingsForUser = [[UserSettings new] initWithDictionary:[properties objectForKey:@"SettingsForUser"]];
    

    return self;
}
@end
@implementation RegisterWithWindowsHelloRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.UserName = [properties valueForKey:@"UserName"];
    
    self.PublicKey = [properties valueForKey:@"PublicKey"];
    
    self.DeviceName = [properties valueForKey:@"DeviceName"];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    
    self.EncryptedRequest = [properties valueForKey:@"EncryptedRequest"];
    
    self.PlayerSecret = [properties valueForKey:@"PlayerSecret"];
    
    self.InfoRequestParameters = [[GetPlayerCombinedInfoRequestParams new] initWithDictionary:[properties objectForKey:@"InfoRequestParameters"]];
    

    return self;
}
@end
@implementation RemoveFriendRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FriendPlayFabId = [properties valueForKey:@"FriendPlayFabId"];
    

    return self;
}
@end
@implementation RemoveFriendResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation RemoveGenericIDRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.GenericId = [[GenericServiceId new] initWithDictionary:[properties objectForKey:@"GenericId"]];
    

    return self;
}
@end
@implementation RemoveGenericIDResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation RemoveSharedGroupMembersRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.SharedGroupId = [properties valueForKey:@"SharedGroupId"];
    
    if ([properties objectForKey:@"PlayFabIds"]){
    NSArray* member_list = [properties objectForKey:@"PlayFabIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.PlayFabIds = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation RemoveSharedGroupMembersResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation ReportPlayerClientRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ReporteeId = [properties valueForKey:@"ReporteeId"];
    
    self.Comment = [properties valueForKey:@"Comment"];
    

    return self;
}
@end
@implementation ReportPlayerClientResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Updated = [[properties valueForKey:@"Updated"] boolValue];
    
    self.SubmissionsRemaining = [properties valueForKey:@"SubmissionsRemaining"];
    

    return self;
}
@end
@implementation RestoreIOSPurchasesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ReceiptData = [properties valueForKey:@"ReceiptData"];
    

    return self;
}
@end
@implementation RestoreIOSPurchasesResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation ScriptExecutionError


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
@implementation SendAccountRecoveryEmailRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Email = [properties valueForKey:@"Email"];
    
    self.TitleId = [properties valueForKey:@"TitleId"];
    

    return self;
}
@end
@implementation SendAccountRecoveryEmailResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation SetFriendTagsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FriendPlayFabId = [properties valueForKey:@"FriendPlayFabId"];
    
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
@implementation SetFriendTagsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation SetPlayerSecretRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayerSecret = [properties valueForKey:@"PlayerSecret"];
    
    self.EncryptedRequest = [properties valueForKey:@"EncryptedRequest"];
    

    return self;
}
@end
@implementation SetPlayerSecretResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation SharedGroupDataRecord


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Value = [properties valueForKey:@"Value"];
    
    self.LastUpdatedBy = [properties valueForKey:@"LastUpdatedBy"];
    
    self.LastUpdated = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastUpdated"]];
    
    self.Permission = (UserDataPermission)[properties valueForKey:@"Permission"];
    

    return self;
}
@end
@implementation StartGameRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.BuildVersion = [properties valueForKey:@"BuildVersion"];
    
    self.pfRegion = (Region)[properties valueForKey:@"Region"];
    
    self.GameMode = [properties valueForKey:@"GameMode"];
    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    self.CustomCommandLineData = [properties valueForKey:@"CustomCommandLineData"];
    

    return self;
}
@end
@implementation StartGameResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.LobbyID = [properties valueForKey:@"LobbyID"];
    
    self.ServerHostname = [properties valueForKey:@"ServerHostname"];
    
    self.ServerPort = [properties valueForKey:@"ServerPort"];
    
    self.Ticket = [properties valueForKey:@"Ticket"];
    
    self.Expires = [properties valueForKey:@"Expires"];
    
    self.Password = [properties valueForKey:@"Password"];
    

    return self;
}
@end
@implementation StartPurchaseRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    
    self.StoreId = [properties valueForKey:@"StoreId"];
    
    if ([properties objectForKey:@"Items"]){
    NSArray* member_list = [properties objectForKey:@"Items"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ItemPurchaseRequest new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Items = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation StartPurchaseResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OrderId = [properties valueForKey:@"OrderId"];
    
    if ([properties objectForKey:@"Contents"]){
    NSArray* member_list = [properties objectForKey:@"Contents"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[CartItem new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Contents = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"PaymentOptions"]){
    NSArray* member_list = [properties objectForKey:@"PaymentOptions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[PaymentOption new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.PaymentOptions = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"VirtualCurrencyBalances"]){
    NSDictionary* member_list = [properties objectForKey:@"VirtualCurrencyBalances"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.VirtualCurrencyBalances = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation StatisticModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Name = [properties valueForKey:@"Name"];
    
    self.Version = [properties valueForKey:@"Version"];
    
    self.Value = [properties valueForKey:@"Value"];
    

    return self;
}
@end
@implementation StatisticNameVersion


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.Version = [properties valueForKey:@"Version"];
    

    return self;
}
@end
@implementation StatisticUpdate


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.Version = [properties valueForKey:@"Version"];
    
    self.Value = [properties valueForKey:@"Value"];
    

    return self;
}
@end
@implementation StatisticValue


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.StatisticName = [properties valueForKey:@"StatisticName"];
    
    self.Value = [properties valueForKey:@"Value"];
    
    self.Version = [properties valueForKey:@"Version"];
    

    return self;
}
@end
@implementation SteamPlayFabIdPair


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.SteamStringId = [properties valueForKey:@"SteamStringId"];
    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    

    return self;
}
@end
@implementation StoreItem


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ItemId = [properties valueForKey:@"ItemId"];
    
    if ([properties objectForKey:@"VirtualCurrencyPrices"]){
    NSDictionary* member_list = [properties objectForKey:@"VirtualCurrencyPrices"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.VirtualCurrencyPrices = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"RealCurrencyPrices"]){
    NSDictionary* member_list = [properties objectForKey:@"RealCurrencyPrices"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.RealCurrencyPrices = [mutable_storage copy];
}

    
    self.CustomData = [properties valueForKey:@"CustomData"];
    
    self.DisplayPosition = [properties valueForKey:@"DisplayPosition"];
    

    return self;
}
@end
@implementation StoreMarketingModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DisplayName = [properties valueForKey:@"DisplayName"];
    
    self.Description = [properties valueForKey:@"Description"];
    
    self.Metadata = [properties valueForKey:@"Metadata"];
    

    return self;
}
@end
@implementation SubtractUserVirtualCurrencyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.VirtualCurrency = [properties valueForKey:@"VirtualCurrency"];
    
    self.Amount = [properties valueForKey:@"Amount"];
    

    return self;
}
@end
@implementation TagModel


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
@implementation TitleNewsItem


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Timestamp = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Timestamp"]];
    
    self.NewsId = [properties valueForKey:@"NewsId"];
    
    self.Title = [properties valueForKey:@"Title"];
    
    self.Body = [properties valueForKey:@"Body"];
    

    return self;
}
@end
@implementation TradeInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Status = (TradeStatus)[properties valueForKey:@"Status"];
    
    self.TradeId = [properties valueForKey:@"TradeId"];
    
    self.OfferingPlayerId = [properties valueForKey:@"OfferingPlayerId"];
    
    if ([properties objectForKey:@"OfferedInventoryInstanceIds"]){
    NSArray* member_list = [properties objectForKey:@"OfferedInventoryInstanceIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.OfferedInventoryInstanceIds = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"OfferedCatalogItemIds"]){
    NSArray* member_list = [properties objectForKey:@"OfferedCatalogItemIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.OfferedCatalogItemIds = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"RequestedCatalogItemIds"]){
    NSArray* member_list = [properties objectForKey:@"RequestedCatalogItemIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.RequestedCatalogItemIds = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"AllowedPlayerIds"]){
    NSArray* member_list = [properties objectForKey:@"AllowedPlayerIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.AllowedPlayerIds = [mutable_storage copy];
}

    
    self.AcceptedPlayerId = [properties valueForKey:@"AcceptedPlayerId"];
    
    if ([properties objectForKey:@"AcceptedInventoryInstanceIds"]){
    NSArray* member_list = [properties objectForKey:@"AcceptedInventoryInstanceIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.AcceptedInventoryInstanceIds = [mutable_storage copy];
}

    
    self.OpenedAt = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"OpenedAt"]];
    
    self.FilledAt = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"FilledAt"]];
    
    self.CancelledAt = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"CancelledAt"]];
    
    self.InvalidatedAt = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"InvalidatedAt"]];
    

    return self;
}
@end
@implementation TwitchPlayFabIdPair


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.TwitchId = [properties valueForKey:@"TwitchId"];
    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    

    return self;
}
@end
@implementation UnlinkAndroidDeviceIDRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AndroidDeviceId = [properties valueForKey:@"AndroidDeviceId"];
    

    return self;
}
@end
@implementation UnlinkAndroidDeviceIDResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkCustomIDRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CustomId = [properties valueForKey:@"CustomId"];
    

    return self;
}
@end
@implementation UnlinkCustomIDResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkFacebookAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkFacebookAccountResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkGameCenterAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkGameCenterAccountResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkGoogleAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkGoogleAccountResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkIOSDeviceIDRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DeviceId = [properties valueForKey:@"DeviceId"];
    

    return self;
}
@end
@implementation UnlinkIOSDeviceIDResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkKongregateAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkKongregateAccountResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkSteamAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkSteamAccountResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkTwitchAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkTwitchAccountResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlinkWindowsHelloAccountRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PublicKeyHint = [properties valueForKey:@"PublicKeyHint"];
    

    return self;
}
@end
@implementation UnlinkWindowsHelloAccountResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UnlockContainerInstanceRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    self.ContainerItemInstanceId = [properties valueForKey:@"ContainerItemInstanceId"];
    
    self.KeyItemInstanceId = [properties valueForKey:@"KeyItemInstanceId"];
    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    

    return self;
}
@end
@implementation UnlockContainerItemRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ContainerItemId = [properties valueForKey:@"ContainerItemId"];
    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    

    return self;
}
@end
@implementation UnlockContainerItemResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.UnlockedItemInstanceId = [properties valueForKey:@"UnlockedItemInstanceId"];
    
    self.UnlockedWithItemInstanceId = [properties valueForKey:@"UnlockedWithItemInstanceId"];
    
    if ([properties objectForKey:@"GrantedItems"]){
    NSArray* member_list = [properties objectForKey:@"GrantedItems"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ItemInstance new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.GrantedItems = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"VirtualCurrency"]){
    NSDictionary* member_list = [properties objectForKey:@"VirtualCurrency"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.VirtualCurrency = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation UpdateAvatarUrlRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ImageUrl = [properties valueForKey:@"ImageUrl"];
    

    return self;
}
@end
@implementation UpdateCharacterDataRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    if ([properties objectForKey:@"Data"]){
    NSDictionary* member_list = [properties objectForKey:@"Data"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Data = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"KeysToRemove"]){
    NSArray* member_list = [properties objectForKey:@"KeysToRemove"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.KeysToRemove = [mutable_storage copy];
}

    
    self.Permission = (UserDataPermission)[properties valueForKey:@"Permission"];
    

    return self;
}
@end
@implementation UpdateCharacterDataResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DataVersion = [properties valueForKey:@"DataVersion"];
    

    return self;
}
@end
@implementation UpdateCharacterStatisticsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    if ([properties objectForKey:@"CharacterStatistics"]){
    NSDictionary* member_list = [properties objectForKey:@"CharacterStatistics"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CharacterStatistics = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation UpdateCharacterStatisticsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UpdatePlayerStatisticsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Statistics"]){
    NSArray* member_list = [properties objectForKey:@"Statistics"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[StatisticUpdate new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Statistics = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation UpdatePlayerStatisticsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UpdateSharedGroupDataRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.SharedGroupId = [properties valueForKey:@"SharedGroupId"];
    
    if ([properties objectForKey:@"Data"]){
    NSDictionary* member_list = [properties objectForKey:@"Data"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Data = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"KeysToRemove"]){
    NSArray* member_list = [properties objectForKey:@"KeysToRemove"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.KeysToRemove = [mutable_storage copy];
}

    
    self.Permission = (UserDataPermission)[properties valueForKey:@"Permission"];
    

    return self;
}
@end
@implementation UpdateSharedGroupDataResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation UpdateUserDataRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Data"]){
    NSDictionary* member_list = [properties objectForKey:@"Data"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Data = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"KeysToRemove"]){
    NSArray* member_list = [properties objectForKey:@"KeysToRemove"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.KeysToRemove = [mutable_storage copy];
}

    
    self.Permission = (UserDataPermission)[properties valueForKey:@"Permission"];
    

    return self;
}
@end
@implementation UpdateUserDataResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DataVersion = [properties valueForKey:@"DataVersion"];
    

    return self;
}
@end
@implementation UpdateUserTitleDisplayNameRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DisplayName = [properties valueForKey:@"DisplayName"];
    

    return self;
}
@end
@implementation UpdateUserTitleDisplayNameResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DisplayName = [properties valueForKey:@"DisplayName"];
    

    return self;
}
@end
@implementation UserAccountInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PlayFabId = [properties valueForKey:@"PlayFabId"];
    
    self.Created = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Created"]];
    
    self.Username = [properties valueForKey:@"Username"];
    
    self.TitleInfo = [[UserTitleInfo new] initWithDictionary:[properties objectForKey:@"TitleInfo"]];
    
    self.PrivateInfo = [[UserPrivateAccountInfo new] initWithDictionary:[properties objectForKey:@"PrivateInfo"]];
    
    self.FacebookInfo = [[UserFacebookInfo new] initWithDictionary:[properties objectForKey:@"FacebookInfo"]];
    
    self.SteamInfo = [[UserSteamInfo new] initWithDictionary:[properties objectForKey:@"SteamInfo"]];
    
    self.GameCenterInfo = [[UserGameCenterInfo new] initWithDictionary:[properties objectForKey:@"GameCenterInfo"]];
    
    self.IosDeviceInfo = [[UserIosDeviceInfo new] initWithDictionary:[properties objectForKey:@"IosDeviceInfo"]];
    
    self.AndroidDeviceInfo = [[UserAndroidDeviceInfo new] initWithDictionary:[properties objectForKey:@"AndroidDeviceInfo"]];
    
    self.KongregateInfo = [[UserKongregateInfo new] initWithDictionary:[properties objectForKey:@"KongregateInfo"]];
    
    self.TwitchInfo = [[UserTwitchInfo new] initWithDictionary:[properties objectForKey:@"TwitchInfo"]];
    
    self.PsnInfo = [[UserPsnInfo new] initWithDictionary:[properties objectForKey:@"PsnInfo"]];
    
    self.GoogleInfo = [[UserGoogleInfo new] initWithDictionary:[properties objectForKey:@"GoogleInfo"]];
    
    self.XboxInfo = [[UserXboxInfo new] initWithDictionary:[properties objectForKey:@"XboxInfo"]];
    
    self.CustomIdInfo = [[UserCustomIdInfo new] initWithDictionary:[properties objectForKey:@"CustomIdInfo"]];
    

    return self;
}
@end
@implementation UserAndroidDeviceInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AndroidDeviceId = [properties valueForKey:@"AndroidDeviceId"];
    

    return self;
}
@end
@implementation UserCustomIdInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CustomId = [properties valueForKey:@"CustomId"];
    

    return self;
}
@end
@implementation UserDataRecord


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Value = [properties valueForKey:@"Value"];
    
    self.LastUpdated = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastUpdated"]];
    
    self.Permission = (UserDataPermission)[properties valueForKey:@"Permission"];
    

    return self;
}
@end
@implementation UserFacebookInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FacebookId = [properties valueForKey:@"FacebookId"];
    
    self.FullName = [properties valueForKey:@"FullName"];
    

    return self;
}
@end
@implementation UserGameCenterInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.GameCenterId = [properties valueForKey:@"GameCenterId"];
    

    return self;
}
@end
@implementation UserGoogleInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.GoogleId = [properties valueForKey:@"GoogleId"];
    
    self.GoogleEmail = [properties valueForKey:@"GoogleEmail"];
    
    self.GoogleLocale = [properties valueForKey:@"GoogleLocale"];
    
    self.GoogleGender = [properties valueForKey:@"GoogleGender"];
    

    return self;
}
@end
@implementation UserIosDeviceInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.IosDeviceId = [properties valueForKey:@"IosDeviceId"];
    

    return self;
}
@end
@implementation UserKongregateInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.KongregateId = [properties valueForKey:@"KongregateId"];
    
    self.KongregateName = [properties valueForKey:@"KongregateName"];
    

    return self;
}
@end
@implementation UserPrivateAccountInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Email = [properties valueForKey:@"Email"];
    

    return self;
}
@end
@implementation UserPsnInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.PsnAccountId = [properties valueForKey:@"PsnAccountId"];
    
    self.PsnOnlineId = [properties valueForKey:@"PsnOnlineId"];
    

    return self;
}
@end
@implementation UserSettings


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.NeedsAttribution = [[properties valueForKey:@"NeedsAttribution"] boolValue];
    

    return self;
}
@end
@implementation UserSteamInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.SteamId = [properties valueForKey:@"SteamId"];
    
    self.SteamCountry = [properties valueForKey:@"SteamCountry"];
    
    self.SteamCurrency = (Currency)[properties valueForKey:@"SteamCurrency"];
    
    self.SteamActivationStatus = (TitleActivationStatus)[properties valueForKey:@"SteamActivationStatus"];
    

    return self;
}
@end
@implementation UserTitleInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DisplayName = [properties valueForKey:@"DisplayName"];
    
    self.Origination = (UserOrigination)[properties valueForKey:@"Origination"];
    
    self.Created = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Created"]];
    
    self.LastLogin = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastLogin"]];
    
    self.FirstLogin = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"FirstLogin"]];
    
    self.isBanned = [[properties valueForKey:@"isBanned"] boolValue];
    
    self.AvatarUrl = [properties valueForKey:@"AvatarUrl"];
    

    return self;
}
@end
@implementation UserTwitchInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.TwitchId = [properties valueForKey:@"TwitchId"];
    
    self.TwitchUserName = [properties valueForKey:@"TwitchUserName"];
    

    return self;
}
@end
@implementation UserXboxInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.XboxUserId = [properties valueForKey:@"XboxUserId"];
    

    return self;
}
@end
@implementation ValidateAmazonReceiptRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ReceiptId = [properties valueForKey:@"ReceiptId"];
    
    self.UserId = [properties valueForKey:@"UserId"];
    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    
    self.CurrencyCode = [properties valueForKey:@"CurrencyCode"];
    
    self.PurchasePrice = [properties valueForKey:@"PurchasePrice"];
    

    return self;
}
@end
@implementation ValidateAmazonReceiptResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation ValidateGooglePlayPurchaseRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ReceiptJson = [properties valueForKey:@"ReceiptJson"];
    
    self.Signature = [properties valueForKey:@"Signature"];
    
    self.CurrencyCode = [properties valueForKey:@"CurrencyCode"];
    
    self.PurchasePrice = [properties valueForKey:@"PurchasePrice"];
    

    return self;
}
@end
@implementation ValidateGooglePlayPurchaseResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation ValidateIOSReceiptRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ReceiptData = [properties valueForKey:@"ReceiptData"];
    
    self.CurrencyCode = [properties valueForKey:@"CurrencyCode"];
    
    self.PurchasePrice = [properties valueForKey:@"PurchasePrice"];
    

    return self;
}
@end
@implementation ValidateIOSReceiptResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation ValidateWindowsReceiptRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Receipt = [properties valueForKey:@"Receipt"];
    
    self.CatalogVersion = [properties valueForKey:@"CatalogVersion"];
    
    self.CurrencyCode = [properties valueForKey:@"CurrencyCode"];
    
    self.PurchasePrice = [properties valueForKey:@"PurchasePrice"];
    

    return self;
}
@end
@implementation ValidateWindowsReceiptResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation ValueToDateModel


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
@implementation VirtualCurrencyBalanceModel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Currency = [properties valueForKey:@"Currency"];
    
    self.TotalValue = [properties valueForKey:@"TotalValue"];
    

    return self;
}
@end
@implementation VirtualCurrencyRechargeTime


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.SecondsToRecharge = [properties valueForKey:@"SecondsToRecharge"];
    
    self.RechargeTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"RechargeTime"]];
    
    self.RechargeMax = [properties valueForKey:@"RechargeMax"];
    

    return self;
}
@end
@implementation WriteClientCharacterEventRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.CharacterId = [properties valueForKey:@"CharacterId"];
    
    self.EventName = [properties valueForKey:@"EventName"];
    
    self.Timestamp = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Timestamp"]];
    
    if ([properties objectForKey:@"Body"]){
    NSDictionary* member_list = [properties objectForKey:@"Body"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Body = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation WriteClientPlayerEventRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.EventName = [properties valueForKey:@"EventName"];
    
    self.Timestamp = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Timestamp"]];
    
    if ([properties objectForKey:@"Body"]){
    NSDictionary* member_list = [properties objectForKey:@"Body"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Body = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation WriteEventResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.EventId = [properties valueForKey:@"EventId"];
    

    return self;
}
@end
@implementation WriteTitleEventRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.EventName = [properties valueForKey:@"EventName"];
    
    self.Timestamp = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Timestamp"]];
    
    if ([properties objectForKey:@"Body"]){
    NSDictionary* member_list = [properties objectForKey:@"Body"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Body = [mutable_storage copy];
}

    

    return self;
}
@end
