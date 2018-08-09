

#import <Foundation/Foundation.h>

#import "PlayFabProfilesDataModels.h"
#import "PlayFabError.h"
#import "PlayFabSettings.h"

@interface PlayFabProfilesAPI : NSObject

		
typedef void(^GetGlobalPolicyCallback)(GetGlobalPolicyResponse* result, NSObject* userData);
		
typedef void(^GetProfileCallback)(GetEntityProfileResponse* result, NSObject* userData);
		
typedef void(^GetProfilesCallback)(GetEntityProfilesResponse* result, NSObject* userData);
		
typedef void(^SetGlobalPolicyCallback)(SetGlobalPolicyResponse* result, NSObject* userData);
		
typedef void(^SetProfileLanguageCallback)(SetProfileLanguageResponse* result, NSObject* userData);
		
typedef void(^SetProfilePolicyCallback)(SetEntityProfilePolicyResponse* result, NSObject* userData);
		

+ (PlayFabClientAPI*) GetInstance;

		


        // ------------ Generated API calls
		
-(void) GetGlobalPolicy:(GetGlobalPolicyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*) userData;
		
-(void) GetProfile:(GetEntityProfileRequest*)request success:(GetProfileCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetProfiles:(GetEntityProfilesRequest*)request success:(GetProfilesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) SetGlobalPolicy:(SetGlobalPolicyRequest*)request success:(SetGlobalPolicyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) SetProfileLanguage:(SetProfileLanguageRequest*)request success:(SetProfileLanguageCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) SetProfilePolicy:(SetEntityProfilePolicyRequest*)request success:(SetProfilePolicyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		

    //private:
/*
        // ------------ Generated result handlers
		
+ (void) OnGetGlobalPolicyResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnGetProfileResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnGetProfilesResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnSetGlobalPolicyResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnSetProfileLanguageResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnSetProfilePolicyResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
 */

        //@property bool mOwnsRequester;
        //@property AFHTTPClient* mHttpRequester;


@end
