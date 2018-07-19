
#import "PlayFabConnection.h"
#import "PlayFabVersion.h"

static NSMutableArray *sharedConnectionList = nil;

@implementation PlayFabConnection
@synthesize completionBlock;


-(void)postURL:(NSString*)url body:(NSString*)body authType:(NSString*)authType authKey:(NSString*)authKey
{
    NSLog(@"postURL");
    
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSMutableDictionary * additionalHeaders = [[NSMutableDictionary alloc] init];
    additionalHeaders[@"Content-Type"] = @"application/json";
    additionalHeaders[@"X-PlayFabSDK"] = versionString;
    if ([authType length] != 0)
    {
        additionalHeaders[authType] = authKey;
    }
    sessionConfiguration.HTTPAdditionalHeaders = additionalHeaders;
     
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration];
    NSURL *sRequestURL = [NSURL URLWithString:url];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:sRequestURL];
    request.HTTPBody = [body dataUsingEncoding:NSUTF8StringEncoding];
    request.HTTPMethod = @"POST";
    NSURLSessionDataTask *postDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            if([self completionBlock])
                [self completionBlock](nil,error);
            
            [sharedConnectionList removeObject:self];
        }
        
        else {
            if([self completionBlock])
                [self completionBlock](data,nil);
            
            [sharedConnectionList removeObject:self];
        }
    }];
    
    if(!sharedConnectionList)
        sharedConnectionList = [[NSMutableArray alloc] init];
    [sharedConnectionList addObject:self];
    
    [postDataTask resume];    
}

@end
