#import <Foundation/Foundation.h>

#import "PlayFabAuthenticationDataModels.h"
#import "PlayFabError.h"
#import "PlayFabSettings.h"


@interface PlayFabAuthenticationAPI : NSObject

+(NSString*) GetURL;


		
typedef void(^ActivateKeyCallback)(AuthenticationActivateAPIKeyResponse* result, NSObject* userData);
		
typedef void(^CreateKeyCallback)(AuthenticationCreateAPIKeyResponse* result, NSObject* userData);
		
typedef void(^DeactivateKeyCallback)(AuthenticationDeactivateAPIKeyResponse* result, NSObject* userData);
		
typedef void(^DeleteKeyCallback)(AuthenticationDeleteAPIKeyResponse* result, NSObject* userData);
		
typedef void(^GetEntityTokenCallback)(AuthenticationGetEntityTokenResponse* result, NSObject* userData);
		
typedef void(^GetKeysCallback)(AuthenticationGetAPIKeysResponse* result, NSObject* userData);
		

+ (PlayFabClientAPI*) GetInstance;

		

// ------------ Generated API calls
		
-(void) ActivateKey:(AuthenticationActivateAPIKeyRequest*)request success:(ActivateKeyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateKey:(AuthenticationCreateAPIKeyRequest*)request success:(CreateKeyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeactivateKey:(AuthenticationDeactivateAPIKeyRequest*)request success:(DeactivateKeyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteKey:(AuthenticationDeleteAPIKeyRequest*)request success:(DeleteKeyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetEntityToken:(AuthenticationGetEntityTokenRequest*)request success:(GetEntityTokenCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetKeys:(AuthenticationGetAPIKeysRequest*)request success:(GetKeysCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		

@end
