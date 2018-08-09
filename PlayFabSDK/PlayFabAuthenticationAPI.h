

#import <Foundation/Foundation.h>

#import "PlayFabAuthenticationDataModels.h"
#import "PlayFabError.h"
#import "PlayFabSettings.h"

@interface PlayFabAuthenticationAPI : NSObject

		
typedef void(^GetEntityTokenCallback)(GetEntityTokenResponse* result, NSObject* userData);
		

+ (PlayFabClientAPI*) GetInstance;

		


        // ------------ Generated API calls
		
-(void) GetEntityToken:(GetEntityTokenRequest*)request success:(GetEntityTokenCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		

    //private:
/*
        // ------------ Generated result handlers
		
+ (void) OnGetEntityTokenResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
 */

        //@property bool mOwnsRequester;
        //@property AFHTTPClient* mHttpRequester;


@end
