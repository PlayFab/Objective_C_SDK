#import "PlayFabCloudScriptDataModels.h"


@implementation EntityKey


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Type = (EntityTypes)[properties valueForKey:@"Type"];
    
    self.TypeString = [properties valueForKey:@"TypeString"];
    

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

    
    self.APIRequestsIssued = [properties valueForKey:@"APIRequestsIssued"];
    
    self.Error = [[ScriptExecutionError new] initWithDictionary:[properties objectForKey:@"Error"]];
    
    self.ExecutionTimeSeconds = [properties valueForKey:@"ExecutionTimeSeconds"];
    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.FunctionResult = [properties valueForKey:@"FunctionResult"];
    
    self.FunctionResultTooLarge = [[properties valueForKey:@"FunctionResultTooLarge"] boolValue];
    
    self.HttpRequestsIssued = [properties valueForKey:@"HttpRequestsIssued"];
    
    if ([properties objectForKey:@"Logs"]){
    NSArray* member_list = [properties objectForKey:@"Logs"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[LogStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
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
@implementation ExecuteEntityCloudScriptRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.FunctionName = [properties valueForKey:@"FunctionName"];
    
    self.FunctionParameter = [properties valueForKey:@"FunctionParameter"];
    
    self.GeneratePlayStreamEvent = [[properties valueForKey:@"GeneratePlayStreamEvent"] boolValue];
    
    self.RevisionSelection = (CloudScriptRevisionOption)[properties valueForKey:@"RevisionSelection"];
    
    self.SpecificRevision = [properties valueForKey:@"SpecificRevision"];
    

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

    
    self.Data = [properties valueForKey:@"Data"];
    
    self.Level = [properties valueForKey:@"Level"];
    
    self.Message = [properties valueForKey:@"Message"];
    

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
