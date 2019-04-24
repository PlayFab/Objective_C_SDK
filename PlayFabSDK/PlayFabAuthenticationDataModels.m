#import "PlayFabAuthenticationDataModels.h"


@implementation AuthenticationActivateAPIKeyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.APIKeyId = [properties valueForKey:@"APIKeyId"];
    
    self.Entity = [[AuthenticationEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation AuthenticationActivateAPIKeyResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation AuthenticationCreateAPIKeyDetails


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Active = [[properties valueForKey:@"Active"] boolValue];
    
    self.APIKeyId = [properties valueForKey:@"APIKeyId"];
    
    self.APIKeySecret = [properties valueForKey:@"APIKeySecret"];
    
    self.Created = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Created"]];
    

    return self;
}
@end
@implementation AuthenticationCreateAPIKeyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[AuthenticationEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation AuthenticationCreateAPIKeyResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[AuthenticationEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.Key = [[AuthenticationCreateAPIKeyDetails new] initWithDictionary:[properties objectForKey:@"Key"]];
    

    return self;
}
@end
@implementation AuthenticationDeactivateAPIKeyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.APIKeyId = [properties valueForKey:@"APIKeyId"];
    
    self.Entity = [[AuthenticationEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation AuthenticationDeactivateAPIKeyResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation AuthenticationDeleteAPIKeyRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.APIKeyId = [properties valueForKey:@"APIKeyId"];
    
    self.Entity = [[AuthenticationEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation AuthenticationDeleteAPIKeyResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation AuthenticationEntityKey


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Type = [properties valueForKey:@"Type"];
    

    return self;
}
@end
@implementation AuthenticationGetAPIKeyDetails


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Active = [[properties valueForKey:@"Active"] boolValue];
    
    self.APIKeyId = [properties valueForKey:@"APIKeyId"];
    
    self.Created = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"Created"]];
    

    return self;
}
@end
@implementation AuthenticationGetAPIKeysRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[AuthenticationEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation AuthenticationGetAPIKeysResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[AuthenticationEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"Keys"]){
    NSArray* member_list = [properties objectForKey:@"Keys"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[AuthenticationGetAPIKeyDetails new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Keys = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation AuthenticationGetEntityTokenRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[AuthenticationEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation AuthenticationGetEntityTokenResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[AuthenticationEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.EntityToken = [properties valueForKey:@"EntityToken"];
    
    self.TokenExpiration = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"TokenExpiration"]];
    

    return self;
}
@end
