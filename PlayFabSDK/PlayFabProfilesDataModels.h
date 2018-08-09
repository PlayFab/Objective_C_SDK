
#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"



typedef enum
{
    EffectTypeAllow,
    EffectTypeDeny
} EffectType;

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

@class EntityDataObject;

@class EntityKey;

@class EntityPermissionStatement;

@class EntityProfileBody;

@class EntityProfileFileMetadata;

@class GetEntityProfileRequest;

@class GetEntityProfileResponse;

@class GetEntityProfilesRequest;

@class GetEntityProfilesResponse;

@class GetGlobalPolicyRequest;

@class GetGlobalPolicyResponse;

@class SetEntityProfilePolicyRequest;

@class SetEntityProfilePolicyResponse;

@class SetGlobalPolicyRequest;

@class SetGlobalPolicyResponse;

@class SetProfileLanguageRequest;

@class SetProfileLanguageResponse;



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
/// The language on this profile.
/// </summary>
@property NSString* Language; 

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


@interface SetProfileLanguageRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey* Entity; 

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


@interface SetProfileLanguageResponse : PlayFabBaseModel


/// <summary>
/// The type of operation that occured on the profile's language
/// </summary>
@property OperationTypes OperationResult; 

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

