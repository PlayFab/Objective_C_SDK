# Objective-C SDK README

## 1. Archived Repo

This repo is archived and will be receiving no additional updates. For new games shipping on Apple devices, we recommend reviewing the options here: https://learn.microsoft.com/gaming/playfab/sdks/platforms/ios.

## 2. Usage Instructions:

There are two ways to get started:
  1. Start with and add to our [example implemnetation project](/Example/)
  2. Import [our SDK](/PlayFabSDK) into an existing XCode project


## 3. PlayFab Configuration:

Set your PlayFab TitleId in PlayFabSettings.m, on the line:
```Objective-C
  static NSString * TitleId = @"XXXX";
```


## 4. Making an API request and receiving the response:

```Objective-C
//EXAMPLE: Login with custom id request:
//Build the Request object:
  ClientLoginWithCustomIDRequest* login_request = [ClientLoginWithCustomIDRequest new];
  login_request.CustomId = [[[UIDevice currentDevice] identifierForVendor] UUIDString]; //use the identifier for vendor as our custom ID.
  login_request.CreateAccount = true; //creates a new account if no existing one
    
//Make each call to [PlayFabClientAPI GetInstance], the first time you do this, an instance will be created and then used.
  [[PlayFabClientAPI GetInstance] LoginWithCustomID:login_request
      
      success:^(LoginResult* result, NSObject* userData) {
        //This block will run when we receive successful response, inspect the result class for pertinent info.
        NSLog(@"error %@",result.PlayFabId);
      }
      failure:^(PlayFabError *error, NSObject *userData) {
        //Request errored or failed to connect, inspect the PlayFabError class for pertinent info.
        NSLog(@"error %@",error.description);
      } withUserData:nil];
```


## 5. Copyright and Licensing Information:

  Apache License -- 
  Version 2.0, January 2004
  http://www.apache.org/licenses/

  Full details available within the LICENSE file.
