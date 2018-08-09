
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

//predeclare all non-enum classes

@class EntityKey;

@class GetEntityTokenRequest;

@class GetEntityTokenResponse;



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

