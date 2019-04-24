#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"


//predeclare all non-enum classes

@class AuthenticationActivateAPIKeyRequest;

@class AuthenticationActivateAPIKeyResponse;

@class AuthenticationCreateAPIKeyDetails;

@class AuthenticationCreateAPIKeyRequest;

@class AuthenticationCreateAPIKeyResponse;

@class AuthenticationDeactivateAPIKeyRequest;

@class AuthenticationDeactivateAPIKeyResponse;

@class AuthenticationDeleteAPIKeyRequest;

@class AuthenticationDeleteAPIKeyResponse;

@class AuthenticationEntityKey;

@class AuthenticationGetAPIKeyDetails;

@class AuthenticationGetAPIKeysRequest;

@class AuthenticationGetAPIKeysResponse;

@class AuthenticationGetEntityTokenRequest;

@class AuthenticationGetEntityTokenResponse;



@interface AuthenticationActivateAPIKeyRequest : PlayFabBaseModel


/// <summary>
/*
/// Unique identifier for the entity API key to activate.
*/
/// </summary>
@property NSString* APIKeyId; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property AuthenticationEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationActivateAPIKeyResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationCreateAPIKeyDetails : PlayFabBaseModel


/// <summary>
/*
/// Whether the key is active for authentication. Inactive keys cannot be used to authenticate.Keys can be activated or deactivate using the ActivateKey and DeactivateKey APIs.Deactivating a key is a way to verify that the key is not in use before deleting it.
*/
/// </summary>
@property bool Active; 

/// <summary>
/*
/// Unique identifier for the entity API key. Set in the "X - EntityAPIKeyId" in authentication requests.
*/
/// </summary>
@property NSString* APIKeyId; 

/// <summary>
/*
/// Secret used to authenticate requests with the key. Set in the "X - EntityAPIKeyId" in authentication requests.The secret value is returned only once in this response and cannot be retrieved afterward, either via API or in Game Manager.API key secrets should be stored securely only on trusted servers and never distributed in code or configuration to untrusted clients.
*/
/// </summary>
@property NSString* APIKeySecret; 

/// <summary>
/*
/// The time the API key was generated, in UTC.
*/
/// </summary>
@property NSDate* Created; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationCreateAPIKeyRequest : PlayFabBaseModel


/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property AuthenticationEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationCreateAPIKeyResponse : PlayFabBaseModel


/// <summary>
/*
/// The entity id and type.
*/
/// </summary>
@property AuthenticationEntityKey* Entity; 

/// <summary>
/*
/// The created API key
*/
/// </summary>
@property AuthenticationCreateAPIKeyDetails* Key; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationDeactivateAPIKeyRequest : PlayFabBaseModel


/// <summary>
/*
/// Unique identifier for the entity API key to activate.
*/
/// </summary>
@property NSString* APIKeyId; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property AuthenticationEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationDeactivateAPIKeyResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationDeleteAPIKeyRequest : PlayFabBaseModel


/// <summary>
/*
/// Unique identifier for the entity API key to delete.
*/
/// </summary>
@property NSString* APIKeyId; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property AuthenticationEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationDeleteAPIKeyResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Combined entity type and ID structure which uniquely identifies a single entity.
*/
/// </summary>
@interface AuthenticationEntityKey : PlayFabBaseModel


/// <summary>
/*
/// Unique ID of the entity.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// Entity type. See https://api.playfab.com/docs/tutorials/entities/entitytypes
*/
/// </summary>
@property NSString* Type; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationGetAPIKeyDetails : PlayFabBaseModel


/// <summary>
/*
/// Whether the key is active for authentication. Inactive keys cannot be used to authenticate.Keys can be activated or deactivate using the SetAPIActivation API.Deactivating a key is a way to verify that the key is not in use be before deleting it.
*/
/// </summary>
@property bool Active; 

/// <summary>
/*
/// Unique identifier for the entity API key. Set in the "X - EntityAPIKeyId" in authentication requests.
*/
/// </summary>
@property NSString* APIKeyId; 

/// <summary>
/*
/// The time the API key was generated, in UTC.
*/
/// </summary>
@property NSDate* Created; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationGetAPIKeysRequest : PlayFabBaseModel


/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property AuthenticationEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationGetAPIKeysResponse : PlayFabBaseModel


/// <summary>
/*
/// The entity id and type.
*/
/// </summary>
@property AuthenticationEntityKey* Entity; 

/// <summary>
/*
/// The API keys associated with the given entity.
*/
/// </summary>
@property NSArray* Keys; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// This API must be called with X-SecretKey, X-Authentication or X-EntityToken headers. An optional EntityKey may be included to attempt to set the resulting EntityToken to a specific entity, however the entity must be a relation of the caller, such as the master_player_account of a character. If sending X-EntityToken the account will be marked as freshly logged in and will issue a new token. If using X-Authentication or X-EntityToken the header must still be valid and cannot be expired or revoked.
*/
/// </summary>
@interface AuthenticationGetEntityTokenRequest : PlayFabBaseModel


/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property AuthenticationEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationGetEntityTokenResponse : PlayFabBaseModel


/// <summary>
/*
/// The entity id and type.
*/
/// </summary>
@property AuthenticationEntityKey* Entity; 

/// <summary>
/*
/// The token used to set X-EntityToken for all entity based API calls.
*/
/// </summary>
@property NSString* EntityToken; 

/// <summary>
/*
/// The time the token will expire, if it is an expiring token, in UTC.
*/
/// </summary>
@property NSDate* TokenExpiration; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

