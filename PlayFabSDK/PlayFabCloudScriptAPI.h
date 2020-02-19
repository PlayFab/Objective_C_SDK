#import <Foundation/Foundation.h>

#import "PlayFabCloudScriptDataModels.h"
#import "PlayFabError.h"
#import "PlayFabSettings.h"


@interface PlayFabCloudScriptAPI : NSObject

+(NSString*) GetURL;


		
typedef void(^ExecuteEntityCloudScriptCallback)(CloudScriptExecuteCloudScriptResult* result, NSObject* userData);
		
typedef void(^ExecuteFunctionCallback)(CloudScriptExecuteFunctionResult* result, NSObject* userData);
		
typedef void(^ListFunctionsCallback)(CloudScriptListFunctionsResult* result, NSObject* userData);
		
typedef void(^ListHttpFunctionsCallback)(CloudScriptListHttpFunctionsResult* result, NSObject* userData);
		
typedef void(^ListQueuedFunctionsCallback)(CloudScriptListQueuedFunctionsResult* result, NSObject* userData);
		
typedef void(^PostFunctionResultForEntityTriggeredActionCallback)(CloudScriptEmptyResult* result, NSObject* userData);
		
typedef void(^PostFunctionResultForFunctionExecutionCallback)(CloudScriptEmptyResult* result, NSObject* userData);
		
typedef void(^PostFunctionResultForPlayerTriggeredActionCallback)(CloudScriptEmptyResult* result, NSObject* userData);
		
typedef void(^PostFunctionResultForScheduledTaskCallback)(CloudScriptEmptyResult* result, NSObject* userData);
		
typedef void(^RegisterHttpFunctionCallback)(CloudScriptEmptyResult* result, NSObject* userData);
		
typedef void(^RegisterQueuedFunctionCallback)(CloudScriptEmptyResult* result, NSObject* userData);
		
typedef void(^UnregisterFunctionCallback)(CloudScriptEmptyResult* result, NSObject* userData);
		

+ (PlayFabClientAPI*) GetInstance;

		

// ------------ Generated API calls
		
-(void) ExecuteEntityCloudScript:(CloudScriptExecuteEntityCloudScriptRequest*)request success:(ExecuteEntityCloudScriptCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ExecuteFunction:(CloudScriptExecuteFunctionRequest*)request success:(ExecuteFunctionCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListFunctions:(ListFunctionsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*) userData;
		
-(void) ListHttpFunctions:(ListHttpFunctionsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*) userData;
		
-(void) ListQueuedFunctions:(ListQueuedFunctionsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*) userData;
		
-(void) PostFunctionResultForEntityTriggeredAction:(CloudScriptPostFunctionResultForEntityTriggeredActionRequest*)request success:(PostFunctionResultForEntityTriggeredActionCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) PostFunctionResultForFunctionExecution:(CloudScriptPostFunctionResultForFunctionExecutionRequest*)request success:(PostFunctionResultForFunctionExecutionCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) PostFunctionResultForPlayerTriggeredAction:(CloudScriptPostFunctionResultForPlayerTriggeredActionRequest*)request success:(PostFunctionResultForPlayerTriggeredActionCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) PostFunctionResultForScheduledTask:(CloudScriptPostFunctionResultForScheduledTaskRequest*)request success:(PostFunctionResultForScheduledTaskCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) RegisterHttpFunction:(CloudScriptRegisterHttpFunctionRequest*)request success:(RegisterHttpFunctionCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) RegisterQueuedFunction:(CloudScriptRegisterQueuedFunctionRequest*)request success:(RegisterQueuedFunctionCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UnregisterFunction:(CloudScriptUnregisterFunctionRequest*)request success:(UnregisterFunctionCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		

@end
