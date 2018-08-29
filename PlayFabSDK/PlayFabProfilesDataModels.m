#import "PlayFabProfilesDataModels.h"


@implementation ProfilesEntityDataObject


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
@implementation ProfilesEntityKey


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
@implementation ProfilesEntityPermissionStatement


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Action = [properties valueForKey:@"Action"];
    
    self.Comment = [properties valueForKey:@"Comment"];
    
    self.Condition = [properties valueForKey:@"Condition"];
    
    self.Effect = (ProfilesEffectType)[properties valueForKey:@"ProfilesEffect"];
    
    self.Principal = [properties valueForKey:@"Principal"];
    
    self.Resource = [properties valueForKey:@"Resource"];
    

    return self;
}
@end
@implementation ProfilesEntityProfileBody


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[ProfilesEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.EntityChain = [properties valueForKey:@"EntityChain"];
    
    if ([properties objectForKey:@"Files"]){
    NSDictionary* member_list = [properties objectForKey:@"Files"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[ProfilesEntityProfileFileMetadata new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Files = [mutable_storage copy];
}

    
    self.Language = [properties valueForKey:@"Language"];
    
    if ([properties objectForKey:@"Objects"]){
    NSDictionary* member_list = [properties objectForKey:@"Objects"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[ProfilesEntityDataObject new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Objects = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Permissions"]){
    NSArray* member_list = [properties objectForKey:@"Permissions"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ProfilesEntityPermissionStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Permissions = [mutable_storage copy];
}

    
    self.VersionNumber = [properties valueForKey:@"VersionNumber"];
    

    return self;
}
@end
@implementation ProfilesEntityProfileFileMetadata


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
@implementation ProfilesGetEntityProfileRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DataAsObject = [[properties valueForKey:@"DataAsObject"] boolValue];
    
    self.Entity = [[ProfilesEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation ProfilesGetEntityProfileResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Profile = [[ProfilesEntityProfileBody new] initWithDictionary:[properties objectForKey:@"Profile"]];
    

    return self;
}
@end
@implementation ProfilesGetEntityProfilesRequest


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
        [mutable_storage addObject:[[ProfilesEntityKey new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Entities = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ProfilesGetEntityProfilesResponse


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
        [mutable_storage addObject:[[ProfilesEntityProfileBody new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Profiles = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ProfilesGetGlobalPolicyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation ProfilesGetGlobalPolicyResponse


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
        [mutable_storage addObject:[[ProfilesEntityPermissionStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Permissions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ProfilesSetEntityProfilePolicyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[ProfilesEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"Statements"]){
    NSArray* member_list = [properties objectForKey:@"Statements"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ProfilesEntityPermissionStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Statements = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ProfilesSetEntityProfilePolicyResponse


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
        [mutable_storage addObject:[[ProfilesEntityPermissionStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Permissions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ProfilesSetGlobalPolicyRequest


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
        [mutable_storage addObject:[[ProfilesEntityPermissionStatement new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Permissions = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ProfilesSetGlobalPolicyResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation ProfilesSetProfileLanguageRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[ProfilesEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ExpectedVersion = [properties valueForKey:@"ExpectedVersion"];
    
    self.Language = [properties valueForKey:@"Language"];
    

    return self;
}
@end
@implementation ProfilesSetProfileLanguageResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OperationResult = (ProfilesOperationTypes)[properties valueForKey:@"ProfilesOperationResult"];
    
    self.VersionNumber = [properties valueForKey:@"VersionNumber"];
    

    return self;
}
@end
