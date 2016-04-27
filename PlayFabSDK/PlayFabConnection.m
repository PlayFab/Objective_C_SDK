
#import "PlayFabConnection.h"
#import "PlayFabVersion.h"

static NSMutableArray *sharedConnectionList = nil;

@implementation PlayFabConnection
@synthesize request,completionBlock,internalConnection;


-(void)postURL:(NSString*)url body:(NSString*)body authType:(NSString*)authType authKey:(NSString*)authKey
{
    NSLog(@"postURL");
    
    NSURL *sRequestURL = [NSURL URLWithString:url];
    
    NSMutableURLRequest *myRequest = [NSMutableURLRequest requestWithURL:sRequestURL];
    NSString *sMessageLength = [NSString stringWithFormat:@"%d", (int)[body length]];
    
    [myRequest addValue: @"application/json" forHTTPHeaderField:@"Content-Type"];
    [myRequest addValue: sMessageLength forHTTPHeaderField:@"Content-Length"];
    [myRequest addValue: PlayFabVersionString forHTTPHeaderField:@"X-PlayFabSDK"];
    if ([authType length] != 0)
    {
        [myRequest addValue: authKey forHTTPHeaderField:authType];
    }
    [myRequest setHTTPMethod:@"POST"];
    [myRequest setHTTPBody: [body dataUsingEncoding:NSUTF8StringEncoding]];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration ephemeralSessionConfiguration]; // don't persist
        NSURLSession *defaultSession = [NSURLSession sessionWithConfiguration: sessionConfiguration delegate: nil delegateQueue: [NSOperationQueue mainQueue]];

        NSURLSessionDataTask * dataTask =[defaultSession dataTaskWithRequest:myRequest
                                                           completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
//                                                               NSLog(@"Response:%@ %@\n", response, error);
                                                               if(error == nil)
                                                               {
//                                                                   NSString * text = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
//                                                                   NSLog(@"Data = %@",text);
                                                                   if([self completionBlock])
                                                                       [self completionBlock](data,nil);
                                                               }
                                                               else
                                                               {
                                                                   if([self completionBlock])
                                                                       [self completionBlock](nil,error);
                                                               }
                                                               
                                                           }];
        [dataTask resume];
    });
}

@end