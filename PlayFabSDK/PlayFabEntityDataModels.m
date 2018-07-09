#import "PlayFabEntityDataModels.h"


@implementation AbortFileUploadsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"FileNames"]){
    NSArray* member_list = [properties objectForKey:@"FileNames"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.FileNames = [mutable_storage copy];
}

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation AbortFileUploadsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation AcceptGroupApplicationRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation AcceptGroupInvitationRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation AddMembersRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EntityKey new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Members = [mutable_storage copy];
}

    
    self.RoleId = [properties valueForKey:@"RoleId"];
    

    return self;
}
@end
@implementation ApplyToGroupRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AutoAcceptOutstandingInvite = [[properties valueForKey:@"AutoAcceptOutstandingInvite"] boolValue];
    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation ApplyToGroupResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityWithLineage new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Expires = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Expires"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation BlockEntityRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation ChangeMemberRoleRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DestinationRoleId = [properties valueForKey:@"DestinationRoleId"];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EntityKey new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Members = [mutable_storage copy];
}

    
    self.OriginRoleId = [properties valueForKey:@"OriginRoleId"];
    

    return self;
}
@end
@implementation CreateGroupRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.GroupName = [properties valueForKey:@"GroupName"];
    

    return self;
}
@end
@implementation CreateGroupResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AdminRoleId = [properties valueForKey:@"AdminRoleId"];
    
    self.Created = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Created"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    self.GroupName = [properties valueForKey:@"GroupName"];
    
    self.MemberRoleId = [properties valueForKey:@"MemberRoleId"];
    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    
    if ([properties objectForKey:@"Roles"]){
    NSDictionary* member_list = [properties objectForKey:@"Roles"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Roles = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation CreateGroupRoleRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    self.RoleId = [properties valueForKey:@"RoleId"];
    
    self.RoleName = [properties valueForKey:@"RoleName"];
    

    return self;
}
@end
@implementation CreateGroupRoleResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    
    self.RoleId = [properties valueForKey:@"RoleId"];
    
    self.RoleName = [properties valueForKey:@"RoleName"];
    

    return self;
}
@end
@implementation DeleteFilesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"FileNames"]){
    NSArray* member_list = [properties objectForKey:@"FileNames"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.FileNames = [mutable_storage copy];
}

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation DeleteFilesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation DeleteGroupRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation DeleteRoleRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    self.RoleId = [properties valueForKey:@"RoleId"];
    

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
@implementation EntityMemberRole


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EntityWithLineage new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Members = [mutable_storage copy];
}

    
    self.RoleId = [properties valueForKey:@"RoleId"];
    
    self.RoleName = [properties valueForKey:@"RoleName"];
    

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
@implementation EntityWithLineage


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Key = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Key"]];
    
    if ([properties objectForKey:@"Lineage"]){
    NSDictionary* member_list = [properties objectForKey:@"Lineage"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[EntityKey new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Lineage = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation EventContents


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.EventNamespace = [properties valueForKey:@"EventNamespace"];
    
    self.Name = [properties valueForKey:@"Name"];
    
    self.OriginalId = [properties valueForKey:@"OriginalId"];
    
    self.OriginalTimestamp = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"OriginalTimestamp"]];
    
    self.Payload = [properties valueForKey:@"Payload"];
    
    self.PayloadJSON = [properties valueForKey:@"PayloadJSON"];
    

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
@implementation FinalizeFileUploadsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"FileNames"]){
    NSArray* member_list = [properties objectForKey:@"FileNames"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.FileNames = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation FinalizeFileUploadsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[GetFileMetadata new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

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
@implementation GetEntityTokenRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation GetEntityTokenResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.EntityToken = [properties valueForKey:@"EntityToken"];
    
    self.TokenExpiration = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"TokenExpiration"]];
    

    return self;
}
@end
@implementation GetFileMetadata


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Checksum = [properties valueForKey:@"Checksum"];
    
    self.DownloadUrl = [properties valueForKey:@"DownloadUrl"];
    
    self.FileName = [properties valueForKey:@"FileName"];
    
    self.LastModified = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastModified"]];
    
    self.Size = [properties valueForKey:@"Size"];
    

    return self;
}
@end
@implementation GetFilesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation GetFilesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[GetFileMetadata new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

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
@implementation GetGroupRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    self.GroupName = [properties valueForKey:@"GroupName"];
    

    return self;
}
@end
@implementation GetGroupResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AdminRoleId = [properties valueForKey:@"AdminRoleId"];
    
    self.Created = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Created"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    self.GroupName = [properties valueForKey:@"GroupName"];
    
    self.MemberRoleId = [properties valueForKey:@"MemberRoleId"];
    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    
    if ([properties objectForKey:@"Roles"]){
    NSDictionary* member_list = [properties objectForKey:@"Roles"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[member_list objectForKey:key] forKey:key];
    }
    self.Roles = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation GetObjectsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.EscapeObject = [[properties valueForKey:@"EscapeObject"] boolValue];
    

    return self;
}
@end
@implementation GetObjectsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"Objects"]){
    NSDictionary* member_list = [properties objectForKey:@"Objects"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[ObjectResult new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Objects = [mutable_storage copy];
}

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation GroupApplication


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityWithLineage new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Expires = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Expires"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation GroupBlock


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityWithLineage new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation GroupInvitation


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Expires = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Expires"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    self.InvitedByEntity = [[EntityWithLineage new] initWithDictionary:[properties objectForKey:@"InvitedByEntity"]];
    
    self.InvitedEntity = [[EntityWithLineage new] initWithDictionary:[properties objectForKey:@"InvitedEntity"]];
    
    self.RoleId = [properties valueForKey:@"RoleId"];
    

    return self;
}
@end
@implementation GroupRole


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.RoleId = [properties valueForKey:@"RoleId"];
    
    self.RoleName = [properties valueForKey:@"RoleName"];
    

    return self;
}
@end
@implementation GroupWithRoles


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    self.GroupName = [properties valueForKey:@"GroupName"];
    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    
    if ([properties objectForKey:@"Roles"]){
    NSArray* member_list = [properties objectForKey:@"Roles"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GroupRole new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Roles = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation InitiateFileUploadMetadata


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FileName = [properties valueForKey:@"FileName"];
    
    self.UploadUrl = [properties valueForKey:@"UploadUrl"];
    

    return self;
}
@end
@implementation InitiateFileUploadsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"FileNames"]){
    NSArray* member_list = [properties objectForKey:@"FileNames"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.FileNames = [mutable_storage copy];
}

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation InitiateFileUploadsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    
    if ([properties objectForKey:@"UploadDetails"]){
    NSArray* member_list = [properties objectForKey:@"UploadDetails"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[InitiateFileUploadMetadata new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.UploadDetails = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation InviteToGroupRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AutoAcceptOutstandingApplication = [[properties valueForKey:@"AutoAcceptOutstandingApplication"] boolValue];
    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    self.RoleId = [properties valueForKey:@"RoleId"];
    

    return self;
}
@end
@implementation InviteToGroupResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Expires = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Expires"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    self.InvitedByEntity = [[EntityWithLineage new] initWithDictionary:[properties objectForKey:@"InvitedByEntity"]];
    
    self.InvitedEntity = [[EntityWithLineage new] initWithDictionary:[properties objectForKey:@"InvitedEntity"]];
    
    self.RoleId = [properties valueForKey:@"RoleId"];
    

    return self;
}
@end
@implementation IsMemberRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    self.RoleId = [properties valueForKey:@"RoleId"];
    

    return self;
}
@end
@implementation IsMemberResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.IsMember = [[properties valueForKey:@"IsMember"] boolValue];
    

    return self;
}
@end
@implementation ListGroupApplicationsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation ListGroupApplicationsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Applications"]){
    NSArray* member_list = [properties objectForKey:@"Applications"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GroupApplication new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Applications = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ListGroupBlocksRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation ListGroupBlocksResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"BlockedEntities"]){
    NSArray* member_list = [properties objectForKey:@"BlockedEntities"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GroupBlock new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.BlockedEntities = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ListGroupInvitationsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation ListGroupInvitationsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Invitations"]){
    NSArray* member_list = [properties objectForKey:@"Invitations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GroupInvitation new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Invitations = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ListGroupMembersRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation ListGroupMembersResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EntityMemberRole new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Members = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ListMembershipOpportunitiesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation ListMembershipOpportunitiesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Applications"]){
    NSArray* member_list = [properties objectForKey:@"Applications"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GroupApplication new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Applications = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Invitations"]){
    NSArray* member_list = [properties objectForKey:@"Invitations"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GroupInvitation new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Invitations = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ListMembershipRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation ListMembershipResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Groups"]){
    NSArray* member_list = [properties objectForKey:@"Groups"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[GroupWithRoles new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Groups = [mutable_storage copy];
}

    

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
@implementation ObjectResult


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
@implementation RemoveGroupApplicationRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation RemoveGroupInvitationRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation RemoveMembersRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    if ([properties objectForKey:@"Members"]){
    NSArray* member_list = [properties objectForKey:@"Members"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EntityKey new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Members = [mutable_storage copy];
}

    
    self.RoleId = [properties valueForKey:@"RoleId"];
    

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
@implementation SetObject


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DataObject = [properties valueForKey:@"DataObject"];
    
    self.DeleteObject = [[properties valueForKey:@"DeleteObject"] boolValue];
    
    self.EscapedDataObject = [properties valueForKey:@"EscapedDataObject"];
    
    self.ObjectName = [properties valueForKey:@"ObjectName"];
    

    return self;
}
@end
@implementation SetObjectInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ObjectName = [properties valueForKey:@"ObjectName"];
    
    self.OperationReason = [properties valueForKey:@"OperationReason"];
    
    self.SetResult = (OperationTypes)[properties valueForKey:@"SetResult"];
    

    return self;
}
@end
@implementation SetObjectsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ExpectedProfileVersion = [properties valueForKey:@"ExpectedProfileVersion"];
    
    if ([properties objectForKey:@"Objects"]){
    NSArray* member_list = [properties objectForKey:@"Objects"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[SetObject new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Objects = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation SetObjectsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    
    if ([properties objectForKey:@"SetResults"]){
    NSArray* member_list = [properties objectForKey:@"SetResults"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[SetObjectInfo new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.SetResults = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation UnblockEntityRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    

    return self;
}
@end
@implementation UpdateGroupRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.AdminRoleId = [properties valueForKey:@"AdminRoleId"];
    
    self.ExpectedProfileVersion = [properties valueForKey:@"ExpectedProfileVersion"];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    self.GroupName = [properties valueForKey:@"GroupName"];
    
    self.MemberRoleId = [properties valueForKey:@"MemberRoleId"];
    

    return self;
}
@end
@implementation UpdateGroupResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OperationReason = [properties valueForKey:@"OperationReason"];
    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    
    self.SetResult = (OperationTypes)[properties valueForKey:@"SetResult"];
    

    return self;
}
@end
@implementation UpdateGroupRoleRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ExpectedProfileVersion = [properties valueForKey:@"ExpectedProfileVersion"];
    
    self.Group = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Group"]];
    
    self.RoleId = [properties valueForKey:@"RoleId"];
    
    self.RoleName = [properties valueForKey:@"RoleName"];
    

    return self;
}
@end
@implementation UpdateGroupRoleResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.OperationReason = [properties valueForKey:@"OperationReason"];
    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    
    self.SetResult = (OperationTypes)[properties valueForKey:@"SetResult"];
    

    return self;
}
@end
@implementation WriteEventsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Events"]){
    NSArray* member_list = [properties objectForKey:@"Events"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[EventContents new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Events = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation WriteEventsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"AssignedEventIds"]){
    NSArray* member_list = [properties objectForKey:@"AssignedEventIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.AssignedEventIds = [mutable_storage copy];
}

    

    return self;
}
@end
