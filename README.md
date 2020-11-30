# Objective-C SDK README

## 1. Community Support

The internal team that owned this SDK will no longer be making additional changes. Any customers that wish to develop with this SDK can use it as-is, but without support. We are seeking community partners who would be willing to take ownership of this SDK and opt-in for ownership and further maintenance. Please fork this repo, visit our forums, and post your intent there, with the new repo location. From there other customers can find that post and find your repo.

Please follow the Apache 2 license guidelines for reproduction and modification, and document that Microsoft PlayFab is the original creator.

Thank you for your support and happy coding.


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
