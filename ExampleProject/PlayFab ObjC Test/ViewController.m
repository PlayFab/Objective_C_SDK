//
//  ViewController.m
//  PlayFab ObjC Test
//
//  Created by William Burgers on 2/23/16.
//  Copyright © 2016 PlayFab, Inc. All rights reserved.
//

#import "ViewController.h"

#import "PlayFabSDK.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)loginButton:(id)sender {
    self.login_button.hidden = true; //Hide the login button after clicking
    
    //EXAMPLE: Login with custom id request, creates a new account if no existing one:
    LoginWithIOSDeviceIDRequest* login_request = [LoginWithIOSDeviceIDRequest new];
    login_request.CreateAccount = true;
    
    
    [[PlayFabClientAPI GetInstance] LoginWithIOSDeviceID:login_request
                                              success:^(LoginResult* result, NSObject* userData) {
                                                  //Request succeeded, and passed us a result.
                                                  NSLog(@"success, PlayFabId: %@",result.PlayFabId);
                                                  self.play_fab_id = result.PlayFabId; //Store the players PlayFabId
                                                  self.logged_in_view.hidden = false; //show the 'logged in view'
                                              }
                                              failure:^(PlayFabError *error, NSObject *userData) {
                                                  //Request errored or failed to connect.
                                                  NSLog(@"error %@",error.errorMessage);
                                                  self.login_button.hidden = false; //unhide the login button
                                              } withUserData:nil];
    
    //EXAMPLE: Login with email and password
    /*
    LoginWithEmailAddressRequest* request = [LoginWithEmailAddressRequest new];
    
    request.Email = @"email";
    request.Password = @"password";
    
    
    [[PlayFabClientAPI GetInstance] LoginWithEmailAddress:request
                                                  success:^(LoginResult* result, NSObject* userData) {
                                                      //XCTAssert(@"Login succeeded with incorrect password!");
                                                      //Request succeeded, and passed us a result.
                                                      NSLog(@"success, title data: %@",result.PlayFabId);
                                                  }
                                                  failure:^(PlayFabError *error, NSObject *userData) {
                                                      //Request errored or failed to connect.
                                                      
                                                      NSLog(@"error %@",error.errorMessage);
                                                  } withUserData:nil];*/
}


-(IBAction)getAccountInfoButton:(id)sender {
    
    GetAccountInfoRequest* account_info_request = [GetAccountInfoRequest new];
    account_info_request.PlayFabId = self.play_fab_id;
    
    [[PlayFabClientAPI GetInstance] GetAccountInfo:account_info_request
                                              success:^(GetAccountInfoResult* result, NSObject* userData) {
                                                  //Request succeeded, and passed us a result.
                                                  UserAccountInfo* user_account_info = result.AccountInfo;
                                                  
                                                  NSLog(@"success, user_account_info: %@",user_account_info.Username);
                                                  NSLog(@"success, PlayFabId: %@",user_account_info.PlayFabId);
                                              }
                                              failure:^(PlayFabError *error, NSObject *userData) {
                                                  //Request errored or failed to connect.
                                                  NSLog(@"error %@",error.description);
                                              } withUserData:nil];
}


-(IBAction)getCatalogItemsButton:(id)sender {
    
    GetCatalogItemsRequest* catalog_items_request = [GetCatalogItemsRequest new];
    catalog_items_request.CatalogVersion = @"Cat5";
    
    [[PlayFabClientAPI GetInstance] GetCatalogItems:catalog_items_request
                                           success:^(GetCatalogItemsResult* result, NSObject* userData) {
                                               //Request succeeded, and passed us a result.
                                               NSLog(@"success, catalog: %@",result.Catalog);
                                           }
                                           failure:^(PlayFabError *error, NSObject *userData) {
                                               //Request errored or failed to connect.
                                               NSLog(@"error %@",error.description);
                                           } withUserData:nil];
}


-(IBAction)getStoreItemsButton:(id)sender {
    
    GetStoreItemsRequest* store_items_request = [GetStoreItemsRequest new];
    store_items_request.StoreId = @"Store1";
    store_items_request.CatalogVersion = @"Cat5";
    
    [[PlayFabClientAPI GetInstance] GetStoreItems:store_items_request
                                            success:^(GetStoreItemsResult* result, NSObject* userData) {
                                                //Request succeeded, and passed us a result.
                                                NSLog(@"success, store: %@",result.Store);
                                            }
                                            failure:^(PlayFabError *error, NSObject *userData) {
                                                //Request errored or failed to connect.
                                                NSLog(@"error %@",error.description);
                                            } withUserData:nil];
}

-(IBAction)getTitleDataButton:(id)sender {
    
    GetTitleDataRequest* title_data_request = [GetTitleDataRequest new];
    NSArray* keys = [NSArray arrayWithObjects:@"Key1", @"Key2", nil];
    title_data_request.Keys = keys;
    
    [[PlayFabClientAPI GetInstance] GetTitleData:title_data_request
                                          success:^(GetTitleDataResult* result, NSObject* userData) {
                                              //Request succeeded, and passed us a result.
                                              NSLog(@"success, title data: %@",result.Data);
                                          }
                                          failure:^(PlayFabError *error, NSObject *userData) {
                                              //Request errored or failed to connect.
                                              NSLog(@"error %@",error.description);
                                          } withUserData:nil];
}



@end
