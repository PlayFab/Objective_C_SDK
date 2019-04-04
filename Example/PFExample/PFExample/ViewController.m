//
//  ViewController.m
//  PFExample
//
//  Created by Todd Bello on 4/4/19.
//  Copyright © 2019 PlayFab. All rights reserved.
//

#import "ViewController.h"

#import "PlayFabSDK/PlayFabClientDataModels.h"
#import "PlayFabSDK/PlayFabClientAPI.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    //EXAMPLE: Login with custom id request:
    
    //Build the Request object:
    ClientLoginWithCustomIDRequest* login_request = [ClientLoginWithCustomIDRequest new];
    login_request.CustomId = [[[UIDevice currentDevice] identifierForVendor] UUIDString]; //use the identifier for vendor as our custom ID.
    login_request.CreateAccount = true; //creates a new account if no existing one
    
    //Make each call to [PlayFabClientAPI GetInstance], the first time you do this, an instance will be created and then used.
    [[PlayFabClientAPI GetInstance] LoginWithCustomID:login_request
     
                                              success:^(ClientLoginResult* result, NSObject* userData) {
                                                  //This block will run when we receive successful response, inspect the result class for pertinent info.
                                                  NSLog(@"error %@",result.PlayFabId);
                                              }
     
                                              failure:^(PlayFabError *error, NSObject *userData) {
                                                  //Request errored or failed to connect, inspect the PlayFabError class for pertinent info.
                                                  NSLog(@"error %@",error.description);
                                              } withUserData:nil];

}


@end
