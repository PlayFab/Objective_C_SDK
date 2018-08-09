
#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"



typedef enum
{
    EntityTypestitle,
    EntityTypesmaster_player_account,
    EntityTypestitle_player_account,
    EntityTypescharacter,
    EntityTypesgroup,
    EntityTypesservice
} EntityTypes;

typedef enum
{
    OperationTypesCreated,
    OperationTypesUpdated,
    OperationTypesDeleted,
    OperationTypesNone
} OperationTypes;

//predeclare all non-enum classes

@class AbortFileUploadsRequest;

@class AbortFileUploadsResponse;

@class DeleteFilesRequest;

@class DeleteFilesResponse;

@class EntityKey;

@class FinalizeFileUploadsRequest;

@class FinalizeFileUploadsResponse;

@class GetFileMetadata;

@class GetFilesRequest;

@class GetFilesResponse;

@class GetObjectsRequest;

@class GetObjectsResponse;

@class InitiateFileUploadMetadata;

@class InitiateFileUploadsRequest;

@class InitiateFileUploadsResponse;

@class ObjectResult;

@class SetObject;

@class SetObjectInfo;

@class SetObjectsRequest;

@class SetObjectsResponse;



@interface AbortFileUploadsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// Names of the files to have their pending uploads aborted.
/// </summary>
@property NSArray* FileNames; 

/// <summary>
/// The expected version of the profile, if set and doesn't match the current version of the profile the operation will not be performed.
/// </summary>
@property NSNumber* ProfileVersion; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AbortFileUploadsResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface DeleteFilesRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// Names of the files to be deleted.
/// </summary>
@property NSArray* FileNames; 

/// <summary>
/// The expected version of the profile, if set and doesn't match the current version of the profile the operation will not be performed.
/// </summary>
@property NSNumber* ProfileVersion; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface DeleteFilesResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Entity identifier class that contains both the ID and type.
/// </summary>
@interface EntityKey : PlayFabBaseModel


/// <summary>
/// Entity profile ID.
/// </summary>
@property NSString* Id; 

/// <summary>
/// Entity type. Optional to be used but one of EntityType or EntityTypeString must be set.
/// </summary>
@property EntityTypes Type; 

/// <summary>
/// Entity type. Optional to be used but one of EntityType or EntityTypeString must be set.
/// </summary>
@property NSString* TypeString; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface FinalizeFileUploadsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// Names of the files to be finalized. Restricted to a-Z, 0-9, '(', ')', '_', '-' and '.'
/// </summary>
@property NSArray* FileNames; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface FinalizeFileUploadsResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// Collection of metadata for the entity's files
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetFileMetadata : PlayFabBaseModel


/// <summary>
/// Checksum value for the file
/// </summary>
@property NSString* Checksum; 

/// <summary>
/// Download URL where the file can be retrieved
/// </summary>
@property NSString* DownloadUrl; 

/// <summary>
/// Name of the file
/// </summary>
@property NSString* FileName; 

/// <summary>
/// Last UTC time the file was modified
/// </summary>
@property NSDate* LastModified; 

/// <summary>
/// Storage service's reported byte count
/// </summary>
@property NSNumber* Size; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetFilesRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetFilesResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// Collection of metadata for the entity's files
/// </summary>
@property NSDictionary* Metadata; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetObjectsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// Determines whether the object will be returned as an escaped JSON string or as a un-escaped JSON object. Default is JSON object.
/// </summary>
@property bool EscapeObject; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetObjectsResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// Requested objects that the calling entity has access to
/// </summary>
@property NSDictionary* Objects; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface InitiateFileUploadMetadata : PlayFabBaseModel


/// <summary>
/// Name of the file.
/// </summary>
@property NSString* FileName; 

/// <summary>
/// Location the data should be sent to via an HTTP PUT operation.
/// </summary>
@property NSString* UploadUrl; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface InitiateFileUploadsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// Names of the files to be set. Restricted to a-Z, 0-9, '(', ')', '_', '-' and '.'
/// </summary>
@property NSArray* FileNames; 

/// <summary>
/// The expected version of the profile, if set and doesn't match the current version of the profile the operation will not be performed.
/// </summary>
@property NSNumber* ProfileVersion; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface InitiateFileUploadsResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The current version of the profile, can be used for concurrency control during updates.
/// </summary>
@property NSNumber* ProfileVersion; 

/// <summary>
/// Collection of file names and upload urls
/// </summary>
@property NSArray* UploadDetails; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ObjectResult : PlayFabBaseModel


/// <summary>
/// Un-escaped JSON object, if EscapeObject false or default.
/// </summary>
@property NSDictionary* DataObject; 

/// <summary>
/// Escaped string JSON body of the object, if EscapeObject is true.
/// </summary>
@property NSString* EscapedDataObject; 

/// <summary>
/// Name of the object. Restricted to a-Z, 0-9, '(', ')', '_', '-' and '.'
/// </summary>
@property NSString* ObjectName; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetObject : PlayFabBaseModel


/// <summary>
/// Body of the object to be saved. If empty and DeleteObject is true object will be deleted if it exists, or no operation will occur if it does not exist. Only one of Object or EscapedDataObject fields may be used.
/// </summary>
@property NSDictionary* DataObject; 

/// <summary>
/// Flag to indicate that this object should be deleted. Both DataObject and EscapedDataObject must not be set as well.
/// </summary>
@property bool DeleteObject; 

/// <summary>
/// Body of the object to be saved as an escaped JSON string. If empty and DeleteObject is true object will be deleted if it exists, or no operation will occur if it does not exist. Only one of DataObject or EscapedDataObject fields may be used.
/// </summary>
@property NSString* EscapedDataObject; 

/// <summary>
/// Name of object. Restricted to a-Z, 0-9, '(', ')', '_', '-' and '.'.
/// </summary>
@property NSString* ObjectName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetObjectInfo : PlayFabBaseModel


/// <summary>
/// Name of the object
/// </summary>
@property NSString* ObjectName; 

/// <summary>
/// Optional reason to explain why the operation was the result that it was.
/// </summary>
@property NSString* OperationReason; 

/// <summary>
/// Indicates which operation was completed, either Created, Updated, Deleted or None.
/// </summary>
@property OperationTypes SetResult; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetObjectsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property EntityKey Entity; 

/// <summary>
/// Optional field used for concurrency control. By specifying the previously returned value of ProfileVersion from GetProfile API, you can ensure that the object set will only be performed if the profile has not been updated by any other clients since the version you last loaded.
/// </summary>
@property NSNumber* ExpectedProfileVersion; 

/// <summary>
/// Collection of objects to set on the profile.
/// </summary>
@property NSArray* Objects; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetObjectsResponse : PlayFabBaseModel


/// <summary>
/// New version of the entity profile.
/// </summary>
@property NSNumber* ProfileVersion; 

/// <summary>
/// New version of the entity profile.
/// </summary>
@property NSArray* SetResults; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

