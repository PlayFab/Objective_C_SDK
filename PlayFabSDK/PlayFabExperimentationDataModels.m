#import "PlayFabExperimentationDataModels.h"


@implementation ExperimentationCreateExperimentRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Description = [properties valueForKey:@"Description"];
    
    self.Duration = [properties valueForKey:@"Duration"];
    
    self.pfExperimentType = (ExperimentationExperimentType)[properties valueForKey:@"ExperimentationExperimentType"];
    
    self.Name = [properties valueForKey:@"Name"];
    
    self.SegmentId = [properties valueForKey:@"SegmentId"];
    
    self.StartDate = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"StartDate"]];
    
    if ([properties objectForKey:@"TitlePlayerAccountTestIds"]){
    NSArray* member_list = [properties objectForKey:@"TitlePlayerAccountTestIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.TitlePlayerAccountTestIds = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Variants"]){
    NSArray* member_list = [properties objectForKey:@"Variants"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ExperimentationVariant new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Variants = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ExperimentationCreateExperimentResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ExperimentId = [properties valueForKey:@"ExperimentId"];
    

    return self;
}
@end
@implementation ExperimentationDeleteExperimentRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ExperimentId = [properties valueForKey:@"ExperimentId"];
    

    return self;
}
@end
@implementation ExperimentationEmptyResponse


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation ExperimentationEntityKey


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
@implementation ExperimentationExperiment


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Description = [properties valueForKey:@"Description"];
    
    self.Duration = [properties valueForKey:@"Duration"];
    
    self.pfExperimentType = (ExperimentationExperimentType)[properties valueForKey:@"ExperimentationExperimentType"];
    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Name = [properties valueForKey:@"Name"];
    
    self.SegmentId = [properties valueForKey:@"SegmentId"];
    
    self.StartDate = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"StartDate"]];
    
    self.State = (ExperimentationExperimentState)[properties valueForKey:@"ExperimentationState"];
    
    if ([properties objectForKey:@"TitlePlayerAccountTestIds"]){
    NSArray* member_list = [properties objectForKey:@"TitlePlayerAccountTestIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.TitlePlayerAccountTestIds = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Variants"]){
    NSArray* member_list = [properties objectForKey:@"Variants"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ExperimentationVariant new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Variants = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ExperimentationGetExperimentsRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    

    return self;
}
@end
@implementation ExperimentationGetExperimentsResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Experiments"]){
    NSArray* member_list = [properties objectForKey:@"Experiments"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ExperimentationExperiment new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Experiments = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ExperimentationGetLatestScorecardRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ExperimentId = [properties valueForKey:@"ExperimentId"];
    

    return self;
}
@end
@implementation ExperimentationGetLatestScorecardResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfScorecard = [[ExperimentationScorecard new] initWithDictionary:[properties objectForKey:@"Scorecard"]];
    

    return self;
}
@end
@implementation ExperimentationGetTreatmentAssignmentRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Entity = [[ExperimentationEntityKey new] initWithDictionary:[properties objectForKey:@"Entity"]];
    

    return self;
}
@end
@implementation ExperimentationGetTreatmentAssignmentResult


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.pfTreatmentAssignment = [[ExperimentationTreatmentAssignment new] initWithDictionary:[properties objectForKey:@"TreatmentAssignment"]];
    

    return self;
}
@end
@implementation ExperimentationMetricData


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ConfidenceIntervalEnd = [properties valueForKey:@"ConfidenceIntervalEnd"];
    
    self.ConfidenceIntervalStart = [properties valueForKey:@"ConfidenceIntervalStart"];
    
    self.DeltaAbsoluteChange = [properties valueForKey:@"DeltaAbsoluteChange"];
    
    self.DeltaRelativeChange = [properties valueForKey:@"DeltaRelativeChange"];
    
    self.InternalName = [properties valueForKey:@"InternalName"];
    
    self.Movement = [properties valueForKey:@"Movement"];
    
    self.Name = [properties valueForKey:@"Name"];
    
    self.PMove = [properties valueForKey:@"PMove"];
    
    self.PValue = [properties valueForKey:@"PValue"];
    
    self.PValueThreshold = [properties valueForKey:@"PValueThreshold"];
    
    self.StatSigLevel = [properties valueForKey:@"StatSigLevel"];
    
    self.StdDev = [properties valueForKey:@"StdDev"];
    
    self.Value = [properties valueForKey:@"Value"];
    

    return self;
}
@end
@implementation ExperimentationScorecard


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.DateGenerated = [properties valueForKey:@"DateGenerated"];
    
    self.Duration = [properties valueForKey:@"Duration"];
    
    self.EventsProcessed = [properties valueForKey:@"EventsProcessed"];
    
    self.ExperimentId = [properties valueForKey:@"ExperimentId"];
    
    self.ExperimentName = [properties valueForKey:@"ExperimentName"];
    
    self.LatestJobStatus = (ExperimentationAnalysisTaskState)[properties valueForKey:@"ExperimentationLatestJobStatus"];
    
    self.SampleRatioMismatch = [[properties valueForKey:@"SampleRatioMismatch"] boolValue];
    
    if ([properties objectForKey:@"ScorecardDataRows"]){
    NSArray* member_list = [properties objectForKey:@"ScorecardDataRows"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ExperimentationScorecardDataRow new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.ScorecardDataRows = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ExperimentationScorecardDataRow


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.IsControl = [[properties valueForKey:@"IsControl"] boolValue];
    
    if ([properties objectForKey:@"MetricDataRows"]){
    NSDictionary* member_list = [properties objectForKey:@"MetricDataRows"];
    NSMutableDictionary* mutable_storage = [NSMutableDictionary new];
    for(NSString* key in member_list){
        [mutable_storage setValue:[[ExperimentationMetricData new] initWithDictionary:[member_list objectForKey:key]] forKey:key];
    }
    self.MetricDataRows = [mutable_storage copy];
}

    
    self.PlayerCount = [properties valueForKey:@"PlayerCount"];
    
    self.VariantName = [properties valueForKey:@"VariantName"];
    

    return self;
}
@end
@implementation ExperimentationStartExperimentRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ExperimentId = [properties valueForKey:@"ExperimentId"];
    

    return self;
}
@end
@implementation ExperimentationStopExperimentRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.ExperimentId = [properties valueForKey:@"ExperimentId"];
    

    return self;
}
@end
@implementation ExperimentationTreatmentAssignment


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    if ([properties objectForKey:@"Variables"]){
    NSArray* member_list = [properties objectForKey:@"Variables"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ExperimentationVariable new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Variables = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Variants"]){
    NSArray* member_list = [properties objectForKey:@"Variants"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.Variants = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ExperimentationUpdateExperimentRequest


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Description = [properties valueForKey:@"Description"];
    
    self.Duration = [properties valueForKey:@"Duration"];
    
    self.pfExperimentType = (ExperimentationExperimentType)[properties valueForKey:@"ExperimentationExperimentType"];
    
    self.Id = [properties valueForKey:@"Id"];
    
    self.Name = [properties valueForKey:@"Name"];
    
    self.SegmentId = [properties valueForKey:@"SegmentId"];
    
    self.StartDate = [[PlayFabBaseModel timestampFormatter] dateFromString:[properties valueForKey:@"StartDate"]];
    
    if ([properties objectForKey:@"TitlePlayerAccountTestIds"]){
    NSArray* member_list = [properties objectForKey:@"TitlePlayerAccountTestIds"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[member_list objectAtIndex:i]];
    }
    self.TitlePlayerAccountTestIds = [mutable_storage copy];
}

    
    if ([properties objectForKey:@"Variants"]){
    NSArray* member_list = [properties objectForKey:@"Variants"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ExperimentationVariant new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Variants = [mutable_storage copy];
}

    

    return self;
}
@end
@implementation ExperimentationVariable


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Name = [properties valueForKey:@"Name"];
    
    self.Value = [properties valueForKey:@"Value"];
    

    return self;
}
@end
@implementation ExperimentationVariant


-(id)initWithDictionary:(NSDictionary*)properties
{
    self = [super init];
    if (!self) {
        return nil;
    }

    
    self.Description = [properties valueForKey:@"Description"];
    
    self.Id = [properties valueForKey:@"Id"];
    
    self.IsControl = [[properties valueForKey:@"IsControl"] boolValue];
    
    self.Name = [properties valueForKey:@"Name"];
    
    self.TitleDataOverrideId = [properties valueForKey:@"TitleDataOverrideId"];
    
    self.TrafficPercentage = [properties valueForKey:@"TrafficPercentage"];
    
    if ([properties objectForKey:@"Variables"]){
    NSArray* member_list = [properties objectForKey:@"Variables"];
    NSMutableArray* mutable_storage = [NSMutableArray new];
    for(int i=0;i<[member_list count];i++){
        [mutable_storage addObject:[[ExperimentationVariable new] initWithDictionary:[member_list objectAtIndex:i]]];
    }
    self.Variables = [mutable_storage copy];
}

    

    return self;
}
@end
