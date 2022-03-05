#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"


typedef enum
{
    EconomyDisplayPropertyTypeNone,
    EconomyDisplayPropertyTypeQueryDateTime,
    EconomyDisplayPropertyTypeQueryDouble,
    EconomyDisplayPropertyTypeQueryString,
    EconomyDisplayPropertyTypeSearchString
} EconomyDisplayPropertyType;

typedef enum
{
    EconomyModerationStatusUnknown,
    EconomyModerationStatusAwaitingModeration,
    EconomyModerationStatusApproved,
    EconomyModerationStatusRejected
} EconomyModerationStatus;

typedef enum
{
    EconomyConcernCategoryNone,
    EconomyConcernCategoryOffensiveContent,
    EconomyConcernCategoryChildExploitation,
    EconomyConcernCategoryMalwareOrVirus,
    EconomyConcernCategoryPrivacyConcerns,
    EconomyConcernCategoryMisleadingApp,
    EconomyConcernCategoryPoorPerformance,
    EconomyConcernCategoryReviewResponse,
    EconomyConcernCategorySpamAdvertising,
    EconomyConcernCategoryProfanity
} EconomyConcernCategory;

typedef enum
{
    EconomyPublishResultUnknown,
    EconomyPublishResultPending,
    EconomyPublishResultSucceeded,
    EconomyPublishResultFailed,
    EconomyPublishResultCanceled
} EconomyPublishResult;

typedef enum
{
    EconomyHelpfulnessVoteNone,
    EconomyHelpfulnessVoteUnHelpful,
    EconomyHelpfulnessVoteHelpful
} EconomyHelpfulnessVote;

//predeclare all non-enum classes

@class EconomyCatalogAlternateId;

@class EconomyCatalogConfig;

@class EconomyCatalogItem;

@class EconomyContent;

@class EconomyCreateDraftItemRequest;

@class EconomyCreateDraftItemResponse;

@class EconomyCreateUploadUrlsRequest;

@class EconomyCreateUploadUrlsResponse;

@class EconomyDeleteEntityItemReviewsRequest;

@class EconomyDeleteEntityItemReviewsResponse;

@class EconomyDeleteItemRequest;

@class EconomyDeleteItemResponse;

@class EconomyDisplayPropertyIndexInfo;

@class EconomyEntityKey;

@class EconomyFileConfig;

@class EconomyGetCatalogConfigRequest;

@class EconomyGetCatalogConfigResponse;

@class EconomyGetDraftItemRequest;

@class EconomyGetDraftItemResponse;

@class EconomyGetDraftItemsRequest;

@class EconomyGetDraftItemsResponse;

@class EconomyGetEntityDraftItemsRequest;

@class EconomyGetEntityDraftItemsResponse;

@class EconomyGetEntityItemReviewRequest;

@class EconomyGetEntityItemReviewResponse;

@class EconomyGetItemModerationStateRequest;

@class EconomyGetItemModerationStateResponse;

@class EconomyGetItemPublishStatusRequest;

@class EconomyGetItemPublishStatusResponse;

@class EconomyGetItemRequest;

@class EconomyGetItemResponse;

@class EconomyGetItemReviewsRequest;

@class EconomyGetItemReviewsResponse;

@class EconomyGetItemReviewSummaryRequest;

@class EconomyGetItemReviewSummaryResponse;

@class EconomyGetItemsRequest;

@class EconomyGetItemsResponse;

@class EconomyImage;

@class EconomyImageConfig;

@class EconomyKeywordSet;

@class EconomyModerationState;

@class EconomyPublishDraftItemRequest;

@class EconomyPublishDraftItemResponse;

@class EconomyRating;

@class EconomyReportItemRequest;

@class EconomyReportItemResponse;

@class EconomyReportItemReviewRequest;

@class EconomyReportItemReviewResponse;

@class EconomyReview;

@class EconomyReviewItemRequest;

@class EconomyReviewItemResponse;

@class EconomyReviewTakedown;

@class EconomyScanResult;

@class EconomySearchItemsRequest;

@class EconomySearchItemsResponse;

@class EconomySetItemModerationStateRequest;

@class EconomySetItemModerationStateResponse;

@class EconomySubmitItemReviewVoteRequest;

@class EconomySubmitItemReviewVoteResponse;

@class EconomyTakedownItemReviewsRequest;

@class EconomyTakedownItemReviewsResponse;

@class EconomyUpdateCatalogConfigRequest;

@class EconomyUpdateCatalogConfigResponse;

@class EconomyUpdateDraftItemRequest;

@class EconomyUpdateDraftItemResponse;

@class EconomyUploadInfo;

@class EconomyUploadUrlMetadata;

@class EconomyUserGeneratedContentSpecificConfig;



@interface EconomyCatalogAlternateId : PlayFabBaseModel


/// <summary>
/*
/// Type of the alternate ID.
*/
/// </summary>
@property NSString* Type; 

/// <summary>
/*
/// Value of the alternate ID.
*/
/// </summary>
@property NSString* Value; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyCatalogConfig : PlayFabBaseModel


/// <summary>
/*
/// A list of player entity keys that will have admin permissions.
*/
/// </summary>
@property NSArray* AdminEntities; 

/// <summary>
/*
/// A list of display properties to index.
*/
/// </summary>
@property NSArray* DisplayPropertyIndexInfos; 

/// <summary>
/*
/// The set of configuration that only applies to Files.
*/
/// </summary>
@property EconomyFileConfig* File; 

/// <summary>
/*
/// The set of configuration that only applies to Images.
*/
/// </summary>
@property EconomyImageConfig* Image; 

/// <summary>
/*
/// Flag defining whether catalog is enabled.
*/
/// </summary>
@property bool IsCatalogEnabled; 

/// <summary>
/*
/// A set of player entity keys that are allowed to review content.
*/
/// </summary>
@property NSArray* ReviewerEntities; 

/// <summary>
/*
/// The set of configuration that only applies to user generated contents.
*/
/// </summary>
@property EconomyUserGeneratedContentSpecificConfig* UserGeneratedContent; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyCatalogItem : PlayFabBaseModel


/// <summary>
/*
/// The alternate IDs associated with this item.
*/
/// </summary>
@property NSArray* AlternateIds; 

/// <summary>
/*
/// The set of contents associated with this item.
*/
/// </summary>
@property NSArray* Contents; 

/// <summary>
/*
/// The client-defined type of the item.
*/
/// </summary>
@property NSString* ContentType; 

/// <summary>
/*
/// The date and time when this item was created.
*/
/// </summary>
@property NSDate* CreationDate; 

/// <summary>
/*
/// The ID of the creator of this catalog item.
*/
/// </summary>
@property EconomyEntityKey* CreatorEntity; 

/// <summary>
/*
/// A dictionary of localized descriptions. Key is language code and localized string is the value. The neutral locale is required.
*/
/// </summary>
@property NSDictionary* Description; 

/// <summary>
/*
/// Game specific properties for display purposes. This is an arbitrary JSON blob.
*/
/// </summary>
@property NSDictionary* DisplayProperties; 

/// <summary>
/*
/// The user provided version of the item for display purposes.
*/
/// </summary>
@property NSString* DisplayVersion; 

/// <summary>
/*
/// The date of when the item will cease to be available. If not provided then the product will be available indefinitely.
*/
/// </summary>
@property NSDate* EndDate; 

/// <summary>
/*
/// The current ETag value that can be used for optimistic concurrency in the If-None-Match header.
*/
/// </summary>
@property NSString* ETag; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// The images associated with this item. Images can be thumbnails or screenshots.
*/
/// </summary>
@property NSArray* Images; 

/// <summary>
/*
/// Indicates if the item is hidden.
*/
/// </summary>
@property bool IsHidden; 

/// <summary>
/*
/// A dictionary of localized keywords. Key is language code and localized list of keywords is the value.
*/
/// </summary>
@property NSDictionary* Keywords; 

/// <summary>
/*
/// The date and time this item was last updated.
*/
/// </summary>
@property NSDate* LastModifiedDate; 

/// <summary>
/*
/// The moderation state for this item.
*/
/// </summary>
@property EconomyModerationState* Moderation; 

/// <summary>
/*
/// Rating summary for this item.
*/
/// </summary>
@property EconomyRating* pfRating; 

/// <summary>
/*
/// The date of when the item will be available. If not provided then the product will appear immediately.
*/
/// </summary>
@property NSDate* StartDate; 

/// <summary>
/*
/// The list of tags that are associated with this item.
*/
/// </summary>
@property NSArray* Tags; 

/// <summary>
/*
/// A dictionary of localized titles. Key is language code and localized string is the value. The neutral locale is required.
*/
/// </summary>
@property NSDictionary* Title; 

/// <summary>
/*
/// The high-level type of the item.
*/
/// </summary>
@property NSString* Type; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyContent : PlayFabBaseModel


/// <summary>
/*
/// The content unique ID.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// The maximum client version that this content is compatible with.
*/
/// </summary>
@property NSString* MaxClientVersion; 

/// <summary>
/*
/// The minimum client version that this content is compatible with.
*/
/// </summary>
@property NSString* MinClientVersion; 

/// <summary>
/*
/// The list of tags that are associated with this content.
*/
/// </summary>
@property NSArray* Tags; 

/// <summary>
/*
/// The client-defined type of the content.
*/
/// </summary>
@property NSString* Type; 

/// <summary>
/*
/// The Azure CDN URL for retrieval of the catalog item binary content.
*/
/// </summary>
@property NSString* Url; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// The item will not be published to the public catalog until the PublishItem API is called for the item.
*/
/// </summary>
@interface EconomyCreateDraftItemRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Metadata describing the new catalog item to be created.
*/
/// </summary>
@property EconomyCatalogItem* Item; 

/// <summary>
/*
/// Whether the item should be published immediately.
*/
/// </summary>
@property bool Publish; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyCreateDraftItemResponse : PlayFabBaseModel


/// <summary>
/*
/// Updated metadata describing the catalog item just created.
*/
/// </summary>
@property EconomyCatalogItem* Item; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Upload URLs point to Azure Blobs; clients must follow the Microsoft Azure Storage Blob Service REST API pattern for uploading content. The response contains upload URLs and IDs for each file. The IDs and URLs returned must be added to the item metadata and committed using the CreateDraftItem or UpdateDraftItem Item APIs.
*/
/// </summary>
@interface EconomyCreateUploadUrlsRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Description of the files to be uploaded by the client.
*/
/// </summary>
@property NSArray* Files; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyCreateUploadUrlsResponse : PlayFabBaseModel


/// <summary>
/*
/// List of URLs metadata for the files to be uploaded by the client.
*/
/// </summary>
@property NSArray* UploadUrls; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyDeleteEntityItemReviewsRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyDeleteEntityItemReviewsResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyDeleteItemRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyDeleteItemResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyDisplayPropertyIndexInfo : PlayFabBaseModel


/// <summary>
/*
/// The property name in the 'DisplayProperties' property to be indexed.
*/
/// </summary>
@property NSString* Name; 

/// <summary>
/*
/// The type of the property to be indexed.
*/
/// </summary>
@property EconomyDisplayPropertyType Type; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Combined entity type and ID structure which uniquely identifies a single entity.
*/
/// </summary>
@interface EconomyEntityKey : PlayFabBaseModel


/// <summary>
/*
/// Unique ID of the entity.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// Entity type. See https://docs.microsoft.com/gaming/playfab/features/data/entities/available-built-in-entity-types
*/
/// </summary>
@property NSString* Type; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyFileConfig : PlayFabBaseModel


/// <summary>
/*
/// The set of content types that will be used for validation.
*/
/// </summary>
@property NSArray* ContentTypes; 

/// <summary>
/*
/// The set of tags that will be used for validation.
*/
/// </summary>
@property NSArray* Tags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetCatalogConfigRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetCatalogConfigResponse : PlayFabBaseModel


/// <summary>
/*
/// The catalog configuration.
*/
/// </summary>
@property EconomyCatalogConfig* Config; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetDraftItemRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// Whether to fetch metadata of the scan status.
*/
/// </summary>
@property bool ExpandScanningStatus; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetDraftItemResponse : PlayFabBaseModel


/// <summary>
/*
/// Full metadata of the catalog item requested.
*/
/// </summary>
@property EconomyCatalogItem* Item; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetDraftItemsRequest : PlayFabBaseModel


/// <summary>
/*
/// List of item alternate IDs.
*/
/// </summary>
@property NSArray* AlternateIds; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// List of Item Ids.
*/
/// </summary>
@property NSArray* Ids; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetDraftItemsResponse : PlayFabBaseModel


/// <summary>
/*
/// An opaque token used to retrieve the next page of items, if any are available.
*/
/// </summary>
@property NSString* ContinuationToken; 

/// <summary>
/*
/// A set of items created by the entity.
*/
/// </summary>
@property NSArray* Items; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetEntityDraftItemsRequest : PlayFabBaseModel


/// <summary>
/*
/// An opaque token used to retrieve the next page of items created by the caller, if any are available. Should be null on initial request.
*/
/// </summary>
@property NSString* ContinuationToken; 

/// <summary>
/*
/// Number of items to retrieve. Maximum page size is 10.
*/
/// </summary>
@property NSNumber* Count; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetEntityDraftItemsResponse : PlayFabBaseModel


/// <summary>
/*
/// An opaque token used to retrieve the next page of items, if any are available.
*/
/// </summary>
@property NSString* ContinuationToken; 

/// <summary>
/*
/// A set of items created by the entity.
*/
/// </summary>
@property NSArray* Items; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetEntityItemReviewRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetEntityItemReviewResponse : PlayFabBaseModel


/// <summary>
/*
/// The review the entity submitted for the requested item.
*/
/// </summary>
@property EconomyReview* pfReview; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetItemModerationStateRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetItemModerationStateResponse : PlayFabBaseModel


/// <summary>
/*
/// The current moderation state for the requested item.
*/
/// </summary>
@property EconomyModerationState* State; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetItemPublishStatusRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetItemPublishStatusResponse : PlayFabBaseModel


/// <summary>
/*
/// Scan results for any items that failed content scans.
*/
/// </summary>
@property NSArray* FailedScanResults; 

/// <summary>
/*
/// High level status of the published item.
*/
/// </summary>
@property EconomyPublishResult Result; 

/// <summary>
/*
/// Descriptive message about the current status of the publish.
*/
/// </summary>
@property NSString* StatusMessage; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetItemRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Get item result.
*/
/// </summary>
@interface EconomyGetItemResponse : PlayFabBaseModel


/// <summary>
/*
/// The item result.
*/
/// </summary>
@property EconomyCatalogItem* Item; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetItemReviewsRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// An opaque token used to retrieve the next page of items, if any are available.
*/
/// </summary>
@property NSString* ContinuationToken; 

/// <summary>
/*
/// Number of items to retrieve. Maximum page size is 200. If not specified, defaults to 10.
*/
/// </summary>
@property NSNumber* Count; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// An OData orderBy used to order the results of the query.
*/
/// </summary>
@property NSString* OrderBy; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetItemReviewsResponse : PlayFabBaseModel


/// <summary>
/*
/// An opaque token used to retrieve the next page of items, if any are available.
*/
/// </summary>
@property NSString* ContinuationToken; 

/// <summary>
/*
/// The paginated set of results.
*/
/// </summary>
@property NSArray* Reviews; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetItemReviewSummaryRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetItemReviewSummaryResponse : PlayFabBaseModel


/// <summary>
/*
/// The least favorable review for this item.
*/
/// </summary>
@property EconomyReview* LeastFavorableReview; 

/// <summary>
/*
/// The most favorable review for this item.
*/
/// </summary>
@property EconomyReview* MostFavorableReview; 

/// <summary>
/*
/// The summary of ratings associated with this item.
*/
/// </summary>
@property EconomyRating* pfRating; 

/// <summary>
/*
/// The total number of reviews associated with this item.
*/
/// </summary>
@property NSNumber* ReviewsCount; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetItemsRequest : PlayFabBaseModel


/// <summary>
/*
/// List of item alternate IDs.
*/
/// </summary>
@property NSArray* AlternateIds; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// List of Item Ids.
*/
/// </summary>
@property NSArray* Ids; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyGetItemsResponse : PlayFabBaseModel


/// <summary>
/*
/// Metadata of set of items.
*/
/// </summary>
@property NSArray* Items; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyImage : PlayFabBaseModel


/// <summary>
/*
/// The image unique ID.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// The client-defined tag associated with this image.
*/
/// </summary>
@property NSString* Tag; 

/// <summary>
/*
/// The client-defined type of this image.
*/
/// </summary>
@property NSString* Type; 

/// <summary>
/*
/// The URL for retrieval of the image.
*/
/// </summary>
@property NSString* Url; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyImageConfig : PlayFabBaseModel


/// <summary>
/*
/// The set of tags that will be used for validation.
*/
/// </summary>
@property NSArray* Tags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyKeywordSet : PlayFabBaseModel


/// <summary>
/*
/// A list of localized keywords.
*/
/// </summary>
@property NSArray* Values; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyModerationState : PlayFabBaseModel


/// <summary>
/*
/// The date and time this moderation state was last updated.
*/
/// </summary>
@property NSDate* LastModifiedDate; 

/// <summary>
/*
/// The current stated reason for the associated item being moderated.
*/
/// </summary>
@property NSString* Reason; 

/// <summary>
/*
/// The current moderation status for the associated item.
*/
/// </summary>
@property EconomyModerationStatus Status; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// The call kicks off a workflow to publish the item to the public catalog. The Publish Status API should be used to monitor the publish job.
*/
/// </summary>
@interface EconomyPublishDraftItemRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// ETag of the catalog item to published from the working catalog to the public catalog. Used for optimistic concurrency. If the provided ETag does not match the ETag in the current working catalog, the request will be rejected. If not provided, the current version of the document in the working catalog will be published.
*/
/// </summary>
@property NSString* ETag; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyPublishDraftItemResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyRating : PlayFabBaseModel


/// <summary>
/*
/// The average rating for this item.
*/
/// </summary>
@property NSNumber* Average; 

/// <summary>
/*
/// The total count of 1 star ratings for this item.
*/
/// </summary>
@property NSNumber* Count1Star; 

/// <summary>
/*
/// The total count of 2 star ratings for this item.
*/
/// </summary>
@property NSNumber* Count2Star; 

/// <summary>
/*
/// The total count of 3 star ratings for this item.
*/
/// </summary>
@property NSNumber* Count3Star; 

/// <summary>
/*
/// The total count of 4 star ratings for this item.
*/
/// </summary>
@property NSNumber* Count4Star; 

/// <summary>
/*
/// The total count of 5 star ratings for this item.
*/
/// </summary>
@property NSNumber* Count5Star; 

/// <summary>
/*
/// The total count of ratings for this item.
*/
/// </summary>
@property NSNumber* TotalCount; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyReportItemRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// Category of concern for this report.
*/
/// </summary>
@property EconomyConcernCategory pfConcernCategory; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// The string reason for this report.
*/
/// </summary>
@property NSString* Reason; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyReportItemResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Submit a report for an inappropriate review, allowing the submitting user to specify their concern.
*/
/// </summary>
@interface EconomyReportItemReviewRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID of the item associated with the review.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The reason this review is being reported.
*/
/// </summary>
@property EconomyConcernCategory pfConcernCategory; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// The string ID of the item associated with the review.
*/
/// </summary>
@property NSString* ItemId; 

/// <summary>
/*
/// The string reason for this report.
*/
/// </summary>
@property NSString* Reason; 

/// <summary>
/*
/// The ID of the review to submit a report for.
*/
/// </summary>
@property NSString* ReviewId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyReportItemReviewResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyReview : PlayFabBaseModel


/// <summary>
/*
/// The number of negative helpfulness votes for this review.
*/
/// </summary>
@property NSNumber* HelpfulNegative; 

/// <summary>
/*
/// Total number of helpfulness votes for this review.
*/
/// </summary>
@property NSNumber* HelpfulnessVotes; 

/// <summary>
/*
/// The number of positive helpfulness votes for this review.
*/
/// </summary>
@property NSNumber* HelpfulPositive; 

/// <summary>
/*
/// Indicates whether the review author has the item installed.
*/
/// </summary>
@property bool IsInstalled; 

/// <summary>
/*
/// The ID of the item being reviewed.
*/
/// </summary>
@property NSString* ItemId; 

/// <summary>
/*
/// The version of the item being reviewed.
*/
/// </summary>
@property NSString* ItemVersion; 

/// <summary>
/*
/// The locale for which this review was submitted in.
*/
/// </summary>
@property NSString* Locale; 

/// <summary>
/*
/// Star rating associated with this review.
*/
/// </summary>
@property NSNumber* Rating; 

/// <summary>
/*
/// The ID of the author of the review.
*/
/// </summary>
@property NSString* ReviewerId; 

/// <summary>
/*
/// The ID of the review.
*/
/// </summary>
@property NSString* ReviewId; 

/// <summary>
/*
/// The full text of this review.
*/
/// </summary>
@property NSString* ReviewText; 

/// <summary>
/*
/// The date and time this review was last submitted.
*/
/// </summary>
@property NSDate* Submitted; 

/// <summary>
/*
/// The title of this review.
*/
/// </summary>
@property NSString* Title; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyReviewItemRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// The review to submit.
*/
/// </summary>
@property EconomyReview* pfReview; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyReviewItemResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyReviewTakedown : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The ID of the item associated with the review to take down.
*/
/// </summary>
@property NSString* ItemId; 

/// <summary>
/*
/// The ID of the review to take down.
*/
/// </summary>
@property NSString* ReviewId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyScanResult : PlayFabBaseModel


/// <summary>
/*
/// The URL of the item which failed the scan.
*/
/// </summary>
@property NSString* Url; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomySearchItemsRequest : PlayFabBaseModel


/// <summary>
/*
/// An opaque token used to retrieve the next page of items, if any are available.
*/
/// </summary>
@property NSString* ContinuationToken; 

/// <summary>
/*
/// Number of items to retrieve. Maximum page size is 225. Default value is 10.
*/
/// </summary>
@property NSNumber* Count; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// An OData filter used to refine the search query.
*/
/// </summary>
@property NSString* Filter; 

/// <summary>
/*
/// An OData orderBy used to order the results of the search query.
*/
/// </summary>
@property NSString* OrderBy; 

/// <summary>
/*
/// The text to search for.
*/
/// </summary>
@property NSString* Search; 

/// <summary>
/*
/// An OData select query option used to augment the search results. If not defined, the default search result metadata will be returned.
*/
/// </summary>
@property NSString* Select; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomySearchItemsResponse : PlayFabBaseModel


/// <summary>
/*
/// An opaque token used to retrieve the next page of items, if any are available.
*/
/// </summary>
@property NSString* ContinuationToken; 

/// <summary>
/*
/// The paginated set of results for the search query.
*/
/// </summary>
@property NSArray* Items; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomySetItemModerationStateRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID associated with this item.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The unique ID of the item.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// The reason for the moderation state change for the associated item.
*/
/// </summary>
@property NSString* Reason; 

/// <summary>
/*
/// The status to set for the associated item.
*/
/// </summary>
@property EconomyModerationStatus Status; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomySetItemModerationStateResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomySubmitItemReviewVoteRequest : PlayFabBaseModel


/// <summary>
/*
/// An alternate ID of the item associated with the review.
*/
/// </summary>
@property EconomyCatalogAlternateId* AlternateId; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property EconomyEntityKey* Entity; 

/// <summary>
/*
/// The string ID of the item associated with the review.
*/
/// </summary>
@property NSString* ItemId; 

/// <summary>
/*
/// The ID of the review to submit a helpfulness vote for.
*/
/// </summary>
@property NSString* ReviewId; 

/// <summary>
/*
/// The helpfulness vote of the review.
*/
/// </summary>
@property EconomyHelpfulnessVote Vote; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomySubmitItemReviewVoteResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Submit a request to takedown one or more reviews, removing them from public view. Authors will still be able to see their reviews after being taken down.
*/
/// </summary>
@interface EconomyTakedownItemReviewsRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The set of reviews to take down.
*/
/// </summary>
@property NSArray* Reviews; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyTakedownItemReviewsResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyUpdateCatalogConfigRequest : PlayFabBaseModel


/// <summary>
/*
/// The updated catalog configuration.
*/
/// </summary>
@property EconomyCatalogConfig* Config; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyUpdateCatalogConfigResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyUpdateDraftItemRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Updated metadata describing the catalog item to be updated.
*/
/// </summary>
@property EconomyCatalogItem* Item; 

/// <summary>
/*
/// Whether the item should be published immediately.
*/
/// </summary>
@property bool Publish; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyUpdateDraftItemResponse : PlayFabBaseModel


/// <summary>
/*
/// Updated metadata describing the catalog item just updated.
*/
/// </summary>
@property EconomyCatalogItem* Item; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyUploadInfo : PlayFabBaseModel


/// <summary>
/*
/// Name of the file to be uploaded.
*/
/// </summary>
@property NSString* FileName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyUploadUrlMetadata : PlayFabBaseModel


/// <summary>
/*
/// Name of the file for which this upload URL was requested.
*/
/// </summary>
@property NSString* FileName; 

/// <summary>
/*
/// Unique ID for the binary content to be uploaded to the target URL.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// URL for the binary content to be uploaded to.
*/
/// </summary>
@property NSString* Url; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EconomyUserGeneratedContentSpecificConfig : PlayFabBaseModel


/// <summary>
/*
/// The set of content types that will be used for validation.
*/
/// </summary>
@property NSArray* ContentTypes; 

/// <summary>
/*
/// The set of tags that will be used for validation.
*/
/// </summary>
@property NSArray* Tags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

