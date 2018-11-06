#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"


typedef enum
{
    ProfilesEffectTypeAllow,
    ProfilesEffectTypeDeny
} ProfilesEffectType;

typedef enum
{
    ProfilesOperationTypesCreated,
    ProfilesOperationTypesUpdated,
    ProfilesOperationTypesDeleted,
    ProfilesOperationTypesNone
} ProfilesOperationTypes;

//predeclare all non-enum classes

@class ProfilesEntityDataObject;

@class ProfilesEntityKey;

@class ProfilesEntityLineage;

@class ProfilesEntityPermissionStatement;

@class ProfilesEntityProfileBody;

@class ProfilesEntityProfileFileMetadata;

@class ProfilesGetEntityProfileRequest;

@class ProfilesGetEntityProfileResponse;

@class ProfilesGetEntityProfilesRequest;

@class ProfilesGetEntityProfilesResponse;

@class ProfilesGetGlobalPolicyRequest;

@class ProfilesGetGlobalPolicyResponse;

@class ProfilesSetEntityProfilePolicyRequest;

@class ProfilesSetEntityProfilePolicyResponse;

@class ProfilesSetGlobalPolicyRequest;

@class ProfilesSetGlobalPolicyResponse;

@class ProfilesSetProfileLanguageRequest;

@class ProfilesSetProfileLanguageResponse;



/// <summary>
/// An entity object and its associated meta data.
/// </summary>
@interface ProfilesEntityDataObject : PlayFabBaseModel


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
/// Combined entity type and ID structure which uniquely identifies a single entity.
/// </summary>
@interface ProfilesEntityKey : PlayFabBaseModel


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


@interface ProfilesEntityLineage : PlayFabBaseModel


/// <summary>
/// The Character Id of the associated entity.
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// The Group Id of the associated entity.
/// </summary>
@property NSString* GroupId; 

/// <summary>
/// The Master Player Account Id of the associated entity.
/// </summary>
@property NSString* MasterPlayerAccountId; 

/// <summary>
/// The Namespace Id of the associated entity.
/// </summary>
@property NSString* NamespaceId; 

/// <summary>
/// The Title Id of the associated entity.
/// </summary>
@property NSString* TitleId; 

/// <summary>
/// The Title Player Account Id of the associated entity.
/// </summary>
@property NSString* TitlePlayerAccountId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ProfilesEntityPermissionStatement : PlayFabBaseModel


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
@property ProfilesEffectType Effect; 

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


@interface ProfilesEntityProfileBody : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property ProfilesEntityKey* Entity; 

/// <summary>
/// The chain of responsibility for this entity. Use Lineage.
/// </summary>
@property NSString* EntityChain; 

/// <summary>
/// The files on this profile.
/// </summary>
@property NSDictionary* Files; 

/// <summary>
/// The friendly name of the entity. This field may serve different purposes for different entity types. i.e.: for a title player account it could represent the display name of the player, whereas on a character it could be character's name.
/// </summary>
@property NSString* FriendlyName; 

/// <summary>
/// The language on this profile.
/// </summary>
@property NSString* Language; 

/// <summary>
/// The lineage of this profile.
/// </summary>
@property ProfilesEntityLineage* Lineage; 

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
@interface ProfilesEntityProfileFileMetadata : PlayFabBaseModel


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


@interface ProfilesGetEntityProfileRequest : PlayFabBaseModel


/// <summary>
/// Determines whether the objects will be returned as an escaped JSON string or as a un-escaped JSON object. Default is JSON string.
/// </summary>
@property bool DataAsObject; 

/// <summary>
/// The entity to perform this action on.
/// </summary>
@property ProfilesEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ProfilesGetEntityProfileResponse : PlayFabBaseModel


/// <summary>
/// Entity profile
/// </summary>
@property ProfilesEntityProfileBody* Profile; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ProfilesGetEntityProfilesRequest : PlayFabBaseModel


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


@interface ProfilesGetEntityProfilesResponse : PlayFabBaseModel


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


@interface ProfilesGetGlobalPolicyRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ProfilesGetGlobalPolicyResponse : PlayFabBaseModel


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


@interface ProfilesSetEntityProfilePolicyRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property ProfilesEntityKey* Entity; 

/// <summary>
/// The statements to include in the access policy.
/// </summary>
@property NSArray* Statements; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ProfilesSetEntityProfilePolicyResponse : PlayFabBaseModel


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


@interface ProfilesSetGlobalPolicyRequest : PlayFabBaseModel


/// <summary>
/// The permissions that govern access to all entities under this title or namespace.
/// </summary>
@property NSArray* Permissions; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ProfilesSetGlobalPolicyResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ProfilesSetProfileLanguageRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property ProfilesEntityKey* Entity; 

/// <summary>
/// The expected version of a profile to perform this update on
/// </summary>
@property NSNumber* ExpectedVersion; 

/// <summary>
/// The language to set on the given entity. Deletes the profile's language if passed in a null string.
/// </summary>
@property NSString* Language; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ProfilesSetProfileLanguageResponse : PlayFabBaseModel


/// <summary>
/// The type of operation that occured on the profile's language
/// </summary>
@property ProfilesOperationTypes OperationResult; 

/// <summary>
/// The updated version of the profile after the language update
/// </summary>
@property NSNumber* VersionNumber; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

