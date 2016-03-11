//
//  PlayFabSDKTest.m
//  PlayFab ObjC Test
//
//  Created by William Burgers on 2/26/16.
//  Copyright © 2016 PlayFab, Inc. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "PlayFabSDK.h"

@interface PlayFabSDKTest : XCTestCase

@property bool TITLE_INFO_SET;
@property bool TITLE_CAN_UPDATE_SETTINGS;

@property NSString* USER_NAME;
@property NSString* USER_EMAIL;
@property NSString* USER_PASSWORD;
@property NSString* CHAR_NAME;

// Class variables used for maintaining test data from blocks.
@property PlayFabError *stored_error;
@property bool login_success;
@property RegisterPlayFabUserResult *register_result;

@property UserDataRecord* testCounterReturn;
@property NSNumber* testStatReturn;
@property CharacterResult* targetCharacter;


@property NSString* playFabID;

@end

@implementation PlayFabSDKTest

@synthesize TITLE_INFO_SET;
@synthesize TITLE_CAN_UPDATE_SETTINGS;

@synthesize USER_NAME;
@synthesize USER_EMAIL;
@synthesize USER_PASSWORD;
@synthesize CHAR_NAME;


- (void)setUp {
    [super setUp];
    //NOTE: Remove any new lines/carraige returns, and comments from JSON, to not confuse the parser.
    
    //Grab the testTitleData.json file from inside our project.
    NSString *filePath = [[NSBundle bundleForClass:[self class]] pathForResource:@"testTitleData" ofType:@"json"];
    NSData *myData = [NSData dataWithContentsOfFile:filePath];
    if (myData) {
        NSString *testString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
        
        NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:[testString dataUsingEncoding:NSUTF8StringEncoding] options:0 error:nil];
        
        [self SetTitleInfo:dictionary];
    }
    else{
        XCTFail(@"testTitleData.json null or not found.");
    }
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


-(void) SetTitleInfo:(NSDictionary*)testInputs
{
    
    TITLE_INFO_SET = true;
    
    // Parse all the inputs
    [PlayFabSettings setTitleId:[testInputs valueForKey:@"titleId"]];
    [PlayFabSettings setDeveloperSecretKey:[testInputs valueForKey:@"developerSecretKey"]];
    
    USER_NAME = [testInputs valueForKey:@"userName"];
    USER_EMAIL = [testInputs valueForKey:@"userEmail"];
    USER_PASSWORD = [testInputs valueForKey:@"userPassword"];
    CHAR_NAME = [testInputs valueForKey:@"characterName"];
    
    TITLE_INFO_SET &=
    (PlayFabSettings.TitleId != nil && ![PlayFabSettings.TitleId isEqualToString:@""])
    && (PlayFabSettings.DeveloperSecretKey != nil && ![PlayFabSettings.DeveloperSecretKey isEqualToString:@""])
    && (PlayFabSettings.DeveloperSecretKey != nil && ![PlayFabSettings.DeveloperSecretKey isEqualToString:@""])
    && (USER_NAME != nil && ![USER_NAME isEqualToString:@""])
    && (USER_EMAIL != nil && ![USER_EMAIL isEqualToString:@""])
    && (USER_PASSWORD != nil && ![USER_PASSWORD isEqualToString:@""])
    && (CHAR_NAME != nil && ![CHAR_NAME isEqualToString:@""]);
    
    if(!TITLE_INFO_SET){
        XCTFail(@"Title Info has invalid data!");
    }
    
}

/// <summary>
/// CLIENT API
/// Try to deliberately log in with an inappropriate password,
///   and verify that the error displays as expected.
/// </summary>
- (void)testLoginWithExistingAccountIncorrectPassword {
    
    XCTestExpectation *exp = [self expectationWithDescription:@"Login"];
    
    LoginWithEmailAddressRequest* request = [LoginWithEmailAddressRequest new];
    request.TitleId = PlayFabSettings.TitleId;
    
    request.Email = USER_EMAIL;
    request.Password = [NSString stringWithFormat:@"%@%@",USER_PASSWORD, @"INVALID"];
    
    
    [[PlayFabClientAPI GetInstance] LoginWithEmailAddress:request
                                         success:^(LoginResult* result, NSObject* userData) {
                                             XCTFail(@"Login succeeded with incorrect password!");
                                         }
                                         failure:^(PlayFabError *error, NSObject *userData) {
                                             //Request errored or failed to connect.
                                             self.stored_error = error;
                                             [exp fulfill];
                                         } withUserData:nil];
    
    [self waitForExpectationsWithTimeout:30 handler:^(NSError *error) {
        
        if ([self.stored_error.errorMessage rangeOfString:@"password"].location == NSNotFound) {
            XCTFail(@"errorMessage '%@' does not contain 'password'.", self.stored_error.errorMessage);
        } else {
            //Worked as intended! The errorMessage contained the word password.
        }
        
    }];
    
}

/// <summary>
/// CLIENT API
/// Log in or create a user, track their PlayFabId
/// </summary>
- (void) testLoginOrRegister
{
    
    XCTestExpectation *exp = [self expectationWithDescription:@"Login"];
    
    if (![PlayFabClientAPI IsClientLoggedIn]) // If we haven't already logged in...
    {
        LoginWithEmailAddressRequest* request = [LoginWithEmailAddressRequest new];
        
        request.Email = USER_EMAIL;
        request.Password = USER_PASSWORD;
        request.TitleId = PlayFabSettings.TitleId;
        
        self.login_success = false;
        [[PlayFabClientAPI GetInstance] LoginWithEmailAddress:request
                                                      success:^(LoginResult* result, NSObject* userData) {
                                                          self.playFabID = result.PlayFabId;
                                                          [exp fulfill];
                                                      }
                                                      failure:^(PlayFabError *error, NSObject *userData) {
                                                          [exp fulfill];
                                                      } withUserData:nil];
        
        // We don't do any test here, because the user may not exist, and thus login might fail, but the test should not
    }
    
    [self waitForExpectationsWithTimeout:30 handler:^(NSError *error) {
        
        if ([PlayFabClientAPI IsClientLoggedIn])
            return; // Success, already logged in
        
        
        //exp = [self expectationWithDescription:@"CreateUser"];
        
        RegisterPlayFabUserRequest* register_request = [RegisterPlayFabUserRequest new];
        
        register_request.TitleId = PlayFabSettings.TitleId;
        register_request.Username = USER_NAME;
        register_request.Email = USER_EMAIL;
        register_request.Password = USER_PASSWORD;
        
        [[PlayFabClientAPI GetInstance] RegisterPlayFabUser:register_request
                                                    success:^(RegisterPlayFabUserResult* result, NSObject* userData) {
                                                        self.playFabID = result.PlayFabId;
                                                        self.register_result = result;
                                                        //[exp fulfill];
                                                    }
                                                    failure:^(PlayFabError *error, NSObject *userData) {
                                                        self.stored_error = error;
                                                        XCTFail(@"Registration Failed!");
                                                        //[exp fulfill];
                                                    } withUserData:nil];
        

        
    }];
    
    
}

/// <summary>
/// CLIENT API
/// Test that the login call sequence sends the AdvertisingId when set
/// Set TitleId in testTitledata.json to 6195 to test this.
/// </summary>
- (void) testLoginWithAdvertisingId
{
    [PlayFabSettings setAdvertisingIdType:AD_TYPE_IDFA];
    [PlayFabSettings setAdvertisingIdValue: @"PlayFabTestId" ];
    
    
    XCTestExpectation *exp = [self expectationWithDescription:@"Login"];
    
    LoginWithIOSDeviceIDRequest* request = [LoginWithIOSDeviceIDRequest new];

    request.CreateAccount = true;
        
    [[PlayFabClientAPI GetInstance] LoginWithIOSDeviceID:request
                                                 success:^(LoginResult* result, NSObject* userData) {
                                                      [exp fulfill];
                                                  }
                                                  failure:^(PlayFabError *error, NSObject *userData) {
                                                      //Request errored or failed to connect.
                                                      self.stored_error = error;
                                                      [exp fulfill];
                                                  } withUserData:nil];
    
    [self waitForExpectationsWithTimeout:30 handler:^(NSError *error) {
        
        NSDate *runUntil = [NSDate dateWithTimeIntervalSinceNow: 3.0 ];
        
        [[NSRunLoop currentRunLoop] runUntilDate:runUntil]; //wait so there's time for the attribute install
        
        NSString* string_1 = [NSString stringWithFormat:@"%@%@",AD_TYPE_IDFA, @"_Successful"];
        NSString* string_2 = [NSString stringWithFormat:@"%@",PlayFabSettings.AdvertisingIdType];
        XCTAssertEqualObjects(string_1, string_2);
    }];
}

/// <summary>
/// CLIENT API
/// Test a sequence of calls that modifies saved data,
///   and verifies that the next sequential API call contains updated data.
/// Verify that the data is correctly modified on the next call.
/// Parameter types tested: string, Dictionary<string, string>, DateTime
/// </summary>
- (void) testUserDataApi
{
    [self testLoginOrRegister];
    
    NSString* TEST_DATA_KEY = @"testCounter";
    int testCounterValueExpected, testCounterValueActual;
    XCTestExpectation *exp = [self expectationWithDescription:@"GetData"];
    
    GetUserDataRequest* request = [GetUserDataRequest new];
    [[PlayFabClientAPI GetInstance] GetUserData:request
                                                 success:^(GetUserDataResult* result, NSObject* userData) {
                                                     if([result.Data valueForKey:TEST_DATA_KEY]){
                                                         self.testCounterReturn = [result.Data valueForKey:TEST_DATA_KEY]; //[[UserDataRecord new] initWithDictionary:[result.Data valueForKey:TEST_DATA_KEY]];
                                                     }
                                                     else{
                                                         self.testCounterReturn = [UserDataRecord new];
                                                         self.testCounterReturn.Value = @"0";
                                                     }
                                                     NSLog(@"%@",result);
                                                     [exp fulfill];
                                                 }
                                                 failure:^(PlayFabError *error, NSObject *userData) {
                                                     //Request errored or failed to connect.
                                                     XCTFail(@"GetUserDataRequest Failed.");
                                                     self.stored_error = error;
                                                 } withUserData:nil];
    
    
    [self waitForExpectationsWithTimeout:30 handler:^(NSError *error) {
        
    }];
    
    testCounterValueExpected = [self.testCounterReturn.Value intValue];
    testCounterValueExpected = (testCounterValueExpected + 1) % 100;
    
    
    exp = [self expectationWithDescription:@"UpdateData"];
//    UUnitAssert.StringEquals("User Data Received", lastReceivedMessage);
    
    UpdateUserDataRequest* update_request = [UpdateUserDataRequest new];
    update_request.Data = [NSMutableDictionary new];
    [update_request.Data setValue:[NSString stringWithFormat:@"%i", testCounterValueExpected] forKey:TEST_DATA_KEY];
    [[PlayFabClientAPI GetInstance] UpdateUserData:update_request
                                        success:^(UpdateUserDataResult* result, NSObject* userData) {
                                            NSLog(@"%@",result);
                                            [exp fulfill];
                                        }
                                        failure:^(PlayFabError *error, NSObject *userData) {
                                            //Request errored or failed to connect.
                                            XCTFail(@"UpdateUserDataRequest Failed.");
                                            self.stored_error = error;
                                            [exp fulfill];
                                        } withUserData:nil];
    
    
    [self waitForExpectationsWithTimeout:30 handler:^(NSError *error) {
        
    }];
    
    exp = [self expectationWithDescription:@"GetData"];
    
    request = [GetUserDataRequest new];
    [[PlayFabClientAPI GetInstance] GetUserData:request
                                        success:^(GetUserDataResult* result, NSObject* userData) {
                                            if([result.Data valueForKey:TEST_DATA_KEY]){
                                                self.testCounterReturn = [result.Data valueForKey:TEST_DATA_KEY]; //[[UserDataRecord new] initWithDictionary:[result.Data valueForKey:TEST_DATA_KEY]];
                                            }
                                            else{
                                                self.testCounterReturn = [UserDataRecord new];
                                                self.testCounterReturn.Value = @"0";
                                            }
                                            [exp fulfill];
                                        }
                                        failure:^(PlayFabError *error, NSObject *userData) {
                                            //Request errored or failed to connect.
                                            XCTFail(@"GetUserDataRequest Failed.");
                                            self.stored_error = error;
                                            [exp fulfill];
                                        } withUserData:nil];
    
    
    [self waitForExpectationsWithTimeout:30 handler:^(NSError *error) {
        
        NSLog(@"third line");
    }];

    
    testCounterValueActual = [self.testCounterReturn.Value intValue];
    
    XCTAssertEqual(testCounterValueExpected, testCounterValueActual);
    
    
        NSDate* timeUpdated = self.testCounterReturn.LastUpdated;
    NSDate* minTest = [[NSDate new] dateByAddingTimeInterval:-5*60];
    NSDate* maxTest = [[NSDate new] dateByAddingTimeInterval:5*60];
    XCTAssertTrue(( [timeUpdated timeIntervalSinceDate:minTest] > 0 ) && ( [maxTest timeIntervalSinceDate:timeUpdated] > 0 ));
    
    //UUnitAssert.True(Math.Abs((DateTime.UtcNow - timeUpdated).TotalMinutes) < 5); // Make sure that this timestamp is recent - This must also account for the difference between local machine time and server time
}

/// <summary>
/// CLIENT API
/// Test a sequence of calls that modifies saved data,
///   and verifies that the next sequential API call contains updated data.
/// Verify that the data is saved correctly, and that specific types are tested
/// Parameter types tested: Dictionary<string, int>
/// </summary>
- (void) testUserStatisticsApi
{
    //Set whether this Title can update settings ("Allow Client to Post Player Statistics" Setting in PlayFab dashboard):
    self.TITLE_CAN_UPDATE_SETTINGS = true;
    
    [self testLoginOrRegister];
    
    int TEST_STAT_BASE = 10;
    NSString* TEST_STAT_NAME = @"str";
    
    int testStatExpected, testStatActual;
    XCTestExpectation *exp = [self expectationWithDescription:@"GetData"];
    
    //GetUserStatisticsRequest* request = [GetUserStatisticsRequest new];
    [[PlayFabClientAPI GetInstance] GetUserStatistics:^(GetUserStatisticsResult* result, NSObject* userData) {
                                            
                                            if([result.UserStatistics valueForKey:TEST_STAT_NAME]){
                                                self.testStatReturn = [result.UserStatistics valueForKey:TEST_STAT_NAME]; //[[UserDataRecord new] initWithDictionary:[result.Data valueForKey:TEST_DATA_KEY]];
                                            }
                                            else{
                                                self.testCounterReturn = 0;
                                            }
                                            NSLog(@"%@",result);
                                            [exp fulfill];
                                        }
                                        failure:^(PlayFabError *error, NSObject *userData) {
                                            //Request errored or failed to connect.
                                            XCTFail(@"GetUserDataRequest Failed.");
                                            self.stored_error = error;
                                            return;
                                        } withUserData:nil];
    
    
    [self waitForExpectationsWithTimeout:30 handler:^(NSError *error) {
        
        NSLog(@"first line");
    }];
    
    
    
    testStatExpected = (([self.testStatReturn intValue] + 1) % TEST_STAT_BASE) + TEST_STAT_BASE; // This test is about the expected value changing (incrementing through from TEST_STAT_BASE to TEST_STAT_BASE * 2 - 1)
    
    
    
    
    
    exp = [self expectationWithDescription:@"UpdateData"];
    
    UpdateUserStatisticsRequest* update_request = [UpdateUserStatisticsRequest new];
    update_request.UserStatistics = [NSMutableDictionary new];
    [update_request.UserStatistics setValue:[NSNumber numberWithInt:testStatExpected] forKey:TEST_STAT_NAME];
    [[PlayFabClientAPI GetInstance] UpdateUserStatistics:update_request
                                           success:^(UpdateUserStatisticsResult* result, NSObject* userData) {
                                               NSLog(@"%@",result);
                                               [exp fulfill];
                                           }
                                           failure:^(PlayFabError *error, NSObject *userData) {
                                               //Request errored or failed to connect.
                                               self.stored_error = error;
                                               [exp fulfill];
                                           } withUserData:nil];
    
    
    [self waitForExpectationsWithTimeout:30 handler:^(NSError *error) {
        
        NSLog(@"sec line");
    }];
    
    
    
    
    // Test update result - no data returned, so error or no error, based on Title settings
    if (!TITLE_CAN_UPDATE_SETTINGS)
    {
        return; // The rest of this tests changing settings - Which we verified we cannot do
    }
    
    
    
    
    exp = [self expectationWithDescription:@"GetData"];
    
    //GetUserStatisticsRequest* request = [GetUserStatisticsRequest new];
    [[PlayFabClientAPI GetInstance] GetUserStatistics:^(GetUserStatisticsResult* result, NSObject* userData) {
        
                                                if([result.UserStatistics valueForKey:TEST_STAT_NAME]){
                                                    self.testStatReturn = [result.UserStatistics valueForKey:TEST_STAT_NAME]; //[[UserDataRecord new] initWithDictionary:[result.Data valueForKey:TEST_DATA_KEY]];
                                                }
                                                else{
                                                    self.testCounterReturn = 0;
                                                }
                                                NSLog(@"%@",result);
                                                [exp fulfill];
                                            }
                                              failure:^(PlayFabError *error, NSObject *userData) {
                                                  //Request errored or failed to connect.
                                                  XCTFail(@"GetUserDataRequest Failed.");
                                                  self.stored_error = error;
                                                  return;
                                              } withUserData:nil];
    
    
    [self waitForExpectationsWithTimeout:30 handler:^(NSError *error) {
        
        NSLog(@"first line");
    }];

    
    
    testStatActual = [self.testStatReturn intValue];
    XCTAssertTrue(testStatExpected == testStatActual);
}



/// <summary>
/// CLIENT API
/// Test that AccountInfo can be requested
/// Parameter types tested: List of enum-as-strings converted to list of enums
/// </summary>
-(void) testAccountInfo
{
    [self testLoginOrRegister];
    
    GetAccountInfoRequest* request = [GetAccountInfoRequest new];
    request.PlayFabId = self.playFabID;
    
    
    XCTestExpectation *exp = [self expectationWithDescription:@"GetData"];
    
    
    [[PlayFabClientAPI GetInstance] GetAccountInfo:request
                                        success:^(GetAccountInfoResult* result, NSObject* userData) {
                                            
                                            if (result.AccountInfo == nil || result.AccountInfo.TitleInfo == nil){
                                                
                                            //|| result.AccountInfo.TitleInfo.Origination == nil
                                            //    || !Enum.IsDefined(UserOrigination, result.AccountInfo.TitleInfo.Origination.Value))
                                                
                                                //NOTE: Enum.IsDefined does not have an equivalent in Obj-C.
                                                
                                                XCTFail(@"Couldn't get TitleInfo.");
                                                return;
                                            }
                                            
                                            
                                            [exp fulfill];
                                        }
                                        failure:^(PlayFabError *error, NSObject *userData) {
                                            //Request errored or failed to connect.
                                            XCTFail(@"GetAccountInfo Failed.");
                                            self.stored_error = error;
                                        } withUserData:nil];
    
    
    
    [self waitForExpectationsWithTimeout:30 handler:^(NSError *error) {
        
    }];
    

}

//Test Disabled, CloudScript is changing.
/*
/// <summary>
/// CLIENT API
/// Test that CloudScript can be properly set up and invoked
-(void) testCloudScript
{
    [self testLoginOrRegister];
    
    XCTestExpectation *exp = [self expectationWithDescription:@"GetData"];
    if (![[PlayFabClientAPI GetInstance].logicServerURL length] > 0)
    {
        
        
        
        [[PlayFabClientAPI GetInstance] GetCloudScriptUrl:[GetCloudScriptUrlRequest new]
                                               success:^(GetCloudScriptUrlResult* result, NSObject* userData) {
                                                   
                                                   NSLog(@"CloudScript setup complete: %@", result.Url);
                                                   
                                                   [exp fulfill];
                                               }
                                               failure:^(PlayFabError *error, NSObject *userData) {
                                                   //Request errored or failed to connect.
                                                   XCTFail(@"GetCloudScriptUrl Failed.");
                                                   self.stored_error = error;
                                                   return;
                                               } withUserData:nil];
        
    }
    else{
        [exp fulfill];
    }
    
    [self waitForExpectationsWithTimeout:30 handler:^(NSError *error) {
        
    }];
    
    RunCloudScriptRequest *request = [RunCloudScriptRequest new];
    request.ActionId = @"helloWorld";
    
    
    exp = [self expectationWithDescription:@"GetData"];
    
    [[PlayFabClientAPI GetInstance] RunCloudScript:request
                                              success:^(RunCloudScriptResult* result, NSObject* userData) {
                                                  
                                                  NSString *received_message = [result.Results valueForKey:@"messageValue"];
                                                  NSString* test_string = [NSString stringWithFormat:@"Hello %@!", self.playFabID];
                                                  XCTAssertEqual(test_string, received_message);
                                                  
                                                  [exp fulfill];
                                              }
                                              failure:^(PlayFabError *error, NSObject *userData) {
                                                  //Request errored or failed to connect.
                                                  XCTFail(@"RunCloudScript Failed.");
                                                  self.stored_error = error;
                                                  return;
                                              } withUserData:nil];
    
    
    
    [self waitForExpectationsWithTimeout:30 handler:^(NSError *error) {
        
    }];
    
}
*/


@end
