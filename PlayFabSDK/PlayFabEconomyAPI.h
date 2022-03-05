#import <Foundation/Foundation.h>

#import "PlayFabEconomyDataModels.h"
#import "PlayFabError.h"
#import "PlayFabSettings.h"


@interface PlayFabEconomyAPI : NSObject

+(NSString*) GetURL;


		
typedef void(^CreateDraftItemCallback)(EconomyCreateDraftItemResponse* result, NSObject* userData);
		
typedef void(^CreateUploadUrlsCallback)(EconomyCreateUploadUrlsResponse* result, NSObject* userData);
		
typedef void(^DeleteEntityItemReviewsCallback)(EconomyDeleteEntityItemReviewsResponse* result, NSObject* userData);
		
typedef void(^DeleteItemCallback)(EconomyDeleteItemResponse* result, NSObject* userData);
		
typedef void(^GetCatalogConfigCallback)(EconomyGetCatalogConfigResponse* result, NSObject* userData);
		
typedef void(^GetDraftItemCallback)(EconomyGetDraftItemResponse* result, NSObject* userData);
		
typedef void(^GetDraftItemsCallback)(EconomyGetDraftItemsResponse* result, NSObject* userData);
		
typedef void(^GetEntityDraftItemsCallback)(EconomyGetEntityDraftItemsResponse* result, NSObject* userData);
		
typedef void(^GetEntityItemReviewCallback)(EconomyGetEntityItemReviewResponse* result, NSObject* userData);
		
typedef void(^GetItemCallback)(EconomyGetItemResponse* result, NSObject* userData);
		
typedef void(^GetItemModerationStateCallback)(EconomyGetItemModerationStateResponse* result, NSObject* userData);
		
typedef void(^GetItemPublishStatusCallback)(EconomyGetItemPublishStatusResponse* result, NSObject* userData);
		
typedef void(^GetItemReviewsCallback)(EconomyGetItemReviewsResponse* result, NSObject* userData);
		
typedef void(^GetItemReviewSummaryCallback)(EconomyGetItemReviewSummaryResponse* result, NSObject* userData);
		
typedef void(^GetItemsCallback)(EconomyGetItemsResponse* result, NSObject* userData);
		
typedef void(^PublishDraftItemCallback)(EconomyPublishDraftItemResponse* result, NSObject* userData);
		
typedef void(^ReportItemCallback)(EconomyReportItemResponse* result, NSObject* userData);
		
typedef void(^ReportItemReviewCallback)(EconomyReportItemReviewResponse* result, NSObject* userData);
		
typedef void(^ReviewItemCallback)(EconomyReviewItemResponse* result, NSObject* userData);
		
typedef void(^SearchItemsCallback)(EconomySearchItemsResponse* result, NSObject* userData);
		
typedef void(^SetItemModerationStateCallback)(EconomySetItemModerationStateResponse* result, NSObject* userData);
		
typedef void(^SubmitItemReviewVoteCallback)(EconomySubmitItemReviewVoteResponse* result, NSObject* userData);
		
typedef void(^TakedownItemReviewsCallback)(EconomyTakedownItemReviewsResponse* result, NSObject* userData);
		
typedef void(^UpdateCatalogConfigCallback)(EconomyUpdateCatalogConfigResponse* result, NSObject* userData);
		
typedef void(^UpdateDraftItemCallback)(EconomyUpdateDraftItemResponse* result, NSObject* userData);
		

+ (PlayFabClientAPI*) GetInstance;

		

// ------------ Generated API calls
		
-(void) CreateDraftItem:(EconomyCreateDraftItemRequest*)request success:(CreateDraftItemCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateUploadUrls:(EconomyCreateUploadUrlsRequest*)request success:(CreateUploadUrlsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteEntityItemReviews:(EconomyDeleteEntityItemReviewsRequest*)request success:(DeleteEntityItemReviewsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteItem:(EconomyDeleteItemRequest*)request success:(DeleteItemCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetCatalogConfig:(EconomyGetCatalogConfigRequest*)request success:(GetCatalogConfigCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetDraftItem:(EconomyGetDraftItemRequest*)request success:(GetDraftItemCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetDraftItems:(EconomyGetDraftItemsRequest*)request success:(GetDraftItemsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetEntityDraftItems:(EconomyGetEntityDraftItemsRequest*)request success:(GetEntityDraftItemsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetEntityItemReview:(EconomyGetEntityItemReviewRequest*)request success:(GetEntityItemReviewCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetItem:(EconomyGetItemRequest*)request success:(GetItemCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetItemModerationState:(EconomyGetItemModerationStateRequest*)request success:(GetItemModerationStateCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetItemPublishStatus:(EconomyGetItemPublishStatusRequest*)request success:(GetItemPublishStatusCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetItemReviews:(EconomyGetItemReviewsRequest*)request success:(GetItemReviewsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetItemReviewSummary:(EconomyGetItemReviewSummaryRequest*)request success:(GetItemReviewSummaryCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetItems:(EconomyGetItemsRequest*)request success:(GetItemsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) PublishDraftItem:(EconomyPublishDraftItemRequest*)request success:(PublishDraftItemCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ReportItem:(EconomyReportItemRequest*)request success:(ReportItemCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ReportItemReview:(EconomyReportItemReviewRequest*)request success:(ReportItemReviewCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ReviewItem:(EconomyReviewItemRequest*)request success:(ReviewItemCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) SearchItems:(EconomySearchItemsRequest*)request success:(SearchItemsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) SetItemModerationState:(EconomySetItemModerationStateRequest*)request success:(SetItemModerationStateCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) SubmitItemReviewVote:(EconomySubmitItemReviewVoteRequest*)request success:(SubmitItemReviewVoteCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) TakedownItemReviews:(EconomyTakedownItemReviewsRequest*)request success:(TakedownItemReviewsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UpdateCatalogConfig:(EconomyUpdateCatalogConfigRequest*)request success:(UpdateCatalogConfigCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UpdateDraftItem:(EconomyUpdateDraftItemRequest*)request success:(UpdateDraftItemCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		

@end
