#import <Foundation/Foundation.h>

#import "PlayFabInsightsDataModels.h"
#import "PlayFabError.h"
#import "PlayFabSettings.h"


@interface PlayFabInsightsAPI : NSObject

+(NSString*) GetURL;


		
typedef void(^GetDetailsCallback)(InsightsInsightsGetDetailsResponse* result, NSObject* userData);
		
typedef void(^GetLimitsCallback)(InsightsInsightsGetLimitsResponse* result, NSObject* userData);
		
typedef void(^GetOperationStatusCallback)(InsightsInsightsGetOperationStatusResponse* result, NSObject* userData);
		
typedef void(^GetPendingOperationsCallback)(InsightsInsightsGetPendingOperationsResponse* result, NSObject* userData);
		
typedef void(^SetPerformanceCallback)(InsightsInsightsOperationResponse* result, NSObject* userData);
		
typedef void(^SetStorageRetentionCallback)(InsightsInsightsOperationResponse* result, NSObject* userData);
		

+ (PlayFabClientAPI*) GetInstance;

		

// ------------ Generated API calls
		
-(void) GetDetails:(InsightsInsightsEmptyRequest*)request success:(GetDetailsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetLimits:(InsightsInsightsEmptyRequest*)request success:(GetLimitsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetOperationStatus:(InsightsInsightsGetOperationStatusRequest*)request success:(GetOperationStatusCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetPendingOperations:(InsightsInsightsGetPendingOperationsRequest*)request success:(GetPendingOperationsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) SetPerformance:(InsightsInsightsSetPerformanceRequest*)request success:(SetPerformanceCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) SetStorageRetention:(InsightsInsightsSetStorageRetentionRequest*)request success:(SetStorageRetentionCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		

@end
