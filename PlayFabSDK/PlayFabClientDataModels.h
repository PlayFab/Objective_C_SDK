
#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"



typedef enum
{
    TradeStatusInvalid,
    TradeStatusOpening,
    TradeStatusOpen,
    TradeStatusAccepting,
    TradeStatusAccepted,
    TradeStatusFilled,
    TradeStatusCancelled
} TradeStatus;

typedef enum
{
    CloudScriptRevisionOptionLive,
    CloudScriptRevisionOptionLatest,
    CloudScriptRevisionOptionSpecific
} CloudScriptRevisionOption;

typedef enum
{
    EmailVerificationStatusUnverified,
    EmailVerificationStatusPending,
    EmailVerificationStatusConfirmed
} EmailVerificationStatus;

typedef enum
{
    ContinentCodeAF,
    ContinentCodeAN,
    ContinentCodeAS,
    ContinentCodeEU,
    ContinentCodeNA,
    ContinentCodeOC,
    ContinentCodeSA
} ContinentCode;

typedef enum
{
    CountryCodeAF,
    CountryCodeAX,
    CountryCodeAL,
    CountryCodeDZ,
    CountryCodeAS,
    CountryCodeAD,
    CountryCodeAO,
    CountryCodeAI,
    CountryCodeAQ,
    CountryCodeAG,
    CountryCodeAR,
    CountryCodeAM,
    CountryCodeAW,
    CountryCodeAU,
    CountryCodeAT,
    CountryCodeAZ,
    CountryCodeBS,
    CountryCodeBH,
    CountryCodeBD,
    CountryCodeBB,
    CountryCodeBY,
    CountryCodeBE,
    CountryCodeBZ,
    CountryCodeBJ,
    CountryCodeBM,
    CountryCodeBT,
    CountryCodeBO,
    CountryCodeBQ,
    CountryCodeBA,
    CountryCodeBW,
    CountryCodeBV,
    CountryCodeBR,
    CountryCodeIO,
    CountryCodeBN,
    CountryCodeBG,
    CountryCodeBF,
    CountryCodeBI,
    CountryCodeKH,
    CountryCodeCM,
    CountryCodeCA,
    CountryCodeCV,
    CountryCodeKY,
    CountryCodeCF,
    CountryCodeTD,
    CountryCodeCL,
    CountryCodeCN,
    CountryCodeCX,
    CountryCodeCC,
    CountryCodeCO,
    CountryCodeKM,
    CountryCodeCG,
    CountryCodeCD,
    CountryCodeCK,
    CountryCodeCR,
    CountryCodeCI,
    CountryCodeHR,
    CountryCodeCU,
    CountryCodeCW,
    CountryCodeCY,
    CountryCodeCZ,
    CountryCodeDK,
    CountryCodeDJ,
    CountryCodeDM,
    CountryCodeDO,
    CountryCodeEC,
    CountryCodeEG,
    CountryCodeSV,
    CountryCodeGQ,
    CountryCodeER,
    CountryCodeEE,
    CountryCodeET,
    CountryCodeFK,
    CountryCodeFO,
    CountryCodeFJ,
    CountryCodeFI,
    CountryCodeFR,
    CountryCodeGF,
    CountryCodePF,
    CountryCodeTF,
    CountryCodeGA,
    CountryCodeGM,
    CountryCodeGE,
    CountryCodeDE,
    CountryCodeGH,
    CountryCodeGI,
    CountryCodeGR,
    CountryCodeGL,
    CountryCodeGD,
    CountryCodeGP,
    CountryCodeGU,
    CountryCodeGT,
    CountryCodeGG,
    CountryCodeGN,
    CountryCodeGW,
    CountryCodeGY,
    CountryCodeHT,
    CountryCodeHM,
    CountryCodeVA,
    CountryCodeHN,
    CountryCodeHK,
    CountryCodeHU,
    CountryCodeIS,
    CountryCodeIN,
    CountryCodeID,
    CountryCodeIR,
    CountryCodeIQ,
    CountryCodeIE,
    CountryCodeIM,
    CountryCodeIL,
    CountryCodeIT,
    CountryCodeJM,
    CountryCodeJP,
    CountryCodeJE,
    CountryCodeJO,
    CountryCodeKZ,
    CountryCodeKE,
    CountryCodeKI,
    CountryCodeKP,
    CountryCodeKR,
    CountryCodeKW,
    CountryCodeKG,
    CountryCodeLA,
    CountryCodeLV,
    CountryCodeLB,
    CountryCodeLS,
    CountryCodeLR,
    CountryCodeLY,
    CountryCodeLI,
    CountryCodeLT,
    CountryCodeLU,
    CountryCodeMO,
    CountryCodeMK,
    CountryCodeMG,
    CountryCodeMW,
    CountryCodeMY,
    CountryCodeMV,
    CountryCodeML,
    CountryCodeMT,
    CountryCodeMH,
    CountryCodeMQ,
    CountryCodeMR,
    CountryCodeMU,
    CountryCodeYT,
    CountryCodeMX,
    CountryCodeFM,
    CountryCodeMD,
    CountryCodeMC,
    CountryCodeMN,
    CountryCodeME,
    CountryCodeMS,
    CountryCodeMA,
    CountryCodeMZ,
    CountryCodeMM,
    CountryCodeNA,
    CountryCodeNR,
    CountryCodeNP,
    CountryCodeNL,
    CountryCodeNC,
    CountryCodeNZ,
    CountryCodeNI,
    CountryCodeNE,
    CountryCodeNG,
    CountryCodeNU,
    CountryCodeNF,
    CountryCodeMP,
    CountryCodeNO,
    CountryCodeOM,
    CountryCodePK,
    CountryCodePW,
    CountryCodePS,
    CountryCodePA,
    CountryCodePG,
    CountryCodePY,
    CountryCodePE,
    CountryCodePH,
    CountryCodePN,
    CountryCodePL,
    CountryCodePT,
    CountryCodePR,
    CountryCodeQA,
    CountryCodeRE,
    CountryCodeRO,
    CountryCodeRU,
    CountryCodeRW,
    CountryCodeBL,
    CountryCodeSH,
    CountryCodeKN,
    CountryCodeLC,
    CountryCodeMF,
    CountryCodePM,
    CountryCodeVC,
    CountryCodeWS,
    CountryCodeSM,
    CountryCodeST,
    CountryCodeSA,
    CountryCodeSN,
    CountryCodeRS,
    CountryCodeSC,
    CountryCodeSL,
    CountryCodeSG,
    CountryCodeSX,
    CountryCodeSK,
    CountryCodeSI,
    CountryCodeSB,
    CountryCodeSO,
    CountryCodeZA,
    CountryCodeGS,
    CountryCodeSS,
    CountryCodeES,
    CountryCodeLK,
    CountryCodeSD,
    CountryCodeSR,
    CountryCodeSJ,
    CountryCodeSZ,
    CountryCodeSE,
    CountryCodeCH,
    CountryCodeSY,
    CountryCodeTW,
    CountryCodeTJ,
    CountryCodeTZ,
    CountryCodeTH,
    CountryCodeTL,
    CountryCodeTG,
    CountryCodeTK,
    CountryCodeTO,
    CountryCodeTT,
    CountryCodeTN,
    CountryCodeTR,
    CountryCodeTM,
    CountryCodeTC,
    CountryCodeTV,
    CountryCodeUG,
    CountryCodeUA,
    CountryCodeAE,
    CountryCodeGB,
    CountryCodeUS,
    CountryCodeUM,
    CountryCodeUY,
    CountryCodeUZ,
    CountryCodeVU,
    CountryCodeVE,
    CountryCodeVN,
    CountryCodeVG,
    CountryCodeVI,
    CountryCodeWF,
    CountryCodeEH,
    CountryCodeYE,
    CountryCodeZM,
    CountryCodeZW
} CountryCode;

typedef enum
{
    CurrencyAED,
    CurrencyAFN,
    CurrencyALL,
    CurrencyAMD,
    CurrencyANG,
    CurrencyAOA,
    CurrencyARS,
    CurrencyAUD,
    CurrencyAWG,
    CurrencyAZN,
    CurrencyBAM,
    CurrencyBBD,
    CurrencyBDT,
    CurrencyBGN,
    CurrencyBHD,
    CurrencyBIF,
    CurrencyBMD,
    CurrencyBND,
    CurrencyBOB,
    CurrencyBRL,
    CurrencyBSD,
    CurrencyBTN,
    CurrencyBWP,
    CurrencyBYR,
    CurrencyBZD,
    CurrencyCAD,
    CurrencyCDF,
    CurrencyCHF,
    CurrencyCLP,
    CurrencyCNY,
    CurrencyCOP,
    CurrencyCRC,
    CurrencyCUC,
    CurrencyCUP,
    CurrencyCVE,
    CurrencyCZK,
    CurrencyDJF,
    CurrencyDKK,
    CurrencyDOP,
    CurrencyDZD,
    CurrencyEGP,
    CurrencyERN,
    CurrencyETB,
    CurrencyEUR,
    CurrencyFJD,
    CurrencyFKP,
    CurrencyGBP,
    CurrencyGEL,
    CurrencyGGP,
    CurrencyGHS,
    CurrencyGIP,
    CurrencyGMD,
    CurrencyGNF,
    CurrencyGTQ,
    CurrencyGYD,
    CurrencyHKD,
    CurrencyHNL,
    CurrencyHRK,
    CurrencyHTG,
    CurrencyHUF,
    CurrencyIDR,
    CurrencyILS,
    CurrencyIMP,
    CurrencyINR,
    CurrencyIQD,
    CurrencyIRR,
    CurrencyISK,
    CurrencyJEP,
    CurrencyJMD,
    CurrencyJOD,
    CurrencyJPY,
    CurrencyKES,
    CurrencyKGS,
    CurrencyKHR,
    CurrencyKMF,
    CurrencyKPW,
    CurrencyKRW,
    CurrencyKWD,
    CurrencyKYD,
    CurrencyKZT,
    CurrencyLAK,
    CurrencyLBP,
    CurrencyLKR,
    CurrencyLRD,
    CurrencyLSL,
    CurrencyLYD,
    CurrencyMAD,
    CurrencyMDL,
    CurrencyMGA,
    CurrencyMKD,
    CurrencyMMK,
    CurrencyMNT,
    CurrencyMOP,
    CurrencyMRO,
    CurrencyMUR,
    CurrencyMVR,
    CurrencyMWK,
    CurrencyMXN,
    CurrencyMYR,
    CurrencyMZN,
    CurrencyNAD,
    CurrencyNGN,
    CurrencyNIO,
    CurrencyNOK,
    CurrencyNPR,
    CurrencyNZD,
    CurrencyOMR,
    CurrencyPAB,
    CurrencyPEN,
    CurrencyPGK,
    CurrencyPHP,
    CurrencyPKR,
    CurrencyPLN,
    CurrencyPYG,
    CurrencyQAR,
    CurrencyRON,
    CurrencyRSD,
    CurrencyRUB,
    CurrencyRWF,
    CurrencySAR,
    CurrencySBD,
    CurrencySCR,
    CurrencySDG,
    CurrencySEK,
    CurrencySGD,
    CurrencySHP,
    CurrencySLL,
    CurrencySOS,
    CurrencySPL,
    CurrencySRD,
    CurrencySTD,
    CurrencySVC,
    CurrencySYP,
    CurrencySZL,
    CurrencyTHB,
    CurrencyTJS,
    CurrencyTMT,
    CurrencyTND,
    CurrencyTOP,
    CurrencyTRY,
    CurrencyTTD,
    CurrencyTVD,
    CurrencyTWD,
    CurrencyTZS,
    CurrencyUAH,
    CurrencyUGX,
    CurrencyUSD,
    CurrencyUYU,
    CurrencyUZS,
    CurrencyVEF,
    CurrencyVND,
    CurrencyVUV,
    CurrencyWST,
    CurrencyXAF,
    CurrencyXCD,
    CurrencyXDR,
    CurrencyXOF,
    CurrencyXPF,
    CurrencyYER,
    CurrencyZAR,
    CurrencyZMW,
    CurrencyZWD
} Currency;

typedef enum
{
    RegionUSCentral,
    RegionUSEast,
    RegionEUWest,
    RegionSingapore,
    RegionJapan,
    RegionBrazil,
    RegionAustralia
} Region;

typedef enum
{
    GameInstanceStateOpen,
    GameInstanceStateClosed
} GameInstanceState;

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
    LoginIdentityProviderUnknown,
    LoginIdentityProviderPlayFab,
    LoginIdentityProviderCustom,
    LoginIdentityProviderGameCenter,
    LoginIdentityProviderGooglePlay,
    LoginIdentityProviderSteam,
    LoginIdentityProviderXBoxLive,
    LoginIdentityProviderPSN,
    LoginIdentityProviderKongregate,
    LoginIdentityProviderFacebook,
    LoginIdentityProviderIOSDevice,
    LoginIdentityProviderAndroidDevice,
    LoginIdentityProviderTwitch,
    LoginIdentityProviderWindowsHello
} LoginIdentityProvider;

typedef enum
{
    SubscriptionProviderStatusNoError,
    SubscriptionProviderStatusCancelled,
    SubscriptionProviderStatusUnknownError,
    SubscriptionProviderStatusBillingError,
    SubscriptionProviderStatusProductUnavailable,
    SubscriptionProviderStatusCustomerDidNotAcceptPriceChange,
    SubscriptionProviderStatusFreeTrial,
    SubscriptionProviderStatusPaymentPending
} SubscriptionProviderStatus;

typedef enum
{
    PushNotificationPlatformApplePushNotificationService,
    PushNotificationPlatformGoogleCloudMessaging
} PushNotificationPlatform;

typedef enum
{
    TitleActivationStatusNone,
    TitleActivationStatusActivatedTitleKey,
    TitleActivationStatusPendingSteam,
    TitleActivationStatusActivatedSteam,
    TitleActivationStatusRevokedSteam
} TitleActivationStatus;

typedef enum
{
    UserOriginationOrganic,
    UserOriginationSteam,
    UserOriginationGoogle,
    UserOriginationAmazon,
    UserOriginationFacebook,
    UserOriginationKongregate,
    UserOriginationGamersFirst,
    UserOriginationUnknown,
    UserOriginationIOS,
    UserOriginationLoadTest,
    UserOriginationAndroid,
    UserOriginationPSN,
    UserOriginationGameCenter,
    UserOriginationCustomId,
    UserOriginationXboxLive,
    UserOriginationParse,
    UserOriginationTwitch,
    UserOriginationWindowsHello
} UserOrigination;

typedef enum
{
    UserDataPermissionPrivate,
    UserDataPermissionPublic
} UserDataPermission;

typedef enum
{
    SourceTypeAdmin,
    SourceTypeBackEnd,
    SourceTypeGameClient,
    SourceTypeGameServer,
    SourceTypePartner,
    SourceTypeCustom,
    SourceTypeAPI
} SourceType;

typedef enum
{
    MatchmakeStatusComplete,
    MatchmakeStatusWaiting,
    MatchmakeStatusGameNotFound,
    MatchmakeStatusNoAvailableSlots,
    MatchmakeStatusSessionClosed
} MatchmakeStatus;

typedef enum
{
    TransactionStatusCreateCart,
    TransactionStatusInit,
    TransactionStatusApproved,
    TransactionStatusSucceeded,
    TransactionStatusFailedByProvider,
    TransactionStatusDisputePending,
    TransactionStatusRefundPending,
    TransactionStatusRefunded,
    TransactionStatusRefundFailed,
    TransactionStatusChargedBack,
    TransactionStatusFailedByUber,
    TransactionStatusFailedByPlayFab,
    TransactionStatusRevoked,
    TransactionStatusTradePending,
    TransactionStatusTraded,
    TransactionStatusUpgraded,
    TransactionStatusStackPending,
    TransactionStatusStacked,
    TransactionStatusOther,
    TransactionStatusFailed
} TransactionStatus;

//predeclare all non-enum classes

@class AcceptTradeRequest;

@class AcceptTradeResponse;

@class AdCampaignAttributionModel;

@class AddFriendRequest;

@class AddFriendResult;

@class AddGenericIDRequest;

@class AddGenericIDResult;

@class AddOrUpdateContactEmailRequest;

@class AddOrUpdateContactEmailResult;

@class AddSharedGroupMembersRequest;

@class AddSharedGroupMembersResult;

@class AddUsernamePasswordRequest;

@class AddUsernamePasswordResult;

@class AddUserVirtualCurrencyRequest;

@class AndroidDevicePushNotificationRegistrationRequest;

@class AndroidDevicePushNotificationRegistrationResult;

@class AttributeInstallRequest;

@class AttributeInstallResult;

@class CancelTradeRequest;

@class CancelTradeResponse;

@class CartItem;

@class CatalogItem;

@class CatalogItemBundleInfo;

@class CatalogItemConsumableInfo;

@class CatalogItemContainerInfo;

@class CharacterInventory;

@class CharacterLeaderboardEntry;

@class CharacterResult;

@class CollectionFilter;

@class ConfirmPurchaseRequest;

@class ConfirmPurchaseResult;

@class ConsumeItemRequest;

@class ConsumeItemResult;

@class ContactEmailInfoModel;

@class Container_Dictionary_String_String;

@class CreateSharedGroupRequest;

@class CreateSharedGroupResult;

@class CurrentGamesRequest;

@class CurrentGamesResult;

@class DeviceInfoRequest;

@class EmptyResult;

@class EntityKey;

@class EntityTokenResponse;

@class ExecuteCloudScriptRequest;

@class ExecuteCloudScriptResult;

@class FacebookPlayFabIdPair;

@class FriendInfo;

@class GameCenterPlayFabIdPair;

@class GameInfo;

@class GameServerRegionsRequest;

@class GameServerRegionsResult;

@class GenericPlayFabIdPair;

@class GenericServiceId;

@class GetAccountInfoRequest;

@class GetAccountInfoResult;

@class GetCatalogItemsRequest;

@class GetCatalogItemsResult;

@class GetCharacterDataRequest;

@class GetCharacterDataResult;

@class GetCharacterInventoryRequest;

@class GetCharacterInventoryResult;

@class GetCharacterLeaderboardRequest;

@class GetCharacterLeaderboardResult;

@class GetCharacterStatisticsRequest;

@class GetCharacterStatisticsResult;

@class GetContentDownloadUrlRequest;

@class GetContentDownloadUrlResult;

@class GetFriendLeaderboardAroundPlayerRequest;

@class GetFriendLeaderboardAroundPlayerResult;

@class GetFriendLeaderboardRequest;

@class GetFriendsListRequest;

@class GetFriendsListResult;

@class GetLeaderboardAroundCharacterRequest;

@class GetLeaderboardAroundCharacterResult;

@class GetLeaderboardAroundPlayerRequest;

@class GetLeaderboardAroundPlayerResult;

@class GetLeaderboardForUsersCharactersRequest;

@class GetLeaderboardForUsersCharactersResult;

@class GetLeaderboardRequest;

@class GetLeaderboardResult;

@class GetPaymentTokenRequest;

@class GetPaymentTokenResult;

@class GetPhotonAuthenticationTokenRequest;

@class GetPhotonAuthenticationTokenResult;

@class GetPlayerCombinedInfoRequest;

@class GetPlayerCombinedInfoRequestParams;

@class GetPlayerCombinedInfoResult;

@class GetPlayerCombinedInfoResultPayload;

@class GetPlayerProfileRequest;

@class GetPlayerProfileResult;

@class GetPlayerSegmentsRequest;

@class GetPlayerSegmentsResult;

@class GetPlayerStatisticsRequest;

@class GetPlayerStatisticsResult;

@class GetPlayerStatisticVersionsRequest;

@class GetPlayerStatisticVersionsResult;

@class GetPlayerTagsRequest;

@class GetPlayerTagsResult;

@class GetPlayerTradesRequest;

@class GetPlayerTradesResponse;

@class GetPlayFabIDsFromFacebookIDsRequest;

@class GetPlayFabIDsFromFacebookIDsResult;

@class GetPlayFabIDsFromGameCenterIDsRequest;

@class GetPlayFabIDsFromGameCenterIDsResult;

@class GetPlayFabIDsFromGenericIDsRequest;

@class GetPlayFabIDsFromGenericIDsResult;

@class GetPlayFabIDsFromGoogleIDsRequest;

@class GetPlayFabIDsFromGoogleIDsResult;

@class GetPlayFabIDsFromKongregateIDsRequest;

@class GetPlayFabIDsFromKongregateIDsResult;

@class GetPlayFabIDsFromSteamIDsRequest;

@class GetPlayFabIDsFromSteamIDsResult;

@class GetPlayFabIDsFromTwitchIDsRequest;

@class GetPlayFabIDsFromTwitchIDsResult;

@class GetPublisherDataRequest;

@class GetPublisherDataResult;

@class GetPurchaseRequest;

@class GetPurchaseResult;

@class GetSegmentResult;

@class GetSharedGroupDataRequest;

@class GetSharedGroupDataResult;

@class GetStoreItemsRequest;

@class GetStoreItemsResult;

@class GetTimeRequest;

@class GetTimeResult;

@class GetTitleDataRequest;

@class GetTitleDataResult;

@class GetTitleNewsRequest;

@class GetTitleNewsResult;

@class GetTitlePublicKeyRequest;

@class GetTitlePublicKeyResult;

@class GetTradeStatusRequest;

@class GetTradeStatusResponse;

@class GetUserDataRequest;

@class GetUserDataResult;

@class GetUserInventoryRequest;

@class GetUserInventoryResult;

@class GetWindowsHelloChallengeRequest;

@class GetWindowsHelloChallengeResponse;

@class GooglePlayFabIdPair;

@class GrantCharacterToUserRequest;

@class GrantCharacterToUserResult;

@class ItemInstance;

@class ItemPurchaseRequest;

@class KongregatePlayFabIdPair;

@class LinkAndroidDeviceIDRequest;

@class LinkAndroidDeviceIDResult;

@class LinkCustomIDRequest;

@class LinkCustomIDResult;

@class LinkedPlatformAccountModel;

@class LinkFacebookAccountRequest;

@class LinkFacebookAccountResult;

@class LinkGameCenterAccountRequest;

@class LinkGameCenterAccountResult;

@class LinkGoogleAccountRequest;

@class LinkGoogleAccountResult;

@class LinkIOSDeviceIDRequest;

@class LinkIOSDeviceIDResult;

@class LinkKongregateAccountRequest;

@class LinkKongregateAccountResult;

@class LinkSteamAccountRequest;

@class LinkSteamAccountResult;

@class LinkTwitchAccountRequest;

@class LinkTwitchAccountResult;

@class LinkWindowsHelloAccountRequest;

@class LinkWindowsHelloAccountResponse;

@class ListUsersCharactersRequest;

@class ListUsersCharactersResult;

@class LocationModel;

@class LoginResult;

@class LoginWithAndroidDeviceIDRequest;

@class LoginWithCustomIDRequest;

@class LoginWithEmailAddressRequest;

@class LoginWithFacebookRequest;

@class LoginWithGameCenterRequest;

@class LoginWithGoogleAccountRequest;

@class LoginWithIOSDeviceIDRequest;

@class LoginWithKongregateRequest;

@class LoginWithPlayFabRequest;

@class LoginWithSteamRequest;

@class LoginWithTwitchRequest;

@class LoginWithWindowsHelloRequest;

@class LogStatement;

@class MatchmakeRequest;

@class MatchmakeResult;

@class MembershipModel;

@class ModifyUserVirtualCurrencyResult;

@class OpenTradeRequest;

@class OpenTradeResponse;

@class PayForPurchaseRequest;

@class PayForPurchaseResult;

@class PaymentOption;

@class PlayerLeaderboardEntry;

@class PlayerProfileModel;

@class PlayerProfileViewConstraints;

@class PlayerStatisticVersion;

@class PurchaseItemRequest;

@class PurchaseItemResult;

@class PushNotificationRegistrationModel;

@class RedeemCouponRequest;

@class RedeemCouponResult;

@class RegionInfo;

@class RegisterForIOSPushNotificationRequest;

@class RegisterForIOSPushNotificationResult;

@class RegisterPlayFabUserRequest;

@class RegisterPlayFabUserResult;

@class RegisterWithWindowsHelloRequest;

@class RemoveContactEmailRequest;

@class RemoveContactEmailResult;

@class RemoveFriendRequest;

@class RemoveFriendResult;

@class RemoveGenericIDRequest;

@class RemoveGenericIDResult;

@class RemoveSharedGroupMembersRequest;

@class RemoveSharedGroupMembersResult;

@class ReportPlayerClientRequest;

@class ReportPlayerClientResult;

@class RestoreIOSPurchasesRequest;

@class RestoreIOSPurchasesResult;

@class ScriptExecutionError;

@class SendAccountRecoveryEmailRequest;

@class SendAccountRecoveryEmailResult;

@class SetFriendTagsRequest;

@class SetFriendTagsResult;

@class SetPlayerSecretRequest;

@class SetPlayerSecretResult;

@class SharedGroupDataRecord;

@class StartGameRequest;

@class StartGameResult;

@class StartPurchaseRequest;

@class StartPurchaseResult;

@class StatisticModel;

@class StatisticNameVersion;

@class StatisticUpdate;

@class StatisticValue;

@class SteamPlayFabIdPair;

@class StoreItem;

@class StoreMarketingModel;

@class SubscriptionModel;

@class SubtractUserVirtualCurrencyRequest;

@class TagModel;

@class TitleNewsItem;

@class TradeInfo;

@class TwitchPlayFabIdPair;

@class UnlinkAndroidDeviceIDRequest;

@class UnlinkAndroidDeviceIDResult;

@class UnlinkCustomIDRequest;

@class UnlinkCustomIDResult;

@class UnlinkFacebookAccountRequest;

@class UnlinkFacebookAccountResult;

@class UnlinkGameCenterAccountRequest;

@class UnlinkGameCenterAccountResult;

@class UnlinkGoogleAccountRequest;

@class UnlinkGoogleAccountResult;

@class UnlinkIOSDeviceIDRequest;

@class UnlinkIOSDeviceIDResult;

@class UnlinkKongregateAccountRequest;

@class UnlinkKongregateAccountResult;

@class UnlinkSteamAccountRequest;

@class UnlinkSteamAccountResult;

@class UnlinkTwitchAccountRequest;

@class UnlinkTwitchAccountResult;

@class UnlinkWindowsHelloAccountRequest;

@class UnlinkWindowsHelloAccountResponse;

@class UnlockContainerInstanceRequest;

@class UnlockContainerItemRequest;

@class UnlockContainerItemResult;

@class UpdateAvatarUrlRequest;

@class UpdateCharacterDataRequest;

@class UpdateCharacterDataResult;

@class UpdateCharacterStatisticsRequest;

@class UpdateCharacterStatisticsResult;

@class UpdatePlayerStatisticsRequest;

@class UpdatePlayerStatisticsResult;

@class UpdateSharedGroupDataRequest;

@class UpdateSharedGroupDataResult;

@class UpdateUserDataRequest;

@class UpdateUserDataResult;

@class UpdateUserTitleDisplayNameRequest;

@class UpdateUserTitleDisplayNameResult;

@class UserAccountInfo;

@class UserAndroidDeviceInfo;

@class UserCustomIdInfo;

@class UserDataRecord;

@class UserFacebookInfo;

@class UserGameCenterInfo;

@class UserGoogleInfo;

@class UserIosDeviceInfo;

@class UserKongregateInfo;

@class UserPrivateAccountInfo;

@class UserPsnInfo;

@class UserSettings;

@class UserSteamInfo;

@class UserTitleInfo;

@class UserTwitchInfo;

@class UserXboxInfo;

@class ValidateAmazonReceiptRequest;

@class ValidateAmazonReceiptResult;

@class ValidateGooglePlayPurchaseRequest;

@class ValidateGooglePlayPurchaseResult;

@class ValidateIOSReceiptRequest;

@class ValidateIOSReceiptResult;

@class ValidateWindowsReceiptRequest;

@class ValidateWindowsReceiptResult;

@class ValueToDateModel;

@class VirtualCurrencyRechargeTime;

@class WriteClientCharacterEventRequest;

@class WriteClientPlayerEventRequest;

@class WriteEventResponse;

@class WriteTitleEventRequest;



@interface AcceptTradeRequest : PlayFabBaseModel


/// <summary>
/// Items from the accepting player's inventory in exchange for the offered items in the trade. In the case of a gift, this will be null.
/// </summary>
@property NSArray* AcceptedInventoryInstanceIds; 

/// <summary>
/// Player who opened the trade.
/// </summary>
@property NSString* OfferingPlayerId; 

/// <summary>
/// Trade identifier.
/// </summary>
@property NSString* TradeId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AcceptTradeResponse : PlayFabBaseModel


/// <summary>
/// Details about trade which was just accepted.
/// </summary>
@property TradeInfo* Trade; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AdCampaignAttributionModel : PlayFabBaseModel


/// <summary>
/// UTC time stamp of attribution
/// </summary>
@property NSDate* AttributedAt; 

/// <summary>
/// Attribution campaign identifier
/// </summary>
@property NSString* CampaignId; 

/// <summary>
/// Attribution network name
/// </summary>
@property NSString* Platform; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AddFriendRequest : PlayFabBaseModel


/// <summary>
/// Email address of the user to attempt to add to the local user's friend list.
/// </summary>
@property NSString* FriendEmail; 

/// <summary>
/// PlayFab identifier of the user to attempt to add to the local user's friend list.
/// </summary>
@property NSString* FriendPlayFabId; 

/// <summary>
/// Title-specific display name of the user to attempt to add to the local user's friend list.
/// </summary>
@property NSString* FriendTitleDisplayName; 

/// <summary>
/// PlayFab username of the user to attempt to add to the local user's friend list.
/// </summary>
@property NSString* FriendUsername; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AddFriendResult : PlayFabBaseModel


/// <summary>
/// True if the friend request was processed successfully.
/// </summary>
@property bool Created; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AddGenericIDRequest : PlayFabBaseModel


/// <summary>
/// Generic service identifier to add to the player account.
/// </summary>
@property GenericServiceId GenericId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AddGenericIDResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AddOrUpdateContactEmailRequest : PlayFabBaseModel


/// <summary>
/// The new contact email to associate with the player.
/// </summary>
@property NSString* EmailAddress; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AddOrUpdateContactEmailResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AddSharedGroupMembersRequest : PlayFabBaseModel


/// <summary>
/// An array of unique PlayFab assigned ID of the user on whom the operation will be performed.
/// </summary>
@property NSArray* PlayFabIds; 

/// <summary>
/// Unique identifier for the shared group.
/// </summary>
@property NSString* SharedGroupId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AddSharedGroupMembersResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AddUsernamePasswordRequest : PlayFabBaseModel


/// <summary>
/// User email address attached to their account
/// </summary>
@property NSString* Email; 

/// <summary>
/// Password for the PlayFab account (6-100 characters)
/// </summary>
@property NSString* Password; 

/// <summary>
/// PlayFab username for the account (3-20 characters)
/// </summary>
@property NSString* Username; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AddUsernamePasswordResult : PlayFabBaseModel


/// <summary>
/// PlayFab unique user name.
/// </summary>
@property NSString* Username; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AddUserVirtualCurrencyRequest : PlayFabBaseModel


/// <summary>
/// Amount to be added to the user balance of the specified virtual currency.
/// </summary>
@property NSNumber* Amount; 

/// <summary>
/// Name of the virtual currency which is to be incremented.
/// </summary>
@property NSString* VirtualCurrency; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AndroidDevicePushNotificationRegistrationRequest : PlayFabBaseModel


/// <summary>
/// Message to display when confirming push notification.
/// </summary>
@property NSString* ConfirmationMessage; 

/// <summary>
/// Registration ID provided by the Google Cloud Messaging service when the title registered to receive push notifications (see the GCM documentation, here: http://developer.android.com/google/gcm/client.html).
/// </summary>
@property NSString* DeviceToken; 

/// <summary>
/// If true, send a test push message immediately after sucessful registration. Defaults to false.
/// </summary>
@property bool SendPushNotificationConfirmation; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AndroidDevicePushNotificationRegistrationResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AttributeInstallRequest : PlayFabBaseModel


/// <summary>
/// The adid for this device.
/// </summary>
@property NSString* Adid; 

/// <summary>
/// The IdentifierForAdvertisers for iOS Devices.
/// </summary>
@property NSString* Idfa; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface AttributeInstallResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CancelTradeRequest : PlayFabBaseModel


/// <summary>
/// Trade identifier.
/// </summary>
@property NSString* TradeId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CancelTradeResponse : PlayFabBaseModel


/// <summary>
/// Details about trade which was just canceled.
/// </summary>
@property TradeInfo* Trade; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CartItem : PlayFabBaseModel


/// <summary>
/// Description of the catalog item.
/// </summary>
@property NSString* Description; 

/// <summary>
/// Display name for the catalog item.
/// </summary>
@property NSString* DisplayName; 

/// <summary>
/// Class name to which catalog item belongs.
/// </summary>
@property NSString* ItemClass; 

/// <summary>
/// Unique identifier for the catalog item.
/// </summary>
@property NSString* ItemId; 

/// <summary>
/// Unique instance identifier for this catalog item.
/// </summary>
@property NSString* ItemInstanceId; 

/// <summary>
/// Cost of the catalog item for each applicable real world currency.
/// </summary>
@property NSDictionary* RealCurrencyPrices; 

/// <summary>
/// Amount of each applicable virtual currency which will be received as a result of purchasing this catalog item.
/// </summary>
@property NSDictionary* VCAmount; 

/// <summary>
/// Cost of the catalog item for each applicable virtual currency.
/// </summary>
@property NSDictionary* VirtualCurrencyPrices; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// A purchasable item from the item catalog
/// </summary>
@interface CatalogItem : PlayFabBaseModel


/// <summary>
/// defines the bundle properties for the item - bundles are items which contain other items, including random drop tables and virtual currencies
/// </summary>
@property CatalogItemBundleInfo* Bundle; 

/// <summary>
/// if true, then an item instance of this type can be used to grant a character to a user.
/// </summary>
@property bool CanBecomeCharacter; 

/// <summary>
/// catalog version for this item
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// defines the consumable properties (number of uses, timeout) for the item
/// </summary>
@property CatalogItemConsumableInfo* Consumable; 

/// <summary>
/// defines the container properties for the item - what items it contains, including random drop tables and virtual currencies, and what item (if any) is required to open it via the UnlockContainerItem API
/// </summary>
@property CatalogItemContainerInfo* Container; 

/// <summary>
/// game specific custom data
/// </summary>
@property NSString* CustomData; 

/// <summary>
/// text description of item, to show in-game
/// </summary>
@property NSString* Description; 

/// <summary>
/// text name for the item, to show in-game
/// </summary>
@property NSString* DisplayName; 

/// <summary>
/// If the item has IsLImitedEdition set to true, and this is the first time this ItemId has been defined as a limited edition item, this value determines the total number of instances to allocate for the title. Once this limit has been reached, no more instances of this ItemId can be created, and attempts to purchase or grant it will return a Result of false for that ItemId. If the item has already been defined to have a limited edition count, or if this value is less than zero, it will be ignored.
/// </summary>
@property NSNumber* InitialLimitedEditionCount; 

/// <summary>
/// BETA: If true, then only a fixed number can ever be granted.
/// </summary>
@property bool IsLimitedEdition; 

/// <summary>
/// if true, then only one item instance of this type will exist and its remaininguses will be incremented instead. RemainingUses will cap out at Int32.Max (2,147,483,647). All subsequent increases will be discarded
/// </summary>
@property bool IsStackable; 

/// <summary>
/// if true, then an item instance of this type can be traded between players using the trading APIs
/// </summary>
@property bool IsTradable; 

/// <summary>
/// class to which the item belongs
/// </summary>
@property NSString* ItemClass; 

/// <summary>
/// unique identifier for this item
/// </summary>
@property NSString* ItemId; 

/// <summary>
/// URL to the item image. For Facebook purchase to display the image on the item purchase page, this must be set to an HTTP URL.
/// </summary>
@property NSString* ItemImageUrl; 

/// <summary>
/// override prices for this item for specific currencies
/// </summary>
@property NSDictionary* RealCurrencyPrices; 

/// <summary>
/// list of item tags
/// </summary>
@property NSArray* Tags; 

/// <summary>
/// price of this item in virtual currencies and "RM" (the base Real Money purchase price, in USD pennies)
/// </summary>
@property NSDictionary* VirtualCurrencyPrices; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CatalogItemBundleInfo : PlayFabBaseModel


/// <summary>
/// unique ItemId values for all items which will be added to the player inventory when the bundle is added
/// </summary>
@property NSArray* BundledItems; 

/// <summary>
/// unique TableId values for all RandomResultTable objects which are part of the bundle (random tables will be resolved and add the relevant items to the player inventory when the bundle is added)
/// </summary>
@property NSArray* BundledResultTables; 

/// <summary>
/// virtual currency types and balances which will be added to the player inventory when the bundle is added
/// </summary>
@property NSDictionary* BundledVirtualCurrencies; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CatalogItemConsumableInfo : PlayFabBaseModel


/// <summary>
/// number of times this object can be used, after which it will be removed from the player inventory
/// </summary>
@property NSNumber* UsageCount; 

/// <summary>
/// duration in seconds for how long the item will remain in the player inventory - once elapsed, the item will be removed (recommended minimum value is 5 seconds, as lower values can cause the item to expire before operations depending on this item's details have completed)
/// </summary>
@property NSNumber* UsagePeriod; 

/// <summary>
/// all inventory item instances in the player inventory sharing a non-null UsagePeriodGroup have their UsagePeriod values added together, and share the result - when that period has elapsed, all the items in the group will be removed
/// </summary>
@property NSString* UsagePeriodGroup; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Containers are inventory items that can hold other items defined in the catalog, as well as virtual currency, which is added to the player inventory when the container is unlocked, using the UnlockContainerItem API. The items can be anything defined in the catalog, as well as RandomResultTable objects which will be resolved when the container is unlocked. Containers and their keys should be defined as Consumable (having a limited number of uses) in their catalog defintiions, unless the intent is for the player to be able to re-use them infinitely.
/// </summary>
@interface CatalogItemContainerInfo : PlayFabBaseModel


/// <summary>
/// unique ItemId values for all items which will be added to the player inventory, once the container has been unlocked
/// </summary>
@property NSArray* ItemContents; 

/// <summary>
/// ItemId for the catalog item used to unlock the container, if any (if not specified, a call to UnlockContainerItem will open the container, adding the contents to the player inventory and currency balances)
/// </summary>
@property NSString* KeyItemId; 

/// <summary>
/// unique TableId values for all RandomResultTable objects which are part of the container (once unlocked, random tables will be resolved and add the relevant items to the player inventory)
/// </summary>
@property NSArray* ResultTableContents; 

/// <summary>
/// virtual currency types and balances which will be added to the player inventory when the container is unlocked
/// </summary>
@property NSDictionary* VirtualCurrencyContents; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CharacterInventory : PlayFabBaseModel


/// <summary>
/// The id of this character.
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// The inventory of this character.
/// </summary>
@property NSArray* Inventory; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CharacterLeaderboardEntry : PlayFabBaseModel


/// <summary>
/// PlayFab unique identifier of the character that belongs to the user for this leaderboard entry.
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// Title-specific display name of the character for this leaderboard entry.
/// </summary>
@property NSString* CharacterName; 

/// <summary>
/// Name of the character class for this entry.
/// </summary>
@property NSString* CharacterType; 

/// <summary>
/// Title-specific display name of the user for this leaderboard entry.
/// </summary>
@property NSString* DisplayName; 

/// <summary>
/// PlayFab unique identifier of the user for this leaderboard entry.
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// User's overall position in the leaderboard.
/// </summary>
@property NSNumber* Position; 

/// <summary>
/// Specific value of the user's statistic.
/// </summary>
@property NSNumber* StatValue; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CharacterResult : PlayFabBaseModel


/// <summary>
/// The id for this character on this player.
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// The name of this character.
/// </summary>
@property NSString* CharacterName; 

/// <summary>
/// The type-string that was given to this character on creation.
/// </summary>
@property NSString* CharacterType; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Collection filter to include and/or exclude collections with certain key-value pairs. The filter generates a collection set defined by Includes rules and then remove collections that matches the Excludes rules. A collection is considered matching a rule if the rule describes a subset of the collection. 
/// </summary>
@interface CollectionFilter : PlayFabBaseModel


/// <summary>
/// List of Exclude rules, with any of which if a collection matches, it is excluded by the filter.
/// </summary>
@property NSArray* Excludes; 

/// <summary>
/// List of Include rules, with any of which if a collection matches, it is included by the filter, unless it is excluded by one of the Exclude rule
/// </summary>
@property NSArray* Includes; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ConfirmPurchaseRequest : PlayFabBaseModel


/// <summary>
/// Purchase order identifier returned from StartPurchase.
/// </summary>
@property NSString* OrderId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ConfirmPurchaseResult : PlayFabBaseModel


/// <summary>
/// Array of items purchased.
/// </summary>
@property NSArray* Items; 

/// <summary>
/// Purchase order identifier.
/// </summary>
@property NSString* OrderId; 

/// <summary>
/// Date and time of the purchase.
/// </summary>
@property NSDate* PurchaseDate; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ConsumeItemRequest : PlayFabBaseModel


/// <summary>
/// Unique PlayFab assigned ID for a specific character owned by a user
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// Number of uses to consume from the item.
/// </summary>
@property NSNumber* ConsumeCount; 

/// <summary>
/// Unique instance identifier of the item to be consumed.
/// </summary>
@property NSString* ItemInstanceId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ConsumeItemResult : PlayFabBaseModel


/// <summary>
/// Unique instance identifier of the item with uses consumed.
/// </summary>
@property NSString* ItemInstanceId; 

/// <summary>
/// Number of uses remaining on the item.
/// </summary>
@property NSNumber* RemainingUses; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ContactEmailInfoModel : PlayFabBaseModel


/// <summary>
/// The email address
/// </summary>
@property NSString* EmailAddress; 

/// <summary>
/// The name of the email info data
/// </summary>
@property NSString* Name; 

/// <summary>
/// The verification status of the email
/// </summary>
@property EmailVerificationStatus VerificationStatus; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// A data container
/// </summary>
@interface Container_Dictionary_String_String : PlayFabBaseModel


/// <summary>
/// Content of data
/// </summary>
@property NSDictionary* Data; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CreateSharedGroupRequest : PlayFabBaseModel


/// <summary>
/// Unique identifier for the shared group (a random identifier will be assigned, if one is not specified).
/// </summary>
@property NSString* SharedGroupId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CreateSharedGroupResult : PlayFabBaseModel


/// <summary>
/// Unique identifier for the shared group.
/// </summary>
@property NSString* SharedGroupId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CurrentGamesRequest : PlayFabBaseModel


/// <summary>
/// Build to match against.
/// </summary>
@property NSString* BuildVersion; 

/// <summary>
/// Game mode to look for.
/// </summary>
@property NSString* GameMode; 

/// <summary>
/// Region to check for Game Server Instances.
/// </summary>
@property Region pfRegion; 

/// <summary>
/// Statistic name to find statistic-based matches.
/// </summary>
@property NSString* StatisticName; 

/// <summary>
/// Filter to include and/or exclude Game Server Instances associated with certain tags.
/// </summary>
@property CollectionFilter* TagFilter; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface CurrentGamesResult : PlayFabBaseModel


/// <summary>
/// number of games running
/// </summary>
@property NSNumber* GameCount; 

/// <summary>
/// array of games found
/// </summary>
@property NSArray* Games; 

/// <summary>
/// total number of players across all servers
/// </summary>
@property NSNumber* PlayerCount; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface DeviceInfoRequest : PlayFabBaseModel


/// <summary>
/// Information posted to the PlayStream Event. Currently arbitrary, and specific to the environment sending it.
/// </summary>
@property NSDictionary* Info; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface EmptyResult : PlayFabBaseModel

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


@interface EntityTokenResponse : PlayFabBaseModel


/// <summary>
/// The entity id and type.
/// </summary>
@property EntityKey* Entity; 

/// <summary>
/// The token used to set X-EntityToken for all entity based API calls.
/// </summary>
@property NSString* EntityToken; 

/// <summary>
/// The time the token will expire, if it is an expiring token, in UTC.
/// </summary>
@property NSDate* TokenExpiration; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExecuteCloudScriptRequest : PlayFabBaseModel


/// <summary>
/// The name of the CloudScript function to execute
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/// Object that is passed in to the function as the first argument
/// </summary>
@property NSDictionary* FunctionParameter; 

/// <summary>
/// Generate a 'player_executed_cloudscript' PlayStream event containing the results of the function execution and other contextual information. This event will show up in the PlayStream debugger console for the player in Game Manager.
/// </summary>
@property bool GeneratePlayStreamEvent; 

/// <summary>
/// Option for which revision of the CloudScript to execute. 'Latest' executes the most recently created revision, 'Live' executes the current live, published revision, and 'Specific' executes the specified revision. The default value is 'Specific', if the SpeificRevision parameter is specified, otherwise it is 'Live'.
/// </summary>
@property CloudScriptRevisionOption RevisionSelection; 

/// <summary>
/// The specivic revision to execute, when RevisionSelection is set to 'Specific'
/// </summary>
@property NSNumber* SpecificRevision; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExecuteCloudScriptResult : PlayFabBaseModel


/// <summary>
/// Number of PlayFab API requests issued by the CloudScript function
/// </summary>
@property NSNumber* APIRequestsIssued; 

/// <summary>
/// Information about the error, if any, that occurred during execution
/// </summary>
@property ScriptExecutionError* Error; 

@property NSNumber* ExecutionTimeSeconds; 

/// <summary>
/// The name of the function that executed
/// </summary>
@property NSString* FunctionName; 

/// <summary>
/// The object returned from the CloudScript function, if any
/// </summary>
@property NSDictionary* FunctionResult; 

/// <summary>
/// Flag indicating if the FunctionResult was too large and was subsequently dropped from this event. This only occurs if the total event size is larger than 350KB.
/// </summary>
@property bool FunctionResultTooLarge; 

/// <summary>
/// Number of external HTTP requests issued by the CloudScript function
/// </summary>
@property NSNumber* HttpRequestsIssued; 

/// <summary>
/// Entries logged during the function execution. These include both entries logged in the function code using log.info() and log.error() and error entries for API and HTTP request failures.
/// </summary>
@property NSArray* Logs; 

/// <summary>
/// Flag indicating if the logs were too large and were subsequently dropped from this event. This only occurs if the total event size is larger than 350KB after the FunctionResult was removed.
/// </summary>
@property bool LogsTooLarge; 

@property NSNumber* MemoryConsumedBytes; 

/// <summary>
/// Processor time consumed while executing the function. This does not include time spent waiting on API calls or HTTP requests.
/// </summary>
@property NSNumber* ProcessorTimeSeconds; 

/// <summary>
/// The revision of the CloudScript that executed
/// </summary>
@property NSNumber* Revision; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface FacebookPlayFabIdPair : PlayFabBaseModel


/// <summary>
/// Unique Facebook identifier for a user.
/// </summary>
@property NSString* FacebookId; 

/// <summary>
/// Unique PlayFab identifier for a user, or null if no PlayFab account is linked to the Facebook identifier.
/// </summary>
@property NSString* PlayFabId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface FriendInfo : PlayFabBaseModel


/// <summary>
/// Unique lobby identifier of the Game Server Instance to which this player is currently connected.
/// </summary>
@property NSString* CurrentMatchmakerLobbyId; 

/// <summary>
/// Available Facebook information (if the user and PlayFab friend are also connected in Facebook).
/// </summary>
@property UserFacebookInfo* FacebookInfo; 

/// <summary>
/// PlayFab unique identifier for this friend.
/// </summary>
@property NSString* FriendPlayFabId; 

/// <summary>
/// Available Game Center information (if the user and PlayFab friend are also connected in Game Center).
/// </summary>
@property UserGameCenterInfo* GameCenterInfo; 

/// <summary>
/// The profile of the user, if requested.
/// </summary>
@property PlayerProfileModel* Profile; 

/// <summary>
/// Available PSN information, if the user and PlayFab friend are both connected to PSN.
/// </summary>
@property UserPsnInfo* PSNInfo; 

/// <summary>
/// Available Steam information (if the user and PlayFab friend are also connected in Steam).
/// </summary>
@property UserSteamInfo* SteamInfo; 

/// <summary>
/// Tags which have been associated with this friend.
/// </summary>
@property NSArray* Tags; 

/// <summary>
/// Title-specific display name for this friend.
/// </summary>
@property NSString* TitleDisplayName; 

/// <summary>
/// PlayFab unique username for this friend.
/// </summary>
@property NSString* Username; 

/// <summary>
/// Available Xbox information, if the user and PlayFab friend are both connected to Xbox Live.
/// </summary>
@property UserXboxInfo* XboxInfo; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GameCenterPlayFabIdPair : PlayFabBaseModel


/// <summary>
/// Unique Game Center identifier for a user.
/// </summary>
@property NSString* GameCenterId; 

/// <summary>
/// Unique PlayFab identifier for a user, or null if no PlayFab account is linked to the Game Center identifier.
/// </summary>
@property NSString* PlayFabId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GameInfo : PlayFabBaseModel


/// <summary>
/// build version this server is running
/// </summary>
@property NSString* BuildVersion; 

/// <summary>
/// game mode this server is running
/// </summary>
@property NSString* GameMode; 

/// <summary>
/// game session custom data
/// </summary>
@property NSString* GameServerData; 

/// <summary>
/// game specific string denoting server configuration
/// </summary>
@property GameInstanceState GameServerStateEnum; 

/// <summary>
/// last heartbeat of the game server instance, used in external game server provider mode
/// </summary>
@property NSDate* LastHeartbeat; 

/// <summary>
/// unique lobby identifier for this game server
/// </summary>
@property NSString* LobbyID; 

/// <summary>
/// maximum players this server can support
/// </summary>
@property NSNumber* MaxPlayers; 

/// <summary>
/// array of current player IDs on this server
/// </summary>
@property NSArray* PlayerUserIds; 

/// <summary>
/// region to which this server is associated
/// </summary>
@property Region pfRegion; 

/// <summary>
/// duration in seconds this server has been running
/// </summary>
@property NSNumber* RunTime; 

/// <summary>
/// IPV4 address of the server
/// </summary>
@property NSString* ServerHostname; 

/// <summary>
/// IPV6 address of the server
/// </summary>
@property NSString* ServerIPV6Address; 

/// <summary>
/// port number to use for non-http communications with the server
/// </summary>
@property NSNumber* ServerPort; 

/// <summary>
/// stastic used to match this game in player statistic matchmaking
/// </summary>
@property NSString* StatisticName; 

/// <summary>
/// game session tags
/// </summary>
@property NSDictionary* Tags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GameServerRegionsRequest : PlayFabBaseModel


/// <summary>
/// version of game server for which stats are being requested
/// </summary>
@property NSString* BuildVersion; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GameServerRegionsResult : PlayFabBaseModel


/// <summary>
/// array of regions found matching the request parameters
/// </summary>
@property NSArray* Regions; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GenericPlayFabIdPair : PlayFabBaseModel


/// <summary>
/// Unique generic service identifier for a user.
/// </summary>
@property GenericServiceId* GenericId; 

/// <summary>
/// Unique PlayFab identifier for a user, or null if no PlayFab account is linked to the given generic identifier.
/// </summary>
@property NSString* PlayFabId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GenericServiceId : PlayFabBaseModel


/// <summary>
/// Name of the service for which the player has a unique identifier.
/// </summary>
@property NSString* ServiceName; 

/// <summary>
/// Unique identifier of the player in that service.
/// </summary>
@property NSString* UserId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetAccountInfoRequest : PlayFabBaseModel


/// <summary>
/// User email address for the account to find (if no Username is specified).
/// </summary>
@property NSString* Email; 

/// <summary>
/// Unique PlayFab identifier of the user whose info is being requested. Optional, defaults to the authenticated user if no other lookup identifier set.
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// Title-specific username for the account to find (if no Email is set). Note that if the non-unique Title Display Names option is enabled for the title, attempts to look up users by Title Display Name will always return AccountNotFound.
/// </summary>
@property NSString* TitleDisplayName; 

/// <summary>
/// PlayFab Username for the account to find (if no PlayFabId is specified).
/// </summary>
@property NSString* Username; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetAccountInfoResult : PlayFabBaseModel


/// <summary>
/// Account information for the local user.
/// </summary>
@property UserAccountInfo* AccountInfo; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetCatalogItemsRequest : PlayFabBaseModel


/// <summary>
/// Which catalog is being requested. If null, uses the default catalog.
/// </summary>
@property NSString* CatalogVersion; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetCatalogItemsResult : PlayFabBaseModel


/// <summary>
/// Array of items which can be purchased.
/// </summary>
@property NSArray* Catalog; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetCharacterDataRequest : PlayFabBaseModel


/// <summary>
/// Unique PlayFab assigned ID for a specific character owned by a user
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// The version that currently exists according to the caller. The call will return the data for all of the keys if the version in the system is greater than this.
/// </summary>
@property NSNumber* IfChangedFromDataVersion; 

/// <summary>
/// Specific keys to search for in the custom user data.
/// </summary>
@property NSArray* Keys; 

/// <summary>
/// Unique PlayFab identifier of the user to load data for. Optional, defaults to yourself if not set.
/// </summary>
@property NSString* PlayFabId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetCharacterDataResult : PlayFabBaseModel


/// <summary>
/// Unique PlayFab assigned ID for a specific character owned by a user
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// User specific data for this title.
/// </summary>
@property NSDictionary* Data; 

/// <summary>
/// Indicates the current version of the data that has been set. This is incremented with every set call for that type of data (read-only, internal, etc). This version can be provided in Get calls to find updated data.
/// </summary>
@property NSNumber* DataVersion; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetCharacterInventoryRequest : PlayFabBaseModel


/// <summary>
/// Used to limit results to only those from a specific catalog version.
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// Unique PlayFab assigned ID for a specific character owned by a user
/// </summary>
@property NSString* CharacterId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetCharacterInventoryResult : PlayFabBaseModel


/// <summary>
/// Unique identifier of the character for this inventory.
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// Array of inventory items belonging to the character.
/// </summary>
@property NSArray* Inventory; 

/// <summary>
/// Array of virtual currency balance(s) belonging to the character.
/// </summary>
@property NSDictionary* VirtualCurrency; 

/// <summary>
/// Array of remaining times and timestamps for virtual currencies.
/// </summary>
@property NSDictionary* VirtualCurrencyRechargeTimes; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetCharacterLeaderboardRequest : PlayFabBaseModel


/// <summary>
/// Optional character type on which to filter the leaderboard entries.
/// </summary>
@property NSString* CharacterType; 

/// <summary>
/// Maximum number of entries to retrieve. Default 10, maximum 100.
/// </summary>
@property NSNumber* MaxResultsCount; 

/// <summary>
/// First entry in the leaderboard to be retrieved.
/// </summary>
@property NSNumber* StartPosition; 

/// <summary>
/// Unique identifier for the title-specific statistic for the leaderboard.
/// </summary>
@property NSString* StatisticName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetCharacterLeaderboardResult : PlayFabBaseModel


/// <summary>
/// Ordered list of leaderboard entries.
/// </summary>
@property NSArray* Leaderboard; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetCharacterStatisticsRequest : PlayFabBaseModel


/// <summary>
/// Unique PlayFab assigned ID for a specific character owned by a user
/// </summary>
@property NSString* CharacterId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetCharacterStatisticsResult : PlayFabBaseModel


/// <summary>
/// The requested character statistics.
/// </summary>
@property NSDictionary* CharacterStatistics; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetContentDownloadUrlRequest : PlayFabBaseModel


/// <summary>
/// HTTP method to fetch item - GET or HEAD. Use HEAD when only fetching metadata. Default is GET.
/// </summary>
@property NSString* HttpMethod; 

/// <summary>
/// Key of the content item to fetch, usually formatted as a path, e.g. images/a.png
/// </summary>
@property NSString* Key; 

/// <summary>
/// True to download through CDN. CDN provides higher download bandwidth and lower latency. However, if you want the latest, non-cached version of the content during development, set this to false. Default is true.
/// </summary>
@property bool ThruCDN; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetContentDownloadUrlResult : PlayFabBaseModel


/// <summary>
/// URL for downloading content via HTTP GET or HEAD method. The URL will expire in approximately one hour.
/// </summary>
@property NSString* URL; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetFriendLeaderboardAroundPlayerRequest : PlayFabBaseModel


/// <summary>
/// Indicates whether Facebook friends should be included in the response. Default is true.
/// </summary>
@property bool IncludeFacebookFriends; 

/// <summary>
/// Indicates whether Steam service friends should be included in the response. Default is true.
/// </summary>
@property bool IncludeSteamFriends; 

/// <summary>
/// Maximum number of entries to retrieve. Default 10, maximum 100.
/// </summary>
@property NSNumber* MaxResultsCount; 

/// <summary>
/// PlayFab unique identifier of the user to center the leaderboard around. If null will center on the logged in user.
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// If non-null, this determines which properties of the resulting player profiles to return. For API calls from the client, only the allowed client profile properties for the title may be requested. These allowed properties are configured in the Game Manager "Client Profile Options" tab in the "Settings" section.
/// </summary>
@property PlayerProfileViewConstraints* ProfileConstraints; 

/// <summary>
/// Statistic used to rank players for this leaderboard.
/// </summary>
@property NSString* StatisticName; 

/// <summary>
/// The version of the leaderboard to get.
/// </summary>
@property NSNumber* Version; 

/// <summary>
/// Xbox token if Xbox friends should be included. Requires Xbox be configured on PlayFab.
/// </summary>
@property NSString* XboxToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetFriendLeaderboardAroundPlayerResult : PlayFabBaseModel


/// <summary>
/// Ordered listing of users and their positions in the requested leaderboard.
/// </summary>
@property NSArray* Leaderboard; 

/// <summary>
/// The time the next scheduled reset will occur. Null if the leaderboard does not reset on a schedule.
/// </summary>
@property NSDate* NextReset; 

/// <summary>
/// The version of the leaderboard returned.
/// </summary>
@property NSNumber* Version; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetFriendLeaderboardRequest : PlayFabBaseModel


/// <summary>
/// Indicates whether Facebook friends should be included in the response. Default is true.
/// </summary>
@property bool IncludeFacebookFriends; 

/// <summary>
/// Indicates whether Steam service friends should be included in the response. Default is true.
/// </summary>
@property bool IncludeSteamFriends; 

/// <summary>
/// Maximum number of entries to retrieve. Default 10, maximum 100.
/// </summary>
@property NSNumber* MaxResultsCount; 

/// <summary>
/// If non-null, this determines which properties of the resulting player profiles to return. For API calls from the client, only the allowed client profile properties for the title may be requested. These allowed properties are configured in the Game Manager "Client Profile Options" tab in the "Settings" section.
/// </summary>
@property PlayerProfileViewConstraints* ProfileConstraints; 

/// <summary>
/// Position in the leaderboard to start this listing (defaults to the first entry).
/// </summary>
@property NSNumber* StartPosition; 

/// <summary>
/// Statistic used to rank friends for this leaderboard.
/// </summary>
@property NSString* StatisticName; 

/// <summary>
/// The version of the leaderboard to get.
/// </summary>
@property NSNumber* Version; 

/// <summary>
/// Xbox token if Xbox friends should be included. Requires Xbox be configured on PlayFab.
/// </summary>
@property NSString* XboxToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetFriendsListRequest : PlayFabBaseModel


/// <summary>
/// Indicates whether Facebook friends should be included in the response. Default is true.
/// </summary>
@property bool IncludeFacebookFriends; 

/// <summary>
/// Indicates whether Steam service friends should be included in the response. Default is true.
/// </summary>
@property bool IncludeSteamFriends; 

/// <summary>
/// If non-null, this determines which properties of the resulting player profiles to return. For API calls from the client, only the allowed client profile properties for the title may be requested. These allowed properties are configured in the Game Manager "Client Profile Options" tab in the "Settings" section.
/// </summary>
@property PlayerProfileViewConstraints* ProfileConstraints; 

/// <summary>
/// Xbox token if Xbox friends should be included. Requires Xbox be configured on PlayFab.
/// </summary>
@property NSString* XboxToken; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetFriendsListResult : PlayFabBaseModel


/// <summary>
/// Array of friends found.
/// </summary>
@property NSArray* Friends; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetLeaderboardAroundCharacterRequest : PlayFabBaseModel


/// <summary>
/// Unique PlayFab assigned ID for a specific character on which to center the leaderboard.
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// Optional character type on which to filter the leaderboard entries.
/// </summary>
@property NSString* CharacterType; 

/// <summary>
/// Maximum number of entries to retrieve. Default 10, maximum 100.
/// </summary>
@property NSNumber* MaxResultsCount; 

/// <summary>
/// Unique identifier for the title-specific statistic for the leaderboard.
/// </summary>
@property NSString* StatisticName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetLeaderboardAroundCharacterResult : PlayFabBaseModel


/// <summary>
/// Ordered list of leaderboard entries.
/// </summary>
@property NSArray* Leaderboard; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetLeaderboardAroundPlayerRequest : PlayFabBaseModel


/// <summary>
/// Maximum number of entries to retrieve. Default 10, maximum 100.
/// </summary>
@property NSNumber* MaxResultsCount; 

/// <summary>
/// PlayFab unique identifier of the user to center the leaderboard around. If null will center on the logged in user.
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// If non-null, this determines which properties of the resulting player profiles to return. For API calls from the client, only the allowed client profile properties for the title may be requested. These allowed properties are configured in the Game Manager "Client Profile Options" tab in the "Settings" section.
/// </summary>
@property PlayerProfileViewConstraints* ProfileConstraints; 

/// <summary>
/// Statistic used to rank players for this leaderboard.
/// </summary>
@property NSString* StatisticName; 

/// <summary>
/// The version of the leaderboard to get.
/// </summary>
@property NSNumber* Version; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetLeaderboardAroundPlayerResult : PlayFabBaseModel


/// <summary>
/// Ordered listing of users and their positions in the requested leaderboard.
/// </summary>
@property NSArray* Leaderboard; 

/// <summary>
/// The time the next scheduled reset will occur. Null if the leaderboard does not reset on a schedule.
/// </summary>
@property NSDate* NextReset; 

/// <summary>
/// The version of the leaderboard returned.
/// </summary>
@property NSNumber* Version; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetLeaderboardForUsersCharactersRequest : PlayFabBaseModel


/// <summary>
/// Maximum number of entries to retrieve.
/// </summary>
@property NSNumber* MaxResultsCount; 

/// <summary>
/// Unique identifier for the title-specific statistic for the leaderboard.
/// </summary>
@property NSString* StatisticName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetLeaderboardForUsersCharactersResult : PlayFabBaseModel


/// <summary>
/// Ordered list of leaderboard entries.
/// </summary>
@property NSArray* Leaderboard; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetLeaderboardRequest : PlayFabBaseModel


/// <summary>
/// Maximum number of entries to retrieve. Default 10, maximum 100.
/// </summary>
@property NSNumber* MaxResultsCount; 

/// <summary>
/// If non-null, this determines which properties of the resulting player profiles to return. For API calls from the client, only the allowed client profile properties for the title may be requested. These allowed properties are configured in the Game Manager "Client Profile Options" tab in the "Settings" section.
/// </summary>
@property PlayerProfileViewConstraints* ProfileConstraints; 

/// <summary>
/// Position in the leaderboard to start this listing (defaults to the first entry).
/// </summary>
@property NSNumber* StartPosition; 

/// <summary>
/// Statistic used to rank players for this leaderboard.
/// </summary>
@property NSString* StatisticName; 

/// <summary>
/// The version of the leaderboard to get.
/// </summary>
@property NSNumber* Version; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetLeaderboardResult : PlayFabBaseModel


/// <summary>
/// Ordered listing of users and their positions in the requested leaderboard.
/// </summary>
@property NSArray* Leaderboard; 

/// <summary>
/// The time the next scheduled reset will occur. Null if the leaderboard does not reset on a schedule.
/// </summary>
@property NSDate* NextReset; 

/// <summary>
/// The version of the leaderboard returned.
/// </summary>
@property NSNumber* Version; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPaymentTokenRequest : PlayFabBaseModel


/// <summary>
/// The name of service to provide the payment token. Allowed Values are: xsolla
/// </summary>
@property NSString* TokenProvider; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPaymentTokenResult : PlayFabBaseModel


/// <summary>
/// PlayFab's purchase order identifier.
/// </summary>
@property NSString* OrderId; 

/// <summary>
/// The token from provider.
/// </summary>
@property NSString* ProviderToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPhotonAuthenticationTokenRequest : PlayFabBaseModel


/// <summary>
/// The Photon applicationId for the game you wish to log into.
/// </summary>
@property NSString* PhotonApplicationId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPhotonAuthenticationTokenResult : PlayFabBaseModel


/// <summary>
/// The Photon authentication token for this game-session.
/// </summary>
@property NSString* PhotonCustomAuthenticationToken; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerCombinedInfoRequest : PlayFabBaseModel


/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams InfoRequestParameters; 

/// <summary>
/// PlayFabId of the user whose data will be returned. If not filled included, we return the data for the calling player. 
/// </summary>
@property NSString* PlayFabId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerCombinedInfoRequestParams : PlayFabBaseModel


/// <summary>
/// Whether to get character inventories. Defaults to false.
/// </summary>
@property bool GetCharacterInventories; 

/// <summary>
/// Whether to get the list of characters. Defaults to false.
/// </summary>
@property bool GetCharacterList; 

/// <summary>
/// Whether to get player profile. Defaults to false.
/// </summary>
@property bool GetPlayerProfile; 

/// <summary>
/// Whether to get player statistics. Defaults to false.
/// </summary>
@property bool GetPlayerStatistics; 

/// <summary>
/// Whether to get title data. Defaults to false.
/// </summary>
@property bool GetTitleData; 

/// <summary>
/// Whether to get the player's account Info. Defaults to false
/// </summary>
@property bool GetUserAccountInfo; 

/// <summary>
/// Whether to get the player's custom data. Defaults to false
/// </summary>
@property bool GetUserData; 

/// <summary>
/// Whether to get the player's inventory. Defaults to false
/// </summary>
@property bool GetUserInventory; 

/// <summary>
/// Whether to get the player's read only data. Defaults to false
/// </summary>
@property bool GetUserReadOnlyData; 

/// <summary>
/// Whether to get the player's virtual currency balances. Defaults to false
/// </summary>
@property bool GetUserVirtualCurrency; 

/// <summary>
/// Specific statistics to retrieve. Leave null to get all keys. Has no effect if GetPlayerStatistics is false
/// </summary>
@property NSArray* PlayerStatisticNames; 

/// <summary>
/// Specifies the properties to return from the player profile. Defaults to returning the player's display name.
/// </summary>
@property PlayerProfileViewConstraints* ProfileConstraints; 

/// <summary>
/// Specific keys to search for in the custom data. Leave null to get all keys. Has no effect if GetTitleData is false
/// </summary>
@property NSArray* TitleDataKeys; 

/// <summary>
/// Specific keys to search for in the custom data. Leave null to get all keys. Has no effect if GetUserData is false
/// </summary>
@property NSArray* UserDataKeys; 

/// <summary>
/// Specific keys to search for in the custom data. Leave null to get all keys. Has no effect if GetUserReadOnlyData is false
/// </summary>
@property NSArray* UserReadOnlyDataKeys; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerCombinedInfoResult : PlayFabBaseModel


/// <summary>
/// Results for requested info.
/// </summary>
@property GetPlayerCombinedInfoResultPayload* InfoResultPayload; 

/// <summary>
/// Unique PlayFab assigned ID of the user on whom the operation will be performed.
/// </summary>
@property NSString* PlayFabId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerCombinedInfoResultPayload : PlayFabBaseModel


/// <summary>
/// Account information for the user. This is always retrieved.
/// </summary>
@property UserAccountInfo* AccountInfo; 

/// <summary>
/// Inventories for each character for the user.
/// </summary>
@property NSArray* CharacterInventories; 

/// <summary>
/// List of characters for the user.
/// </summary>
@property NSArray* CharacterList; 

/// <summary>
/// The profile of the players. This profile is not guaranteed to be up-to-date. For a new player, this profile will not exist.
/// </summary>
@property PlayerProfileModel* PlayerProfile; 

/// <summary>
/// List of statistics for this player.
/// </summary>
@property NSArray* PlayerStatistics; 

/// <summary>
/// Title data for this title.
/// </summary>
@property NSDictionary* TitleData; 

/// <summary>
/// User specific custom data.
/// </summary>
@property NSDictionary* UserData; 

/// <summary>
/// The version of the UserData that was returned.
/// </summary>
@property NSNumber* UserDataVersion; 

/// <summary>
/// Array of inventory items in the user's current inventory.
/// </summary>
@property NSArray* UserInventory; 

/// <summary>
/// User specific read-only data.
/// </summary>
@property NSDictionary* UserReadOnlyData; 

/// <summary>
/// The version of the Read-Only UserData that was returned.
/// </summary>
@property NSNumber* UserReadOnlyDataVersion; 

/// <summary>
/// Dictionary of virtual currency balance(s) belonging to the user.
/// </summary>
@property NSDictionary* UserVirtualCurrency; 

/// <summary>
/// Dictionary of remaining times and timestamps for virtual currencies.
/// </summary>
@property NSDictionary* UserVirtualCurrencyRechargeTimes; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerProfileRequest : PlayFabBaseModel


/// <summary>
/// Unique PlayFab assigned ID of the user on whom the operation will be performed.
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// If non-null, this determines which properties of the resulting player profiles to return. For API calls from the client, only the allowed client profile properties for the title may be requested. These allowed properties are configured in the Game Manager "Client Profile Options" tab in the "Settings" section.
/// </summary>
@property PlayerProfileViewConstraints* ProfileConstraints; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerProfileResult : PlayFabBaseModel


/// <summary>
/// The profile of the player. This profile is not guaranteed to be up-to-date. For a new player, this profile will not exist.
/// </summary>
@property PlayerProfileModel* PlayerProfile; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerSegmentsRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerSegmentsResult : PlayFabBaseModel


/// <summary>
/// Array of segments the requested player currently belongs to.
/// </summary>
@property NSArray* Segments; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerStatisticsRequest : PlayFabBaseModel


/// <summary>
/// statistics to return (current version will be returned for each)
/// </summary>
@property NSArray* StatisticNames; 

/// <summary>
/// statistics to return, if StatisticNames is not set (only statistics which have a version matching that provided will be returned)
/// </summary>
@property NSArray* StatisticNameVersions; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerStatisticsResult : PlayFabBaseModel


/// <summary>
/// User statistics for the requested user.
/// </summary>
@property NSArray* Statistics; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerStatisticVersionsRequest : PlayFabBaseModel


/// <summary>
/// unique name of the statistic
/// </summary>
@property NSString* StatisticName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerStatisticVersionsResult : PlayFabBaseModel


/// <summary>
/// version change history of the statistic
/// </summary>
@property NSArray* StatisticVersions; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerTagsRequest : PlayFabBaseModel


/// <summary>
/// Optional namespace to filter results by
/// </summary>
@property NSString* Namespace; 

/// <summary>
/// Unique PlayFab assigned ID of the user on whom the operation will be performed.
/// </summary>
@property NSString* PlayFabId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerTagsResult : PlayFabBaseModel


/// <summary>
/// Unique PlayFab assigned ID of the user on whom the operation will be performed.
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// Canonical tags (including namespace and tag's name) for the requested user
/// </summary>
@property NSArray* Tags; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerTradesRequest : PlayFabBaseModel


/// <summary>
/// Returns only trades with the given status. If null, returns all trades.
/// </summary>
@property TradeStatus StatusFilter; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayerTradesResponse : PlayFabBaseModel


/// <summary>
/// History of trades which this player has accepted.
/// </summary>
@property NSArray* AcceptedTrades; 

/// <summary>
/// The trades for this player which are currently available to be accepted.
/// </summary>
@property NSArray* OpenedTrades; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromFacebookIDsRequest : PlayFabBaseModel


/// <summary>
/// Array of unique Facebook identifiers for which the title needs to get PlayFab identifiers.
/// </summary>
@property NSArray* FacebookIDs; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromFacebookIDsResult : PlayFabBaseModel


/// <summary>
/// Mapping of Facebook identifiers to PlayFab identifiers.
/// </summary>
@property NSArray* Data; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromGameCenterIDsRequest : PlayFabBaseModel


/// <summary>
/// Array of unique Game Center identifiers (the Player Identifier) for which the title needs to get PlayFab identifiers.
/// </summary>
@property NSArray* GameCenterIDs; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromGameCenterIDsResult : PlayFabBaseModel


/// <summary>
/// Mapping of Game Center identifiers to PlayFab identifiers.
/// </summary>
@property NSArray* Data; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromGenericIDsRequest : PlayFabBaseModel


/// <summary>
/// Array of unique generic service identifiers for which the title needs to get PlayFab identifiers. Currently limited to a maximum of 10 in a single request.
/// </summary>
@property NSArray* GenericIDs; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromGenericIDsResult : PlayFabBaseModel


/// <summary>
/// Mapping of generic service identifiers to PlayFab identifiers.
/// </summary>
@property NSArray* Data; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromGoogleIDsRequest : PlayFabBaseModel


/// <summary>
/// Array of unique Google identifiers (Google+ user IDs) for which the title needs to get PlayFab identifiers.
/// </summary>
@property NSArray* GoogleIDs; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromGoogleIDsResult : PlayFabBaseModel


/// <summary>
/// Mapping of Google identifiers to PlayFab identifiers.
/// </summary>
@property NSArray* Data; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromKongregateIDsRequest : PlayFabBaseModel


/// <summary>
/// Array of unique Kongregate identifiers (Kongregate's user_id) for which the title needs to get PlayFab identifiers.
/// </summary>
@property NSArray* KongregateIDs; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromKongregateIDsResult : PlayFabBaseModel


/// <summary>
/// Mapping of Kongregate identifiers to PlayFab identifiers.
/// </summary>
@property NSArray* Data; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromSteamIDsRequest : PlayFabBaseModel


/// <summary>
/// Array of unique Steam identifiers (Steam profile IDs) for which the title needs to get PlayFab identifiers.
/// </summary>
@property NSArray* SteamStringIDs; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromSteamIDsResult : PlayFabBaseModel


/// <summary>
/// Mapping of Steam identifiers to PlayFab identifiers.
/// </summary>
@property NSArray* Data; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromTwitchIDsRequest : PlayFabBaseModel


/// <summary>
/// Array of unique Twitch identifiers (Twitch's _id) for which the title needs to get PlayFab identifiers.
/// </summary>
@property NSArray* TwitchIds; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPlayFabIDsFromTwitchIDsResult : PlayFabBaseModel


/// <summary>
/// Mapping of Twitch identifiers to PlayFab identifiers.
/// </summary>
@property NSArray* Data; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPublisherDataRequest : PlayFabBaseModel


/// <summary>
///  array of keys to get back data from the Publisher data blob, set by the admin tools
/// </summary>
@property NSArray* Keys; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPublisherDataResult : PlayFabBaseModel


/// <summary>
/// a dictionary object of key / value pairs
/// </summary>
@property NSDictionary* Data; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPurchaseRequest : PlayFabBaseModel


/// <summary>
/// Purchase order identifier.
/// </summary>
@property NSString* OrderId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetPurchaseResult : PlayFabBaseModel


/// <summary>
/// Purchase order identifier.
/// </summary>
@property NSString* OrderId; 

/// <summary>
/// Payment provider used for transaction (If not VC)
/// </summary>
@property NSString* PaymentProvider; 

/// <summary>
/// Date and time of the purchase.
/// </summary>
@property NSDate* PurchaseDate; 

/// <summary>
/// Provider transaction ID (If not VC)
/// </summary>
@property NSString* TransactionId; 

/// <summary>
/// PlayFab transaction status
/// </summary>
@property NSString* TransactionStatus; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetSegmentResult : PlayFabBaseModel


/// <summary>
/// Identifier of the segments AB Test, if it is attached to one.
/// </summary>
@property NSString* ABTestParent; 

/// <summary>
/// Unique identifier for this segment.
/// </summary>
@property NSString* Id; 

/// <summary>
/// Segment name.
/// </summary>
@property NSString* Name; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetSharedGroupDataRequest : PlayFabBaseModel


/// <summary>
/// If true, return the list of all members of the shared group.
/// </summary>
@property bool GetMembers; 

/// <summary>
/// Specific keys to retrieve from the shared group (if not specified, all keys will be returned, while an empty array indicates that no keys should be returned).
/// </summary>
@property NSArray* Keys; 

/// <summary>
/// Unique identifier for the shared group.
/// </summary>
@property NSString* SharedGroupId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetSharedGroupDataResult : PlayFabBaseModel


/// <summary>
/// Data for the requested keys.
/// </summary>
@property NSDictionary* Data; 

/// <summary>
/// List of PlayFabId identifiers for the members of this group, if requested.
/// </summary>
@property NSArray* Members; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetStoreItemsRequest : PlayFabBaseModel


/// <summary>
/// catalog version to store items from. Use default catalog version if null
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// Unqiue identifier for the store which is being requested.
/// </summary>
@property NSString* StoreId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetStoreItemsResult : PlayFabBaseModel


/// <summary>
/// The base catalog that this store is a part of.
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// Additional data about the store.
/// </summary>
@property StoreMarketingModel* MarketingData; 

/// <summary>
/// How the store was last updated (Admin or a third party).
/// </summary>
@property SourceType Source; 

/// <summary>
/// Array of items which can be purchased from this store.
/// </summary>
@property NSArray* Store; 

/// <summary>
/// The ID of this store.
/// </summary>
@property NSString* StoreId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetTimeRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetTimeResult : PlayFabBaseModel


/// <summary>
/// Current server time when the request was received, in UTC
/// </summary>
@property NSDate* Time; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetTitleDataRequest : PlayFabBaseModel


/// <summary>
/// Specific keys to search for in the title data (leave null to get all keys)
/// </summary>
@property NSArray* Keys; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetTitleDataResult : PlayFabBaseModel


/// <summary>
/// a dictionary object of key / value pairs
/// </summary>
@property NSDictionary* Data; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetTitleNewsRequest : PlayFabBaseModel


/// <summary>
/// Limits the results to the last n entries. Defaults to 10 if not set.
/// </summary>
@property NSNumber* Count; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetTitleNewsResult : PlayFabBaseModel


/// <summary>
/// Array of news items.
/// </summary>
@property NSArray* News; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetTitlePublicKeyRequest : PlayFabBaseModel


/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 

/// <summary>
/// The shared secret key for this title
/// </summary>
@property NSString* TitleSharedSecret; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetTitlePublicKeyResult : PlayFabBaseModel


/// <summary>
/// Base64 encoded RSA CSP byte array blob containing the title's public RSA key
/// </summary>
@property NSString* RSAPublicKey; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetTradeStatusRequest : PlayFabBaseModel


/// <summary>
/// Player who opened trade.
/// </summary>
@property NSString* OfferingPlayerId; 

/// <summary>
/// Trade identifier as returned by OpenTradeOffer.
/// </summary>
@property NSString* TradeId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetTradeStatusResponse : PlayFabBaseModel


/// <summary>
/// Information about the requested trade.
/// </summary>
@property TradeInfo* Trade; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetUserDataRequest : PlayFabBaseModel


/// <summary>
/// The version that currently exists according to the caller. The call will return the data for all of the keys if the version in the system is greater than this.
/// </summary>
@property NSNumber* IfChangedFromDataVersion; 

/// <summary>
/// List of unique keys to load from.
/// </summary>
@property NSArray* Keys; 

/// <summary>
/// Unique PlayFab identifier of the user to load data for. Optional, defaults to yourself if not set. When specified to a PlayFab id of another player, then this will only return public keys for that account.
/// </summary>
@property NSString* PlayFabId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetUserDataResult : PlayFabBaseModel


/// <summary>
/// User specific data for this title.
/// </summary>
@property NSDictionary* Data; 

/// <summary>
/// Indicates the current version of the data that has been set. This is incremented with every set call for that type of data (read-only, internal, etc). This version can be provided in Get calls to find updated data.
/// </summary>
@property NSNumber* DataVersion; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetUserInventoryRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetUserInventoryResult : PlayFabBaseModel


/// <summary>
/// Array of inventory items belonging to the user.
/// </summary>
@property NSArray* Inventory; 

/// <summary>
/// Array of virtual currency balance(s) belonging to the user.
/// </summary>
@property NSDictionary* VirtualCurrency; 

/// <summary>
/// Array of remaining times and timestamps for virtual currencies.
/// </summary>
@property NSDictionary* VirtualCurrencyRechargeTimes; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetWindowsHelloChallengeRequest : PlayFabBaseModel


/// <summary>
/// SHA256 hash of the PublicKey generated by Windows Hello.
/// </summary>
@property NSString* PublicKeyHint; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GetWindowsHelloChallengeResponse : PlayFabBaseModel


/// <summary>
/// Server generated challenge to be signed by the user.
/// </summary>
@property NSString* Challenge; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GooglePlayFabIdPair : PlayFabBaseModel


/// <summary>
/// Unique Google identifier for a user.
/// </summary>
@property NSString* GoogleId; 

/// <summary>
/// Unique PlayFab identifier for a user, or null if no PlayFab account is linked to the Google identifier.
/// </summary>
@property NSString* PlayFabId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GrantCharacterToUserRequest : PlayFabBaseModel


/// <summary>
/// Catalog version from which items are to be granted.
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// Non-unique display name of the character being granted (1-20 characters in length).
/// </summary>
@property NSString* CharacterName; 

/// <summary>
/// Catalog item identifier of the item in the user's inventory that corresponds to the character in the catalog to be created.
/// </summary>
@property NSString* ItemId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface GrantCharacterToUserResult : PlayFabBaseModel


/// <summary>
/// Unique identifier tagged to this character.
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// Type of character that was created.
/// </summary>
@property NSString* CharacterType; 

/// <summary>
/// Indicates whether this character was created successfully.
/// </summary>
@property bool Result; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// A unique instance of an item in a user's inventory. Note, to retrieve additional information for an item instance (such as Tags, Description, or Custom Data that are set on the root catalog item), a call to GetCatalogItems is required. The Item ID of the instance can then be matched to a catalog entry, which contains the additional information. Also note that Custom Data is only set here from a call to UpdateUserInventoryItemCustomData.
/// </summary>
@interface ItemInstance : PlayFabBaseModel


/// <summary>
/// Game specific comment associated with this instance when it was added to the user inventory.
/// </summary>
@property NSString* Annotation; 

/// <summary>
/// Array of unique items that were awarded when this catalog item was purchased.
/// </summary>
@property NSArray* BundleContents; 

/// <summary>
/// Unique identifier for the parent inventory item, as defined in the catalog, for object which were added from a bundle or container.
/// </summary>
@property NSString* BundleParent; 

/// <summary>
/// Catalog version for the inventory item, when this instance was created.
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// A set of custom key-value pairs on the inventory item.
/// </summary>
@property NSDictionary* CustomData; 

/// <summary>
/// CatalogItem.DisplayName at the time this item was purchased.
/// </summary>
@property NSString* DisplayName; 

/// <summary>
/// Timestamp for when this instance will expire.
/// </summary>
@property NSDate* Expiration; 

/// <summary>
/// Class name for the inventory item, as defined in the catalog.
/// </summary>
@property NSString* ItemClass; 

/// <summary>
/// Unique identifier for the inventory item, as defined in the catalog.
/// </summary>
@property NSString* ItemId; 

/// <summary>
/// Unique item identifier for this specific instance of the item.
/// </summary>
@property NSString* ItemInstanceId; 

/// <summary>
/// Timestamp for when this instance was purchased.
/// </summary>
@property NSDate* PurchaseDate; 

/// <summary>
/// Total number of remaining uses, if this is a consumable item.
/// </summary>
@property NSNumber* RemainingUses; 

/// <summary>
/// Currency type for the cost of the catalog item.
/// </summary>
@property NSString* UnitCurrency; 

/// <summary>
/// Cost of the catalog item in the given currency.
/// </summary>
@property NSNumber* UnitPrice; 

/// <summary>
/// The number of uses that were added or removed to this item in this call.
/// </summary>
@property NSNumber* UsesIncrementedBy; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ItemPurchaseRequest : PlayFabBaseModel


/// <summary>
/// Title-specific text concerning this purchase.
/// </summary>
@property NSString* Annotation; 

/// <summary>
/// Unique ItemId of the item to purchase.
/// </summary>
@property NSString* ItemId; 

/// <summary>
/// How many of this item to purchase.
/// </summary>
@property NSNumber* Quantity; 

/// <summary>
/// Items to be upgraded as a result of this purchase (upgraded items are hidden, as they are "replaced" by the new items).
/// </summary>
@property NSArray* UpgradeFromItems; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface KongregatePlayFabIdPair : PlayFabBaseModel


/// <summary>
/// Unique Kongregate identifier for a user.
/// </summary>
@property NSString* KongregateId; 

/// <summary>
/// Unique PlayFab identifier for a user, or null if no PlayFab account is linked to the Kongregate identifier.
/// </summary>
@property NSString* PlayFabId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkAndroidDeviceIDRequest : PlayFabBaseModel


/// <summary>
/// Specific model of the user's device.
/// </summary>
@property NSString* AndroidDevice; 

/// <summary>
/// Android device identifier for the user's device.
/// </summary>
@property NSString* AndroidDeviceId; 

/// <summary>
/// If another user is already linked to the device, unlink the other user and re-link.
/// </summary>
@property bool ForceLink; 

/// <summary>
/// Specific Operating System version for the user's device.
/// </summary>
@property NSString* OS; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkAndroidDeviceIDResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkCustomIDRequest : PlayFabBaseModel


/// <summary>
/// Custom unique identifier for the user, generated by the title.
/// </summary>
@property NSString* CustomId; 

/// <summary>
/// If another user is already linked to the custom ID, unlink the other user and re-link.
/// </summary>
@property bool ForceLink; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkCustomIDResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkedPlatformAccountModel : PlayFabBaseModel


/// <summary>
/// Linked account email of the user on the platform, if available
/// </summary>
@property NSString* Email; 

/// <summary>
/// Authentication platform
/// </summary>
@property LoginIdentityProvider Platform; 

/// <summary>
/// Unique account identifier of the user on the platform
/// </summary>
@property NSString* PlatformUserId; 

/// <summary>
/// Linked account username of the user on the platform, if available
/// </summary>
@property NSString* Username; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkFacebookAccountRequest : PlayFabBaseModel


/// <summary>
/// Unique identifier from Facebook for the user.
/// </summary>
@property NSString* AccessToken; 

/// <summary>
/// If another user is already linked to the account, unlink the other user and re-link.
/// </summary>
@property bool ForceLink; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkFacebookAccountResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkGameCenterAccountRequest : PlayFabBaseModel


/// <summary>
/// If another user is already linked to the account, unlink the other user and re-link.
/// </summary>
@property bool ForceLink; 

/// <summary>
/// Game Center identifier for the player account to be linked.
/// </summary>
@property NSString* GameCenterId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkGameCenterAccountResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkGoogleAccountRequest : PlayFabBaseModel


/// <summary>
/// If another user is already linked to the account, unlink the other user and re-link.
/// </summary>
@property bool ForceLink; 

/// <summary>
/// Server authentication code obtained on the client by calling getServerAuthCode() (https://developers.google.com/identity/sign-in/android/offline-access) from Google Play for the user.
/// </summary>
@property NSString* ServerAuthCode; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkGoogleAccountResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkIOSDeviceIDRequest : PlayFabBaseModel


/// <summary>
/// Vendor-specific iOS identifier for the user's device.
/// </summary>
@property NSString* DeviceId; 

/// <summary>
/// Specific model of the user's device.
/// </summary>
@property NSString* DeviceModel; 

/// <summary>
/// If another user is already linked to the device, unlink the other user and re-link.
/// </summary>
@property bool ForceLink; 

/// <summary>
/// Specific Operating System version for the user's device.
/// </summary>
@property NSString* OS; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkIOSDeviceIDResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkKongregateAccountRequest : PlayFabBaseModel


/// <summary>
/// Valid session auth ticket issued by Kongregate
/// </summary>
@property NSString* AuthTicket; 

/// <summary>
/// If another user is already linked to the account, unlink the other user and re-link.
/// </summary>
@property bool ForceLink; 

/// <summary>
/// Numeric user ID assigned by Kongregate
/// </summary>
@property NSString* KongregateId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkKongregateAccountResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkSteamAccountRequest : PlayFabBaseModel


/// <summary>
/// If another user is already linked to the account, unlink the other user and re-link.
/// </summary>
@property bool ForceLink; 

/// <summary>
/// Authentication token for the user, returned as a byte array from Steam, and converted to a string (for example, the byte 0x08 should become "08").
/// </summary>
@property NSString* SteamTicket; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkSteamAccountResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkTwitchAccountRequest : PlayFabBaseModel


/// <summary>
/// Valid token issued by Twitch
/// </summary>
@property NSString* AccessToken; 

/// <summary>
/// If another user is already linked to the account, unlink the other user and re-link.
/// </summary>
@property bool ForceLink; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkTwitchAccountResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkWindowsHelloAccountRequest : PlayFabBaseModel


/// <summary>
/// Device name.
/// </summary>
@property NSString* DeviceName; 

/// <summary>
/// If another user is already linked to the account, unlink the other user and re-link.
/// </summary>
@property bool ForceLink; 

/// <summary>
/// PublicKey generated by Windows Hello.
/// </summary>
@property NSString* PublicKey; 

/// <summary>
/// Player's user named used by Windows Hello.
/// </summary>
@property NSString* UserName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LinkWindowsHelloAccountResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListUsersCharactersRequest : PlayFabBaseModel


/// <summary>
/// Unique PlayFab assigned ID of the user on whom the operation will be performed.
/// </summary>
@property NSString* PlayFabId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ListUsersCharactersResult : PlayFabBaseModel


/// <summary>
/// The requested list of characters.
/// </summary>
@property NSArray* Characters; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LocationModel : PlayFabBaseModel


/// <summary>
/// City name.
/// </summary>
@property NSString* City; 

/// <summary>
/// The two-character continent code for this location
/// </summary>
@property ContinentCode pfContinentCode; 

/// <summary>
/// The two-character ISO 3166-1 country code for the country associated with the location
/// </summary>
@property CountryCode pfCountryCode; 

/// <summary>
/// Latitude coordinate of the geographic location.
/// </summary>
@property NSNumber* Latitude; 

/// <summary>
/// Longitude coordinate of the geographic location.
/// </summary>
@property NSNumber* Longitude; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginResult : PlayFabBaseModel


/// <summary>
/// If LoginTitlePlayerAccountEntity flag is set on the login request the title_player_account will also be logged in and returned.
/// </summary>
@property EntityTokenResponse* EntityToken; 

/// <summary>
/// Results for requested info.
/// </summary>
@property GetPlayerCombinedInfoResultPayload* InfoResultPayload; 

/// <summary>
/// The time of this user's previous login. If there was no previous login, then it's DateTime.MinValue
/// </summary>
@property NSDate* LastLoginTime; 

/// <summary>
/// True if the account was newly created on this login.
/// </summary>
@property bool NewlyCreated; 

/// <summary>
/// Player's unique PlayFabId.
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// Unique token authorizing the user and game at the server level, for the current session.
/// </summary>
@property NSString* SessionTicket; 

/// <summary>
/// Settings specific to this user.
/// </summary>
@property UserSettings* SettingsForUser; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginWithAndroidDeviceIDRequest : PlayFabBaseModel


/// <summary>
/// Specific model of the user's device.
/// </summary>
@property NSString* AndroidDevice; 

/// <summary>
/// Android device identifier for the user's device.
/// </summary>
@property NSString* AndroidDeviceId; 

/// <summary>
/// Automatically create a PlayFab account if one is not currently linked to this ID.
/// </summary>
@property bool CreateAccount; 

/// <summary>
/// Base64 encoded body that is encrypted with the Title's public RSA key (Enterprise Only).
/// </summary>
@property NSString* EncryptedRequest; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Specific Operating System version for the user's device.
/// </summary>
@property NSString* OS; 

/// <summary>
/// Player secret that is used to verify API request signatures (Enterprise Only).
/// </summary>
@property NSString* PlayerSecret; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginWithCustomIDRequest : PlayFabBaseModel


/// <summary>
/// Automatically create a PlayFab account if one is not currently linked to this ID.
/// </summary>
@property bool CreateAccount; 

/// <summary>
/// Custom unique identifier for the user, generated by the title.
/// </summary>
@property NSString* CustomId; 

/// <summary>
/// Base64 encoded body that is encrypted with the Title's public RSA key (Enterprise Only).
/// </summary>
@property NSString* EncryptedRequest; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Player secret that is used to verify API request signatures (Enterprise Only).
/// </summary>
@property NSString* PlayerSecret; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginWithEmailAddressRequest : PlayFabBaseModel


/// <summary>
/// Email address for the account.
/// </summary>
@property NSString* Email; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Password for the PlayFab account (6-100 characters)
/// </summary>
@property NSString* Password; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginWithFacebookRequest : PlayFabBaseModel


/// <summary>
/// Unique identifier from Facebook for the user.
/// </summary>
@property NSString* AccessToken; 

/// <summary>
/// Automatically create a PlayFab account if one is not currently linked to this ID.
/// </summary>
@property bool CreateAccount; 

/// <summary>
/// Base64 encoded body that is encrypted with the Title's public RSA key (Enterprise Only).
/// </summary>
@property NSString* EncryptedRequest; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Player secret that is used to verify API request signatures (Enterprise Only).
/// </summary>
@property NSString* PlayerSecret; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginWithGameCenterRequest : PlayFabBaseModel


/// <summary>
/// Automatically create a PlayFab account if one is not currently linked to this ID.
/// </summary>
@property bool CreateAccount; 

/// <summary>
/// Base64 encoded body that is encrypted with the Title's public RSA key (Enterprise Only).
/// </summary>
@property NSString* EncryptedRequest; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Unique Game Center player id.
/// </summary>
@property NSString* PlayerId; 

/// <summary>
/// Player secret that is used to verify API request signatures (Enterprise Only).
/// </summary>
@property NSString* PlayerSecret; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginWithGoogleAccountRequest : PlayFabBaseModel


/// <summary>
/// Automatically create a PlayFab account if one is not currently linked to this ID.
/// </summary>
@property bool CreateAccount; 

/// <summary>
/// Base64 encoded body that is encrypted with the Title's public RSA key (Enterprise Only).
/// </summary>
@property NSString* EncryptedRequest; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Player secret that is used to verify API request signatures (Enterprise Only).
/// </summary>
@property NSString* PlayerSecret; 

/// <summary>
/// OAuth 2.0 server authentication code obtained on the client by calling the getServerAuthCode() (https://developers.google.com/identity/sign-in/android/offline-access) Google client API.
/// </summary>
@property NSString* ServerAuthCode; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginWithIOSDeviceIDRequest : PlayFabBaseModel


/// <summary>
/// Automatically create a PlayFab account if one is not currently linked to this ID.
/// </summary>
@property bool CreateAccount; 

/// <summary>
/// Vendor-specific iOS identifier for the user's device.
/// </summary>
@property NSString* DeviceId; 

/// <summary>
/// Specific model of the user's device.
/// </summary>
@property NSString* DeviceModel; 

/// <summary>
/// Base64 encoded body that is encrypted with the Title's public RSA key (Enterprise Only).
/// </summary>
@property NSString* EncryptedRequest; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Specific Operating System version for the user's device.
/// </summary>
@property NSString* OS; 

/// <summary>
/// Player secret that is used to verify API request signatures (Enterprise Only).
/// </summary>
@property NSString* PlayerSecret; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginWithKongregateRequest : PlayFabBaseModel


/// <summary>
/// Token issued by Kongregate's client API for the user.
/// </summary>
@property NSString* AuthTicket; 

/// <summary>
/// Automatically create a PlayFab account if one is not currently linked to this ID.
/// </summary>
@property bool CreateAccount; 

/// <summary>
/// Base64 encoded body that is encrypted with the Title's public RSA key (Enterprise Only).
/// </summary>
@property NSString* EncryptedRequest; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Numeric user ID assigned by Kongregate
/// </summary>
@property NSString* KongregateId; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Player secret that is used to verify API request signatures (Enterprise Only).
/// </summary>
@property NSString* PlayerSecret; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginWithPlayFabRequest : PlayFabBaseModel


/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Password for the PlayFab account (6-100 characters)
/// </summary>
@property NSString* Password; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 

/// <summary>
/// PlayFab username for the account.
/// </summary>
@property NSString* Username; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginWithSteamRequest : PlayFabBaseModel


/// <summary>
/// Automatically create a PlayFab account if one is not currently linked to this ID.
/// </summary>
@property bool CreateAccount; 

/// <summary>
/// Base64 encoded body that is encrypted with the Title's public RSA key (Enterprise Only).
/// </summary>
@property NSString* EncryptedRequest; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Player secret that is used to verify API request signatures (Enterprise Only).
/// </summary>
@property NSString* PlayerSecret; 

/// <summary>
/// Authentication token for the user, returned as a byte array from Steam, and converted to a string (for example, the byte 0x08 should become "08").
/// </summary>
@property NSString* SteamTicket; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginWithTwitchRequest : PlayFabBaseModel


/// <summary>
/// Token issued by Twitch's API for the user.
/// </summary>
@property NSString* AccessToken; 

/// <summary>
/// Automatically create a PlayFab account if one is not currently linked to this ID.
/// </summary>
@property bool CreateAccount; 

/// <summary>
/// Base64 encoded body that is encrypted with the Title's public RSA key (Enterprise Only).
/// </summary>
@property NSString* EncryptedRequest; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Player secret that is used to verify API request signatures (Enterprise Only).
/// </summary>
@property NSString* PlayerSecret; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LoginWithWindowsHelloRequest : PlayFabBaseModel


/// <summary>
/// The signed response from the user for the Challenge.
/// </summary>
@property NSString* ChallengeSignature; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// SHA256 hash of the PublicKey generated by Windows Hello.
/// </summary>
@property NSString* PublicKeyHint; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface LogStatement : PlayFabBaseModel


/// <summary>
/// Optional object accompanying the message as contextual information
/// </summary>
@property NSDictionary* Data; 

/// <summary>
/// 'Debug', 'Info', or 'Error'
/// </summary>
@property NSString* Level; 

@property NSString* Message; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MatchmakeRequest : PlayFabBaseModel


/// <summary>
/// Build version to match against. [Note: Required if LobbyId is not specified]
/// </summary>
@property NSString* BuildVersion; 

/// <summary>
/// Character to use for stats based matching. Leave null to use account stats.
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// Game mode to match make against. [Note: Required if LobbyId is not specified]
/// </summary>
@property NSString* GameMode; 

/// <summary>
/// Lobby identifier to match make against. This is used to select a specific Game Server Instance.
/// </summary>
@property NSString* LobbyId; 

/// <summary>
/// Region to match make against. [Note: Required if LobbyId is not specified]
/// </summary>
@property Region pfRegion; 

/// <summary>
/// Start a game session if one with an open slot is not found. Defaults to true.
/// </summary>
@property bool StartNewIfNoneFound; 

/// <summary>
/// Player statistic to use in finding a match. May be null for no stat-based matching.
/// </summary>
@property NSString* StatisticName; 

/// <summary>
/// Filter to include and/or exclude Game Server Instances associated with certain Tags
/// </summary>
@property CollectionFilter* TagFilter; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MatchmakeResult : PlayFabBaseModel


/// <summary>
/// timestamp for when the server will expire, if applicable
/// </summary>
@property NSString* Expires; 

/// <summary>
/// unique lobby identifier of the server matched
/// </summary>
@property NSString* LobbyID; 

/// <summary>
/// time in milliseconds the application is configured to wait on matchmaking results
/// </summary>
@property NSNumber* PollWaitTimeMS; 

/// <summary>
/// IPV4 address of the server
/// </summary>
@property NSString* ServerHostname; 

/// <summary>
/// IPV6 address of the server
/// </summary>
@property NSString* ServerIPV6Address; 

/// <summary>
/// port number to use for non-http communications with the server
/// </summary>
@property NSNumber* ServerPort; 

/// <summary>
/// result of match making process
/// </summary>
@property MatchmakeStatus Status; 

/// <summary>
/// server authorization ticket (used by RedeemMatchmakerTicket to validate user insertion into the game)
/// </summary>
@property NSString* Ticket; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface MembershipModel : PlayFabBaseModel


/// <summary>
/// Whether this membership is active. That is, whether the MembershipExpiration time has been reached.
/// </summary>
@property bool IsActive; 

/// <summary>
/// The time this membership expires
/// </summary>
@property NSDate* MembershipExpiration; 

/// <summary>
/// The id of the membership
/// </summary>
@property NSString* MembershipId; 

/// <summary>
/// Membership expirations can be explicitly overridden (via game manager or the admin api). If this membership has been overridden, this will be the new expiration time.
/// </summary>
@property NSDate* OverrideExpiration; 

/// <summary>
/// The list of subscriptions that this player has for this membership
/// </summary>
@property NSArray* Subscriptions; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ModifyUserVirtualCurrencyResult : PlayFabBaseModel


/// <summary>
/// Balance of the virtual currency after modification.
/// </summary>
@property NSNumber* Balance; 

/// <summary>
/// Amount added or subtracted from the user's virtual currency. Maximum VC balance is Int32 (2,147,483,647). Any increase over this value will be discarded.
/// </summary>
@property NSNumber* BalanceChange; 

/// <summary>
/// User currency was subtracted from.
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// Name of the virtual currency which was modified.
/// </summary>
@property NSString* VirtualCurrency; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface OpenTradeRequest : PlayFabBaseModel


/// <summary>
/// Players who are allowed to accept the trade. If null, the trade may be accepted by any player. If empty, the trade may not be accepted by any player.
/// </summary>
@property NSArray* AllowedPlayerIds; 

/// <summary>
/// Player inventory items offered for trade. If not set, the trade is effectively a gift request
/// </summary>
@property NSArray* OfferedInventoryInstanceIds; 

/// <summary>
/// Catalog items accepted for the trade. If not set, the trade is effectively a gift.
/// </summary>
@property NSArray* RequestedCatalogItemIds; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface OpenTradeResponse : PlayFabBaseModel


/// <summary>
/// The information about the trade that was just opened.
/// </summary>
@property TradeInfo* Trade; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface PayForPurchaseRequest : PlayFabBaseModel


/// <summary>
/// Currency to use to fund the purchase.
/// </summary>
@property NSString* Currency; 

/// <summary>
/// Purchase order identifier returned from StartPurchase.
/// </summary>
@property NSString* OrderId; 

/// <summary>
/// Payment provider to use to fund the purchase.
/// </summary>
@property NSString* ProviderName; 

/// <summary>
/// Payment provider transaction identifier. Required for Facebook Payments.
/// </summary>
@property NSString* ProviderTransactionId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface PayForPurchaseResult : PlayFabBaseModel


/// <summary>
/// Local credit applied to the transaction (provider specific).
/// </summary>
@property NSNumber* CreditApplied; 

/// <summary>
/// Purchase order identifier.
/// </summary>
@property NSString* OrderId; 

/// <summary>
/// Provider used for the transaction.
/// </summary>
@property NSString* ProviderData; 

/// <summary>
/// A token generated by the provider to authenticate the request (provider-specific).
/// </summary>
@property NSString* ProviderToken; 

/// <summary>
/// URL to the purchase provider page that details the purchase.
/// </summary>
@property NSString* PurchaseConfirmationPageURL; 

/// <summary>
/// Currency for the transaction, may be a virtual currency or real money.
/// </summary>
@property NSString* PurchaseCurrency; 

/// <summary>
/// Cost of the transaction.
/// </summary>
@property NSNumber* PurchasePrice; 

/// <summary>
/// Status of the transaction.
/// </summary>
@property TransactionStatus Status; 

/// <summary>
/// Virtual currencies granted by the transaction, if any.
/// </summary>
@property NSDictionary* VCAmount; 

/// <summary>
/// Current virtual currency balances for the user.
/// </summary>
@property NSDictionary* VirtualCurrency; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface PaymentOption : PlayFabBaseModel


/// <summary>
/// Specific currency to use to fund the purchase.
/// </summary>
@property NSString* Currency; 

/// <summary>
/// Amount of the specified currency needed for the purchase.
/// </summary>
@property NSNumber* Price; 

/// <summary>
/// Name of the purchase provider for this option.
/// </summary>
@property NSString* ProviderName; 

/// <summary>
/// Amount of existing credit the user has with the provider.
/// </summary>
@property NSNumber* StoreCredit; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface PlayerLeaderboardEntry : PlayFabBaseModel


/// <summary>
/// Title-specific display name of the user for this leaderboard entry.
/// </summary>
@property NSString* DisplayName; 

/// <summary>
/// PlayFab unique identifier of the user for this leaderboard entry.
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// User's overall position in the leaderboard.
/// </summary>
@property NSNumber* Position; 

/// <summary>
/// The profile of the user, if requested.
/// </summary>
@property PlayerProfileModel* Profile; 

/// <summary>
/// Specific value of the user's statistic.
/// </summary>
@property NSNumber* StatValue; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface PlayerProfileModel : PlayFabBaseModel


/// <summary>
/// List of advertising campaigns the player has been attributed to
/// </summary>
@property NSArray* AdCampaignAttributions; 

/// <summary>
/// URL of the player's avatar image
/// </summary>
@property NSString* AvatarUrl; 

/// <summary>
/// If the player is currently banned, the UTC Date when the ban expires
/// </summary>
@property NSDate* BannedUntil; 

/// <summary>
/// List of all contact email info associated with the player account
/// </summary>
@property NSArray* ContactEmailAddresses; 

/// <summary>
/// Player record created
/// </summary>
@property NSDate* Created; 

/// <summary>
/// Player display name
/// </summary>
@property NSString* DisplayName; 

/// <summary>
/// UTC time when the player most recently logged in to the title
/// </summary>
@property NSDate* LastLogin; 

/// <summary>
/// List of all authentication systems linked to this player account
/// </summary>
@property NSArray* LinkedAccounts; 

/// <summary>
/// List of geographic locations from which the player has logged in to the title
/// </summary>
@property NSArray* Locations; 

/// <summary>
/// List of memberships for the player, along with whether are expired.
/// </summary>
@property NSArray* Memberships; 

/// <summary>
/// Player account origination
/// </summary>
@property LoginIdentityProvider Origination; 

/// <summary>
/// PlayFab player account unique identifier
/// </summary>
@property NSString* PlayerId; 

/// <summary>
/// Publisher this player belongs to
/// </summary>
@property NSString* PublisherId; 

/// <summary>
/// List of configured end points registered for sending the player push notifications
/// </summary>
@property NSArray* PushNotificationRegistrations; 

/// <summary>
/// List of leaderboard statistic values for the player
/// </summary>
@property NSArray* Statistics; 

/// <summary>
/// List of player's tags for segmentation
/// </summary>
@property NSArray* Tags; 

/// <summary>
/// Title ID this player profile applies to
/// </summary>
@property NSString* TitleId; 

/// <summary>
/// Sum of the player's purchases made with real-money currencies, converted to US dollars equivalent and represented as a whole number of cents (1/100 USD).       For example, 999 indicates nine dollars and ninety-nine cents.
/// </summary>
@property NSNumber* TotalValueToDateInUSD; 

/// <summary>
/// List of the player's lifetime purchase totals, summed by real-money currency
/// </summary>
@property NSArray* ValuesToDate; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface PlayerProfileViewConstraints : PlayFabBaseModel


/// <summary>
/// Whether to show player's avatar URL. Defaults to false
/// </summary>
@property bool ShowAvatarUrl; 

/// <summary>
/// Whether to show the banned until time. Defaults to false
/// </summary>
@property bool ShowBannedUntil; 

/// <summary>
/// Whether to show campaign attributions. Defaults to false
/// </summary>
@property bool ShowCampaignAttributions; 

/// <summary>
/// Whether to show contact email addresses. Defaults to false
/// </summary>
@property bool ShowContactEmailAddresses; 

/// <summary>
/// Whether to show the created date. Defaults to false
/// </summary>
@property bool ShowCreated; 

/// <summary>
/// Whether to show the display name. Defaults to false
/// </summary>
@property bool ShowDisplayName; 

/// <summary>
/// Whether to show the last login time. Defaults to false
/// </summary>
@property bool ShowLastLogin; 

/// <summary>
/// Whether to show the linked accounts. Defaults to false
/// </summary>
@property bool ShowLinkedAccounts; 

/// <summary>
/// Whether to show player's locations. Defaults to false
/// </summary>
@property bool ShowLocations; 

/// <summary>
/// Whether to show player's membership information. Defaults to false
/// </summary>
@property bool ShowMemberships; 

/// <summary>
/// Whether to show origination. Defaults to false
/// </summary>
@property bool ShowOrigination; 

/// <summary>
/// Whether to show push notification registrations. Defaults to false
/// </summary>
@property bool ShowPushNotificationRegistrations; 

/// <summary>
/// Reserved for future development
/// </summary>
@property bool ShowStatistics; 

/// <summary>
/// Whether to show tags. Defaults to false
/// </summary>
@property bool ShowTags; 

/// <summary>
/// Whether to show the total value to date in usd. Defaults to false
/// </summary>
@property bool ShowTotalValueToDateInUsd; 

/// <summary>
/// Whether to show the values to date. Defaults to false
/// </summary>
@property bool ShowValuesToDate; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface PlayerStatisticVersion : PlayFabBaseModel


/// <summary>
/// time when the statistic version became active
/// </summary>
@property NSDate* ActivationTime; 

/// <summary>
/// time when the statistic version became inactive due to statistic version incrementing
/// </summary>
@property NSDate* DeactivationTime; 

/// <summary>
/// time at which the statistic version was scheduled to become active, based on the configured ResetInterval
/// </summary>
@property NSDate* ScheduledActivationTime; 

/// <summary>
/// time at which the statistic version was scheduled to become inactive, based on the configured ResetInterval
/// </summary>
@property NSDate* ScheduledDeactivationTime; 

/// <summary>
/// name of the statistic when the version became active
/// </summary>
@property NSString* StatisticName; 

/// <summary>
/// version of the statistic
/// </summary>
@property NSNumber* Version; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface PurchaseItemRequest : PlayFabBaseModel


/// <summary>
/// Catalog version for the items to be purchased (defaults to most recent version.
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// Unique PlayFab assigned ID for a specific character owned by a user
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// Unique identifier of the item to purchase.
/// </summary>
@property NSString* ItemId; 

/// <summary>
/// Price the client expects to pay for the item (in case a new catalog or store was uploaded, with new prices).
/// </summary>
@property NSNumber* Price; 

/// <summary>
/// Store to buy this item through. If not set, prices default to those in the catalog.
/// </summary>
@property NSString* StoreId; 

/// <summary>
/// Virtual currency to use to purchase the item.
/// </summary>
@property NSString* VirtualCurrency; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface PurchaseItemResult : PlayFabBaseModel


/// <summary>
/// Details for the items purchased.
/// </summary>
@property NSArray* Items; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface PushNotificationRegistrationModel : PlayFabBaseModel


/// <summary>
/// Notification configured endpoint
/// </summary>
@property NSString* NotificationEndpointARN; 

/// <summary>
/// Push notification platform
/// </summary>
@property PushNotificationPlatform Platform; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RedeemCouponRequest : PlayFabBaseModel


/// <summary>
/// Catalog version of the coupon. If null, uses the default catalog
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// Optional identifier for the Character that should receive the item. If null, item is added to the player
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// Generated coupon code to redeem.
/// </summary>
@property NSString* CouponCode; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RedeemCouponResult : PlayFabBaseModel


/// <summary>
/// Items granted to the player as a result of redeeming the coupon.
/// </summary>
@property NSArray* GrantedItems; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RegionInfo : PlayFabBaseModel


/// <summary>
/// indicates whether the server specified is available in this region
/// </summary>
@property bool Available; 

/// <summary>
/// name of the region
/// </summary>
@property NSString* Name; 

/// <summary>
/// url to ping to get roundtrip time
/// </summary>
@property NSString* PingUrl; 

/// <summary>
/// unique identifier for the region
/// </summary>
@property Region pfRegion; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RegisterForIOSPushNotificationRequest : PlayFabBaseModel


/// <summary>
/// Message to display when confirming push notification.
/// </summary>
@property NSString* ConfirmationMessage; 

/// <summary>
/// Unique token generated by the Apple Push Notification service when the title registered to receive push notifications.
/// </summary>
@property NSString* DeviceToken; 

/// <summary>
/// If true, send a test push message immediately after sucessful registration. Defaults to false.
/// </summary>
@property bool SendPushNotificationConfirmation; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RegisterForIOSPushNotificationResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RegisterPlayFabUserRequest : PlayFabBaseModel


/// <summary>
/// An optional parameter for setting the display name for this title (3-25 characters).
/// </summary>
@property NSString* DisplayName; 

/// <summary>
/// User email address attached to their account
/// </summary>
@property NSString* Email; 

/// <summary>
/// Base64 encoded body that is encrypted with the Title's public RSA key (Enterprise Only).
/// </summary>
@property NSString* EncryptedRequest; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Password for the PlayFab account (6-100 characters)
/// </summary>
@property NSString* Password; 

/// <summary>
/// Player secret that is used to verify API request signatures (Enterprise Only).
/// </summary>
@property NSString* PlayerSecret; 

/// <summary>
/// An optional parameter that specifies whether both the username and email parameters are required. If true, both parameters are required; if false, the user must supply either the username or email parameter. The default value is true.
/// </summary>
@property bool RequireBothUsernameAndEmail; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 

/// <summary>
/// PlayFab username for the account (3-20 characters)
/// </summary>
@property NSString* Username; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RegisterPlayFabUserResult : PlayFabBaseModel


/// <summary>
/// If LoginTitlePlayerAccountEntity flag is set on the login request the title_player_account will also be logged in and returned.
/// </summary>
@property EntityTokenResponse* EntityToken; 

/// <summary>
/// PlayFab unique identifier for this newly created account.
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// Unique token identifying the user and game at the server level, for the current session.
/// </summary>
@property NSString* SessionTicket; 

/// <summary>
/// Settings specific to this user.
/// </summary>
@property UserSettings* SettingsForUser; 

/// <summary>
/// PlayFab unique user name.
/// </summary>
@property NSString* Username; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RegisterWithWindowsHelloRequest : PlayFabBaseModel


/// <summary>
/// Device name.
/// </summary>
@property NSString* DeviceName; 

/// <summary>
/// Base64 encoded body that is encrypted with the Title's public RSA key (Enterprise Only).
/// </summary>
@property NSString* EncryptedRequest; 

/// <summary>
/// Flags for which pieces of info to return for the user.
/// </summary>
@property GetPlayerCombinedInfoRequestParams* InfoRequestParameters; 

/// <summary>
/// Flag to automatically login the player's title_player_account and return the associated entity token.
/// </summary>
@property bool LoginTitlePlayerAccountEntity; 

/// <summary>
/// Player secret that is used to verify API request signatures (Enterprise Only).
/// </summary>
@property NSString* PlayerSecret; 

/// <summary>
/// PublicKey generated by Windows Hello.
/// </summary>
@property NSString* PublicKey; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 

/// <summary>
/// Player's user name used by Windows Hello.
/// </summary>
@property NSString* UserName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RemoveContactEmailRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RemoveContactEmailResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RemoveFriendRequest : PlayFabBaseModel


/// <summary>
/// PlayFab identifier of the friend account which is to be removed.
/// </summary>
@property NSString* FriendPlayFabId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RemoveFriendResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RemoveGenericIDRequest : PlayFabBaseModel


/// <summary>
/// Generic service identifier to be removed from the player.
/// </summary>
@property GenericServiceId GenericId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RemoveGenericIDResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RemoveSharedGroupMembersRequest : PlayFabBaseModel


/// <summary>
/// An array of unique PlayFab assigned ID of the user on whom the operation will be performed.
/// </summary>
@property NSArray* PlayFabIds; 

/// <summary>
/// Unique identifier for the shared group.
/// </summary>
@property NSString* SharedGroupId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RemoveSharedGroupMembersResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ReportPlayerClientRequest : PlayFabBaseModel


/// <summary>
/// Optional additional comment by reporting player.
/// </summary>
@property NSString* Comment; 

/// <summary>
/// Unique PlayFab identifier of the reported player.
/// </summary>
@property NSString* ReporteeId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ReportPlayerClientResult : PlayFabBaseModel


/// <summary>
/// The number of remaining reports which may be filed today.
/// </summary>
@property NSNumber* SubmissionsRemaining; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RestoreIOSPurchasesRequest : PlayFabBaseModel


/// <summary>
/// Base64 encoded receipt data, passed back by the App Store as a result of a successful purchase.
/// </summary>
@property NSString* ReceiptData; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface RestoreIOSPurchasesResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ScriptExecutionError : PlayFabBaseModel


/// <summary>
/// Error code, such as CloudScriptNotFound, JavascriptException, CloudScriptFunctionArgumentSizeExceeded, CloudScriptAPIRequestCountExceeded, CloudScriptAPIRequestError, or CloudScriptHTTPRequestError
/// </summary>
@property NSString* Error; 

/// <summary>
/// Details about the error
/// </summary>
@property NSString* Message; 

/// <summary>
/// Point during the execution of the script at which the error occurred, if any
/// </summary>
@property NSString* StackTrace; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SendAccountRecoveryEmailRequest : PlayFabBaseModel


/// <summary>
/// User email address attached to their account
/// </summary>
@property NSString* Email; 

/// <summary>
/// The email template id of the account recovery email template to send.
/// </summary>
@property NSString* EmailTemplateId; 

/// <summary>
/// Unique identifier for the title, found in the Settings > Game Properties section of the PlayFab developer site when a title has been selected.
/// </summary>
@property NSString* TitleId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SendAccountRecoveryEmailResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetFriendTagsRequest : PlayFabBaseModel


/// <summary>
/// PlayFab identifier of the friend account to which the tag(s) should be applied.
/// </summary>
@property NSString* FriendPlayFabId; 

/// <summary>
/// Array of tags to set on the friend account.
/// </summary>
@property NSArray* Tags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetFriendTagsResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetPlayerSecretRequest : PlayFabBaseModel


/// <summary>
/// Base64 encoded body that is encrypted with the Title's public RSA key (Enterprise Only).
/// </summary>
@property NSString* EncryptedRequest; 

/// <summary>
/// Player secret that is used to verify API request signatures (Enterprise Only).
/// </summary>
@property NSString* PlayerSecret; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SetPlayerSecretResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SharedGroupDataRecord : PlayFabBaseModel


/// <summary>
/// Timestamp for when this data was last updated.
/// </summary>
@property NSDate* LastUpdated; 

/// <summary>
/// Unique PlayFab identifier of the user to last update this value.
/// </summary>
@property NSString* LastUpdatedBy; 

/// <summary>
/// Indicates whether this data can be read by all users (public) or only members of the group (private).
/// </summary>
@property UserDataPermission Permission; 

/// <summary>
/// Data stored for the specified group data key.
/// </summary>
@property NSString* Value; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface StartGameRequest : PlayFabBaseModel


/// <summary>
/// version information for the build of the game server which is to be started
/// </summary>
@property NSString* BuildVersion; 

/// <summary>
/// character to use for stats based matching. Leave null to use account stats
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// custom command line argument when starting game server process
/// </summary>
@property NSString* CustomCommandLineData; 

/// <summary>
/// the title-defined game mode this server is to be running (defaults to 0 if there is only one mode)
/// </summary>
@property NSString* GameMode; 

/// <summary>
/// the region to associate this server with for match filtering
/// </summary>
@property Region pfRegion; 

/// <summary>
/// player statistic for others to use in finding this game. May be null for no stat-based matching
/// </summary>
@property NSString* StatisticName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface StartGameResult : PlayFabBaseModel


/// <summary>
/// timestamp for when the server should expire, if applicable
/// </summary>
@property NSString* Expires; 

/// <summary>
/// unique identifier for the lobby of the server started
/// </summary>
@property NSString* LobbyID; 

/// <summary>
/// password required to log into the server
/// </summary>
@property NSString* Password; 

/// <summary>
/// server IPV4 address
/// </summary>
@property NSString* ServerHostname; 

/// <summary>
/// server IPV6 address
/// </summary>
@property NSString* ServerIPV6Address; 

/// <summary>
/// port on the server to be used for communication
/// </summary>
@property NSNumber* ServerPort; 

/// <summary>
/// unique identifier for the server
/// </summary>
@property NSString* Ticket; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface StartPurchaseRequest : PlayFabBaseModel


/// <summary>
/// Catalog version for the items to be purchased. Defaults to most recent catalog.
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// Array of items to purchase.
/// </summary>
@property NSArray* Items; 

/// <summary>
/// Store through which to purchase items. If not set, prices will be pulled from the catalog itself.
/// </summary>
@property NSString* StoreId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface StartPurchaseResult : PlayFabBaseModel


/// <summary>
/// Cart items to be purchased.
/// </summary>
@property NSArray* Contents; 

/// <summary>
/// Purchase order identifier.
/// </summary>
@property NSString* OrderId; 

/// <summary>
/// Available methods by which the user can pay.
/// </summary>
@property NSArray* PaymentOptions; 

/// <summary>
/// Current virtual currency totals for the user.
/// </summary>
@property NSDictionary* VirtualCurrencyBalances; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface StatisticModel : PlayFabBaseModel


/// <summary>
/// Statistic name
/// </summary>
@property NSString* Name; 

/// <summary>
/// Statistic value
/// </summary>
@property NSNumber* Value; 

/// <summary>
/// Statistic version (0 if not a versioned statistic)
/// </summary>
@property NSNumber* Version; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface StatisticNameVersion : PlayFabBaseModel


/// <summary>
/// unique name of the statistic
/// </summary>
@property NSString* StatisticName; 

/// <summary>
/// the version of the statistic to be returned
/// </summary>
@property NSNumber* Version; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface StatisticUpdate : PlayFabBaseModel


/// <summary>
/// unique name of the statistic
/// </summary>
@property NSString* StatisticName; 

/// <summary>
/// statistic value for the player
/// </summary>
@property NSNumber* Value; 

/// <summary>
/// for updates to an existing statistic value for a player, the version of the statistic when it was loaded. Null when setting the statistic value for the first time.
/// </summary>
@property NSNumber* Version; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface StatisticValue : PlayFabBaseModel


/// <summary>
/// unique name of the statistic
/// </summary>
@property NSString* StatisticName; 

/// <summary>
/// statistic value for the player
/// </summary>
@property NSNumber* Value; 

/// <summary>
/// for updates to an existing statistic value for a player, the version of the statistic when it was loaded
/// </summary>
@property NSNumber* Version; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SteamPlayFabIdPair : PlayFabBaseModel


/// <summary>
/// Unique PlayFab identifier for a user, or null if no PlayFab account is linked to the Steam identifier.
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// Unique Steam identifier for a user.
/// </summary>
@property NSString* SteamStringId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// A store entry that list a catalog item at a particular price
/// </summary>
@interface StoreItem : PlayFabBaseModel


/// <summary>
/// Store specific custom data. The data only exists as part of this store; it is not transferred to item instances
/// </summary>
@property NSDictionary* CustomData; 

/// <summary>
/// Intended display position for this item. Note that 0 is the first position
/// </summary>
@property NSNumber* DisplayPosition; 

/// <summary>
/// Unique identifier of the item as it exists in the catalog - note that this must exactly match the ItemId from the catalog
/// </summary>
@property NSString* ItemId; 

/// <summary>
/// Override prices for this item for specific currencies
/// </summary>
@property NSDictionary* RealCurrencyPrices; 

/// <summary>
/// Override prices for this item in virtual currencies and "RM" (the base Real Money purchase price, in USD pennies)
/// </summary>
@property NSDictionary* VirtualCurrencyPrices; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/// Marketing data about a specific store
/// </summary>
@interface StoreMarketingModel : PlayFabBaseModel


/// <summary>
/// Tagline for a store.
/// </summary>
@property NSString* Description; 

/// <summary>
/// Display name of a store as it will appear to users.
/// </summary>
@property NSString* DisplayName; 

/// <summary>
/// Custom data about a store.
/// </summary>
@property NSDictionary* Metadata; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SubscriptionModel : PlayFabBaseModel


/// <summary>
/// When this subscription expires.
/// </summary>
@property NSDate* Expiration; 

/// <summary>
/// The time the subscription was orignially purchased
/// </summary>
@property NSDate* InitialSubscriptionTime; 

/// <summary>
/// Whether this subscription is currently active. That is, if Expiration > now.
/// </summary>
@property bool IsActive; 

/// <summary>
/// The status of this subscription, according to the subscription provider.
/// </summary>
@property SubscriptionProviderStatus Status; 

/// <summary>
/// The id for this subscription
/// </summary>
@property NSString* SubscriptionId; 

/// <summary>
/// The item id for this subscription from the primary catalog
/// </summary>
@property NSString* SubscriptionItemId; 

/// <summary>
/// The provider for this subscription. Apple or Google Play are supported today.
/// </summary>
@property NSString* SubscriptionProvider; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface SubtractUserVirtualCurrencyRequest : PlayFabBaseModel


/// <summary>
/// Amount to be subtracted from the user balance of the specified virtual currency.
/// </summary>
@property NSNumber* Amount; 

/// <summary>
/// Name of the virtual currency which is to be decremented.
/// </summary>
@property NSString* VirtualCurrency; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface TagModel : PlayFabBaseModel


/// <summary>
/// Full value of the tag, including namespace
/// </summary>
@property NSString* TagValue; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface TitleNewsItem : PlayFabBaseModel


/// <summary>
/// News item text.
/// </summary>
@property NSString* Body; 

/// <summary>
/// Unique identifier of news item.
/// </summary>
@property NSString* NewsId; 

/// <summary>
/// Date and time when the news items was posted.
/// </summary>
@property NSDate* Timestamp; 

/// <summary>
/// Title of the news item.
/// </summary>
@property NSString* Title; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface TradeInfo : PlayFabBaseModel


/// <summary>
/// Item instances from the accepting player that are used to fulfill the trade. If null, no one has accepted the trade.
/// </summary>
@property NSArray* AcceptedInventoryInstanceIds; 

/// <summary>
/// The PlayFab ID of the player who accepted the trade. If null, no one has accepted the trade.
/// </summary>
@property NSString* AcceptedPlayerId; 

/// <summary>
/// An optional list of players allowed to complete this trade. If null, anybody can complete the trade.
/// </summary>
@property NSArray* AllowedPlayerIds; 

/// <summary>
/// If set, The UTC time when this trade was canceled.
/// </summary>
@property NSDate* CancelledAt; 

/// <summary>
/// If set, The UTC time when this trade was fulfilled.
/// </summary>
@property NSDate* FilledAt; 

/// <summary>
/// If set, The UTC time when this trade was made invalid.
/// </summary>
@property NSDate* InvalidatedAt; 

/// <summary>
/// The catalogItem Ids of the item instances being offered.
/// </summary>
@property NSArray* OfferedCatalogItemIds; 

/// <summary>
/// The itemInstance Ids that are being offered.
/// </summary>
@property NSArray* OfferedInventoryInstanceIds; 

/// <summary>
/// The PlayFabId for the offering player.
/// </summary>
@property NSString* OfferingPlayerId; 

/// <summary>
/// The UTC time when this trade was created.
/// </summary>
@property NSDate* OpenedAt; 

/// <summary>
/// The catalogItem Ids requested in exchange.
/// </summary>
@property NSArray* RequestedCatalogItemIds; 

/// <summary>
/// Describes the current state of this trade.
/// </summary>
@property TradeStatus Status; 

/// <summary>
/// The identifier for this trade.
/// </summary>
@property NSString* TradeId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface TwitchPlayFabIdPair : PlayFabBaseModel


/// <summary>
/// Unique PlayFab identifier for a user, or null if no PlayFab account is linked to the Twitch identifier.
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// Unique Twitch identifier for a user.
/// </summary>
@property NSString* TwitchId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkAndroidDeviceIDRequest : PlayFabBaseModel


/// <summary>
/// Android device identifier for the user's device. If not specified, the most recently signed in Android Device ID will be used.
/// </summary>
@property NSString* AndroidDeviceId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkAndroidDeviceIDResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkCustomIDRequest : PlayFabBaseModel


/// <summary>
/// Custom unique identifier for the user, generated by the title. If not specified, the most recently signed in Custom ID will be used.
/// </summary>
@property NSString* CustomId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkCustomIDResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkFacebookAccountRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkFacebookAccountResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkGameCenterAccountRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkGameCenterAccountResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkGoogleAccountRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkGoogleAccountResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkIOSDeviceIDRequest : PlayFabBaseModel


/// <summary>
/// Vendor-specific iOS identifier for the user's device. If not specified, the most recently signed in iOS Device ID will be used.
/// </summary>
@property NSString* DeviceId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkIOSDeviceIDResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkKongregateAccountRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkKongregateAccountResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkSteamAccountRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkSteamAccountResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkTwitchAccountRequest : PlayFabBaseModel

/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkTwitchAccountResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkWindowsHelloAccountRequest : PlayFabBaseModel


/// <summary>
/// SHA256 hash of the PublicKey generated by Windows Hello.
/// </summary>
@property NSString* PublicKeyHint; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlinkWindowsHelloAccountResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlockContainerInstanceRequest : PlayFabBaseModel


/// <summary>
/// Specifies the catalog version that should be used to determine container contents. If unspecified, uses catalog associated with the item instance.
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// Unique PlayFab assigned ID for a specific character owned by a user
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// ItemInstanceId of the container to unlock.
/// </summary>
@property NSString* ContainerItemInstanceId; 

/// <summary>
/// ItemInstanceId of the key that will be consumed by unlocking this container. If the container requires a key, this parameter is required.
/// </summary>
@property NSString* KeyItemInstanceId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlockContainerItemRequest : PlayFabBaseModel


/// <summary>
/// Specifies the catalog version that should be used to determine container contents. If unspecified, uses default/primary catalog.
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// Unique PlayFab assigned ID for a specific character owned by a user
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// Catalog ItemId of the container type to unlock.
/// </summary>
@property NSString* ContainerItemId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UnlockContainerItemResult : PlayFabBaseModel


/// <summary>
/// Items granted to the player as a result of unlocking the container.
/// </summary>
@property NSArray* GrantedItems; 

/// <summary>
/// Unique instance identifier of the container unlocked.
/// </summary>
@property NSString* UnlockedItemInstanceId; 

/// <summary>
/// Unique instance identifier of the key used to unlock the container, if applicable.
/// </summary>
@property NSString* UnlockedWithItemInstanceId; 

/// <summary>
/// Virtual currency granted to the player as a result of unlocking the container.
/// </summary>
@property NSDictionary* VirtualCurrency; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateAvatarUrlRequest : PlayFabBaseModel


/// <summary>
/// URL of the avatar image. If empty, it removes the existing avatar URL.
/// </summary>
@property NSString* ImageUrl; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateCharacterDataRequest : PlayFabBaseModel


/// <summary>
/// Unique PlayFab assigned ID for a specific character owned by a user
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// Key-value pairs to be written to the custom data. Note that keys are trimmed of whitespace, are limited in size, and may not begin with a '!' character or be null.
/// </summary>
@property NSDictionary* Data; 

/// <summary>
/// Optional list of Data-keys to remove from UserData. Some SDKs cannot insert null-values into Data due to language constraints. Use this to delete the keys directly.
/// </summary>
@property NSArray* KeysToRemove; 

/// <summary>
/// Permission to be applied to all user data keys written in this request. Defaults to "private" if not set.
/// </summary>
@property UserDataPermission Permission; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateCharacterDataResult : PlayFabBaseModel


/// <summary>
/// Indicates the current version of the data that has been set. This is incremented with every set call for that type of data (read-only, internal, etc). This version can be provided in Get calls to find updated data.
/// </summary>
@property NSNumber* DataVersion; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateCharacterStatisticsRequest : PlayFabBaseModel


/// <summary>
/// Unique PlayFab assigned ID for a specific character owned by a user
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// Statistics to be updated with the provided values.
/// </summary>
@property NSDictionary* CharacterStatistics; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateCharacterStatisticsResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdatePlayerStatisticsRequest : PlayFabBaseModel


/// <summary>
/// Statistics to be updated with the provided values
/// </summary>
@property NSArray* Statistics; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdatePlayerStatisticsResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateSharedGroupDataRequest : PlayFabBaseModel


/// <summary>
/// Key-value pairs to be written to the custom data. Note that keys are trimmed of whitespace, are limited in size, and may not begin with a '!' character or be null.
/// </summary>
@property NSDictionary* Data; 

/// <summary>
/// Optional list of Data-keys to remove from UserData. Some SDKs cannot insert null-values into Data due to language constraints. Use this to delete the keys directly.
/// </summary>
@property NSArray* KeysToRemove; 

/// <summary>
/// Permission to be applied to all user data keys in this request.
/// </summary>
@property UserDataPermission Permission; 

/// <summary>
/// Unique identifier for the shared group.
/// </summary>
@property NSString* SharedGroupId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateSharedGroupDataResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateUserDataRequest : PlayFabBaseModel


/// <summary>
/// Key-value pairs to be written to the custom data. Note that keys are trimmed of whitespace, are limited in size, and may not begin with a '!' character or be null.
/// </summary>
@property NSDictionary* Data; 

/// <summary>
/// Optional list of Data-keys to remove from UserData. Some SDKs cannot insert null-values into Data due to language constraints. Use this to delete the keys directly.
/// </summary>
@property NSArray* KeysToRemove; 

/// <summary>
/// Permission to be applied to all user data keys written in this request. Defaults to "private" if not set. This is used for requests by one player for information about another player; those requests will only return Public keys.
/// </summary>
@property UserDataPermission Permission; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateUserDataResult : PlayFabBaseModel


/// <summary>
/// Indicates the current version of the data that has been set. This is incremented with every set call for that type of data (read-only, internal, etc). This version can be provided in Get calls to find updated data.
/// </summary>
@property NSNumber* DataVersion; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateUserTitleDisplayNameRequest : PlayFabBaseModel


/// <summary>
/// New title display name for the user - must be between 3 and 25 characters.
/// </summary>
@property NSString* DisplayName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UpdateUserTitleDisplayNameResult : PlayFabBaseModel


/// <summary>
/// Current title display name for the user (this will be the original display name if the rename attempt failed).
/// </summary>
@property NSString* DisplayName; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserAccountInfo : PlayFabBaseModel


/// <summary>
/// User Android device information, if an Android device has been linked
/// </summary>
@property UserAndroidDeviceInfo* AndroidDeviceInfo; 

/// <summary>
/// Timestamp indicating when the user account was created
/// </summary>
@property NSDate* Created; 

/// <summary>
/// Custom ID information, if a custom ID has been assigned
/// </summary>
@property UserCustomIdInfo* CustomIdInfo; 

/// <summary>
/// User Facebook information, if a Facebook account has been linked
/// </summary>
@property UserFacebookInfo* FacebookInfo; 

/// <summary>
/// User Gamecenter information, if a Gamecenter account has been linked
/// </summary>
@property UserGameCenterInfo* GameCenterInfo; 

/// <summary>
/// User Google account information, if a Google account has been linked
/// </summary>
@property UserGoogleInfo* GoogleInfo; 

/// <summary>
/// User iOS device information, if an iOS device has been linked
/// </summary>
@property UserIosDeviceInfo* IosDeviceInfo; 

/// <summary>
/// User Kongregate account information, if a Kongregate account has been linked
/// </summary>
@property UserKongregateInfo* KongregateInfo; 

/// <summary>
/// Unique identifier for the user account
/// </summary>
@property NSString* PlayFabId; 

/// <summary>
/// Personal information for the user which is considered more sensitive
/// </summary>
@property UserPrivateAccountInfo* PrivateInfo; 

/// <summary>
/// User PSN account information, if a PSN account has been linked
/// </summary>
@property UserPsnInfo* PsnInfo; 

/// <summary>
/// User Steam information, if a Steam account has been linked
/// </summary>
@property UserSteamInfo* SteamInfo; 

/// <summary>
/// Title-specific information for the user account
/// </summary>
@property UserTitleInfo* TitleInfo; 

/// <summary>
/// User Twitch account information, if a Twitch account has been linked
/// </summary>
@property UserTwitchInfo* TwitchInfo; 

/// <summary>
/// User account name in the PlayFab service
/// </summary>
@property NSString* Username; 

/// <summary>
/// User XBox account information, if a XBox account has been linked
/// </summary>
@property UserXboxInfo* XboxInfo; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserAndroidDeviceInfo : PlayFabBaseModel


/// <summary>
/// Android device ID
/// </summary>
@property NSString* AndroidDeviceId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserCustomIdInfo : PlayFabBaseModel


/// <summary>
/// Custom ID
/// </summary>
@property NSString* CustomId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserDataRecord : PlayFabBaseModel


/// <summary>
/// Timestamp for when this data was last updated.
/// </summary>
@property NSDate* LastUpdated; 

/// <summary>
/// Indicates whether this data can be read by all users (public) or only the user (private). This is used for GetUserData requests being made by one player about another player.
/// </summary>
@property UserDataPermission Permission; 

/// <summary>
/// Data stored for the specified user data key.
/// </summary>
@property NSString* Value; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserFacebookInfo : PlayFabBaseModel


/// <summary>
/// Facebook identifier
/// </summary>
@property NSString* FacebookId; 

/// <summary>
/// Facebook full name
/// </summary>
@property NSString* FullName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserGameCenterInfo : PlayFabBaseModel


/// <summary>
/// Gamecenter identifier
/// </summary>
@property NSString* GameCenterId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserGoogleInfo : PlayFabBaseModel


/// <summary>
/// Email address of the Google account
/// </summary>
@property NSString* GoogleEmail; 

/// <summary>
/// Gender information of the Google account
/// </summary>
@property NSString* GoogleGender; 

/// <summary>
/// Google ID
/// </summary>
@property NSString* GoogleId; 

/// <summary>
/// Locale of the Google account
/// </summary>
@property NSString* GoogleLocale; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserIosDeviceInfo : PlayFabBaseModel


/// <summary>
/// iOS device ID
/// </summary>
@property NSString* IosDeviceId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserKongregateInfo : PlayFabBaseModel


/// <summary>
/// Kongregate ID
/// </summary>
@property NSString* KongregateId; 

/// <summary>
/// Kongregate Username
/// </summary>
@property NSString* KongregateName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserPrivateAccountInfo : PlayFabBaseModel


/// <summary>
/// user email address
/// </summary>
@property NSString* Email; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserPsnInfo : PlayFabBaseModel


/// <summary>
/// PSN account ID
/// </summary>
@property NSString* PsnAccountId; 

/// <summary>
/// PSN online ID
/// </summary>
@property NSString* PsnOnlineId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserSettings : PlayFabBaseModel


/// <summary>
/// Boolean for whether this player is eligible for gathering device info.
/// </summary>
@property bool GatherDeviceInfo; 

/// <summary>
/// Boolean for whether this player should report OnFocus play-time tracking.
/// </summary>
@property bool GatherFocusInfo; 

/// <summary>
/// Boolean for whether this player is eligible for ad tracking.
/// </summary>
@property bool NeedsAttribution; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserSteamInfo : PlayFabBaseModel


/// <summary>
/// what stage of game ownership the user is listed as being in, from Steam
/// </summary>
@property TitleActivationStatus SteamActivationStatus; 

/// <summary>
/// the country in which the player resides, from Steam data
/// </summary>
@property NSString* SteamCountry; 

/// <summary>
/// currency type set in the user Steam account
/// </summary>
@property Currency SteamCurrency; 

/// <summary>
/// Steam identifier
/// </summary>
@property NSString* SteamId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserTitleInfo : PlayFabBaseModel


/// <summary>
/// URL to the player's avatar.
/// </summary>
@property NSString* AvatarUrl; 

/// <summary>
/// timestamp indicating when the user was first associated with this game (this can differ significantly from when the user first registered with PlayFab)
/// </summary>
@property NSDate* Created; 

/// <summary>
/// name of the user, as it is displayed in-game
/// </summary>
@property NSString* DisplayName; 

/// <summary>
/// timestamp indicating when the user first signed into this game (this can differ from the Created timestamp, as other events, such as issuing a beta key to the user, can associate the title to the user)
/// </summary>
@property NSDate* FirstLogin; 

/// <summary>
/// boolean indicating whether or not the user is currently banned for a title
/// </summary>
@property bool isBanned; 

/// <summary>
/// timestamp for the last user login for this title
/// </summary>
@property NSDate* LastLogin; 

/// <summary>
/// source by which the user first joined the game, if known
/// </summary>
@property UserOrigination Origination; 

/// <summary>
/// Title player account entity for this user
/// </summary>
@property EntityKey* TitlePlayerAccount; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserTwitchInfo : PlayFabBaseModel


/// <summary>
/// Twitch ID
/// </summary>
@property NSString* TwitchId; 

/// <summary>
/// Twitch Username
/// </summary>
@property NSString* TwitchUserName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface UserXboxInfo : PlayFabBaseModel


/// <summary>
/// XBox user ID
/// </summary>
@property NSString* XboxUserId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ValidateAmazonReceiptRequest : PlayFabBaseModel


/// <summary>
/// Catalog version to use when granting receipt item. If null, defaults to primary catalog.
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// Currency used for the purchase.
/// </summary>
@property NSString* CurrencyCode; 

/// <summary>
/// Amount of the stated currency paid for the object.
/// </summary>
@property NSNumber* PurchasePrice; 

/// <summary>
/// ReceiptId returned by the Amazon App Store in-app purchase API
/// </summary>
@property NSString* ReceiptId; 

/// <summary>
/// AmazonId of the user making the purchase as returned by the Amazon App Store in-app purchase API
/// </summary>
@property NSString* UserId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ValidateAmazonReceiptResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ValidateGooglePlayPurchaseRequest : PlayFabBaseModel


/// <summary>
/// Currency used for the purchase.
/// </summary>
@property NSString* CurrencyCode; 

/// <summary>
/// Amount of the stated currency paid for the object.
/// </summary>
@property NSNumber* PurchasePrice; 

/// <summary>
/// Original JSON string returned by the Google Play IAB API.
/// </summary>
@property NSString* ReceiptJson; 

/// <summary>
/// Signature returned by the Google Play IAB API.
/// </summary>
@property NSString* Signature; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ValidateGooglePlayPurchaseResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ValidateIOSReceiptRequest : PlayFabBaseModel


/// <summary>
/// Currency used for the purchase.
/// </summary>
@property NSString* CurrencyCode; 

/// <summary>
/// Amount of the stated currency paid for the object.
/// </summary>
@property NSNumber* PurchasePrice; 

/// <summary>
/// Base64 encoded receipt data, passed back by the App Store as a result of a successful purchase.
/// </summary>
@property NSString* ReceiptData; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ValidateIOSReceiptResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ValidateWindowsReceiptRequest : PlayFabBaseModel


/// <summary>
/// Catalog version to use when granting receipt item. If null, defaults to primary catalog.
/// </summary>
@property NSString* CatalogVersion; 

/// <summary>
/// Currency used for the purchase.
/// </summary>
@property NSString* CurrencyCode; 

/// <summary>
/// Amount of the stated currency paid for the object.
/// </summary>
@property NSNumber* PurchasePrice; 

/// <summary>
/// XML Receipt returned by the Windows App Store in-app purchase API
/// </summary>
@property NSString* Receipt; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ValidateWindowsReceiptResult : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ValueToDateModel : PlayFabBaseModel


/// <summary>
/// ISO 4217 code of the currency used in the purchases
/// </summary>
@property NSString* Currency; 

/// <summary>
/// Total value of the purchases in a whole number of 1/100 monetary units. For example, 999 indicates nine dollars and ninety-nine cents when Currency is 'USD')
/// </summary>
@property NSNumber* TotalValue; 

/// <summary>
/// Total value of the purchases in a string representation of decimal monetary units. For example, '9.99' indicates nine dollars and ninety-nine cents when Currency is 'USD'.
/// </summary>
@property NSString* TotalValueAsDecimal; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface VirtualCurrencyRechargeTime : PlayFabBaseModel


/// <summary>
/// Maximum value to which the regenerating currency will automatically increment. Note that it can exceed this value through use of the AddUserVirtualCurrency API call. However, it will not regenerate automatically until it has fallen below this value.
/// </summary>
@property NSNumber* RechargeMax; 

/// <summary>
/// Server timestamp in UTC indicating the next time the virtual currency will be incremented.
/// </summary>
@property NSDate* RechargeTime; 

/// <summary>
/// Time remaining (in seconds) before the next recharge increment of the virtual currency.
/// </summary>
@property NSNumber* SecondsToRecharge; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface WriteClientCharacterEventRequest : PlayFabBaseModel


/// <summary>
/// Custom event properties. Each property consists of a name (string) and a value (JSON object).
/// </summary>
@property NSDictionary* Body; 

/// <summary>
/// Unique PlayFab assigned ID for a specific character owned by a user
/// </summary>
@property NSString* CharacterId; 

/// <summary>
/// The name of the event, within the namespace scoped to the title. The naming convention is up to the caller, but it commonly follows the subject_verb_object pattern (e.g. player_logged_in).
/// </summary>
@property NSString* EventName; 

/// <summary>
/// The time (in UTC) associated with this event. The value dafaults to the current time.
/// </summary>
@property NSDate* Timestamp; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface WriteClientPlayerEventRequest : PlayFabBaseModel


/// <summary>
/// Custom data properties associated with the event. Each property consists of a name (string) and a value (JSON object).
/// </summary>
@property NSDictionary* Body; 

/// <summary>
/// The name of the event, within the namespace scoped to the title. The naming convention is up to the caller, but it commonly follows the subject_verb_object pattern (e.g. player_logged_in).
/// </summary>
@property NSString* EventName; 

/// <summary>
/// The time (in UTC) associated with this event. The value dafaults to the current time.
/// </summary>
@property NSDate* Timestamp; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface WriteEventResponse : PlayFabBaseModel


/// <summary>
/// The unique identifier of the event. The values of this identifier consist of ASCII characters and are not constrained to any particular format.
/// </summary>
@property NSString* EventId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface WriteTitleEventRequest : PlayFabBaseModel


/// <summary>
/// Custom event properties. Each property consists of a name (string) and a value (JSON object).
/// </summary>
@property NSDictionary* Body; 

/// <summary>
/// The name of the event, within the namespace scoped to the title. The naming convention is up to the caller, but it commonly follows the subject_verb_object pattern (e.g. player_logged_in).
/// </summary>
@property NSString* EventName; 

/// <summary>
/// The time (in UTC) associated with this event. The value dafaults to the current time.
/// </summary>
@property NSDate* Timestamp; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

