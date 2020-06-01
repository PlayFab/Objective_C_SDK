# PlayFab SDK for Objective-C Beta


## 1. Overview:

This is our Objective-C SDK for native OSX & iOS development. This SKD is currently in beta, so please let us know if you run into any issues. 

Happy Developing!


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


## 5. Other Notes:

IDFA/advertisingIdentifier logic is present but has not been properly tested.
Is off by default, only available if you explicitly add USE_IDFA=1 to Target > Build Settings > Preprocessor Macros.

testTitleData.json is present in project but must be changed to valid data for any Unit Tests to work.


## 6. Contact Us & Troubleshooting
We love to hear from our developer community! 
Do you have ideas on how we can make our products and services better? 

Our Developer Success Team can assist with answering any questions as well as process any feedback you have about PlayFab services.

[Forums, Support and Knowledge Base](https://community.playfab.com/index.html)


## 7. Copyright and Licensing Information:

  Apache License -- 
  Version 2.0, January 2004
  http://www.apache.org/licenses/
  Full details available within the LICENSE file.

