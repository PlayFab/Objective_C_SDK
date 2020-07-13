#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"


typedef enum
{
    CloudScriptCloudScriptRevisionOptionLive,
    CloudScriptCloudScriptRevisionOptionLatest,
    CloudScriptCloudScriptRevisionOptionSpecific
} CloudScriptCloudScriptRevisionOption;

typedef enum
{
    CloudScriptEmailVerificationStatusUnverified,
    CloudScriptEmailVerificationStatusPending,
    CloudScriptEmailVerificationStatusConfirmed
} CloudScriptEmailVerificationStatus;

typedef enum
{
    CloudScriptContinentCodeAF,
    CloudScriptContinentCodeAN,
    CloudScriptContinentCodeAS,
    CloudScriptContinentCodeEU,
    CloudScriptContinentCodeNA,
    CloudScriptContinentCodeOC,
    CloudScriptContinentCodeSA
} CloudScriptContinentCode;

typedef enum
{
    CloudScriptCountryCodeAF,
    CloudScriptCountryCodeAX,
    CloudScriptCountryCodeAL,
    CloudScriptCountryCodeDZ,
    CloudScriptCountryCodeAS,
    CloudScriptCountryCodeAD,
    CloudScriptCountryCodeAO,
    CloudScriptCountryCodeAI,
    CloudScriptCountryCodeAQ,
    CloudScriptCountryCodeAG,
    CloudScriptCountryCodeAR,
    CloudScriptCountryCodeAM,
    CloudScriptCountryCodeAW,
    CloudScriptCountryCodeAU,
    CloudScriptCountryCodeAT,
    CloudScriptCountryCodeAZ,
    CloudScriptCountryCodeBS,
    CloudScriptCountryCodeBH,
    CloudScriptCountryCodeBD,
    CloudScriptCountryCodeBB,
    CloudScriptCountryCodeBY,
    CloudScriptCountryCodeBE,
    CloudScriptCountryCodeBZ,
    CloudScriptCountryCodeBJ,
    CloudScriptCountryCodeBM,
    CloudScriptCountryCodeBT,
    CloudScriptCountryCodeBO,
    CloudScriptCountryCodeBQ,
    CloudScriptCountryCodeBA,
    CloudScriptCountryCodeBW,
    CloudScriptCountryCodeBV,
    CloudScriptCountryCodeBR,
    CloudScriptCountryCodeIO,
    CloudScriptCountryCodeBN,
    CloudScriptCountryCodeBG,
    CloudScriptCountryCodeBF,
    CloudScriptCountryCodeBI,
    CloudScriptCountryCodeKH,
    CloudScriptCountryCodeCM,
    CloudScriptCountryCodeCA,
    CloudScriptCountryCodeCV,
    CloudScriptCountryCodeKY,
    CloudScriptCountryCodeCF,
    CloudScriptCountryCodeTD,
    CloudScriptCountryCodeCL,
    CloudScriptCountryCodeCN,
    CloudScriptCountryCodeCX,
    CloudScriptCountryCodeCC,
    CloudScriptCountryCodeCO,
    CloudScriptCountryCodeKM,
    CloudScriptCountryCodeCG,
    CloudScriptCountryCodeCD,
    CloudScriptCountryCodeCK,
    CloudScriptCountryCodeCR,
    CloudScriptCountryCodeCI,
    CloudScriptCountryCodeHR,
    CloudScriptCountryCodeCU,
    CloudScriptCountryCodeCW,
    CloudScriptCountryCodeCY,
    CloudScriptCountryCodeCZ,
    CloudScriptCountryCodeDK,
    CloudScriptCountryCodeDJ,
    CloudScriptCountryCodeDM,
    CloudScriptCountryCodeDO,
    CloudScriptCountryCodeEC,
    CloudScriptCountryCodeEG,
    CloudScriptCountryCodeSV,
    CloudScriptCountryCodeGQ,
    CloudScriptCountryCodeER,
    CloudScriptCountryCodeEE,
    CloudScriptCountryCodeET,
    CloudScriptCountryCodeFK,
    CloudScriptCountryCodeFO,
    CloudScriptCountryCodeFJ,
    CloudScriptCountryCodeFI,
    CloudScriptCountryCodeFR,
    CloudScriptCountryCodeGF,
    CloudScriptCountryCodePF,
    CloudScriptCountryCodeTF,
    CloudScriptCountryCodeGA,
    CloudScriptCountryCodeGM,
    CloudScriptCountryCodeGE,
    CloudScriptCountryCodeDE,
    CloudScriptCountryCodeGH,
    CloudScriptCountryCodeGI,
    CloudScriptCountryCodeGR,
    CloudScriptCountryCodeGL,
    CloudScriptCountryCodeGD,
    CloudScriptCountryCodeGP,
    CloudScriptCountryCodeGU,
    CloudScriptCountryCodeGT,
    CloudScriptCountryCodeGG,
    CloudScriptCountryCodeGN,
    CloudScriptCountryCodeGW,
    CloudScriptCountryCodeGY,
    CloudScriptCountryCodeHT,
    CloudScriptCountryCodeHM,
    CloudScriptCountryCodeVA,
    CloudScriptCountryCodeHN,
    CloudScriptCountryCodeHK,
    CloudScriptCountryCodeHU,
    CloudScriptCountryCodeIS,
    CloudScriptCountryCodeIN,
    CloudScriptCountryCodeID,
    CloudScriptCountryCodeIR,
    CloudScriptCountryCodeIQ,
    CloudScriptCountryCodeIE,
    CloudScriptCountryCodeIM,
    CloudScriptCountryCodeIL,
    CloudScriptCountryCodeIT,
    CloudScriptCountryCodeJM,
    CloudScriptCountryCodeJP,
    CloudScriptCountryCodeJE,
    CloudScriptCountryCodeJO,
    CloudScriptCountryCodeKZ,
    CloudScriptCountryCodeKE,
    CloudScriptCountryCodeKI,
    CloudScriptCountryCodeKP,
    CloudScriptCountryCodeKR,
    CloudScriptCountryCodeKW,
    CloudScriptCountryCodeKG,
    CloudScriptCountryCodeLA,
    CloudScriptCountryCodeLV,
    CloudScriptCountryCodeLB,
    CloudScriptCountryCodeLS,
    CloudScriptCountryCodeLR,
    CloudScriptCountryCodeLY,
    CloudScriptCountryCodeLI,
    CloudScriptCountryCodeLT,
    CloudScriptCountryCodeLU,
    CloudScriptCountryCodeMO,
    CloudScriptCountryCodeMK,
    CloudScriptCountryCodeMG,
    CloudScriptCountryCodeMW,
    CloudScriptCountryCodeMY,
    CloudScriptCountryCodeMV,
    CloudScriptCountryCodeML,
    CloudScriptCountryCodeMT,
    CloudScriptCountryCodeMH,
    CloudScriptCountryCodeMQ,
    CloudScriptCountryCodeMR,
    CloudScriptCountryCodeMU,
    CloudScriptCountryCodeYT,
    CloudScriptCountryCodeMX,
    CloudScriptCountryCodeFM,
    CloudScriptCountryCodeMD,
    CloudScriptCountryCodeMC,
    CloudScriptCountryCodeMN,
    CloudScriptCountryCodeME,
    CloudScriptCountryCodeMS,
    CloudScriptCountryCodeMA,
    CloudScriptCountryCodeMZ,
    CloudScriptCountryCodeMM,
    CloudScriptCountryCodeNA,
    CloudScriptCountryCodeNR,
    CloudScriptCountryCodeNP,
    CloudScriptCountryCodeNL,
    CloudScriptCountryCodeNC,
    CloudScriptCountryCodeNZ,
    CloudScriptCountryCodeNI,
    CloudScriptCountryCodeNE,
    CloudScriptCountryCodeNG,
    CloudScriptCountryCodeNU,
    CloudScriptCountryCodeNF,
    CloudScriptCountryCodeMP,
    CloudScriptCountryCodeNO,
    CloudScriptCountryCodeOM,
    CloudScriptCountryCodePK,
    CloudScriptCountryCodePW,
    CloudScriptCountryCodePS,
    CloudScriptCountryCodePA,
    CloudScriptCountryCodePG,
    CloudScriptCountryCodePY,
    CloudScriptCountryCodePE,
    CloudScriptCountryCodePH,
    CloudScriptCountryCodePN,
    CloudScriptCountryCodePL,
    CloudScriptCountryCodePT,
    CloudScriptCountryCodePR,
    CloudScriptCountryCodeQA,
    CloudScriptCountryCodeRE,
    CloudScriptCountryCodeRO,
    CloudScriptCountryCodeRU,
    CloudScriptCountryCodeRW,
    CloudScriptCountryCodeBL,
    CloudScriptCountryCodeSH,
    CloudScriptCountryCodeKN,
    CloudScriptCountryCodeLC,
    CloudScriptCountryCodeMF,
    CloudScriptCountryCodePM,
    CloudScriptCountryCodeVC,
    CloudScriptCountryCodeWS,
    CloudScriptCountryCodeSM,
    CloudScriptCountryCodeST,
    CloudScriptCountryCodeSA,
    CloudScriptCountryCodeSN,
    CloudScriptCountryCodeRS,
    CloudScriptCountryCodeSC,
    CloudScriptCountryCodeSL,
    CloudScriptCountryCodeSG,
    CloudScriptCountryCodeSX,
    CloudScriptCountryCodeSK,
    CloudScriptCountryCodeSI,
    CloudScriptCountryCodeSB,
    CloudScriptCountryCodeSO,
    CloudScriptCountryCodeZA,
    CloudScriptCountryCodeGS,
    CloudScriptCountryCodeSS,
    CloudScriptCountryCodeES,
    CloudScriptCountryCodeLK,
    CloudScriptCountryCodeSD,
    CloudScriptCountryCodeSR,
    CloudScriptCountryCodeSJ,
    CloudScriptCountryCodeSZ,
    CloudScriptCountryCodeSE,
    CloudScriptCountryCodeCH,
    CloudScriptCountryCodeSY,
    CloudScriptCountryCodeTW,
    CloudScriptCountryCodeTJ,
    CloudScriptCountryCodeTZ,
    CloudScriptCountryCodeTH,
    CloudScriptCountryCodeTL,
    CloudScriptCountryCodeTG,
    CloudScriptCountryCodeTK,
    CloudScriptCountryCodeTO,
    CloudScriptCountryCodeTT,
    CloudScriptCountryCodeTN,
    CloudScriptCountryCodeTR,
    CloudScriptCountryCodeTM,
    CloudScriptCountryCodeTC,
    CloudScriptCountryCodeTV,
    CloudScriptCountryCodeUG,
    CloudScriptCountryCodeUA,
    CloudScriptCountryCodeAE,
    CloudScriptCountryCodeGB,
    CloudScriptCountryCodeUS,
    CloudScriptCountryCodeUM,
    CloudScriptCountryCodeUY,
    CloudScriptCountryCodeUZ,
    CloudScriptCountryCodeVU,
    CloudScriptCountryCodeVE,
    CloudScriptCountryCodeVN,
    CloudScriptCountryCodeVG,
    CloudScriptCountryCodeVI,
    CloudScriptCountryCodeWF,
    CloudScriptCountryCodeEH,
    CloudScriptCountryCodeYE,
    CloudScriptCountryCodeZM,
    CloudScriptCountryCodeZW
} CloudScriptCountryCode;

typedef enum
{
    CloudScriptLoginIdentityProviderUnknown,
    CloudScriptLoginIdentityProviderPlayFab,
    CloudScriptLoginIdentityProviderCustom,
    CloudScriptLoginIdentityProviderGameCenter,
    CloudScriptLoginIdentityProviderGooglePlay,
    CloudScriptLoginIdentityProviderSteam,
    CloudScriptLoginIdentityProviderXBoxLive,
    CloudScriptLoginIdentityProviderPSN,
    CloudScriptLoginIdentityProviderKongregate,
    CloudScriptLoginIdentityProviderFacebook,
    CloudScriptLoginIdentityProviderIOSDevice,
    CloudScriptLoginIdentityProviderAndroidDevice,
    CloudScriptLoginIdentityProviderTwitch,
    CloudScriptLoginIdentityProviderWindowsHello,
    CloudScriptLoginIdentityProviderGameServer,
    CloudScriptLoginIdentityProviderCustomServer,
    CloudScriptLoginIdentityProviderNintendoSwitch,
    CloudScriptLoginIdentityProviderFacebookInstantGames,
    CloudScriptLoginIdentityProviderOpenIdConnect,
    CloudScriptLoginIdentityProviderApple,
    CloudScriptLoginIdentityProviderNintendoSwitchAccount
} CloudScriptLoginIdentityProvider;

typedef enum
{
    CloudScriptSubscriptionProviderStatusNoError,
    CloudScriptSubscriptionProviderStatusCancelled,
    CloudScriptSubscriptionProviderStatusUnknownError,
    CloudScriptSubscriptionProviderStatusBillingError,
    CloudScriptSubscriptionProviderStatusProductUnavailable,
    CloudScriptSubscriptionProviderStatusCustomerDidNotAcceptPriceChange,
    CloudScriptSubscriptionProviderStatusFreeTrial,
    CloudScriptSubscriptionProviderStatusPaymentPending
} CloudScriptSubscriptionProviderStatus;

typedef enum
{
    CloudScriptPushNotificationPlatformApplePushNotificationService,
    CloudScriptPushNotificationPlatformGoogleCloudMessaging
} CloudScriptPushNotificationPlatform;

typedef enum
{
    CloudScriptTriggerTypeHTTP,
    CloudScriptTriggerTypeQueue
} CloudScriptTriggerType;

//predeclare all non-enum classes

@class CloudScriptAdCampaignAttributionModel;

@class CloudScriptContactEmailInfoModel;

@class CloudScriptEmptyResult;

@class CloudScriptEntityKey;

@class CloudScriptExecuteCloudScriptResult;

@class CloudScriptExecuteEntityCloudScriptRequest;

@class CloudScriptExecuteFunctionRequest;

@class CloudScriptExecuteFunctionResult;

@class CloudScriptFunctionExecutionError;

@class CloudScriptFunctionModel;

@class CloudScriptHttpFunctionModel;

@class CloudScriptLinkedPlatformAccountModel;

@class CloudScriptListFunctionsRequest;

@class CloudScriptListFunctionsResult;

@class CloudScriptListHttpFunctionsResult;

@class CloudScriptListQueuedFunctionsResult;

@class CloudScriptLocationModel;

@class CloudScriptLogStatement;

@class CloudScriptMembershipModel;

@class CloudScriptNameIdentifier;

@class CloudScriptPlayerProfileModel;

@class CloudScriptPlayStreamEventEnvelopeModel;

@class CloudScriptPostFunctionResultForEntityTriggeredActionRequest;

@class CloudScriptPostFunctionResultForFunctionExecutionRequest;

@class CloudScriptPostFunctionResultForPlayerTriggeredActionRequest;

@class CloudScriptPostFunctionResultForScheduledTaskRequest;

@class CloudScriptPushNotificationRegistrationModel;

@class CloudScriptQueuedFunctionModel;

@class CloudScriptRegisterHttpFunctionRequest;

@class CloudScriptRegisterQueuedFunctionRequest;

@class CloudScriptScriptExecutionError;

@class CloudScriptStatisticModel;

@class CloudScriptSubscriptionModel;

@class CloudScriptTagModel;

@class CloudScriptUnregisterFunctionRequest;

@class CloudScriptValueToDateModel;



@interface CloudScriptAdCampaignAttributionModel : PlayFabBaseModel


/// <summary>
/*
/// UTC time stamp of attribution
*/
/// </summary>
@property NSDate* AttributedAt; 

/// <summary>
/*
/// Attribution campaign identifier
*/
/// </summary>
@property NSString* CampaignId; 

/// <summary>
/*
/// Attribution network name
*/
/// </summary>
@property NSString* Platform; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptContactEmailInfoModel : PlayFabBaseModel


/// <summary>
/*
/// The email address
*/
/// </summary>
@property NSString* EmailAddress; 

/// <summary>
/*
/// The name of the email info data
*/
/// </summary>
@property NSString* Name; 

/// <summary>
/*
/// The verification status of the email
*/
/// </summary>
@property CloudScriptEmailVerificationStatus VerificationStatus; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptEmptyResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Combined entity type and ID structure which uniquely identifies a single entity.
*/
/// </summary>
@interface CloudScriptEntityKey : PlayFabBaseModel


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


@interface CloudScriptExecuteCloudScriptResult : PlayFabBaseModel


/// <summary>
/*
/// Number of PlayFab API requests issued by the CloudScript function
*/
/// </summary>
@property NSNumber* APIRequestsIssued; 

/// <summary>
/*
/// Information about the error, if any, that occurred during execution
*/
/// </summary>
@property CloudScriptScriptExecutionError* Error; 

@property NSNumber* ExecutionTimeSeconds; 

/// <summary>
/*
/// The name of the function that executed
*/
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/*
/// The object returned from the CloudScript function, if any
*/
/// </summary>
@property NSDictionary* FunctionResult; 

/// <summary>
/*
/// Flag indicating if the FunctionResult was too large and was subsequently dropped from this event. This only occurs if the total event size is larger than 350KB.
*/
/// </summary>
@property bool FunctionResultTooLarge; 

/// <summary>
/*
/// Number of external HTTP requests issued by the CloudScript function
*/
/// </summary>
@property NSNumber* HttpRequestsIssued; 

/// <summary>
/*
/// Entries logged during the function execution. These include both entries logged in the function code using log.info() and log.error() and error entries for API and HTTP request failures.
*/
/// </summary>
@property NSArray* Logs; 

/// <summary>
/*
/// Flag indicating if the logs were too large and were subsequently dropped from this event. This only occurs if the total event size is larger than 350KB after the FunctionResult was removed.
*/
/// </summary>
@property bool LogsTooLarge; 

@property NSNumber* MemoryConsumedBytes; 

/// <summary>
/*
/// Processor time consumed while executing the function. This does not include time spent waiting on API calls or HTTP requests.
*/
/// </summary>
@property NSNumber* ProcessorTimeSeconds; 

/// <summary>
/*
/// The revision of the CloudScript that executed
*/
/// </summary>
@property NSNumber* Revision; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Executes CloudScript with the entity profile that is defined in the request.
*/
/// </summary>
@interface CloudScriptExecuteEntityCloudScriptRequest : PlayFabBaseModel


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
@property CloudScriptEntityKey* Entity; 

/// <summary>
/*
/// The name of the CloudScript function to execute
*/
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/*
/// Object that is passed in to the function as the first argument
*/
/// </summary>
@property NSDictionary* FunctionParameter; 

/// <summary>
/*
/// Generate a 'entity_executed_cloudscript' PlayStream event containing the results of the function execution and other contextual information. This event will show up in the PlayStream debugger console for the player in Game Manager.
*/
/// </summary>
@property bool GeneratePlayStreamEvent; 

/// <summary>
/*
/// Option for which revision of the CloudScript to execute. 'Latest' executes the most recently created revision, 'Live' executes the current live, published revision, and 'Specific' executes the specified revision. The default value is 'Specific', if the SpecificRevision parameter is specified, otherwise it is 'Live'.
*/
/// </summary>
@property CloudScriptCloudScriptRevisionOption RevisionSelection; 

/// <summary>
/*
/// The specific revision to execute, when RevisionSelection is set to 'Specific'
*/
/// </summary>
@property NSNumber* SpecificRevision; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Executes an Azure Function with the profile of the entity that is defined in the request.
*/
/// </summary>
@interface CloudScriptExecuteFunctionRequest : PlayFabBaseModel


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
@property CloudScriptEntityKey* Entity; 

/// <summary>
/*
/// The name of the CloudScript function to execute
*/
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/*
/// Object that is passed in to the function as the FunctionArgument field of the FunctionExecutionContext data structure
*/
/// </summary>
@property NSDictionary* FunctionParameter; 

/// <summary>
/*
/// Generate a 'entity_executed_cloudscript_function' PlayStream event containing the results of the function execution and other contextual information. This event will show up in the PlayStream debugger console for the player in Game Manager.
*/
/// </summary>
@property bool GeneratePlayStreamEvent; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptExecuteFunctionResult : PlayFabBaseModel


/// <summary>
/*
/// Error from the CloudScript Azure Function.
*/
/// </summary>
@property CloudScriptFunctionExecutionError* Error; 

/// <summary>
/*
/// The amount of time the function took to execute
*/
/// </summary>
@property NSNumber* ExecutionTimeMilliseconds; 

/// <summary>
/*
/// The name of the function that executed
*/
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/*
/// The object returned from the function, if any
*/
/// </summary>
@property NSDictionary* FunctionResult; 

/// <summary>
/*
/// Flag indicating if the FunctionResult was too large and was subsequently dropped from this event.
*/
/// </summary>
@property bool FunctionResultTooLarge; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptFunctionExecutionError : PlayFabBaseModel


/// <summary>
/*
/// Error code, such as CloudScriptAzureFunctionsExecutionTimeLimitExceeded, CloudScriptAzureFunctionsArgumentSizeExceeded, CloudScriptAzureFunctionsReturnSizeExceeded or CloudScriptAzureFunctionsHTTPRequestError
*/
/// </summary>
@property NSString* Error; 

/// <summary>
/*
/// Details about the error
*/
/// </summary>
@property NSString* Message; 

/// <summary>
/*
/// Point during the execution of the function at which the error occurred, if any
*/
/// </summary>
@property NSString* StackTrace; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptFunctionModel : PlayFabBaseModel


/// <summary>
/*
/// The address of the function.
*/
/// </summary>
@property NSString* FunctionAddress; 

/// <summary>
/*
/// The name the function was registered under.
*/
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/*
/// The trigger type for the function.
*/
/// </summary>
@property NSString* TriggerType; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptHttpFunctionModel : PlayFabBaseModel


/// <summary>
/*
/// The name the function was registered under.
*/
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/*
/// The URL of the function.
*/
/// </summary>
@property NSString* FunctionUrl; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptLinkedPlatformAccountModel : PlayFabBaseModel


/// <summary>
/*
/// Linked account email of the user on the platform, if available
*/
/// </summary>
@property NSString* Email; 

/// <summary>
/*
/// Authentication platform
*/
/// </summary>
@property CloudScriptLoginIdentityProvider Platform; 

/// <summary>
/*
/// Unique account identifier of the user on the platform
*/
/// </summary>
@property NSString* PlatformUserId; 

/// <summary>
/*
/// Linked account username of the user on the platform, if available
*/
/// </summary>
@property NSString* Username; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// A title can have many functions, ListHttpFunctions will return a list of all the currently registered HTTP triggered functions for a given title.
*/
/// </summary>
@interface CloudScriptListFunctionsRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptListFunctionsResult : PlayFabBaseModel


/// <summary>
/*
/// The list of functions that are currently registered for the title.
*/
/// </summary>
@property NSArray* Functions; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptListHttpFunctionsResult : PlayFabBaseModel


/// <summary>
/*
/// The list of HTTP triggered functions that are currently registered for the title.
*/
/// </summary>
@property NSArray* Functions; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptListQueuedFunctionsResult : PlayFabBaseModel


/// <summary>
/*
/// The list of Queue triggered functions that are currently registered for the title.
*/
/// </summary>
@property NSArray* Functions; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptLocationModel : PlayFabBaseModel


/// <summary>
/*
/// City name.
*/
/// </summary>
@property NSString* City; 

/// <summary>
/*
/// The two-character continent code for this location
*/
/// </summary>
@property CloudScriptContinentCode pfContinentCode; 

/// <summary>
/*
/// The two-character ISO 3166-1 country code for the country associated with the location
*/
/// </summary>
@property CloudScriptCountryCode pfCountryCode; 

/// <summary>
/*
/// Latitude coordinate of the geographic location.
*/
/// </summary>
@property NSNumber* Latitude; 

/// <summary>
/*
/// Longitude coordinate of the geographic location.
*/
/// </summary>
@property NSNumber* Longitude; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptLogStatement : PlayFabBaseModel


/// <summary>
/*
/// Optional object accompanying the message as contextual information
*/
/// </summary>
@property NSDictionary* Data; 

/// <summary>
/*
/// 'Debug', 'Info', or 'Error'
*/
/// </summary>
@property NSString* Level; 

@property NSString* Message; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptMembershipModel : PlayFabBaseModel


/// <summary>
/*
/// Whether this membership is active. That is, whether the MembershipExpiration time has been reached.
*/
/// </summary>
@property bool IsActive; 

/// <summary>
/*
/// The time this membership expires
*/
/// </summary>
@property NSDate* MembershipExpiration; 

/// <summary>
/*
/// The id of the membership
*/
/// </summary>
@property NSString* MembershipId; 

/// <summary>
/*
/// Membership expirations can be explicitly overridden (via game manager or the admin api). If this membership has been overridden, this will be the new expiration time.
*/
/// </summary>
@property NSDate* OverrideExpiration; 

/// <summary>
/*
/// The list of subscriptions that this player has for this membership
*/
/// </summary>
@property NSArray* Subscriptions; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Identifier by either name or ID. Note that a name may change due to renaming, or reused after being deleted. ID is immutable and unique.
*/
/// </summary>
@interface CloudScriptNameIdentifier : PlayFabBaseModel


/// <summary>
/*
/// Id Identifier, if present
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// Name Identifier, if present
*/
/// </summary>
@property NSString* Name; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptPlayerProfileModel : PlayFabBaseModel


/// <summary>
/*
/// List of advertising campaigns the player has been attributed to
*/
/// </summary>
@property NSArray* AdCampaignAttributions; 

/// <summary>
/*
/// URL of the player's avatar image
*/
/// </summary>
@property NSString* AvatarUrl; 

/// <summary>
/*
/// If the player is currently banned, the UTC Date when the ban expires
*/
/// </summary>
@property NSDate* BannedUntil; 

/// <summary>
/*
/// List of all contact email info associated with the player account
*/
/// </summary>
@property NSArray* ContactEmailAddresses; 

/// <summary>
/*
/// Player record created
*/
/// </summary>
@property NSDate* Created; 

/// <summary>
/*
/// Player display name
*/
/// </summary>
@property NSString* DisplayName; 

/// <summary>
/*
/// List of experiment variants for the player.
*/
/// </summary>
@property NSArray* ExperimentVariants; 

/// <summary>
/*
/// UTC time when the player most recently logged in to the title
*/
/// </summary>
@property NSDate* LastLogin; 

/// <summary>
/*
/// List of all authentication systems linked to this player account
*/
/// </summary>
@property NSArray* LinkedAccounts; 

/// <summary>
/*
/// List of geographic locations from which the player has logged in to the title
*/
/// </summary>
@property NSArray* Locations; 

/// <summary>
/*
/// List of memberships for the player, along with whether are expired.
*/
/// </summary>
@property NSArray* Memberships; 

/// <summary>
/*
/// Player account origination
*/
/// </summary>
@property CloudScriptLoginIdentityProvider Origination; 

/// <summary>
/*
/// PlayFab player account unique identifier
*/
/// </summary>
@property NSString* PlayerId; 

/// <summary>
/*
/// Publisher this player belongs to
*/
/// </summary>
@property NSString* PublisherId; 

/// <summary>
/*
/// List of configured end points registered for sending the player push notifications
*/
/// </summary>
@property NSArray* PushNotificationRegistrations; 

/// <summary>
/*
/// List of leaderboard statistic values for the player
*/
/// </summary>
@property NSArray* Statistics; 

/// <summary>
/*
/// List of player's tags for segmentation
*/
/// </summary>
@property NSArray* Tags; 

/// <summary>
/*
/// Title ID this player profile applies to
*/
/// </summary>
@property NSString* TitleId; 

/// <summary>
/*
/// Sum of the player's purchases made with real-money currencies, converted to US dollars equivalent and represented as a whole number of cents (1/100 USD). For example, 999 indicates nine dollars and ninety-nine cents.
*/
/// </summary>
@property NSNumber* TotalValueToDateInUSD; 

/// <summary>
/*
/// List of the player's lifetime purchase totals, summed by real-money currency
*/
/// </summary>
@property NSArray* ValuesToDate; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptPlayStreamEventEnvelopeModel : PlayFabBaseModel


/// <summary>
/*
/// The ID of the entity the event is about.
*/
/// </summary>
@property NSString* EntityId; 

/// <summary>
/*
/// The type of the entity the event is about.
*/
/// </summary>
@property NSString* EntityType; 

/// <summary>
/*
/// Data specific to this event.
*/
/// </summary>
@property NSString* EventData; 

/// <summary>
/*
/// The name of the event.
*/
/// </summary>
@property NSString* EventName; 

/// <summary>
/*
/// The namespace of the event.
*/
/// </summary>
@property NSString* EventNamespace; 

/// <summary>
/*
/// Settings for the event.
*/
/// </summary>
@property NSString* EventSettings; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptPostFunctionResultForEntityTriggeredActionRequest : PlayFabBaseModel


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
@property CloudScriptEntityKey* Entity; 

/// <summary>
/*
/// The result of the function execution.
*/
/// </summary>
@property CloudScriptExecuteFunctionResult* FunctionResult; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptPostFunctionResultForFunctionExecutionRequest : PlayFabBaseModel


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
@property CloudScriptEntityKey* Entity; 

/// <summary>
/*
/// The result of the function execution.
*/
/// </summary>
@property CloudScriptExecuteFunctionResult* FunctionResult; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptPostFunctionResultForPlayerTriggeredActionRequest : PlayFabBaseModel


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
@property CloudScriptEntityKey* Entity; 

/// <summary>
/*
/// The result of the function execution.
*/
/// </summary>
@property CloudScriptExecuteFunctionResult* FunctionResult; 

/// <summary>
/*
/// The player profile the function was invoked with.
*/
/// </summary>
@property CloudScriptPlayerProfileModel* PlayerProfile; 

/// <summary>
/*
/// The triggering PlayStream event, if any, that caused the function to be invoked.
*/
/// </summary>
@property CloudScriptPlayStreamEventEnvelopeModel* PlayStreamEventEnvelope; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptPostFunctionResultForScheduledTaskRequest : PlayFabBaseModel


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
@property CloudScriptEntityKey* Entity; 

/// <summary>
/*
/// The result of the function execution
*/
/// </summary>
@property CloudScriptExecuteFunctionResult* FunctionResult; 

/// <summary>
/*
/// The id of the scheduled task that invoked the function.
*/
/// </summary>
@property CloudScriptNameIdentifier* ScheduledTaskId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptPushNotificationRegistrationModel : PlayFabBaseModel


/// <summary>
/*
/// Notification configured endpoint
*/
/// </summary>
@property NSString* NotificationEndpointARN; 

/// <summary>
/*
/// Push notification platform
*/
/// </summary>
@property CloudScriptPushNotificationPlatform Platform; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptQueuedFunctionModel : PlayFabBaseModel


/// <summary>
/*
/// The connection string for the Azure Storage Account that hosts the queue.
*/
/// </summary>
@property NSString* ConnectionString; 

/// <summary>
/*
/// The name the function was registered under.
*/
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/*
/// The name of the queue that triggers the Azure Function.
*/
/// </summary>
@property NSString* QueueName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptRegisterHttpFunctionRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The name of the function to register
*/
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/*
/// Full URL for Azure Function that implements the function.
*/
/// </summary>
@property NSString* FunctionUrl; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// A title can have many functions, RegisterQueuedFunction associates a function name with a queue name and connection string.
*/
/// </summary>
@interface CloudScriptRegisterQueuedFunctionRequest : PlayFabBaseModel


/// <summary>
/*
/// A connection string for the storage account that hosts the queue for the Azure Function.
*/
/// </summary>
@property NSString* ConnectionString; 

/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The name of the function to register
*/
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/*
/// The name of the queue for the Azure Function.
*/
/// </summary>
@property NSString* QueueName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptScriptExecutionError : PlayFabBaseModel


/// <summary>
/*
/// Error code, such as CloudScriptNotFound, JavascriptException, CloudScriptFunctionArgumentSizeExceeded, CloudScriptAPIRequestCountExceeded, CloudScriptAPIRequestError, or CloudScriptHTTPRequestError
*/
/// </summary>
@property NSString* Error; 

/// <summary>
/*
/// Details about the error
*/
/// </summary>
@property NSString* Message; 

/// <summary>
/*
/// Point during the execution of the script at which the error occurred, if any
*/
/// </summary>
@property NSString* StackTrace; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptStatisticModel : PlayFabBaseModel


/// <summary>
/*
/// Statistic name
*/
/// </summary>
@property NSString* Name; 

/// <summary>
/*
/// Statistic value
*/
/// </summary>
@property NSNumber* Value; 

/// <summary>
/*
/// Statistic version (0 if not a versioned statistic)
*/
/// </summary>
@property NSNumber* Version; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptSubscriptionModel : PlayFabBaseModel


/// <summary>
/*
/// When this subscription expires.
*/
/// </summary>
@property NSDate* Expiration; 

/// <summary>
/*
/// The time the subscription was orignially purchased
*/
/// </summary>
@property NSDate* InitialSubscriptionTime; 

/// <summary>
/*
/// Whether this subscription is currently active. That is, if Expiration > now.
*/
/// </summary>
@property bool IsActive; 

/// <summary>
/*
/// The status of this subscription, according to the subscription provider.
*/
/// </summary>
@property CloudScriptSubscriptionProviderStatus Status; 

/// <summary>
/*
/// The id for this subscription
*/
/// </summary>
@property NSString* SubscriptionId; 

/// <summary>
/*
/// The item id for this subscription from the primary catalog
*/
/// </summary>
@property NSString* SubscriptionItemId; 

/// <summary>
/*
/// The provider for this subscription. Apple or Google Play are supported today.
*/
/// </summary>
@property NSString* SubscriptionProvider; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptTagModel : PlayFabBaseModel


/// <summary>
/*
/// Full value of the tag, including namespace
*/
/// </summary>
@property NSString* TagValue; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptUnregisterFunctionRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The name of the function to unregister
*/
/// </summary>
@property NSString* FunctionName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CloudScriptValueToDateModel : PlayFabBaseModel


/// <summary>
/*
/// ISO 4217 code of the currency used in the purchases
*/
/// </summary>
@property NSString* Currency; 

/// <summary>
/*
/// Total value of the purchases in a whole number of 1/100 monetary units. For example, 999 indicates nine dollars and ninety-nine cents when Currency is 'USD')
*/
/// </summary>
@property NSNumber* TotalValue; 

/// <summary>
/*
/// Total value of the purchases in a string representation of decimal monetary units. For example, '9.99' indicates nine dollars and ninety-nine cents when Currency is 'USD'.
*/
/// </summary>
@property NSString* TotalValueAsDecimal; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

