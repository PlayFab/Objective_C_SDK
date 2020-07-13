#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"


//predeclare all non-enum classes

@class LocalizationGetLanguageListRequest;

@class LocalizationGetLanguageListResponse;



@interface LocalizationGetLanguageListRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LocalizationGetLanguageListResponse : PlayFabBaseModel


/// <summary>
/*
/// The list of allowed languages, in BCP47 two-letter format
*/
/// </summary>
@property NSArray* LanguageList; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

