
#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"



typedef enum
{
    EntityTypestitle,
    EntityTypesmaster_player_account,
    EntityTypestitle_player_account,
    EntityTypescharacter,
    EntityTypesgroup,
    EntityTypesservice
} EntityTypes;

typedef enum
{
    OperationTypesCreated,
    OperationTypesUpdated,
    OperationTypesDeleted,
    OperationTypesNone
} OperationTypes;

//predeclare all non-enum classes

@class AcceptGroupApplicationRequest;

@class AcceptGroupInvitationRequest;

@class AddMembersRequest;

@class ApplyToGroupRequest;

@class ApplyToGroupResponse;

@class BlockEntityRequest;

@class ChangeMemberRoleRequest;

@class CreateGroupRequest;

@class CreateGroupResponse;

@class CreateGroupRoleRequest;

@class CreateGroupRoleResponse;

@class DeleteGroupRequest;

@class DeleteRoleRequest;

@class EmptyResult;

@class EntityKey;

@class EntityMemberRole;

@class EntityWithLineage;

@class GetGroupRequest;

@class GetGroupResponse;

@class GroupApplication;

@class GroupBlock;

@class GroupInvitation;

@class GroupRole;

@class GroupWithRoles;

@class InviteToGroupRequest;

@class InviteToGroupResponse;

@class IsMemberRequest;

@class IsMemberResponse;

@class ListGroupApplicationsRequest;

@class ListGroupApplicationsResponse;

@class ListGroupBlocksRequest;

@class ListGroupBlocksResponse;

@class ListGroupInvitationsRequest;

@class ListGroupInvitationsResponse;

@class ListGroupMembersRequest;

@class ListGroupMembersResponse;

@class ListMembershipOpportunitiesRequest;

@class ListMembershipOpportunitiesResponse;

@class ListMembershipRequest;

@class ListMembershipResponse;

@class RemoveGroupApplicationRequest;

@class RemoveGroupInvitationRequest;

@class RemoveMembersRequest;

@class UnblockEntityRequest;

@class UpdateGroupRequest;

@class UpdateGroupResponse;

@class UpdateGroupRoleRequest;

@class UpdateGroupRoleResponse;



@interface AcceptGroupApplicationRequest : PlayFabBaseModel


/// <summary>
/// Optional. Type of the entity to accept as. If specified, must be the same entity as the claimant or an entity that is a child of the claimant entity. Defaults to the claimant entity.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AcceptGroupInvitationRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AddMembersRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 

/// <summary>
/// List of entities to add to the group. Only entities of type title_player_account and character may be added to groups.
/// </summary>
@property NSArray* Members; 

/// <summary>
/// Optional: The ID of the existing role to add the entities to. If this is not specified, the default member role for the group will be used. Role IDs must be between 1 and 64 characters long.
/// </summary>
@property NSString* RoleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ApplyToGroupRequest : PlayFabBaseModel


/// <summary>
/// Optional, default true. Automatically accept an outstanding invitation if one exists instead of creating an application
/// </summary>
@property bool AutoAcceptOutstandingInvite; 

/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Describes an application to join a group
/// </summary>
@interface ApplyToGroupResponse : PlayFabBaseModel


/// <summary>
/// Type of entity that requested membership
/// </summary>
@property EntityWithLineage* Entity; 

/// <summary>
/// When the application to join will expire and be deleted
/// </summary>
@property NSDate* Expires; 

/// <summary>
/// ID of the group that the entity requesting membership to
/// </summary>
@property EntityKey* Group; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface BlockEntityRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ChangeMemberRoleRequest : PlayFabBaseModel


/// <summary>
/// The ID of the role that the entities will become a member of. This must be an existing role. Role IDs must be between 1 and 64 characters long.
/// </summary>
@property NSString* DestinationRoleId; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 

/// <summary>
/// List of entities to move between roles in the group. All entities in this list must be members of the group and origin role.
/// </summary>
@property NSArray* Members; 

/// <summary>
/// The ID of the role that the entities currently are a member of. Role IDs must be between 1 and 64 characters long.
/// </summary>
@property NSString* OriginRoleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CreateGroupRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The name of the group. This is unique at the title level by default.
/// </summary>
@property NSString* GroupName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CreateGroupResponse : PlayFabBaseModel


/// <summary>
/// The ID of the administrator role for the group.
/// </summary>
@property NSString* AdminRoleId; 

/// <summary>
/// The server date and time the group was created.
/// </summary>
@property NSDate* Created; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 

/// <summary>
/// The name of the group.
/// </summary>
@property NSString* GroupName; 

/// <summary>
/// The ID of the default member role for the group.
/// </summary>
@property NSString* MemberRoleId; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 

/// <summary>
/// The list of roles and names that belong to the group.
/// </summary>
@property NSDictionary* Roles; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CreateGroupRoleRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 

/// <summary>
/// The ID of the role. This must be unique within the group and cannot be changed. Role IDs must be between 1 and 64 characters long.
/// </summary>
@property NSString* RoleId; 

/// <summary>
/// The name of the role. This must be unique within the group and can be changed later. Role names must be between 1 and 100 characters long
/// </summary>
@property NSString* RoleName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CreateGroupRoleResponse : PlayFabBaseModel


/// <summary>
/// The current version of the group profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 

/// <summary>
/// ID for the role
/// </summary>
@property NSString* RoleId; 

/// <summary>
/// The name of the role
/// </summary>
@property NSString* RoleName; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface DeleteGroupRequest : PlayFabBaseModel


/// <summary>
/// ID of the group or role to remove
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface DeleteRoleRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 

/// <summary>
/// The ID of the role to delete. Role IDs must be between 1 and 64 characters long.
/// </summary>
@property NSString* RoleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EmptyResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Entity identifier class that contains both the ID and type.
/// </summary>
@interface EntityKey : PlayFabBaseModel


/// <summary>
/// Entity profile ID.
/// </summary>
@property NSString* Id; 

/// <summary>
/// Entity type. Optional to be used but one of EntityType or EntityTypeString must be set.
/// </summary>
@property EntityTypes Type; 

/// <summary>
/// Entity type. Optional to be used but one of EntityType or EntityTypeString must be set.
/// </summary>
@property NSString* TypeString; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EntityMemberRole : PlayFabBaseModel


/// <summary>
/// The list of members in the role
/// </summary>
@property NSArray* Members; 

/// <summary>
/// The ID of the role.
/// </summary>
@property NSString* RoleId; 

/// <summary>
/// The name of the role
/// </summary>
@property NSString* RoleName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Entity wrapper class that contains the entity key and the entities that make up the lineage of the entity.
/// </summary>
@interface EntityWithLineage : PlayFabBaseModel


/// <summary>
/// The entity key for the specified entity
/// </summary>
@property EntityKey* Key; 

/// <summary>
/// Dictionary of entity keys for related entities. Dictionary key is entity type.
/// </summary>
@property NSDictionary* Lineage; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetGroupRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey* Group; 

/// <summary>
/// The full name of the group
/// </summary>
@property NSString* GroupName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetGroupResponse : PlayFabBaseModel


/// <summary>
/// The ID of the administrator role for the group.
/// </summary>
@property NSString* AdminRoleId; 

/// <summary>
/// The server date and time the group was created.
/// </summary>
@property NSDate* Created; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 

/// <summary>
/// The name of the group.
/// </summary>
@property NSString* GroupName; 

/// <summary>
/// The ID of the default member role for the group.
/// </summary>
@property NSString* MemberRoleId; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 

/// <summary>
/// The list of roles and names that belong to the group.
/// </summary>
@property NSDictionary* Roles; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Describes an application to join a group
/// </summary>
@interface GroupApplication : PlayFabBaseModel


/// <summary>
/// Type of entity that requested membership
/// </summary>
@property EntityWithLineage* Entity; 

/// <summary>
/// When the application to join will expire and be deleted
/// </summary>
@property NSDate* Expires; 

/// <summary>
/// ID of the group that the entity requesting membership to
/// </summary>
@property EntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Describes an entity that is blocked from joining a group.
/// </summary>
@interface GroupBlock : PlayFabBaseModel


/// <summary>
/// The entity that is blocked
/// </summary>
@property EntityWithLineage* Entity; 

/// <summary>
/// ID of the group that the entity is blocked from
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Describes an invitation to a group.
/// </summary>
@interface GroupInvitation : PlayFabBaseModel


/// <summary>
/// When the invitation will expire and be deleted
/// </summary>
@property NSDate* Expires; 

/// <summary>
/// The group that the entity invited to
/// </summary>
@property EntityKey* Group; 

/// <summary>
/// The entity that created the invitation
/// </summary>
@property EntityWithLineage* InvitedByEntity; 

/// <summary>
/// The entity that is invited
/// </summary>
@property EntityWithLineage* InvitedEntity; 

/// <summary>
/// ID of the role in the group to assign the user to.
/// </summary>
@property NSString* RoleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Describes a group role
/// </summary>
@interface GroupRole : PlayFabBaseModel


/// <summary>
/// ID for the role
/// </summary>
@property NSString* RoleId; 

/// <summary>
/// The name of the role
/// </summary>
@property NSString* RoleName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Describes a group and the roles that it contains
/// </summary>
@interface GroupWithRoles : PlayFabBaseModel


/// <summary>
/// ID for the group
/// </summary>
@property EntityKey* Group; 

/// <summary>
/// The name of the group
/// </summary>
@property NSString* GroupName; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 

/// <summary>
/// The list of roles within the group
/// </summary>
@property NSArray* Roles; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface InviteToGroupRequest : PlayFabBaseModel


/// <summary>
/// Optional, default true. Automatically accept an application if one exists instead of creating an invitation
/// </summary>
@property bool AutoAcceptOutstandingApplication; 

/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 

/// <summary>
/// Optional. ID of an existing a role in the group to assign the user to. The group's default member role is used if this is not specified. Role IDs must be between 1 and 64 characters long.
/// </summary>
@property NSString* RoleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Describes an invitation to a group.
/// </summary>
@interface InviteToGroupResponse : PlayFabBaseModel


/// <summary>
/// When the invitation will expire and be deleted
/// </summary>
@property NSDate* Expires; 

/// <summary>
/// The group that the entity invited to
/// </summary>
@property EntityKey* Group; 

/// <summary>
/// The entity that created the invitation
/// </summary>
@property EntityWithLineage* InvitedByEntity; 

/// <summary>
/// The entity that is invited
/// </summary>
@property EntityWithLineage* InvitedEntity; 

/// <summary>
/// ID of the role in the group to assign the user to.
/// </summary>
@property NSString* RoleId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface IsMemberRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 

/// <summary>
/// Optional: ID of the role to check membership of. Defaults to any role (that is, check to see if the entity is a member of the group in any capacity) if not specified.
/// </summary>
@property NSString* RoleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface IsMemberResponse : PlayFabBaseModel


/// <summary>
/// A value indicating whether or not the entity is a member.
/// </summary>
@property bool IsMember; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListGroupApplicationsRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListGroupApplicationsResponse : PlayFabBaseModel


/// <summary>
/// The requested list of applications to the group.
/// </summary>
@property NSArray* Applications; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListGroupBlocksRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListGroupBlocksResponse : PlayFabBaseModel


/// <summary>
/// The requested list blocked entities.
/// </summary>
@property NSArray* BlockedEntities; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListGroupInvitationsRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListGroupInvitationsResponse : PlayFabBaseModel


/// <summary>
/// The requested list of group invitations.
/// </summary>
@property NSArray* Invitations; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListGroupMembersRequest : PlayFabBaseModel


/// <summary>
/// ID of the group to list the members and roles for
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListGroupMembersResponse : PlayFabBaseModel


/// <summary>
/// The requested list of roles and member entity IDs.
/// </summary>
@property NSArray* Members; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListMembershipOpportunitiesRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListMembershipOpportunitiesResponse : PlayFabBaseModel


/// <summary>
/// The requested list of group applications.
/// </summary>
@property NSArray* Applications; 

/// <summary>
/// The requested list of group invitations.
/// </summary>
@property NSArray* Invitations; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListMembershipRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListMembershipResponse : PlayFabBaseModel


/// <summary>
/// The list of groups
/// </summary>
@property NSArray* Groups; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RemoveGroupApplicationRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RemoveGroupInvitationRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RemoveMembersRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 

/// <summary>
/// List of entities to remove
/// </summary>
@property NSArray* Members; 

/// <summary>
/// The ID of the role to remove the entities from.
/// </summary>
@property NSString* RoleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnblockEntityRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateGroupRequest : PlayFabBaseModel


/// <summary>
/// Optional: the ID of an existing role to set as the new administrator role for the group
/// </summary>
@property NSString* AdminRoleId; 

/// <summary>
/// Optional field used for concurrency control. By specifying the previously returned value of ProfileVersion from the GetGroup API, you can ensure that the group data update will only be performed if the group has not been updated by any other clients since the version you last loaded.
/// </summary>
@property NSNumber* ExpectedProfileVersion; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 

/// <summary>
/// Optional: the new name of the group
/// </summary>
@property NSString* GroupName; 

/// <summary>
/// Optional: the ID of an existing role to set as the new member role for the group
/// </summary>
@property NSString* MemberRoleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateGroupResponse : PlayFabBaseModel


/// <summary>
/// Optional reason to explain why the operation was the result that it was.
/// </summary>
@property NSString* OperationReason; 

/// <summary>
/// New version of the group data.
/// </summary>
@property NSNumber* ProfileVersion; 

/// <summary>
/// Indicates which operation was completed, either Created, Updated, Deleted or None.
/// </summary>
@property OperationTypes SetResult; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateGroupRoleRequest : PlayFabBaseModel


/// <summary>
/// Optional field used for concurrency control. By specifying the previously returned value of ProfileVersion from the GetGroup API, you can ensure that the group data update will only be performed if the group has not been updated by any other clients since the version you last loaded.
/// </summary>
@property NSNumber* ExpectedProfileVersion; 

/// <summary>
/// The identifier of the group
/// </summary>
@property EntityKey Group; 

/// <summary>
/// ID of the role to update. Role IDs must be between 1 and 64 characters long.
/// </summary>
@property NSString* RoleId; 

/// <summary>
/// The new name of the role
/// </summary>
@property NSString* RoleName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateGroupRoleResponse : PlayFabBaseModel


/// <summary>
/// Optional reason to explain why the operation was the result that it was.
/// </summary>
@property NSString* OperationReason; 

/// <summary>
/// New version of the role data.
/// </summary>
@property NSNumber* ProfileVersion; 

/// <summary>
/// Indicates which operation was completed, either Created, Updated, Deleted or None.
/// </summary>
@property OperationTypes SetResult; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

