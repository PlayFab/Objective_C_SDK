#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"


typedef enum
{
    GroupsOperationTypesCreated,
    GroupsOperationTypesUpdated,
    GroupsOperationTypesDeleted,
    GroupsOperationTypesNone
} GroupsOperationTypes;

//predeclare all non-enum classes

@class GroupsAcceptGroupApplicationRequest;

@class GroupsAcceptGroupInvitationRequest;

@class GroupsAddMembersRequest;

@class GroupsApplyToGroupRequest;

@class GroupsApplyToGroupResponse;

@class GroupsBlockEntityRequest;

@class GroupsChangeMemberRoleRequest;

@class GroupsCreateGroupRequest;

@class GroupsCreateGroupResponse;

@class GroupsCreateGroupRoleRequest;

@class GroupsCreateGroupRoleResponse;

@class GroupsDeleteGroupRequest;

@class GroupsDeleteRoleRequest;

@class GroupsEmptyResponse;

@class GroupsEntityKey;

@class GroupsEntityMemberRole;

@class GroupsEntityWithLineage;

@class GroupsGetGroupRequest;

@class GroupsGetGroupResponse;

@class GroupsGroupApplication;

@class GroupsGroupBlock;

@class GroupsGroupInvitation;

@class GroupsGroupRole;

@class GroupsGroupWithRoles;

@class GroupsInviteToGroupRequest;

@class GroupsInviteToGroupResponse;

@class GroupsIsMemberRequest;

@class GroupsIsMemberResponse;

@class GroupsListGroupApplicationsRequest;

@class GroupsListGroupApplicationsResponse;

@class GroupsListGroupBlocksRequest;

@class GroupsListGroupBlocksResponse;

@class GroupsListGroupInvitationsRequest;

@class GroupsListGroupInvitationsResponse;

@class GroupsListGroupMembersRequest;

@class GroupsListGroupMembersResponse;

@class GroupsListMembershipOpportunitiesRequest;

@class GroupsListMembershipOpportunitiesResponse;

@class GroupsListMembershipRequest;

@class GroupsListMembershipResponse;

@class GroupsRemoveGroupApplicationRequest;

@class GroupsRemoveGroupInvitationRequest;

@class GroupsRemoveMembersRequest;

@class GroupsUnblockEntityRequest;

@class GroupsUpdateGroupRequest;

@class GroupsUpdateGroupResponse;

@class GroupsUpdateGroupRoleRequest;

@class GroupsUpdateGroupRoleResponse;



@interface GroupsAcceptGroupApplicationRequest : PlayFabBaseModel


/// <summary>
/// Optional. Type of the entity to accept as. If specified, must be the same entity as the claimant or an entity that is a child of the claimant entity. Defaults to the claimant entity.
/// </summary>
@property GroupsEntityKey* Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsAcceptGroupInvitationRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property GroupsEntityKey* Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsAddMembersRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 

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


@interface GroupsApplyToGroupRequest : PlayFabBaseModel


/// <summary>
/// Optional, default true. Automatically accept an outstanding invitation if one exists instead of creating an application
/// </summary>
@property bool AutoAcceptOutstandingInvite; 

/// <summary>
/// The entity to perform this action on.
/// </summary>
@property GroupsEntityKey* Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Describes an application to join a group
/// </summary>
@interface GroupsApplyToGroupResponse : PlayFabBaseModel


/// <summary>
/// Type of entity that requested membership
/// </summary>
@property GroupsEntityWithLineage* Entity; 

/// <summary>
/// When the application to join will expire and be deleted
/// </summary>
@property NSDate* Expires; 

/// <summary>
/// ID of the group that the entity requesting membership to
/// </summary>
@property GroupsEntityKey* Group; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsBlockEntityRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property GroupsEntityKey* Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsChangeMemberRoleRequest : PlayFabBaseModel


/// <summary>
/// The ID of the role that the entities will become a member of. This must be an existing role. Role IDs must be between 1 and 64 characters long.
/// </summary>
@property NSString* DestinationRoleId; 

/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 

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


@interface GroupsCreateGroupRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property GroupsEntityKey* Entity; 

/// <summary>
/// The name of the group. This is unique at the title level by default.
/// </summary>
@property NSString* GroupName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsCreateGroupResponse : PlayFabBaseModel


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
@property GroupsEntityKey* Group; 

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


@interface GroupsCreateGroupRoleRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 

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


@interface GroupsCreateGroupRoleResponse : PlayFabBaseModel


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


@interface GroupsDeleteGroupRequest : PlayFabBaseModel


/// <summary>
/// ID of the group or role to remove
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsDeleteRoleRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 

/// <summary>
/// The ID of the role to delete. Role IDs must be between 1 and 64 characters long.
/// </summary>
@property NSString* RoleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsEmptyResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Combined entity type and ID structure which uniquely identifies a single entity.
/// </summary>
@interface GroupsEntityKey : PlayFabBaseModel


/// <summary>
/// Unique ID of the entity.
/// </summary>
@property NSString* Id; 

/// <summary>
/// Entity type. See https://api.playfab.com/docs/tutorials/entities/entitytypes
/// </summary>
@property NSString* Type; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsEntityMemberRole : PlayFabBaseModel


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
@interface GroupsEntityWithLineage : PlayFabBaseModel


/// <summary>
/// The entity key for the specified entity
/// </summary>
@property GroupsEntityKey* Key; 

/// <summary>
/// Dictionary of entity keys for related entities. Dictionary key is entity type.
/// </summary>
@property NSDictionary* Lineage; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsGetGroupRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 

/// <summary>
/// The full name of the group
/// </summary>
@property NSString* GroupName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsGetGroupResponse : PlayFabBaseModel


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
@property GroupsEntityKey* Group; 

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
@interface GroupsGroupApplication : PlayFabBaseModel


/// <summary>
/// Type of entity that requested membership
/// </summary>
@property GroupsEntityWithLineage* Entity; 

/// <summary>
/// When the application to join will expire and be deleted
/// </summary>
@property NSDate* Expires; 

/// <summary>
/// ID of the group that the entity requesting membership to
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Describes an entity that is blocked from joining a group.
/// </summary>
@interface GroupsGroupBlock : PlayFabBaseModel


/// <summary>
/// The entity that is blocked
/// </summary>
@property GroupsEntityWithLineage* Entity; 

/// <summary>
/// ID of the group that the entity is blocked from
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Describes an invitation to a group.
/// </summary>
@interface GroupsGroupInvitation : PlayFabBaseModel


/// <summary>
/// When the invitation will expire and be deleted
/// </summary>
@property NSDate* Expires; 

/// <summary>
/// The group that the entity invited to
/// </summary>
@property GroupsEntityKey* Group; 

/// <summary>
/// The entity that created the invitation
/// </summary>
@property GroupsEntityWithLineage* InvitedByEntity; 

/// <summary>
/// The entity that is invited
/// </summary>
@property GroupsEntityWithLineage* InvitedEntity; 

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
@interface GroupsGroupRole : PlayFabBaseModel


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
@interface GroupsGroupWithRoles : PlayFabBaseModel


/// <summary>
/// ID for the group
/// </summary>
@property GroupsEntityKey* Group; 

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


@interface GroupsInviteToGroupRequest : PlayFabBaseModel


/// <summary>
/// Optional, default true. Automatically accept an application if one exists instead of creating an invitation
/// </summary>
@property bool AutoAcceptOutstandingApplication; 

/// <summary>
/// The entity to perform this action on.
/// </summary>
@property GroupsEntityKey* Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 

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
@interface GroupsInviteToGroupResponse : PlayFabBaseModel


/// <summary>
/// When the invitation will expire and be deleted
/// </summary>
@property NSDate* Expires; 

/// <summary>
/// The group that the entity invited to
/// </summary>
@property GroupsEntityKey* Group; 

/// <summary>
/// The entity that created the invitation
/// </summary>
@property GroupsEntityWithLineage* InvitedByEntity; 

/// <summary>
/// The entity that is invited
/// </summary>
@property GroupsEntityWithLineage* InvitedEntity; 

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


@interface GroupsIsMemberRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property GroupsEntityKey* Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 

/// <summary>
/// Optional: ID of the role to check membership of. Defaults to any role (that is, check to see if the entity is a member of the group in any capacity) if not specified.
/// </summary>
@property NSString* RoleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsIsMemberResponse : PlayFabBaseModel


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


@interface GroupsListGroupApplicationsRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsListGroupApplicationsResponse : PlayFabBaseModel


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


@interface GroupsListGroupBlocksRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsListGroupBlocksResponse : PlayFabBaseModel


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


@interface GroupsListGroupInvitationsRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsListGroupInvitationsResponse : PlayFabBaseModel


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


@interface GroupsListGroupMembersRequest : PlayFabBaseModel


/// <summary>
/// ID of the group to list the members and roles for
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsListGroupMembersResponse : PlayFabBaseModel


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


@interface GroupsListMembershipOpportunitiesRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property GroupsEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsListMembershipOpportunitiesResponse : PlayFabBaseModel


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


@interface GroupsListMembershipRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property GroupsEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsListMembershipResponse : PlayFabBaseModel


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


@interface GroupsRemoveGroupApplicationRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property GroupsEntityKey* Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsRemoveGroupInvitationRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property GroupsEntityKey* Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsRemoveMembersRequest : PlayFabBaseModel


/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 

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


@interface GroupsUnblockEntityRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property GroupsEntityKey* Entity; 

/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsUpdateGroupRequest : PlayFabBaseModel


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
@property GroupsEntityKey* Group; 

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


@interface GroupsUpdateGroupResponse : PlayFabBaseModel


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
@property GroupsOperationTypes SetResult; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GroupsUpdateGroupRoleRequest : PlayFabBaseModel


/// <summary>
/// Optional field used for concurrency control. By specifying the previously returned value of ProfileVersion from the GetGroup API, you can ensure that the group data update will only be performed if the group has not been updated by any other clients since the version you last loaded.
/// </summary>
@property NSNumber* ExpectedProfileVersion; 

/// <summary>
/// The identifier of the group
/// </summary>
@property GroupsEntityKey* Group; 

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


@interface GroupsUpdateGroupRoleResponse : PlayFabBaseModel


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
@property GroupsOperationTypes SetResult; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

