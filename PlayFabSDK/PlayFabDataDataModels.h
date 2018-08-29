#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"


typedef enum
{
    DataOperationTypesCreated,
    DataOperationTypesUpdated,
    DataOperationTypesDeleted,
    DataOperationTypesNone
} DataOperationTypes;

//predeclare all non-enum classes

@class DataAbortFileUploadsRequest;

@class DataAbortFileUploadsResponse;

@class DataDeleteFilesRequest;

@class DataDeleteFilesResponse;

@class DataEntityKey;

@class DataFinalizeFileUploadsRequest;

@class DataFinalizeFileUploadsResponse;

@class DataGetFileMetadata;

@class DataGetFilesRequest;

@class DataGetFilesResponse;

@class DataGetObjectsRequest;

@class DataGetObjectsResponse;

@class DataInitiateFileUploadMetadata;

@class DataInitiateFileUploadsRequest;

@class DataInitiateFileUploadsResponse;

@class DataObjectResult;

@class DataSetObject;

@class DataSetObjectInfo;

@class DataSetObjectsRequest;

@class DataSetObjectsResponse;



@interface DataAbortFileUploadsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property DataEntityKey* Entity; 

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


@interface DataAbortFileUploadsResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property DataEntityKey* Entity; 

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


@interface DataDeleteFilesRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property DataEntityKey* Entity; 

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


@interface DataDeleteFilesResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property DataEntityKey* Entity; 

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
/// Combined entity type and ID structure which uniquely identifies a single entity.
/// </summary>
@interface DataEntityKey : PlayFabBaseModel


/// <summary>
/// Unique ID of the entity.
/// </summary>
@property NSString* Id; 

/// <summary>
/// Entity type. See https://api.playfab.com/docs/tutorials/entities/entitytypes
/// </summary>
@property NSString* Type; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface DataFinalizeFileUploadsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property DataEntityKey* Entity; 

/// <summary>
/// Names of the files to be finalized. Restricted to a-Z, 0-9, '(', ')', '_', '-' and '.'
/// </summary>
@property NSArray* FileNames; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface DataFinalizeFileUploadsResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property DataEntityKey* Entity; 

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


@interface DataGetFileMetadata : PlayFabBaseModel


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


@interface DataGetFilesRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property DataEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface DataGetFilesResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property DataEntityKey* Entity; 

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


@interface DataGetObjectsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property DataEntityKey* Entity; 

/// <summary>
/// Determines whether the object will be returned as an escaped JSON string or as a un-escaped JSON object. Default is JSON object.
/// </summary>
@property bool EscapeObject; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface DataGetObjectsResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property DataEntityKey* Entity; 

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


@interface DataInitiateFileUploadMetadata : PlayFabBaseModel


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


@interface DataInitiateFileUploadsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property DataEntityKey* Entity; 

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


@interface DataInitiateFileUploadsResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property DataEntityKey* Entity; 

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


@interface DataObjectResult : PlayFabBaseModel


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


@interface DataSetObject : PlayFabBaseModel


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


@interface DataSetObjectInfo : PlayFabBaseModel


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
@property DataOperationTypes SetResult; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface DataSetObjectsRequest : PlayFabBaseModel


/// <summary>
/// The entity to perform this action on.
/// </summary>
@property DataEntityKey* Entity; 

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


@interface DataSetObjectsResponse : PlayFabBaseModel


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

