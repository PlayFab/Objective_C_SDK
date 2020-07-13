#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"


//predeclare all non-enum classes

@class InsightsInsightsEmptyRequest;

@class InsightsInsightsGetDetailsResponse;

@class InsightsInsightsGetLimitsResponse;

@class InsightsInsightsGetOperationStatusRequest;

@class InsightsInsightsGetOperationStatusResponse;

@class InsightsInsightsGetPendingOperationsRequest;

@class InsightsInsightsGetPendingOperationsResponse;

@class InsightsInsightsOperationResponse;

@class InsightsInsightsPerformanceLevel;

@class InsightsInsightsSetPerformanceRequest;

@class InsightsInsightsSetStorageRetentionRequest;



@interface InsightsInsightsEmptyRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface InsightsInsightsGetDetailsResponse : PlayFabBaseModel


/// <summary>
/*
/// Amount of data (in MB) currently used by Insights.
*/
/// </summary>
@property NSNumber* DataUsageMb; 

/// <summary>
/*
/// Details of any error that occurred while retrieving Insights details.
*/
/// </summary>
@property NSString* ErrorMessage; 

/// <summary>
/*
/// Allowed range of values for performance level and data storage retention.
*/
/// </summary>
@property InsightsInsightsGetLimitsResponse* Limits; 

/// <summary>
/*
/// List of pending Insights operations for the title.
*/
/// </summary>
@property NSArray* PendingOperations; 

/// <summary>
/*
/// Current Insights performance level setting.
*/
/// </summary>
@property NSNumber* PerformanceLevel; 

/// <summary>
/*
/// Current Insights data storage retention value in days.
*/
/// </summary>
@property NSNumber* RetentionDays; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface InsightsInsightsGetLimitsResponse : PlayFabBaseModel


/// <summary>
/*
/// Default Insights performance level.
*/
/// </summary>
@property NSNumber* DefaultPerformanceLevel; 

/// <summary>
/*
/// Default Insights data storage retention days.
*/
/// </summary>
@property NSNumber* DefaultStorageRetentionDays; 

/// <summary>
/*
/// Maximum allowed data storage retention days.
*/
/// </summary>
@property NSNumber* StorageMaxRetentionDays; 

/// <summary>
/*
/// Minimum allowed data storage retention days.
*/
/// </summary>
@property NSNumber* StorageMinRetentionDays; 

/// <summary>
/*
/// List of Insights submeter limits for the allowed performance levels.
*/
/// </summary>
@property NSArray* SubMeters; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns the current status for the requested operation id.
*/
/// </summary>
@interface InsightsInsightsGetOperationStatusRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Id of the Insights operation.
*/
/// </summary>
@property NSString* OperationId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface InsightsInsightsGetOperationStatusResponse : PlayFabBaseModel


/// <summary>
/*
/// Optional message related to the operation details.
*/
/// </summary>
@property NSString* Message; 

/// <summary>
/*
/// Time the operation was completed.
*/
/// </summary>
@property NSDate* OperationCompletedTime; 

/// <summary>
/*
/// Id of the Insights operation.
*/
/// </summary>
@property NSString* OperationId; 

/// <summary>
/*
/// Time the operation status was last updated.
*/
/// </summary>
@property NSDate* OperationLastUpdated; 

/// <summary>
/*
/// Time the operation started.
*/
/// </summary>
@property NSDate* OperationStartedTime; 

/// <summary>
/*
/// The type of operation, SetPerformance or SetStorageRetention.
*/
/// </summary>
@property NSString* OperationType; 

/// <summary>
/*
/// The value requested for the operation.
*/
/// </summary>
@property NSNumber* OperationValue; 

/// <summary>
/*
/// Current status of the operation.
*/
/// </summary>
@property NSString* Status; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Returns a list of operations that are in the pending state for the requested operation type.
*/
/// </summary>
@interface InsightsInsightsGetPendingOperationsRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The type of pending operations requested, or blank for all operation types.
*/
/// </summary>
@property NSString* OperationType; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface InsightsInsightsGetPendingOperationsResponse : PlayFabBaseModel


/// <summary>
/*
/// List of pending Insights operations.
*/
/// </summary>
@property NSArray* PendingOperations; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface InsightsInsightsOperationResponse : PlayFabBaseModel


/// <summary>
/*
/// Optional message related to the operation details.
*/
/// </summary>
@property NSString* Message; 

/// <summary>
/*
/// Id of the Insights operation.
*/
/// </summary>
@property NSString* OperationId; 

/// <summary>
/*
/// The type of operation, SetPerformance or SetStorageRetention.
*/
/// </summary>
@property NSString* OperationType; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface InsightsInsightsPerformanceLevel : PlayFabBaseModel


/// <summary>
/*
/// Number of allowed active event exports.
*/
/// </summary>
@property NSNumber* ActiveEventExports; 

/// <summary>
/*
/// Maximum cache size.
*/
/// </summary>
@property NSNumber* CacheSizeMB; 

/// <summary>
/*
/// Maximum number of concurrent queries.
*/
/// </summary>
@property NSNumber* Concurrency; 

/// <summary>
/*
/// Number of Insights credits consumed per minute.
*/
/// </summary>
@property NSNumber* CreditsPerMinute; 

/// <summary>
/*
/// Maximum events per second.
*/
/// </summary>
@property NSNumber* EventsPerSecond; 

/// <summary>
/*
/// Performance level.
*/
/// </summary>
@property NSNumber* Level; 

/// <summary>
/*
/// Maximum amount of memory allowed per query.
*/
/// </summary>
@property NSNumber* MaxMemoryPerQueryMB; 

/// <summary>
/*
/// Amount of compute power allocated for queries and operations.
*/
/// </summary>
@property NSNumber* VirtualCpuCores; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Sets the performance level to the requested value. Use the GetLimits method to get the allowed values.
*/
/// </summary>
@interface InsightsInsightsSetPerformanceRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The Insights performance level to apply to the title.
*/
/// </summary>
@property NSNumber* PerformanceLevel; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Sets the data storage retention to the requested value. Use the GetLimits method to get the range of allowed values.
*/
/// </summary>
@interface InsightsInsightsSetStorageRetentionRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The Insights data storage retention value (in days) to apply to the title.
*/
/// </summary>
@property NSNumber* RetentionDays; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

