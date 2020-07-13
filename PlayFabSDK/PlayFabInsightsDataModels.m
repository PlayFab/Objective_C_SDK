#import "PlayFabInsightsDataModels.h"


@implementation InsightsInsightsEmptyRequest


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
@implementation InsightsInsightsGetDetailsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DataUsageMb = [properties valueForKey:@"DataUsageMb"];
    
    self.ErrorMessage = [properties valueForKey:@"ErrorMessage"];
    
    self.Limits = [[InsightsInsightsGetLimitsResponse new] initWithDictionary:[properties objectForKey:@"Limits"]];
    
    if ([properties objectForKey:@"PendingOperations"]){
    NSArray* member_list = [properties objectForKey:@"PendingOperations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[InsightsInsightsGetOperationStatusResponse new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.PendingOperations = [mutable_storage copy];
}

    
    self.PerformanceLevel = [properties valueForKey:@"PerformanceLevel"];
    
    self.RetentionDays = [properties valueForKey:@"RetentionDays"];
    

    return self;
}
@end
@implementation InsightsInsightsGetLimitsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DefaultPerformanceLevel = [properties valueForKey:@"DefaultPerformanceLevel"];
    
    self.DefaultStorageRetentionDays = [properties valueForKey:@"DefaultStorageRetentionDays"];
    
    self.StorageMaxRetentionDays = [properties valueForKey:@"StorageMaxRetentionDays"];
    
    self.StorageMinRetentionDays = [properties valueForKey:@"StorageMinRetentionDays"];
    
    if ([properties objectForKey:@"SubMeters"]){
    NSArray* member_list = [properties objectForKey:@"SubMeters"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[InsightsInsightsPerformanceLevel new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.SubMeters = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation InsightsInsightsGetOperationStatusRequest


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

    
    self.OperationId = [properties valueForKey:@"OperationId"];
    

    return self;
}
@end
@implementation InsightsInsightsGetOperationStatusResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Message = [properties valueForKey:@"Message"];
    
    self.OperationCompletedTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"OperationCompletedTime"]];
    
    self.OperationId = [properties valueForKey:@"OperationId"];
    
    self.OperationLastUpdated = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"OperationLastUpdated"]];
    
    self.OperationStartedTime = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"OperationStartedTime"]];
    
    self.OperationType = [properties valueForKey:@"OperationType"];
    
    self.OperationValue = [properties valueForKey:@"OperationValue"];
    
    self.Status = [properties valueForKey:@"Status"];
    

    return self;
}
@end
@implementation InsightsInsightsGetPendingOperationsRequest


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

    
    self.OperationType = [properties valueForKey:@"OperationType"];
    

    return self;
}
@end
@implementation InsightsInsightsGetPendingOperationsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"PendingOperations"]){
    NSArray* member_list = [properties objectForKey:@"PendingOperations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[InsightsInsightsGetOperationStatusResponse new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.PendingOperations = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation InsightsInsightsOperationResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Message = [properties valueForKey:@"Message"];
    
    self.OperationId = [properties valueForKey:@"OperationId"];
    
    self.OperationType = [properties valueForKey:@"OperationType"];
    

    return self;
}
@end
@implementation InsightsInsightsPerformanceLevel


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ActiveEventExports = [properties valueForKey:@"ActiveEventExports"];
    
    self.CacheSizeMB = [properties valueForKey:@"CacheSizeMB"];
    
    self.Concurrency = [properties valueForKey:@"Concurrency"];
    
    self.CreditsPerMinute = [properties valueForKey:@"CreditsPerMinute"];
    
    self.EventsPerSecond = [properties valueForKey:@"EventsPerSecond"];
    
    self.Level = [properties valueForKey:@"Level"];
    
    self.MaxMemoryPerQueryMB = [properties valueForKey:@"MaxMemoryPerQueryMB"];
    
    self.VirtualCpuCores = [properties valueForKey:@"VirtualCpuCores"];
    

    return self;
}
@end
@implementation InsightsInsightsSetPerformanceRequest


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

    
    self.PerformanceLevel = [properties valueForKey:@"PerformanceLevel"];
    

    return self;
}
@end
@implementation InsightsInsightsSetStorageRetentionRequest


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

    
    self.RetentionDays = [properties valueForKey:@"RetentionDays"];
    

    return self;
}
@end
