
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
    CloudScriptRevisionOptionLive,
    CloudScriptRevisionOptionLatest,
    CloudScriptRevisionOptionSpecific
} CloudScriptRevisionOption;

typedef enum
{
    EffectTypeAllow,
    EffectTypeDeny
} EffectType;

typedef enum
{
    OperationTypesCreated,
    OperationTypesUpdated,
    OperationTypesDeleted,
    OperationTypesNone
} OperationTypes;

//predeclare all non-enum classes

@class AbortFileUploadsRequest;

@class AbortFileUploadsResponse;

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

@class DeleteFilesRequest;

@class DeleteFilesResponse;

@class DeleteGroupRequest;

@class DeleteRoleRequest;

@class EmptyResult;

@class EntityDataObject;

@class EntityKey;

@class EntityMemberRole;

@class EntityPermissionStatement;

@class EntityProfileBody;

@class EntityProfileFileMetadata;

@class EntityWithLineage;

@class EventContents;

@class ExecuteCloudScriptResult;

@class ExecuteEntityCloudScriptRequest;

@class FinalizeFileUploadsRequest;

@class FinalizeFileUploadsResponse;

@class GetEntityProfileRequest;

@class GetEntityProfileResponse;

@class GetEntityProfilesRequest;

@class GetEntityProfilesResponse;

@class GetEntityTokenRequest;

@class GetEntityTokenResponse;

@class GetFileMetadata;

@class GetFilesRequest;

@class GetFilesResponse;

@class GetGlobalPolicyRequest;

@class GetGlobalPolicyResponse;

@class GetGroupRequest;

@class GetGroupResponse;

@class GetObjectsRequest;

@class GetObjectsResponse;

@class GroupApplication;

@class GroupBlock;

@class GroupInvitation;

@class GroupRole;

@class GroupWithRoles;

@class InitiateFileUploadMetadata;

@class InitiateFileUploadsRequest;

@class InitiateFileUploadsResponse;

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

@class LogStatement;

@class ObjectResult;

@class RemoveGroupApplicationRequest;

@class RemoveGroupInvitationRequest;

@class RemoveMembersRequest;

@class ScriptExecutionError;

@class SetEntityProfilePolicyRequest;

@class SetEntityProfilePolicyResponse;

@class SetGlobalPolicyRequest;

@class SetGlobalPolicyResponse;

@class SetObject;

@class SetObjectInfo;

@class SetObjectsRequest;

@class SetObjectsResponse;

@class UnblockEntityRequest;

@class UpdateGroupRequest;

@class UpdateGroupResponse;

@class UpdateGroupRoleRequest;

@class UpdateGroupRoleResponse;

@class WriteEventsRequest;

@class WriteEventsResponse;



@interface AbortFileUploadsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// Names of the files to have their pending uploads aborted.
/// </summary>
@property NSArray* FileNames; 

/// <summary>
/// The expected version of the profile, if set and doesn't match the current version of the profile the operation will not be performed.
/// </summary>
@property NSNumber* ProfileVersion; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AbortFileUploadsResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


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


@interface DeleteFilesRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// Names of the files to be deleted.
/// </summary>
@property NSArray* FileNames; 

/// <summary>
/// The expected version of the profile, if set and doesn't match the current version of the profile the operation will not be performed.
/// </summary>
@property NSNumber* ProfileVersion; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface DeleteFilesResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 
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
/// An entity object and its associated meta data.
/// </summary>
@interface EntityDataObject : PlayFabBaseModel


/// <summary>
/// Un-escaped JSON object, if DataAsObject is true.
/// </summary>
@property NSDictionary* DataObject; 

/// <summary>
/// Escaped string JSON body of the object, if DataAsObject is default or false.
/// </summary>
@property NSString* EscapedDataObject; 

/// <summary>
/// Name of this object.
/// </summary>
@property NSString* ObjectName; 
/**/
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


@interface EntityPermissionStatement : PlayFabBaseModel


/// <summary>
/// The action this statement effects. May be 'Read', 'Write' or '*' for both read and write.
/// </summary>
@property NSString* Action; 

/// <summary>
/// A comment about the statement. Intended solely for bookkeeping and debugging.
/// </summary>
@property NSString* Comment; 

/// <summary>
/// Additional conditions to be applied for entity resources.
/// </summary>
@property NSDictionary* Condition; 

/// <summary>
/// The effect this statement will have. It may be either Allow or Deny
/// </summary>
@property EffectType Effect; 

/// <summary>
/// The principal this statement will effect.
/// </summary>
@property NSDictionary* Principal; 

/// <summary>
/// The resource this statements effects. Similar to 'pfrn:data--title![Title ID]/Profile/*'
/// </summary>
@property NSString* Resource; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EntityProfileBody : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The chain of responsibility for this entity. This is a representation of 'ownership'. It is constructed using the following formats (replace '[ID]' with the unique identifier for the given entity): Namespace: 'namespace![Namespace ID]' Title: 'title![Namespace ID]/[Title ID]' Master Player Account: 'master_player_account![Namespace ID]/[MasterPlayerAccount ID]' Title Player Account: 'title_player_account![Namespace ID]/[Title ID]/[MasterPlayerAccount ID]/[TitlePlayerAccount ID]' Character: 'character![Namespace ID]/[Title ID]/[MasterPlayerAccount ID]/[TitlePlayerAccount ID]/[Character ID]'
/// </summary>
@property NSString* EntityChain; 

/// <summary>
/// The files on this profile.
/// </summary>
@property NSDictionary* Files; 

/// <summary>
/// The objects on this profile.
/// </summary>
@property NSDictionary* Objects; 

/// <summary>
/// The permissions that govern access to this entity profile and its properties. Only includes permissions set on this profile, not global statements from titles and namespaces.
/// </summary>
@property NSArray* Permissions; 

/// <summary>
/// The version number of the profile in persistent storage at the time of the read. Used for optional optimistic concurrency during update.
/// </summary>
@property NSNumber* VersionNumber; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// An entity file's meta data. To get a download URL call File/GetFiles API.
/// </summary>
@interface EntityProfileFileMetadata : PlayFabBaseModel


/// <summary>
/// Checksum value for the file
/// </summary>
@property NSString* Checksum; 

/// <summary>
/// Name of the file
/// </summary>
@property NSString* FileName; 

/// <summary>
/// Last UTC time the file was modified
/// </summary>
@property NSDate* LastModified; 

/// <summary>
/// Storage service's reported byte count
/// </summary>
@property NSNumber* Size; 
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


@interface EventContents : PlayFabBaseModel


/// <summary>
/// Entity associated with the event
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// The namespace in which the event is defined. It must be prepended with 'com.playfab.events.'
/// </summary>
@property NSString* EventNamespace; 

/// <summary>
/// The name of this event.
/// </summary>
@property NSString* Name; 

/// <summary>
/// The original unique identifier associated with this event before it was posted to PlayFab. The value might differ from the EventId value, which is assigned when the event is received by the server.
/// </summary>
@property NSString* OriginalId; 

/// <summary>
/// The time (in UTC) associated with this event when it occurred. If specified, this value is stored in the OriginalTimestamp property of the PlayStream event.
/// </summary>
@property NSDate* OriginalTimestamp; 

/// <summary>
/// Arbitrary data associated with the event. Only one of Payload or PayloadJSON is allowed.
/// </summary>
@property NSDictionary* Payload; 

/// <summary>
/// Arbitrary data associated with the event, represented as a JSON serialized string. Only one of Payload or PayloadJSON is allowed.
/// </summary>
@property NSString* PayloadJSON; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExecuteCloudScriptResult : PlayFabBaseModel


/// <summary>
/// Number of PlayFab API requests issued by the CloudScript function
/// </summary>
@property NSNumber* APIRequestsIssued; 

/// <summary>
/// Information about the error, if any, that occurred during execution
/// </summary>
@property ScriptExecutionError* Error; 

@property NSNumber* ExecutionTimeSeconds; 

/// <summary>
/// The name of the function that executed
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/// The object returned from the CloudScript function, if any
/// </summary>
@property NSDictionary* FunctionResult; 

/// <summary>
/// Flag indicating if the FunctionResult was too large and was subsequently dropped from this event. This only occurs if the total event size is larger than 350KB.
/// </summary>
@property bool FunctionResultTooLarge; 

/// <summary>
/// Number of external HTTP requests issued by the CloudScript function
/// </summary>
@property NSNumber* HttpRequestsIssued; 

/// <summary>
/// Entries logged during the function execution. These include both entries logged in the function code using log.info() and log.error() and error entries for API and HTTP request failures.
/// </summary>
@property NSArray* Logs; 

/// <summary>
/// Flag indicating if the logs were too large and were subsequently dropped from this event. This only occurs if the total event size is larger than 350KB after the FunctionResult was removed.
/// </summary>
@property bool LogsTooLarge; 

@property NSNumber* MemoryConsumedBytes; 

/// <summary>
/// Processor time consumed while executing the function. This does not include time spent waiting on API calls or HTTP requests.
/// </summary>
@property NSNumber* ProcessorTimeSeconds; 

/// <summary>
/// The revision of the CloudScript that executed
/// </summary>
@property NSNumber* Revision; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExecuteEntityCloudScriptRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The name of the CloudScript function to execute
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/// Object that is passed in to the function as the first argument
/// </summary>
@property NSDictionary* FunctionParameter; 

/// <summary>
/// Generate a 'entity_executed_cloudscript' PlayStream event containing the results of the function execution and other contextual information. This event will show up in the PlayStream debugger console for the player in Game Manager.
/// </summary>
@property bool GeneratePlayStreamEvent; 

/// <summary>
/// Option for which revision of the CloudScript to execute. 'Latest' executes the most recently created revision, 'Live' executes the current live, published revision, and 'Specific' executes the specified revision. The default value is 'Specific', if the SpecificRevision parameter is specified, otherwise it is 'Live'.
/// </summary>
@property CloudScriptRevisionOption RevisionSelection; 

/// <summary>
/// The specific revision to execute, when RevisionSelection is set to 'Specific'
/// </summary>
@property NSNumber* SpecificRevision; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface FinalizeFileUploadsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// Names of the files to be finalized. Restricted to a-Z, 0-9, '(', ')', '_', '-' and '.'
/// </summary>
@property NSArray* FileNames; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface FinalizeFileUploadsResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// Collection of metadata for the entity's files
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetEntityProfileRequest : PlayFabBaseModel


/// <summary>
/// Determines whether the objects will be returned as an escaped JSON string or as a un-escaped JSON object. Default is JSON string.
/// </summary>
@property bool DataAsObject; 

/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetEntityProfileResponse : PlayFabBaseModel


/// <summary>
/// Entity profile
/// </summary>
@property EntityProfileBody* Profile; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetEntityProfilesRequest : PlayFabBaseModel


/// <summary>
/// Determines whether the objects will be returned as an escaped JSON string or as a un-escaped JSON object. Default is JSON string.
/// </summary>
@property bool DataAsObject; 

/// <summary>
/// Entity keys of the profiles to load. Must be between 1 and 25
/// </summary>
@property NSArray* Entities; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetEntityProfilesResponse : PlayFabBaseModel


/// <summary>
/// Entity profiles
/// </summary>
@property NSArray* Profiles; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetEntityTokenRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetEntityTokenResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The token used to set X-EntityToken for all entity based API calls.
/// </summary>
@property NSString* EntityToken; 

/// <summary>
/// The time the token will expire, if it is an expiring token, in UTC.
/// </summary>
@property NSDate* TokenExpiration; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetFileMetadata : PlayFabBaseModel


/// <summary>
/// Checksum value for the file
/// </summary>
@property NSString* Checksum; 

/// <summary>
/// Download URL where the file can be retrieved
/// </summary>
@property NSString* DownloadUrl; 

/// <summary>
/// Name of the file
/// </summary>
@property NSString* FileName; 

/// <summary>
/// Last UTC time the file was modified
/// </summary>
@property NSDate* LastModified; 

/// <summary>
/// Storage service's reported byte count
/// </summary>
@property NSNumber* Size; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetFilesRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetFilesResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// Collection of metadata for the entity's files
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetGlobalPolicyRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetGlobalPolicyResponse : PlayFabBaseModel


/// <summary>
/// The permissions that govern access to all entities under this title or namespace.
/// </summary>
@property NSArray* Permissions; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
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


@interface GetObjectsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// Determines whether the object will be returned as an escaped JSON string or as a un-escaped JSON object. Default is JSON object.
/// </summary>
@property bool EscapeObject; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetObjectsResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// Requested objects that the calling entity has access to
/// </summary>
@property NSDictionary* Objects; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 
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


@interface InitiateFileUploadMetadata : PlayFabBaseModel


/// <summary>
/// Name of the file.
/// </summary>
@property NSString* FileName; 

/// <summary>
/// Location the data should be sent to via an HTTP PUT operation.
/// </summary>
@property NSString* UploadUrl; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface InitiateFileUploadsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// Names of the files to be set. Restricted to a-Z, 0-9, '(', ')', '_', '-' and '.'
/// </summary>
@property NSArray* FileNames; 

/// <summary>
/// The expected version of the profile, if set and doesn't match the current version of the profile the operation will not be performed.
/// </summary>
@property NSNumber* ProfileVersion; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface InitiateFileUploadsResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 

/// <summary>
/// Collection of file names and upload urls
/// </summary>
@property NSArray* UploadDetails; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
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


@interface LogStatement : PlayFabBaseModel


/// <summary>
/// Optional object accompanying the message as contextual information
/// </summary>
@property NSDictionary* Data; 

/// <summary>
/// 'Debug', 'Info', or 'Error'
/// </summary>
@property NSString* Level; 

@property NSString* Message; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ObjectResult : PlayFabBaseModel


/// <summary>
/// Un-escaped JSON object, if EscapeObject false or default.
/// </summary>
@property NSDictionary* DataObject; 

/// <summary>
/// Escaped string JSON body of the object, if EscapeObject is true.
/// </summary>
@property NSString* EscapedDataObject; 

/// <summary>
/// Name of the object. Restricted to a-Z, 0-9, '(', ')', '_', '-' and '.'
/// </summary>
@property NSString* ObjectName; 
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


@interface ScriptExecutionError : PlayFabBaseModel


/// <summary>
/// Error code, such as CloudScriptNotFound, JavascriptException, CloudScriptFunctionArgumentSizeExceeded, CloudScriptAPIRequestCountExceeded, CloudScriptAPIRequestError, or CloudScriptHTTPRequestError
/// </summary>
@property NSString* Error; 

/// <summary>
/// Details about the error
/// </summary>
@property NSString* Message; 

/// <summary>
/// Point during the execution of the script at which the error occurred, if any
/// </summary>
@property NSString* StackTrace; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetEntityProfilePolicyRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// The statements to include in the access policy.
/// </summary>
@property NSArray* Statements; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetEntityProfilePolicyResponse : PlayFabBaseModel


/// <summary>
/// The permissions that govern access to this entity profile and its properties. Only includes permissions set on this profile, not global statements from titles and namespaces.
/// </summary>
@property NSArray* Permissions; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetGlobalPolicyRequest : PlayFabBaseModel


/// <summary>
/// The permissions that govern access to all entities under this title or namespace.
/// </summary>
@property NSArray* Permissions; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetGlobalPolicyResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetObject : PlayFabBaseModel


/// <summary>
/// Body of the object to be saved. If empty and DeleteObject is true object will be deleted if it exists, or no operation will occur if it does not exist. Only one of Object or EscapedDataObject fields may be used.
/// </summary>
@property NSDictionary* DataObject; 

/// <summary>
/// Flag to indicate that this object should be deleted. Both DataObject and EscapedDataObject must not be set as well.
/// </summary>
@property bool DeleteObject; 

/// <summary>
/// Body of the object to be saved as an escaped JSON string. If empty and DeleteObject is true object will be deleted if it exists, or no operation will occur if it does not exist. Only one of DataObject or EscapedDataObject fields may be used.
/// </summary>
@property NSString* EscapedDataObject; 

/// <summary>
/// Name of object. Restricted to a-Z, 0-9, '(', ')', '_', '-' and '.'.
/// </summary>
@property NSString* ObjectName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetObjectInfo : PlayFabBaseModel


/// <summary>
/// Name of the object
/// </summary>
@property NSString* ObjectName; 

/// <summary>
/// Optional reason to explain why the operation was the result that it was.
/// </summary>
@property NSString* OperationReason; 

/// <summary>
/// Indicates which operation was completed, either Created, Updated, Deleted or None.
/// </summary>
@property OperationTypes SetResult; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetObjectsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// Optional field used for concurrency control. By specifying the previously returned value of ProfileVersion from GetProfile API, you can ensure that the object set will only be performed if the profile has not been updated by any other clients since the version you last loaded.
/// </summary>
@property NSNumber* ExpectedProfileVersion; 

/// <summary>
/// Collection of objects to set on the profile.
/// </summary>
@property NSArray* Objects; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetObjectsResponse : PlayFabBaseModel


/// <summary>
/// New version of the entity profile.
/// </summary>
@property NSNumber* ProfileVersion; 

/// <summary>
/// New version of the entity profile.
/// </summary>
@property NSArray* SetResults; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
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


@interface WriteEventsRequest : PlayFabBaseModel


/// <summary>
/// Collection of events to write to PlayStream.
/// </summary>
@property NSArray* Events; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface WriteEventsResponse : PlayFabBaseModel


/// <summary>
/// The unique identifiers assigned by the server to the events, in the same order as the events in the request. Only returned if FlushToPlayStream option is true.
/// </summary>
@property NSArray* AssignedEventIds; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

