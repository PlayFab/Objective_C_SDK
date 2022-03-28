#import "PlayFabEconomyDataModels.h"


@implementation EconomyCatalogAlternateId


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Type = [properties valueForKey:@"Type"];
    
    self.Value = [properties valueForKey:@"Value"];
    

    return self;
}
@end
@implementation EconomyCatalogConfig


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"AdminEntities"]){
    NSArray* member_list = [properties objectForKey:@"AdminEntities"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyEntityKey new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.AdminEntities = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"DisplayPropertyIndexInfos"]){
    NSArray* member_list = [properties objectForKey:@"DisplayPropertyIndexInfos"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyDisplayPropertyIndexInfo new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.DisplayPropertyIndexInfos = [mutable_storage copy];
}

    
    self.File = [[EconomyFileConfig new] initWithDictionary:[properties objectForKey:@"File"]];
    
    self.Image = [[EconomyImageConfig new] initWithDictionary:[properties objectForKey:@"Image"]];
    
    self.IsCatalogEnabled = [[properties valueForKey:@"IsCatalogEnabled"] boolValue];
    
    if ([properties objectForKey:@"Platforms"]){
    NSArray* member_list = [properties objectForKey:@"Platforms"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Platforms = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"ReviewerEntities"]){
    NSArray* member_list = [properties objectForKey:@"ReviewerEntities"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyEntityKey new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.ReviewerEntities = [mutable_storage copy];
}

    
    self.UserGeneratedContent = [[EconomyUserGeneratedContentSpecificConfig new] initWithDictionary:[properties objectForKey:@"UserGeneratedContent"]];
    

    return self;
}
@end
@implementation EconomyCatalogItem


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"AlternateIds"]){
    NSArray* member_list = [properties objectForKey:@"AlternateIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyCatalogAlternateId new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.AlternateIds = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Contents"]){
    NSArray* member_list = [properties objectForKey:@"Contents"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyContent new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Contents = [mutable_storage copy];
}

    
    self.ContentType = [properties valueForKey:@"ContentType"];
    
    self.CreationDate = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"CreationDate"]];
    
    self.CreatorEntity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"CreatorEntity"]];
    
    if ([properties objectForKey:@"Description"]){
    NSDictionary* member_list = [properties objectForKey:@"Description"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Description = [mutable_storage copy];
}

    
    self.DisplayProperties = [properties valueForKey:@"DisplayProperties"];
    
    self.DisplayVersion = [properties valueForKey:@"DisplayVersion"];
    
    self.EndDate = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"EndDate"]];
    
    self.ETag = [properties valueForKey:@"ETag"];
    
    self.Id = [properties valueForKey:@"Id"];
    
    if ([properties objectForKey:@"Images"]){
    NSArray* member_list = [properties objectForKey:@"Images"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyImage new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Images = [mutable_storage copy];
}

    
    self.IsHidden = [[properties valueForKey:@"IsHidden"] boolValue];
    
    if ([properties objectForKey:@"Keywords"]){
    NSDictionary* member_list = [properties objectForKey:@"Keywords"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[EconomyKeywordSet new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Keywords = [mutable_storage copy];
}

    
    self.LastModifiedDate = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastModifiedDate"]];
    
    self.Moderation = [[EconomyModerationState new] initWithDictionary:[properties objectForKey:@"Moderation"]];
    
    self.pfRating = [[EconomyRating new] initWithDictionary:[properties objectForKey:@"Rating"]];
    
    self.StartDate = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"StartDate"]];
    
    if ([properties objectForKey:@"Tags"]){
    NSArray* member_list = [properties objectForKey:@"Tags"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Tags = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Title"]){
    NSDictionary* member_list = [properties objectForKey:@"Title"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Title = [mutable_storage copy];
}

    
    self.Type = [properties valueForKey:@"Type"];
    

    return self;
}
@end
@implementation EconomyCatalogItemReference


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Amount = [properties valueForKey:@"Amount"];
    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Price = [[EconomyCatalogPrice new] initWithDictionary:[properties objectForKey:@"Price"]];
    

    return self;
}
@end
@implementation EconomyCatalogPrice


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Prices"]){
    NSArray* member_list = [properties objectForKey:@"Prices"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyCatalogPriceInstance new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Prices = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"RealPrices"]){
    NSArray* member_list = [properties objectForKey:@"RealPrices"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyCatalogPriceInstance new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.RealPrices = [mutable_storage copy];
}

    
    self.Sort = [properties valueForKey:@"Sort"];
    

    return self;
}
@end
@implementation EconomyCatalogPriceAmount


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Amount = [properties valueForKey:@"Amount"];
    
    self.Id = [properties valueForKey:@"Id"];
    

    return self;
}
@end
@implementation EconomyCatalogPriceInstance


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Amounts"]){
    NSArray* member_list = [properties objectForKey:@"Amounts"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyCatalogPriceAmount new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Amounts = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EconomyCatalogSpecificConfig


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"ContentTypes"]){
    NSArray* member_list = [properties objectForKey:@"ContentTypes"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.ContentTypes = [mutable_storage copy];
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
@implementation EconomyContent


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Id = [properties valueForKey:@"Id"];
    
    self.MaxClientVersion = [properties valueForKey:@"MaxClientVersion"];
    
    self.MinClientVersion = [properties valueForKey:@"MinClientVersion"];
    
    if ([properties objectForKey:@"Tags"]){
    NSArray* member_list = [properties objectForKey:@"Tags"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Tags = [mutable_storage copy];
}

    
    self.Type = [properties valueForKey:@"Type"];
    
    self.Url = [properties valueForKey:@"Url"];
    

    return self;
}
@end
@implementation EconomyCreateDraftItemRequest


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

    
    self.Item = [[EconomyCatalogItem new] initWithDictionary:[properties objectForKey:@"Item"]];
    
    self.Publish = [[properties valueForKey:@"Publish"] boolValue];
    

    return self;
}
@end
@implementation EconomyCreateDraftItemResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Item = [[EconomyCatalogItem new] initWithDictionary:[properties objectForKey:@"Item"]];
    

    return self;
}
@end
@implementation EconomyCreateUploadUrlsRequest


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

    
    if ([properties objectForKey:@"Files"]){
    NSArray* member_list = [properties objectForKey:@"Files"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyUploadInfo new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Files = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EconomyCreateUploadUrlsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"UploadUrls"]){
    NSArray* member_list = [properties objectForKey:@"UploadUrls"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyUploadUrlMetadata new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.UploadUrls = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EconomyDeepLinkFormat


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Format = [properties valueForKey:@"Format"];
    
    self.Platform = [properties valueForKey:@"Platform"];
    

    return self;
}
@end
@implementation EconomyDeleteEntityItemReviewsRequest


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

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation EconomyDeleteEntityItemReviewsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyDeleteItemRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Id = [properties valueForKey:@"Id"];
    

    return self;
}
@end
@implementation EconomyDeleteItemResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyDisplayPropertyIndexInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Name = [properties valueForKey:@"Name"];
    
    self.Type = (EconomyDisplayPropertyType)[properties valueForKey:@"EconomyType"];
    

    return self;
}
@end
@implementation EconomyEntityKey


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
@implementation EconomyFileConfig


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"ContentTypes"]){
    NSArray* member_list = [properties objectForKey:@"ContentTypes"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.ContentTypes = [mutable_storage copy];
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
@implementation EconomyFilterOptions


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyGetCatalogConfigRequest


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
@implementation EconomyGetCatalogConfigResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Config = [[EconomyCatalogConfig new] initWithDictionary:[properties objectForKey:@"Config"]];
    

    return self;
}
@end
@implementation EconomyGetDraftItemRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Id = [properties valueForKey:@"Id"];
    

    return self;
}
@end
@implementation EconomyGetDraftItemResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Item = [[EconomyCatalogItem new] initWithDictionary:[properties objectForKey:@"Item"]];
    

    return self;
}
@end
@implementation EconomyGetDraftItemsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"AlternateIds"]){
    NSArray* member_list = [properties objectForKey:@"AlternateIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyCatalogAlternateId new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.AlternateIds = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"Ids"]){
    NSArray* member_list = [properties objectForKey:@"Ids"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Ids = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EconomyGetDraftItemsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ContinuationToken = [properties valueForKey:@"ContinuationToken"];
    
    if ([properties objectForKey:@"Items"]){
    NSArray* member_list = [properties objectForKey:@"Items"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyCatalogItem new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Items = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EconomyGetEntityDraftItemsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ContinuationToken = [properties valueForKey:@"ContinuationToken"];
    
    self.Count = [properties valueForKey:@"Count"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation EconomyGetEntityDraftItemsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ContinuationToken = [properties valueForKey:@"ContinuationToken"];
    
    if ([properties objectForKey:@"Items"]){
    NSArray* member_list = [properties objectForKey:@"Items"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyCatalogItem new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Items = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EconomyGetEntityItemReviewRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Id = [properties valueForKey:@"Id"];
    

    return self;
}
@end
@implementation EconomyGetEntityItemReviewResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfReview = [[EconomyReview new] initWithDictionary:[properties objectForKey:@"Review"]];
    

    return self;
}
@end
@implementation EconomyGetItemModerationStateRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Id = [properties valueForKey:@"Id"];
    

    return self;
}
@end
@implementation EconomyGetItemModerationStateResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.State = [[EconomyModerationState new] initWithDictionary:[properties objectForKey:@"State"]];
    

    return self;
}
@end
@implementation EconomyGetItemPublishStatusRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Id = [properties valueForKey:@"Id"];
    

    return self;
}
@end
@implementation EconomyGetItemPublishStatusResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Result = (EconomyPublishResult)[properties valueForKey:@"EconomyResult"];
    
    self.StatusMessage = [properties valueForKey:@"StatusMessage"];
    

    return self;
}
@end
@implementation EconomyGetItemRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Id = [properties valueForKey:@"Id"];
    

    return self;
}
@end
@implementation EconomyGetItemResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Item = [[EconomyCatalogItem new] initWithDictionary:[properties objectForKey:@"Item"]];
    

    return self;
}
@end
@implementation EconomyGetItemReviewsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    self.ContinuationToken = [properties valueForKey:@"ContinuationToken"];
    
    self.Count = [properties valueForKey:@"Count"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Id = [properties valueForKey:@"Id"];
    
    self.OrderBy = [properties valueForKey:@"OrderBy"];
    

    return self;
}
@end
@implementation EconomyGetItemReviewsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ContinuationToken = [properties valueForKey:@"ContinuationToken"];
    
    if ([properties objectForKey:@"Reviews"]){
    NSArray* member_list = [properties objectForKey:@"Reviews"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyReview new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Reviews = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EconomyGetItemReviewSummaryRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Id = [properties valueForKey:@"Id"];
    

    return self;
}
@end
@implementation EconomyGetItemReviewSummaryResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.LeastFavorableReview = [[EconomyReview new] initWithDictionary:[properties objectForKey:@"LeastFavorableReview"]];
    
    self.MostFavorableReview = [[EconomyReview new] initWithDictionary:[properties objectForKey:@"MostFavorableReview"]];
    
    self.pfRating = [[EconomyRating new] initWithDictionary:[properties objectForKey:@"Rating"]];
    
    self.ReviewsCount = [properties valueForKey:@"ReviewsCount"];
    

    return self;
}
@end
@implementation EconomyGetItemsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"AlternateIds"]){
    NSArray* member_list = [properties objectForKey:@"AlternateIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyCatalogAlternateId new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.AlternateIds = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"Ids"]){
    NSArray* member_list = [properties objectForKey:@"Ids"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Ids = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EconomyGetItemsResponse


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
        [mutable_storage addObject:[[EconomyCatalogItem new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Items = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EconomyImage


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Tag = [properties valueForKey:@"Tag"];
    
    self.Type = [properties valueForKey:@"Type"];
    
    self.Url = [properties valueForKey:@"Url"];
    

    return self;
}
@end
@implementation EconomyImageConfig


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
@implementation EconomyKeywordSet


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Values"]){
    NSArray* member_list = [properties objectForKey:@"Values"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Values = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EconomyModerationState


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.LastModifiedDate = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastModifiedDate"]];
    
    self.Reason = [properties valueForKey:@"Reason"];
    
    self.Status = (EconomyModerationStatus)[properties valueForKey:@"EconomyStatus"];
    

    return self;
}
@end
@implementation EconomyPayoutDetails


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AccountSellerId = [properties valueForKey:@"AccountSellerId"];
    
    self.TaxCode = [properties valueForKey:@"TaxCode"];
    
    self.Uaid = [properties valueForKey:@"Uaid"];
    

    return self;
}
@end
@implementation EconomyPriceOverride


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyPricesOverride


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyPublishDraftItemRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ETag = [properties valueForKey:@"ETag"];
    
    self.Id = [properties valueForKey:@"Id"];
    

    return self;
}
@end
@implementation EconomyPublishDraftItemResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyPurchaseOverride


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyRating


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Average = [properties valueForKey:@"Average"];
    
    self.Count1Star = [properties valueForKey:@"Count1Star"];
    
    self.Count2Star = [properties valueForKey:@"Count2Star"];
    
    self.Count3Star = [properties valueForKey:@"Count3Star"];
    
    self.Count4Star = [properties valueForKey:@"Count4Star"];
    
    self.Count5Star = [properties valueForKey:@"Count5Star"];
    
    self.TotalCount = [properties valueForKey:@"TotalCount"];
    

    return self;
}
@end
@implementation EconomyReportItemRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    self.pfConcernCategory = (EconomyConcernCategory)[properties valueForKey:@"EconomyConcernCategory"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Reason = [properties valueForKey:@"Reason"];
    

    return self;
}
@end
@implementation EconomyReportItemResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyReportItemReviewRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    self.pfConcernCategory = (EconomyConcernCategory)[properties valueForKey:@"EconomyConcernCategory"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ItemId = [properties valueForKey:@"ItemId"];
    
    self.Reason = [properties valueForKey:@"Reason"];
    
    self.ReviewId = [properties valueForKey:@"ReviewId"];
    

    return self;
}
@end
@implementation EconomyReportItemReviewResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyReview


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.HelpfulNegative = [properties valueForKey:@"HelpfulNegative"];
    
    self.HelpfulPositive = [properties valueForKey:@"HelpfulPositive"];
    
    self.IsInstalled = [[properties valueForKey:@"IsInstalled"] boolValue];
    
    self.ItemId = [properties valueForKey:@"ItemId"];
    
    self.ItemVersion = [properties valueForKey:@"ItemVersion"];
    
    self.Locale = [properties valueForKey:@"Locale"];
    
    self.Rating = [properties valueForKey:@"Rating"];
    
    self.ReviewerId = [properties valueForKey:@"ReviewerId"];
    
    self.ReviewId = [properties valueForKey:@"ReviewId"];
    
    self.ReviewText = [properties valueForKey:@"ReviewText"];
    
    self.Submitted = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Submitted"]];
    
    self.Title = [properties valueForKey:@"Title"];
    

    return self;
}
@end
@implementation EconomyReviewItemRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Id = [properties valueForKey:@"Id"];
    
    self.pfReview = [[EconomyReview new] initWithDictionary:[properties objectForKey:@"Review"]];
    

    return self;
}
@end
@implementation EconomyReviewItemResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyReviewTakedown


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    self.ItemId = [properties valueForKey:@"ItemId"];
    
    self.ReviewId = [properties valueForKey:@"ReviewId"];
    

    return self;
}
@end
@implementation EconomyScanResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Url = [properties valueForKey:@"Url"];
    

    return self;
}
@end
@implementation EconomySearchItemsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ContinuationToken = [properties valueForKey:@"ContinuationToken"];
    
    self.Count = [properties valueForKey:@"Count"];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Filter = [properties valueForKey:@"Filter"];
    
    self.OrderBy = [properties valueForKey:@"OrderBy"];
    
    self.Search = [properties valueForKey:@"Search"];
    
    self.Select = [properties valueForKey:@"Select"];
    

    return self;
}
@end
@implementation EconomySearchItemsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ContinuationToken = [properties valueForKey:@"ContinuationToken"];
    
    if ([properties objectForKey:@"Items"]){
    NSArray* member_list = [properties objectForKey:@"Items"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyCatalogItem new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Items = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EconomySetItemModerationStateRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Reason = [properties valueForKey:@"Reason"];
    
    self.Status = (EconomyModerationStatus)[properties valueForKey:@"EconomyStatus"];
    

    return self;
}
@end
@implementation EconomySetItemModerationStateResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyStoreDetails


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyStoreInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    self.Id = [properties valueForKey:@"Id"];
    

    return self;
}
@end
@implementation EconomySubmitItemReviewVoteRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AlternateId = [[EconomyCatalogAlternateId new] initWithDictionary:[properties objectForKey:@"AlternateId"]];
    
    if ([properties objectForKey:@"CustomTags"]){
    NSDictionary* member_list = [properties objectForKey:@"CustomTags"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.CustomTags = [mutable_storage copy];
}

    
    self.Entity = [[EconomyEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ItemId = [properties valueForKey:@"ItemId"];
    
    self.ReviewId = [properties valueForKey:@"ReviewId"];
    
    self.Vote = (EconomyHelpfulnessVote)[properties valueForKey:@"EconomyVote"];
    

    return self;
}
@end
@implementation EconomySubmitItemReviewVoteResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomySubscriptionDetails


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DurationInSeconds = [properties valueForKey:@"DurationInSeconds"];
    

    return self;
}
@end
@implementation EconomyTakedownItemReviewsRequest


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

    
    if ([properties objectForKey:@"Reviews"]){
    NSArray* member_list = [properties objectForKey:@"Reviews"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EconomyReviewTakedown new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Reviews = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EconomyTakedownItemReviewsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyUpdateCatalogConfigRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Config = [[EconomyCatalogConfig new] initWithDictionary:[properties objectForKey:@"Config"]];
    
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
@implementation EconomyUpdateCatalogConfigResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation EconomyUpdateDraftItemRequest


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

    
    self.Item = [[EconomyCatalogItem new] initWithDictionary:[properties objectForKey:@"Item"]];
    
    self.Publish = [[properties valueForKey:@"Publish"] boolValue];
    

    return self;
}
@end
@implementation EconomyUpdateDraftItemResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Item = [[EconomyCatalogItem new] initWithDictionary:[properties objectForKey:@"Item"]];
    

    return self;
}
@end
@implementation EconomyUploadInfo


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
@implementation EconomyUploadUrlMetadata


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FileName = [properties valueForKey:@"FileName"];
    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Url = [properties valueForKey:@"Url"];
    

    return self;
}
@end
@implementation EconomyUserGeneratedContentSpecificConfig


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"ContentTypes"]){
    NSArray* member_list = [properties objectForKey:@"ContentTypes"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.ContentTypes = [mutable_storage copy];
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
