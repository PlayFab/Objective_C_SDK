

#import <Foundation/Foundation.h>

#import "PlayFabDataDataModels.h"
#import "PlayFabError.h"
#import "PlayFabSettings.h"

@interface PlayFabDataAPI : NSObject

		
typedef void(^AbortFileUploadsCallback)(AbortFileUploadsResponse* result, NSObject* userData);
		
typedef void(^DeleteFilesCallback)(DeleteFilesResponse* result, NSObject* userData);
		
typedef void(^FinalizeFileUploadsCallback)(FinalizeFileUploadsResponse* result, NSObject* userData);
		
typedef void(^GetFilesCallback)(GetFilesResponse* result, NSObject* userData);
		
typedef void(^GetObjectsCallback)(GetObjectsResponse* result, NSObject* userData);
		
typedef void(^InitiateFileUploadsCallback)(InitiateFileUploadsResponse* result, NSObject* userData);
		
typedef void(^SetObjectsCallback)(SetObjectsResponse* result, NSObject* userData);
		

+ (PlayFabClientAPI*) GetInstance;

		


        // ------------ Generated API calls
		
-(void) AbortFileUploads:(AbortFileUploadsRequest*)request success:(AbortFileUploadsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteFiles:(DeleteFilesRequest*)request success:(DeleteFilesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) FinalizeFileUploads:(FinalizeFileUploadsRequest*)request success:(FinalizeFileUploadsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetFiles:(GetFilesRequest*)request success:(GetFilesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetObjects:(GetObjectsRequest*)request success:(GetObjectsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) InitiateFileUploads:(InitiateFileUploadsRequest*)request success:(InitiateFileUploadsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) SetObjects:(SetObjectsRequest*)request success:(SetObjectsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		

    //private:
/*
        // ------------ Generated result handlers
		
+ (void) OnAbortFileUploadsResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnDeleteFilesResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnFinalizeFileUploadsResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnGetFilesResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnGetObjectsResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnInitiateFileUploadsResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnSetObjectsResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
 */

        //@property bool mOwnsRequester;
        //@property AFHTTPClient* mHttpRequester;


@end
