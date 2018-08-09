#import "PlayFabGroupsDataModels.h"


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
