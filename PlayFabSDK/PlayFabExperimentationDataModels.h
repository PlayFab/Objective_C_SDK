#import <Foundation/Foundation.h>
#import "PlayFabBaseModel.h"


typedef enum
{
    ExperimentationAnalysisTaskStateWaiting,
    ExperimentationAnalysisTaskStateReadyForSubmission,
    ExperimentationAnalysisTaskStateSubmittingToPipeline,
    ExperimentationAnalysisTaskStateRunning,
    ExperimentationAnalysisTaskStateCompleted,
    ExperimentationAnalysisTaskStateFailed,
    ExperimentationAnalysisTaskStateCanceled
} ExperimentationAnalysisTaskState;

typedef enum
{
    ExperimentationExperimentTypeActive,
    ExperimentationExperimentTypeSnapshot
} ExperimentationExperimentType;

typedef enum
{
    ExperimentationExperimentStateNew,
    ExperimentationExperimentStateStarted,
    ExperimentationExperimentStateStopped,
    ExperimentationExperimentStateDeleted
} ExperimentationExperimentState;

//predeclare all non-enum classes

@class ExperimentationCreateExclusionGroupRequest;

@class ExperimentationCreateExclusionGroupResult;

@class ExperimentationCreateExperimentRequest;

@class ExperimentationCreateExperimentResult;

@class ExperimentationDeleteExclusionGroupRequest;

@class ExperimentationDeleteExperimentRequest;

@class ExperimentationEmptyResponse;

@class ExperimentationEntityKey;

@class ExperimentationExclusionGroupTrafficAllocation;

@class ExperimentationExperiment;

@class ExperimentationExperimentExclusionGroup;

@class ExperimentationGetExclusionGroupsRequest;

@class ExperimentationGetExclusionGroupsResult;

@class ExperimentationGetExclusionGroupTrafficRequest;

@class ExperimentationGetExclusionGroupTrafficResult;

@class ExperimentationGetExperimentsRequest;

@class ExperimentationGetExperimentsResult;

@class ExperimentationGetLatestScorecardRequest;

@class ExperimentationGetLatestScorecardResult;

@class ExperimentationGetTreatmentAssignmentRequest;

@class ExperimentationGetTreatmentAssignmentResult;

@class ExperimentationMetricData;

@class ExperimentationScorecard;

@class ExperimentationScorecardDataRow;

@class ExperimentationStartExperimentRequest;

@class ExperimentationStopExperimentRequest;

@class ExperimentationTreatmentAssignment;

@class ExperimentationUpdateExclusionGroupRequest;

@class ExperimentationUpdateExperimentRequest;

@class ExperimentationVariable;

@class ExperimentationVariant;



/// <summary>
/*
/// Given a title entity token and exclusion group details, will create a new exclusion group for the title.
*/
/// </summary>
@interface ExperimentationCreateExclusionGroupRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Description of the exclusion group.
*/
/// </summary>
@property NSString* Description; 

/// <summary>
/*
/// Friendly name of the exclusion group.
*/
/// </summary>
@property NSString* Name; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationCreateExclusionGroupResult : PlayFabBaseModel


/// <summary>
/*
/// Identifier of the exclusion group.
*/
/// </summary>
@property NSString* ExclusionGroupId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Given a title entity token and experiment details, will create a new experiment for the title.
*/
/// </summary>
@interface ExperimentationCreateExperimentRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Description of the experiment.
*/
/// </summary>
@property NSString* Description; 

/// <summary>
/*
/// The duration of the experiment, in days.
*/
/// </summary>
@property NSNumber* Duration; 

/// <summary>
/*
/// When experiment should end.
*/
/// </summary>
@property NSDate* EndDate; 

/// <summary>
/*
/// Id of the exclusion group.
*/
/// </summary>
@property NSString* ExclusionGroupId; 

/// <summary>
/*
/// Percentage of exclusion group traffic that will see this experiment.
*/
/// </summary>
@property NSNumber* ExclusionGroupTrafficAllocation; 

/// <summary>
/*
/// Type of experiment.
*/
/// </summary>
@property ExperimentationExperimentType pfExperimentType; 

/// <summary>
/*
/// Friendly name of the experiment.
*/
/// </summary>
@property NSString* Name; 

/// <summary>
/*
/// Id of the segment to which this experiment applies. Defaults to the 'All Players' segment.
*/
/// </summary>
@property NSString* SegmentId; 

/// <summary>
/*
/// When experiment should start.
*/
/// </summary>
@property NSDate* StartDate; 

/// <summary>
/*
/// List of title player account IDs that automatically receive treatments in the experiment, but are not included when calculating experiment metrics.
*/
/// </summary>
@property NSArray* TitlePlayerAccountTestIds; 

/// <summary>
/*
/// List of variants for the experiment.
*/
/// </summary>
@property NSArray* Variants; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationCreateExperimentResult : PlayFabBaseModel


/// <summary>
/*
/// The ID of the new experiment.
*/
/// </summary>
@property NSString* ExperimentId; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Given an entity token and an exclusion group ID this API deletes the exclusion group.
*/
/// </summary>
@interface ExperimentationDeleteExclusionGroupRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The ID of the exclusion group to delete.
*/
/// </summary>
@property NSString* ExclusionGroupId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Given an entity token and an experiment ID this API deletes the experiment. A running experiment must be stopped before it can be deleted.
*/
/// </summary>
@interface ExperimentationDeleteExperimentRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The ID of the experiment to delete.
*/
/// </summary>
@property NSString* ExperimentId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationEmptyResponse : PlayFabBaseModel

/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Combined entity type and ID structure which uniquely identifies a single entity.
*/
/// </summary>
@interface ExperimentationEntityKey : PlayFabBaseModel


/// <summary>
/*
/// Unique ID of the entity.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// Entity type. See https://docs.microsoft.com/gaming/playfab/features/data/entities/available-built-in-entity-types
*/
/// </summary>
@property NSString* Type; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationExclusionGroupTrafficAllocation : PlayFabBaseModel


/// <summary>
/*
/// Id of the experiment.
*/
/// </summary>
@property NSString* ExperimentId; 

/// <summary>
/*
/// Percentage of exclusion group traffic that will see this experiment.
*/
/// </summary>
@property NSNumber* TrafficAllocation; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationExperiment : PlayFabBaseModel


/// <summary>
/*
/// Description of the experiment.
*/
/// </summary>
@property NSString* Description; 

/// <summary>
/*
/// The duration of the experiment, in days.
*/
/// </summary>
@property NSNumber* Duration; 

/// <summary>
/*
/// When experiment should end/was ended.
*/
/// </summary>
@property NSDate* EndDate; 

/// <summary>
/*
/// Id of the exclusion group for this experiment.
*/
/// </summary>
@property NSString* ExclusionGroupId; 

/// <summary>
/*
/// Percentage of exclusion group traffic that will see this experiment.
*/
/// </summary>
@property NSNumber* ExclusionGroupTrafficAllocation; 

/// <summary>
/*
/// Type of experiment.
*/
/// </summary>
@property ExperimentationExperimentType pfExperimentType; 

/// <summary>
/*
/// Id of the experiment.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// Friendly name of the experiment.
*/
/// </summary>
@property NSString* Name; 

/// <summary>
/*
/// Id of the segment to which this experiment applies. Defaults to the 'All Players' segment.
*/
/// </summary>
@property NSString* SegmentId; 

/// <summary>
/*
/// When experiment should start/was started.
*/
/// </summary>
@property NSDate* StartDate; 

/// <summary>
/*
/// State experiment is currently in.
*/
/// </summary>
@property ExperimentationExperimentState State; 

/// <summary>
/*
/// List of title player account IDs that automatically receive treatments in the experiment, but are not included when calculating experiment metrics.
*/
/// </summary>
@property NSArray* TitlePlayerAccountTestIds; 

/// <summary>
/*
/// List of variants for the experiment.
*/
/// </summary>
@property NSArray* Variants; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationExperimentExclusionGroup : PlayFabBaseModel


/// <summary>
/*
/// Description of the exclusion group.
*/
/// </summary>
@property NSString* Description; 

/// <summary>
/*
/// Id of the exclusion group.
*/
/// </summary>
@property NSString* ExclusionGroupId; 

/// <summary>
/*
/// Friendly name of the exclusion group.
*/
/// </summary>
@property NSString* Name; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Given a title entity token will return the list of all exclusion groups for a title.
*/
/// </summary>
@interface ExperimentationGetExclusionGroupsRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationGetExclusionGroupsResult : PlayFabBaseModel


/// <summary>
/*
/// List of exclusion groups for the title.
*/
/// </summary>
@property NSArray* ExclusionGroups; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Given a title entity token and an exclusion group ID, will return the list of traffic allocations for the exclusion group.
*/
/// </summary>
@interface ExperimentationGetExclusionGroupTrafficRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The ID of the exclusion group.
*/
/// </summary>
@property NSString* ExclusionGroupId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationGetExclusionGroupTrafficResult : PlayFabBaseModel


/// <summary>
/*
/// List of traffic allocations for the exclusion group.
*/
/// </summary>
@property NSArray* TrafficAllocations; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Given a title entity token will return the list of all experiments for a title, including scheduled, started, stopped or completed experiments.
*/
/// </summary>
@interface ExperimentationGetExperimentsRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationGetExperimentsResult : PlayFabBaseModel


/// <summary>
/*
/// List of experiments for the title.
*/
/// </summary>
@property NSArray* Experiments; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Given a title entity token and experiment details, will return the latest available scorecard.
*/
/// </summary>
@interface ExperimentationGetLatestScorecardRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The ID of the experiment.
*/
/// </summary>
@property NSString* ExperimentId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationGetLatestScorecardResult : PlayFabBaseModel


/// <summary>
/*
/// Scorecard for the experiment of the title.
*/
/// </summary>
@property ExperimentationScorecard* pfScorecard; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Given a title player or a title entity token, returns the treatment variants and variables assigned to the entity across all running experiments
*/
/// </summary>
@interface ExperimentationGetTreatmentAssignmentRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The entity to perform this action on.
*/
/// </summary>
@property ExperimentationEntityKey* Entity; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationGetTreatmentAssignmentResult : PlayFabBaseModel


/// <summary>
/*
/// Treatment assignment for the entity.
*/
/// </summary>
@property ExperimentationTreatmentAssignment* pfTreatmentAssignment; 
/*
@property NSObject* Request;
@property NSObject* CustomData;
*/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationMetricData : PlayFabBaseModel


/// <summary>
/*
/// The upper bound of the confidence interval for the relative delta (Delta.RelativeValue).
*/
/// </summary>
@property NSNumber* ConfidenceIntervalEnd; 

/// <summary>
/*
/// The lower bound of the confidence interval for the relative delta (Delta.RelativeValue).
*/
/// </summary>
@property NSNumber* ConfidenceIntervalStart; 

/// <summary>
/*
/// The absolute delta between TreatmentStats.Average and ControlStats.Average.
*/
/// </summary>
@property NSNumber* DeltaAbsoluteChange; 

/// <summary>
/*
/// The relative delta ratio between TreatmentStats.Average and ControlStats.Average.
*/
/// </summary>
@property NSNumber* DeltaRelativeChange; 

/// <summary>
/*
/// The machine name of the metric.
*/
/// </summary>
@property NSString* InternalName; 

/// <summary>
/*
/// Indicates if a movement was detected on that metric.
*/
/// </summary>
@property NSString* Movement; 

/// <summary>
/*
/// The readable name of the metric.
*/
/// </summary>
@property NSString* Name; 

/// <summary>
/*
/// The expectation that a movement is real
*/
/// </summary>
@property NSNumber* PMove; 

/// <summary>
/*
/// The p-value resulting from the statistical test run for this metric
*/
/// </summary>
@property NSNumber* PValue; 

/// <summary>
/*
/// The threshold for observing sample ratio mismatch.
*/
/// </summary>
@property NSNumber* PValueThreshold; 

/// <summary>
/*
/// Indicates if the movement is statistically significant.
*/
/// </summary>
@property NSString* StatSigLevel; 

/// <summary>
/*
/// Observed standard deviation value of the metric.
*/
/// </summary>
@property NSNumber* StdDev; 

/// <summary>
/*
/// Observed average value of the metric.
*/
/// </summary>
@property NSNumber* Value; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationScorecard : PlayFabBaseModel


/// <summary>
/*
/// Represents the date the scorecard was generated.
*/
/// </summary>
@property NSString* DateGenerated; 

/// <summary>
/*
/// Represents the duration of scorecard analysis.
*/
/// </summary>
@property NSString* Duration; 

/// <summary>
/*
/// Represents the number of events processed for the generation of this scorecard
*/
/// </summary>
@property NSNumber* EventsProcessed; 

/// <summary>
/*
/// Id of the experiment.
*/
/// </summary>
@property NSString* ExperimentId; 

/// <summary>
/*
/// Friendly name of the experiment.
*/
/// </summary>
@property NSString* ExperimentName; 

/// <summary>
/*
/// Represents the latest compute job status.
*/
/// </summary>
@property ExperimentationAnalysisTaskState LatestJobStatus; 

/// <summary>
/*
/// Represents the presence of a sample ratio mismatch in the scorecard data.
*/
/// </summary>
@property bool SampleRatioMismatch; 

/// <summary>
/*
/// Scorecard containing list of analysis.
*/
/// </summary>
@property NSArray* ScorecardDataRows; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationScorecardDataRow : PlayFabBaseModel


/// <summary>
/*
/// Represents whether the variant is control or not.
*/
/// </summary>
@property bool IsControl; 

/// <summary>
/*
/// Data of the analysis with the internal name of the metric as the key and an object of metric data as value.
*/
/// </summary>
@property NSDictionary* MetricDataRows; 

/// <summary>
/*
/// Represents the player count in the variant.
*/
/// </summary>
@property NSNumber* PlayerCount; 

/// <summary>
/*
/// Name of the variant of analysis.
*/
/// </summary>
@property NSString* VariantName; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Given a title entity token and an experiment ID, this API starts the experiment.
*/
/// </summary>
@interface ExperimentationStartExperimentRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The ID of the experiment to start.
*/
/// </summary>
@property NSString* ExperimentId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Given a title entity token and an experiment ID, this API stops the experiment if it is running.
*/
/// </summary>
@interface ExperimentationStopExperimentRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// The ID of the experiment to stop.
*/
/// </summary>
@property NSString* ExperimentId; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationTreatmentAssignment : PlayFabBaseModel


/// <summary>
/*
/// List of the experiment variables.
*/
/// </summary>
@property NSArray* Variables; 

/// <summary>
/*
/// List of the experiment variants.
*/
/// </summary>
@property NSArray* Variants; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Given an entity token and exclusion group details this API updates the exclusion group.
*/
/// </summary>
@interface ExperimentationUpdateExclusionGroupRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Description of the exclusion group.
*/
/// </summary>
@property NSString* Description; 

/// <summary>
/*
/// The ID of the exclusion group to update.
*/
/// </summary>
@property NSString* ExclusionGroupId; 

/// <summary>
/*
/// Friendly name of the exclusion group.
*/
/// </summary>
@property NSString* Name; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


/// <summary>
/*
/// Given a title entity token and experiment details, this API updates the experiment. If an experiment is already running, only the description and duration properties can be updated.
*/
/// </summary>
@interface ExperimentationUpdateExperimentRequest : PlayFabBaseModel


/// <summary>
/*
/// The optional custom tags associated with the request (e.g. build number, external trace identifiers, etc.).
*/
/// </summary>
@property NSDictionary* CustomTags; 

/// <summary>
/*
/// Description of the experiment.
*/
/// </summary>
@property NSString* Description; 

/// <summary>
/*
/// The duration of the experiment, in days.
*/
/// </summary>
@property NSNumber* Duration; 

/// <summary>
/*
/// When experiment should end.
*/
/// </summary>
@property NSDate* EndDate; 

/// <summary>
/*
/// Id of the exclusion group.
*/
/// </summary>
@property NSString* ExclusionGroupId; 

/// <summary>
/*
/// Percentage of exclusion group traffic that will see this experiment.
*/
/// </summary>
@property NSNumber* ExclusionGroupTrafficAllocation; 

/// <summary>
/*
/// Type of experiment.
*/
/// </summary>
@property ExperimentationExperimentType pfExperimentType; 

/// <summary>
/*
/// Id of the experiment.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// Friendly name of the experiment.
*/
/// </summary>
@property NSString* Name; 

/// <summary>
/*
/// Id of the segment to which this experiment applies. Defaults to the 'All Players' segment.
*/
/// </summary>
@property NSString* SegmentId; 

/// <summary>
/*
/// When experiment should start.
*/
/// </summary>
@property NSDate* StartDate; 

/// <summary>
/*
/// List of title player account IDs that automatically receive treatments in the experiment, but are not included when calculating experiment metrics.
*/
/// </summary>
@property NSArray* TitlePlayerAccountTestIds; 

/// <summary>
/*
/// List of variants for the experiment.
*/
/// </summary>
@property NSArray* Variants; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationVariable : PlayFabBaseModel


/// <summary>
/*
/// Name of the variable.
*/
/// </summary>
@property NSString* Name; 

/// <summary>
/*
/// Value of the variable.
*/
/// </summary>
@property NSString* Value; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end


@interface ExperimentationVariant : PlayFabBaseModel


/// <summary>
/*
/// Description of the variant.
*/
/// </summary>
@property NSString* Description; 

/// <summary>
/*
/// Id of the variant.
*/
/// </summary>
@property NSString* Id; 

/// <summary>
/*
/// Specifies if variant is control for experiment.
*/
/// </summary>
@property bool IsControl; 

/// <summary>
/*
/// Name of the variant.
*/
/// </summary>
@property NSString* Name; 

/// <summary>
/*
/// Id of the TitleDataOverride to use with this variant.
*/
/// </summary>
@property NSString* TitleDataOverrideLabel; 

/// <summary>
/*
/// Percentage of target audience traffic that will see this variant.
*/
/// </summary>
@property NSNumber* TrafficPercentage; 

/// <summary>
/*
/// Variables returned by this variant.
*/
/// </summary>
@property NSArray* Variables; 
/**/
-(id)initWithDictionary:(NSDictionary*)properties;
@end

