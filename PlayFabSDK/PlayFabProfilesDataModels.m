#import "PlayFabProfilesDataModels.h"


@implementation EntityDataObject


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DataObject = [properties valueForKey:@"DataObject"];
    
    self.EscapedDataObject = [properties valueForKey:@"EscapedDataObject"];
    
    self.ObjectName = [properties valueForKey:@"ObjectName"];
    

    return self;
}
@end
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
@implementation EntityPermissionStatement


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Action = [properties valueForKey:@"Action"];
    
    self.Comment = [properties valueForKey:@"Comment"];
    
    self.Condition = [properties valueForKey:@"Condition"];
    
    self.Effect = (EffectType)[properties valueForKey:@"Effect"];
    
    self.Principal = [properties valueForKey:@"Principal"];
    
    self.Resource = [properties valueForKey:@"Resource"];
    

    return self;
}
@end
@implementation EntityProfileBody


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.EntityChain = [properties valueForKey:@"EntityChain"];
    
    if ([properties objectForKey:@"Files"]){
    NSDictionary* member_list = [properties objectForKey:@"Files"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[EntityProfileFileMetadata new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Files = [mutable_storage copy];
}

    
    self.Language = [properties valueForKey:@"Language"];
    
    if ([properties objectForKey:@"Objects"]){
    NSDictionary* member_list = [properties objectForKey:@"Objects"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[EntityDataObject new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Objects = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Permissions"]){
    NSArray* member_list = [properties objectForKey:@"Permissions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EntityPermissionStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Permissions = [mutable_storage copy];
}

    
    self.VersionNumber = [properties valueForKey:@"VersionNumber"];
    

    return self;
}
@end
@implementation EntityProfileFileMetadata


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Checksum = [properties valueForKey:@"Checksum"];
    
    self.FileName = [properties valueForKey:@"FileName"];
    
    self.LastModified = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastModified"]];
    
    self.Size = [properties valueForKey:@"Size"];
    

    return self;
}
@end
@implementation GetEntityProfileRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DataAsObject = [[properties valueForKey:@"DataAsObject"] boolValue];
    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation GetEntityProfileResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Profile = [[EntityProfileBody new] initWithDictionary:[properties objectForKey:@"Profile"]];
    

    return self;
}
@end
@implementation GetEntityProfilesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DataAsObject = [[properties valueForKey:@"DataAsObject"] boolValue];
    
    if ([properties objectForKey:@"Entities"]){
    NSArray* member_list = [properties objectForKey:@"Entities"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EntityKey new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Entities = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetEntityProfilesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Profiles"]){
    NSArray* member_list = [properties objectForKey:@"Profiles"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EntityProfileBody new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Profiles = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetGlobalPolicyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation GetGlobalPolicyResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Permissions"]){
    NSArray* member_list = [properties objectForKey:@"Permissions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EntityPermissionStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Permissions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation SetEntityProfilePolicyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"Statements"]){
    NSArray* member_list = [properties objectForKey:@"Statements"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EntityPermissionStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Statements = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation SetEntityProfilePolicyResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Permissions"]){
    NSArray* member_list = [properties objectForKey:@"Permissions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EntityPermissionStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Permissions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation SetGlobalPolicyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Permissions"]){
    NSArray* member_list = [properties objectForKey:@"Permissions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EntityPermissionStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Permissions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation SetGlobalPolicyResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation SetProfileLanguageRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ExpectedVersion = [properties valueForKey:@"ExpectedVersion"];
    
    self.Language = [properties valueForKey:@"Language"];
    

    return self;
}
@end
@implementation SetProfileLanguageResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OperationResult = (OperationTypes)[properties valueForKey:@"OperationResult"];
    
    self.VersionNumber = [properties valueForKey:@"VersionNumber"];
    

    return self;
}
@end
