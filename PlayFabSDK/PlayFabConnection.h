#import <Foundation/Foundation.h>

@interface PlayFabConnection : NSObject {
}

@property (nonatomic,copy)void (^completionBlock) (id obj, NSError * err);

-(void)postURL:(NSString*)url body:(NSString*)body authType:(NSString*)authType authKey:(NSString*)authKey;

@end
