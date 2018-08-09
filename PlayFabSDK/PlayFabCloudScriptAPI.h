

#import <Foundation/Foundation.h>

#import "PlayFabCloudScriptDataModels.h"
#import "PlayFabError.h"
#import "PlayFabSettings.h"

@interface PlayFabCloudScriptAPI : NSObject

		
typedef void(^ExecuteEntityCloudScriptCallback)(ExecuteCloudScriptResult* result, NSObject* userData);
		

+ (PlayFabClientAPI*) GetInstance;

		


        // ------------ Generated API calls
		
-(void) ExecuteEntityCloudScript:(ExecuteEntityCloudScriptRequest*)request success:(ExecuteEntityCloudScriptCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		

    //private:
/*
        // ------------ Generated result handlers
		
+ (void) OnExecuteEntityCloudScriptResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
 */

        //@property bool mOwnsRequester;
        //@property AFHTTPClient* mHttpRequester;


@end
