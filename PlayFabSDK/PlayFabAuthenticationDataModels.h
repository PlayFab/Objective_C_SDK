#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"


//predeclare all non-enum classes

@class AuthenticationEntityKey;

@class AuthenticationGetEntityTokenRequest;

@class AuthenticationGetEntityTokenResponse;



/// <summary>
/// Combined entity type and ID structure which uniquely identifies a single entity.
/// </summary>
@interface AuthenticationEntityKey : PlayFabBaseModel


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


@interface AuthenticationGetEntityTokenRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property AuthenticationEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AuthenticationGetEntityTokenResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property AuthenticationEntityKey* Entity; 

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

