#import "PlayFabMultiplayerAPI.h"
#import "PlayFabConnection.h"

#import <UIKit/UIKit.h>
#include <sys/sysctl.h>

#import "JAGPropertyConverter.h"


@implementation PlayFabMultiplayerAPI

+(NSString*) GetURL {
return [NSString stringWithFormat:@"https://%@%@", [PlayFabSettings.VerticalName length] != 0 ? PlayFabSettings.VerticalName : PlayFabSettings.TitleId, PlayFabSettings.ProductionEnvironmentURL];
}

static PlayFabClientAPI* PlayFabInstance;

+ (PlayFabClientAPI*) GetInstance {
if(PlayFabInstance == NULL) {
PlayFabInstance = [PlayFabClientAPI new];
}
return PlayFabInstance;
}

+ (NSString *)getModel {
size_t size;
sysctlbyname("hw.machine", NULL, &size, NULL, 0);
char *model = malloc(size);
sysctlbyname("hw.machine", model, &size, NULL, 0);
NSString *deviceModel = [NSString stringWithCString:model encoding:NSUTF8StringEncoding];
free(model);
return deviceModel;
}

-(void) CancelAllMatchmakingTicketsForPlayer:(MultiplayerCancelAllMatchmakingTicketsForPlayerRequest*)request success:(CancelAllMatchmakingTicketsForPlayerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCancelAllMatchmakingTicketsForPlayerRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCancelAllMatchmakingTicketsForPlayerResult *model = [[MultiplayerCancelAllMatchmakingTicketsForPlayerResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/CancelAllMatchmakingTicketsForPlayer"] body:jsonString authType:nil authKey:nil];
}
-(void) CancelAllServerBackfillTicketsForPlayer:(MultiplayerCancelAllServerBackfillTicketsForPlayerRequest*)request success:(CancelAllServerBackfillTicketsForPlayerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCancelAllServerBackfillTicketsForPlayerRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCancelAllServerBackfillTicketsForPlayerResult *model = [[MultiplayerCancelAllServerBackfillTicketsForPlayerResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/CancelAllServerBackfillTicketsForPlayer"] body:jsonString authType:nil authKey:nil];
}
-(void) CancelMatchmakingTicket:(MultiplayerCancelMatchmakingTicketRequest*)request success:(CancelMatchmakingTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCancelMatchmakingTicketRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCancelMatchmakingTicketResult *model = [[MultiplayerCancelMatchmakingTicketResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/CancelMatchmakingTicket"] body:jsonString authType:nil authKey:nil];
}
-(void) CancelServerBackfillTicket:(MultiplayerCancelServerBackfillTicketRequest*)request success:(CancelServerBackfillTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCancelServerBackfillTicketRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCancelServerBackfillTicketResult *model = [[MultiplayerCancelServerBackfillTicketResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/CancelServerBackfillTicket"] body:jsonString authType:nil authKey:nil];
}
-(void) CreateBuildAlias:(MultiplayerCreateBuildAliasRequest*)request success:(CreateBuildAliasCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCreateBuildAliasRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerBuildAliasDetailsResponse *model = [[MultiplayerBuildAliasDetailsResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/CreateBuildAlias"] body:jsonString authType:nil authKey:nil];
}
-(void) CreateBuildWithCustomContainer:(MultiplayerCreateBuildWithCustomContainerRequest*)request success:(CreateBuildWithCustomContainerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCreateBuildWithCustomContainerRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCreateBuildWithCustomContainerResponse *model = [[MultiplayerCreateBuildWithCustomContainerResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/CreateBuildWithCustomContainer"] body:jsonString authType:nil authKey:nil];
}
-(void) CreateBuildWithManagedContainer:(MultiplayerCreateBuildWithManagedContainerRequest*)request success:(CreateBuildWithManagedContainerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCreateBuildWithManagedContainerRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCreateBuildWithManagedContainerResponse *model = [[MultiplayerCreateBuildWithManagedContainerResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/CreateBuildWithManagedContainer"] body:jsonString authType:nil authKey:nil];
}
-(void) CreateBuildWithProcessBasedServer:(MultiplayerCreateBuildWithProcessBasedServerRequest*)request success:(CreateBuildWithProcessBasedServerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCreateBuildWithProcessBasedServerRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCreateBuildWithProcessBasedServerResponse *model = [[MultiplayerCreateBuildWithProcessBasedServerResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/CreateBuildWithProcessBasedServer"] body:jsonString authType:nil authKey:nil];
}
-(void) CreateLobby:(MultiplayerCreateLobbyRequest*)request success:(CreateLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCreateLobbyRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCreateLobbyResult *model = [[MultiplayerCreateLobbyResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/CreateLobby"] body:jsonString authType:nil authKey:nil];
}
-(void) CreateMatchmakingTicket:(MultiplayerCreateMatchmakingTicketRequest*)request success:(CreateMatchmakingTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCreateMatchmakingTicketRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCreateMatchmakingTicketResult *model = [[MultiplayerCreateMatchmakingTicketResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/CreateMatchmakingTicket"] body:jsonString authType:nil authKey:nil];
}
-(void) CreateRemoteUser:(MultiplayerCreateRemoteUserRequest*)request success:(CreateRemoteUserCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCreateRemoteUserRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCreateRemoteUserResponse *model = [[MultiplayerCreateRemoteUserResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/CreateRemoteUser"] body:jsonString authType:nil authKey:nil];
}
-(void) CreateServerBackfillTicket:(MultiplayerCreateServerBackfillTicketRequest*)request success:(CreateServerBackfillTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCreateServerBackfillTicketRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCreateServerBackfillTicketResult *model = [[MultiplayerCreateServerBackfillTicketResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/CreateServerBackfillTicket"] body:jsonString authType:nil authKey:nil];
}
-(void) CreateServerMatchmakingTicket:(MultiplayerCreateServerMatchmakingTicketRequest*)request success:(CreateServerMatchmakingTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCreateServerMatchmakingTicketRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCreateMatchmakingTicketResult *model = [[MultiplayerCreateMatchmakingTicketResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/CreateServerMatchmakingTicket"] body:jsonString authType:nil authKey:nil];
}
-(void) CreateTitleMultiplayerServersQuotaChange:(MultiplayerCreateTitleMultiplayerServersQuotaChangeRequest*)request success:(CreateTitleMultiplayerServersQuotaChangeCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerCreateTitleMultiplayerServersQuotaChangeRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerCreateTitleMultiplayerServersQuotaChangeResponse *model = [[MultiplayerCreateTitleMultiplayerServersQuotaChangeResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/CreateTitleMultiplayerServersQuotaChange"] body:jsonString authType:nil authKey:nil];
}
-(void) DeleteAsset:(MultiplayerDeleteAssetRequest*)request success:(DeleteAssetCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerDeleteAssetRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/DeleteAsset"] body:jsonString authType:nil authKey:nil];
}
-(void) DeleteBuild:(MultiplayerDeleteBuildRequest*)request success:(DeleteBuildCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerDeleteBuildRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/DeleteBuild"] body:jsonString authType:nil authKey:nil];
}
-(void) DeleteBuildAlias:(MultiplayerDeleteBuildAliasRequest*)request success:(DeleteBuildAliasCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerDeleteBuildAliasRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/DeleteBuildAlias"] body:jsonString authType:nil authKey:nil];
}
-(void) DeleteBuildRegion:(MultiplayerDeleteBuildRegionRequest*)request success:(DeleteBuildRegionCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerDeleteBuildRegionRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/DeleteBuildRegion"] body:jsonString authType:nil authKey:nil];
}
-(void) DeleteCertificate:(MultiplayerDeleteCertificateRequest*)request success:(DeleteCertificateCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerDeleteCertificateRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/DeleteCertificate"] body:jsonString authType:nil authKey:nil];
}
-(void) DeleteContainerImageRepository:(MultiplayerDeleteContainerImageRequest*)request success:(DeleteContainerImageRepositoryCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerDeleteContainerImageRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/DeleteContainerImageRepository"] body:jsonString authType:nil authKey:nil];
}
-(void) DeleteLobby:(MultiplayerDeleteLobbyRequest*)request success:(DeleteLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerDeleteLobbyRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerLobbyEmptyResult *model = [[MultiplayerLobbyEmptyResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/DeleteLobby"] body:jsonString authType:nil authKey:nil];
}
-(void) DeleteRemoteUser:(MultiplayerDeleteRemoteUserRequest*)request success:(DeleteRemoteUserCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerDeleteRemoteUserRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/DeleteRemoteUser"] body:jsonString authType:nil authKey:nil];
}
-(void) EnableMultiplayerServersForTitle:(MultiplayerEnableMultiplayerServersForTitleRequest*)request success:(EnableMultiplayerServersForTitleCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerEnableMultiplayerServersForTitleRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEnableMultiplayerServersForTitleResponse *model = [[MultiplayerEnableMultiplayerServersForTitleResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/EnableMultiplayerServersForTitle"] body:jsonString authType:nil authKey:nil];
}
-(void) FindFriendLobbies:(MultiplayerFindFriendLobbiesRequest*)request success:(FindFriendLobbiesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerFindFriendLobbiesRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerFindFriendLobbiesResult *model = [[MultiplayerFindFriendLobbiesResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/FindFriendLobbies"] body:jsonString authType:nil authKey:nil];
}
-(void) FindLobbies:(MultiplayerFindLobbiesRequest*)request success:(FindLobbiesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerFindLobbiesRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerFindLobbiesResult *model = [[MultiplayerFindLobbiesResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/FindLobbies"] body:jsonString authType:nil authKey:nil];
}
-(void) GetAssetDownloadUrl:(MultiplayerGetAssetDownloadUrlRequest*)request success:(GetAssetDownloadUrlCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetAssetDownloadUrlRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetAssetDownloadUrlResponse *model = [[MultiplayerGetAssetDownloadUrlResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/GetAssetDownloadUrl"] body:jsonString authType:nil authKey:nil];
}
-(void) GetAssetUploadUrl:(MultiplayerGetAssetUploadUrlRequest*)request success:(GetAssetUploadUrlCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetAssetUploadUrlRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetAssetUploadUrlResponse *model = [[MultiplayerGetAssetUploadUrlResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/GetAssetUploadUrl"] body:jsonString authType:nil authKey:nil];
}
-(void) GetBuild:(MultiplayerGetBuildRequest*)request success:(GetBuildCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetBuildRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetBuildResponse *model = [[MultiplayerGetBuildResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/GetBuild"] body:jsonString authType:nil authKey:nil];
}
-(void) GetBuildAlias:(MultiplayerGetBuildAliasRequest*)request success:(GetBuildAliasCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetBuildAliasRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerBuildAliasDetailsResponse *model = [[MultiplayerBuildAliasDetailsResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/GetBuildAlias"] body:jsonString authType:nil authKey:nil];
}
-(void) GetContainerRegistryCredentials:(MultiplayerGetContainerRegistryCredentialsRequest*)request success:(GetContainerRegistryCredentialsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetContainerRegistryCredentialsRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetContainerRegistryCredentialsResponse *model = [[MultiplayerGetContainerRegistryCredentialsResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/GetContainerRegistryCredentials"] body:jsonString authType:nil authKey:nil];
}
-(void) GetLobby:(MultiplayerGetLobbyRequest*)request success:(GetLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetLobbyRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetLobbyResult *model = [[MultiplayerGetLobbyResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/GetLobby"] body:jsonString authType:nil authKey:nil];
}
-(void) GetMatch:(MultiplayerGetMatchRequest*)request success:(GetMatchCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetMatchRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetMatchResult *model = [[MultiplayerGetMatchResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/GetMatch"] body:jsonString authType:nil authKey:nil];
}
-(void) GetMatchmakingTicket:(MultiplayerGetMatchmakingTicketRequest*)request success:(GetMatchmakingTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetMatchmakingTicketRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetMatchmakingTicketResult *model = [[MultiplayerGetMatchmakingTicketResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/GetMatchmakingTicket"] body:jsonString authType:nil authKey:nil];
}
-(void) GetMultiplayerServerDetails:(MultiplayerGetMultiplayerServerDetailsRequest*)request success:(GetMultiplayerServerDetailsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetMultiplayerServerDetailsRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetMultiplayerServerDetailsResponse *model = [[MultiplayerGetMultiplayerServerDetailsResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/GetMultiplayerServerDetails"] body:jsonString authType:nil authKey:nil];
}
-(void) GetMultiplayerServerLogs:(MultiplayerGetMultiplayerServerLogsRequest*)request success:(GetMultiplayerServerLogsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetMultiplayerServerLogsRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetMultiplayerServerLogsResponse *model = [[MultiplayerGetMultiplayerServerLogsResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/GetMultiplayerServerLogs"] body:jsonString authType:nil authKey:nil];
}
-(void) GetMultiplayerSessionLogsBySessionId:(MultiplayerGetMultiplayerSessionLogsBySessionIdRequest*)request success:(GetMultiplayerSessionLogsBySessionIdCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetMultiplayerSessionLogsBySessionIdRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetMultiplayerServerLogsResponse *model = [[MultiplayerGetMultiplayerServerLogsResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/GetMultiplayerSessionLogsBySessionId"] body:jsonString authType:nil authKey:nil];
}
-(void) GetQueueStatistics:(MultiplayerGetQueueStatisticsRequest*)request success:(GetQueueStatisticsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetQueueStatisticsRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetQueueStatisticsResult *model = [[MultiplayerGetQueueStatisticsResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/GetQueueStatistics"] body:jsonString authType:nil authKey:nil];
}
-(void) GetRemoteLoginEndpoint:(MultiplayerGetRemoteLoginEndpointRequest*)request success:(GetRemoteLoginEndpointCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetRemoteLoginEndpointRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetRemoteLoginEndpointResponse *model = [[MultiplayerGetRemoteLoginEndpointResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/GetRemoteLoginEndpoint"] body:jsonString authType:nil authKey:nil];
}
-(void) GetServerBackfillTicket:(MultiplayerGetServerBackfillTicketRequest*)request success:(GetServerBackfillTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetServerBackfillTicketRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetServerBackfillTicketResult *model = [[MultiplayerGetServerBackfillTicketResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/GetServerBackfillTicket"] body:jsonString authType:nil authKey:nil];
}
-(void) GetTitleEnabledForMultiplayerServersStatus:(MultiplayerGetTitleEnabledForMultiplayerServersStatusRequest*)request success:(GetTitleEnabledForMultiplayerServersStatusCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetTitleEnabledForMultiplayerServersStatusRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetTitleEnabledForMultiplayerServersStatusResponse *model = [[MultiplayerGetTitleEnabledForMultiplayerServersStatusResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/GetTitleEnabledForMultiplayerServersStatus"] body:jsonString authType:nil authKey:nil];
}
-(void) GetTitleMultiplayerServersQuotaChange:(MultiplayerGetTitleMultiplayerServersQuotaChangeRequest*)request success:(GetTitleMultiplayerServersQuotaChangeCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetTitleMultiplayerServersQuotaChangeRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetTitleMultiplayerServersQuotaChangeResponse *model = [[MultiplayerGetTitleMultiplayerServersQuotaChangeResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/GetTitleMultiplayerServersQuotaChange"] body:jsonString authType:nil authKey:nil];
}
-(void) GetTitleMultiplayerServersQuotas:(MultiplayerGetTitleMultiplayerServersQuotasRequest*)request success:(GetTitleMultiplayerServersQuotasCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerGetTitleMultiplayerServersQuotasRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerGetTitleMultiplayerServersQuotasResponse *model = [[MultiplayerGetTitleMultiplayerServersQuotasResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/GetTitleMultiplayerServersQuotas"] body:jsonString authType:nil authKey:nil];
}
-(void) InviteToLobby:(MultiplayerInviteToLobbyRequest*)request success:(InviteToLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerInviteToLobbyRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerLobbyEmptyResult *model = [[MultiplayerLobbyEmptyResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/InviteToLobby"] body:jsonString authType:nil authKey:nil];
}
-(void) JoinArrangedLobby:(MultiplayerJoinArrangedLobbyRequest*)request success:(JoinArrangedLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerJoinArrangedLobbyRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerJoinLobbyResult *model = [[MultiplayerJoinLobbyResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/JoinArrangedLobby"] body:jsonString authType:nil authKey:nil];
}
-(void) JoinLobby:(MultiplayerJoinLobbyRequest*)request success:(JoinLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerJoinLobbyRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerJoinLobbyResult *model = [[MultiplayerJoinLobbyResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/JoinLobby"] body:jsonString authType:nil authKey:nil];
}
-(void) JoinMatchmakingTicket:(MultiplayerJoinMatchmakingTicketRequest*)request success:(JoinMatchmakingTicketCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerJoinMatchmakingTicketRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerJoinMatchmakingTicketResult *model = [[MultiplayerJoinMatchmakingTicketResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/JoinMatchmakingTicket"] body:jsonString authType:nil authKey:nil];
}
-(void) LeaveLobby:(MultiplayerLeaveLobbyRequest*)request success:(LeaveLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerLeaveLobbyRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerLobbyEmptyResult *model = [[MultiplayerLobbyEmptyResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/LeaveLobby"] body:jsonString authType:nil authKey:nil];
}
-(void) ListArchivedMultiplayerServers:(MultiplayerListMultiplayerServersRequest*)request success:(ListArchivedMultiplayerServersCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListMultiplayerServersRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListMultiplayerServersResponse *model = [[MultiplayerListMultiplayerServersResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ListArchivedMultiplayerServers"] body:jsonString authType:nil authKey:nil];
}
-(void) ListAssetSummaries:(MultiplayerListAssetSummariesRequest*)request success:(ListAssetSummariesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListAssetSummariesRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListAssetSummariesResponse *model = [[MultiplayerListAssetSummariesResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ListAssetSummaries"] body:jsonString authType:nil authKey:nil];
}
-(void) ListBuildAliases:(MultiplayerListBuildAliasesRequest*)request success:(ListBuildAliasesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListBuildAliasesRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListBuildAliasesResponse *model = [[MultiplayerListBuildAliasesResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ListBuildAliases"] body:jsonString authType:nil authKey:nil];
}
-(void) ListBuildSummariesV2:(MultiplayerListBuildSummariesRequest*)request success:(ListBuildSummariesV2Callback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListBuildSummariesRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListBuildSummariesResponse *model = [[MultiplayerListBuildSummariesResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ListBuildSummariesV2"] body:jsonString authType:nil authKey:nil];
}
-(void) ListCertificateSummaries:(MultiplayerListCertificateSummariesRequest*)request success:(ListCertificateSummariesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListCertificateSummariesRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListCertificateSummariesResponse *model = [[MultiplayerListCertificateSummariesResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ListCertificateSummaries"] body:jsonString authType:nil authKey:nil];
}
-(void) ListContainerImages:(MultiplayerListContainerImagesRequest*)request success:(ListContainerImagesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListContainerImagesRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListContainerImagesResponse *model = [[MultiplayerListContainerImagesResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ListContainerImages"] body:jsonString authType:nil authKey:nil];
}
-(void) ListContainerImageTags:(MultiplayerListContainerImageTagsRequest*)request success:(ListContainerImageTagsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListContainerImageTagsRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListContainerImageTagsResponse *model = [[MultiplayerListContainerImageTagsResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ListContainerImageTags"] body:jsonString authType:nil authKey:nil];
}
-(void) ListMatchmakingTicketsForPlayer:(MultiplayerListMatchmakingTicketsForPlayerRequest*)request success:(ListMatchmakingTicketsForPlayerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListMatchmakingTicketsForPlayerRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListMatchmakingTicketsForPlayerResult *model = [[MultiplayerListMatchmakingTicketsForPlayerResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/ListMatchmakingTicketsForPlayer"] body:jsonString authType:nil authKey:nil];
}
-(void) ListMultiplayerServers:(MultiplayerListMultiplayerServersRequest*)request success:(ListMultiplayerServersCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListMultiplayerServersRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListMultiplayerServersResponse *model = [[MultiplayerListMultiplayerServersResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ListMultiplayerServers"] body:jsonString authType:nil authKey:nil];
}
-(void) ListPartyQosServers:(MultiplayerListPartyQosServersRequest*)request success:(ListPartyQosServersCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListPartyQosServersRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListPartyQosServersResponse *model = [[MultiplayerListPartyQosServersResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ListPartyQosServers"] body:jsonString authType:nil authKey:nil];
}
-(void) ListQosServersForTitle:(MultiplayerListQosServersForTitleRequest*)request success:(ListQosServersForTitleCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListQosServersForTitleRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListQosServersForTitleResponse *model = [[MultiplayerListQosServersForTitleResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ListQosServersForTitle"] body:jsonString authType:nil authKey:nil];
}
-(void) ListServerBackfillTicketsForPlayer:(MultiplayerListServerBackfillTicketsForPlayerRequest*)request success:(ListServerBackfillTicketsForPlayerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListServerBackfillTicketsForPlayerRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListServerBackfillTicketsForPlayerResult *model = [[MultiplayerListServerBackfillTicketsForPlayerResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Match/ListServerBackfillTicketsForPlayer"] body:jsonString authType:nil authKey:nil];
}
-(void) ListTitleMultiplayerServersQuotaChanges:(MultiplayerListTitleMultiplayerServersQuotaChangesRequest*)request success:(ListTitleMultiplayerServersQuotaChangesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListTitleMultiplayerServersQuotaChangesRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListTitleMultiplayerServersQuotaChangesResponse *model = [[MultiplayerListTitleMultiplayerServersQuotaChangesResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ListTitleMultiplayerServersQuotaChanges"] body:jsonString authType:nil authKey:nil];
}
-(void) ListVirtualMachineSummaries:(MultiplayerListVirtualMachineSummariesRequest*)request success:(ListVirtualMachineSummariesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerListVirtualMachineSummariesRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerListVirtualMachineSummariesResponse *model = [[MultiplayerListVirtualMachineSummariesResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ListVirtualMachineSummaries"] body:jsonString authType:nil authKey:nil];
}
-(void) RemoveMember:(MultiplayerRemoveMemberFromLobbyRequest*)request success:(RemoveMemberCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerRemoveMemberFromLobbyRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerLobbyEmptyResult *model = [[MultiplayerLobbyEmptyResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/RemoveMember"] body:jsonString authType:nil authKey:nil];
}
-(void) RequestMultiplayerServer:(MultiplayerRequestMultiplayerServerRequest*)request success:(RequestMultiplayerServerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerRequestMultiplayerServerRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerRequestMultiplayerServerResponse *model = [[MultiplayerRequestMultiplayerServerResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/RequestMultiplayerServer"] body:jsonString authType:nil authKey:nil];
}
-(void) RolloverContainerRegistryCredentials:(MultiplayerRolloverContainerRegistryCredentialsRequest*)request success:(RolloverContainerRegistryCredentialsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerRolloverContainerRegistryCredentialsRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerRolloverContainerRegistryCredentialsResponse *model = [[MultiplayerRolloverContainerRegistryCredentialsResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/RolloverContainerRegistryCredentials"] body:jsonString authType:nil authKey:nil];
}
-(void) ShutdownMultiplayerServer:(MultiplayerShutdownMultiplayerServerRequest*)request success:(ShutdownMultiplayerServerCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerShutdownMultiplayerServerRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/ShutdownMultiplayerServer"] body:jsonString authType:nil authKey:nil];
}
-(void) SubscribeToLobbyResource:(MultiplayerSubscribeToLobbyResourceRequest*)request success:(SubscribeToLobbyResourceCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerSubscribeToLobbyResourceRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerSubscribeToLobbyResourceResult *model = [[MultiplayerSubscribeToLobbyResourceResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/SubscribeToLobbyResource"] body:jsonString authType:nil authKey:nil];
}
-(void) UnsubscribeFromLobbyResource:(MultiplayerUnsubscribeFromLobbyResourceRequest*)request success:(UnsubscribeFromLobbyResourceCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerUnsubscribeFromLobbyResourceRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerLobbyEmptyResult *model = [[MultiplayerLobbyEmptyResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/UnsubscribeFromLobbyResource"] body:jsonString authType:nil authKey:nil];
}
-(void) UntagContainerImage:(MultiplayerUntagContainerImageRequest*)request success:(UntagContainerImageCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerUntagContainerImageRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/UntagContainerImage"] body:jsonString authType:nil authKey:nil];
}
-(void) UpdateBuildAlias:(MultiplayerUpdateBuildAliasRequest*)request success:(UpdateBuildAliasCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerUpdateBuildAliasRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerBuildAliasDetailsResponse *model = [[MultiplayerBuildAliasDetailsResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/UpdateBuildAlias"] body:jsonString authType:nil authKey:nil];
}
-(void) UpdateBuildName:(MultiplayerUpdateBuildNameRequest*)request success:(UpdateBuildNameCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerUpdateBuildNameRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/UpdateBuildName"] body:jsonString authType:nil authKey:nil];
}
-(void) UpdateBuildRegion:(MultiplayerUpdateBuildRegionRequest*)request success:(UpdateBuildRegionCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerUpdateBuildRegionRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/UpdateBuildRegion"] body:jsonString authType:nil authKey:nil];
}
-(void) UpdateBuildRegions:(MultiplayerUpdateBuildRegionsRequest*)request success:(UpdateBuildRegionsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerUpdateBuildRegionsRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/UpdateBuildRegions"] body:jsonString authType:nil authKey:nil];
}
-(void) UpdateLobby:(MultiplayerUpdateLobbyRequest*)request success:(UpdateLobbyCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerUpdateLobbyRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerLobbyEmptyResult *model = [[MultiplayerLobbyEmptyResult new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/Lobby/UpdateLobby"] body:jsonString authType:nil authKey:nil];
}
-(void) UploadCertificate:(MultiplayerUploadCertificateRequest*)request success:(UploadCertificateCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData
{
    
    
    NSString *jsonString = [request JSONStringWithClass:[MultiplayerUploadCertificateRequest class]];
    
    PlayFabConnection * connection = [PlayFabConnection new];//[[MyConnection alloc]initWithRequest:req];
    [connection setCompletionBlock:^(id obj, NSError *err) {
        NSData * data = obj;
        if (!err) {
            //NSLog(@"connection success response: %@",(NSString*)data);
            NSError *e = nil;
            NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options:0 error: &e];

            NSString* playfab_error = [JSON valueForKey:@"error"];
            if (playfab_error != nil) {
                //if there was an "error" object in the JSON:
                PlayFabError *playfab_error_object = [[PlayFabError new] initWithDictionary:JSON];
                errorCallback (playfab_error_object, userData);
            } else {
                NSDictionary *class_data = [JSON valueForKey:@"data"];
                MultiplayerEmptyResponse *model = [[MultiplayerEmptyResponse new] initWithDictionary:class_data];
                
                callback (model, userData);
            }
        } else { //Connection Error:
            NSError *e = nil;
            NSLog(@"connection error response: %@",data);
            PlayFabError *model;
            if (data != nil) {
                NSDictionary *JSON = [NSJSONSerialization JSONObjectWithData:data options: NSJSONReadingMutableContainers error: &e];
                JAGPropertyConverter *converter = [JAGPropertyConverter new];
                model = [converter composeModelFromObject:JSON];
            } else {
                model = [PlayFabError new];
                model.error = @"unknown, data empty.";
            }
        errorCallback (model, userData);
        }
    }];

    [connection postURL:[NSString stringWithFormat:@"%@%@",[PlayFabClientAPI GetURL],@"/MultiplayerServer/UploadCertificate"] body:jsonString authType:nil authKey:nil];
}

@end
