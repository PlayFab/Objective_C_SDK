#import "PlayFabDataDataModels.h"


@implementation AbortFileUploadsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"FileNames"]){
    NSArray* member_list = [properties objectForKey:@"FileNames"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.FileNames = [mutable_storage copy];
}

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation AbortFileUploadsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation DeleteFilesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"FileNames"]){
    NSArray* member_list = [properties objectForKey:@"FileNames"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.FileNames = [mutable_storage copy];
}

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation DeleteFilesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation EntityKey


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Type = (EntityTypes)[properties valueForKey:@"Type"];
    
    self.TypeString = [properties valueForKey:@"TypeString"];
    

    return self;
}
@end
@implementation FinalizeFileUploadsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"FileNames"]){
    NSArray* member_list = [properties objectForKey:@"FileNames"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.FileNames = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation FinalizeFileUploadsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[GetFileMetadata new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation GetFileMetadata


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Checksum = [properties valueForKey:@"Checksum"];
    
    self.DownloadUrl = [properties valueForKey:@"DownloadUrl"];
    
    self.FileName = [properties valueForKey:@"FileName"];
    
    self.LastModified = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"LastModified"]];
    
    self.Size = [properties valueForKey:@"Size"];
    

    return self;
}
@end
@implementation GetFilesRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation GetFilesResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"Metadata"]){
    NSDictionary* member_list = [properties objectForKey:@"Metadata"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[GetFileMetadata new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Metadata = [mutable_storage copy];
}

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation GetObjectsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.EscapeObject = [[properties valueForKey:@"EscapeObject"] boolValue];
    

    return self;
}
@end
@implementation GetObjectsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"Objects"]){
    NSDictionary* member_list = [properties objectForKey:@"Objects"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[ObjectResult new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.Objects = [mutable_storage copy];
}

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation InitiateFileUploadMetadata


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.FileName = [properties valueForKey:@"FileName"];
    
    self.UploadUrl = [properties valueForKey:@"UploadUrl"];
    

    return self;
}
@end
@implementation InitiateFileUploadsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    if ([properties objectForKey:@"FileNames"]){
    NSArray* member_list = [properties objectForKey:@"FileNames"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.FileNames = [mutable_storage copy];
}

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    

    return self;
}
@end
@implementation InitiateFileUploadsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    
    if ([properties objectForKey:@"UploadDetails"]){
    NSArray* member_list = [properties objectForKey:@"UploadDetails"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[InitiateFileUploadMetadata new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.UploadDetails = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ObjectResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DataObject = [properties valueForKey:@"DataObject"];
    
    self.EscapedDataObject = [properties valueForKey:@"EscapedDataObject"];
    
    self.ObjectName = [properties valueForKey:@"ObjectName"];
    

    return self;
}
@end
@implementation SetObject


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DataObject = [properties valueForKey:@"DataObject"];
    
    self.DeleteObject = [[properties valueForKey:@"DeleteObject"] boolValue];
    
    self.EscapedDataObject = [properties valueForKey:@"EscapedDataObject"];
    
    self.ObjectName = [properties valueForKey:@"ObjectName"];
    

    return self;
}
@end
@implementation SetObjectInfo


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ObjectName = [properties valueForKey:@"ObjectName"];
    
    self.OperationReason = [properties valueForKey:@"OperationReason"];
    
    self.SetResult = (OperationTypes)[properties valueForKey:@"SetResult"];
    

    return self;
}
@end
@implementation SetObjectsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[EntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    
    self.ExpectedProfileVersion = [properties valueForKey:@"ExpectedProfileVersion"];
    
    if ([properties objectForKey:@"Objects"]){
    NSArray* member_list = [properties objectForKey:@"Objects"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[SetObject new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Objects = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation SetObjectsResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ProfileVersion = [properties valueForKey:@"ProfileVersion"];
    
    if ([properties objectForKey:@"SetResults"]){
    NSArray* member_list = [properties objectForKey:@"SetResults"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[SetObjectInfo new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.SetResults = [mutable_storage copy];
}

    

    return self;
}
@end
