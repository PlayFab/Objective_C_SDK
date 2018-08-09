

#import <Foundation/Foundation.h>

#import "PlayFabGroupsDataModels.h"
#import "PlayFabError.h"
#import "PlayFabSettings.h"

@interface PlayFabGroupsAPI : NSObject

		
typedef void(^AcceptGroupApplicationCallback)(EmptyResult* result, NSObject* userData);
		
typedef void(^AcceptGroupInvitationCallback)(EmptyResult* result, NSObject* userData);
		
typedef void(^AddMembersCallback)(EmptyResult* result, NSObject* userData);
		
typedef void(^ApplyToGroupCallback)(ApplyToGroupResponse* result, NSObject* userData);
		
typedef void(^BlockEntityCallback)(EmptyResult* result, NSObject* userData);
		
typedef void(^ChangeMemberRoleCallback)(EmptyResult* result, NSObject* userData);
		
typedef void(^CreateGroupCallback)(CreateGroupResponse* result, NSObject* userData);
		
typedef void(^CreateRoleCallback)(CreateGroupRoleResponse* result, NSObject* userData);
		
typedef void(^DeleteGroupCallback)(EmptyResult* result, NSObject* userData);
		
typedef void(^DeleteRoleCallback)(EmptyResult* result, NSObject* userData);
		
typedef void(^GetGroupCallback)(GetGroupResponse* result, NSObject* userData);
		
typedef void(^InviteToGroupCallback)(InviteToGroupResponse* result, NSObject* userData);
		
typedef void(^IsMemberCallback)(IsMemberResponse* result, NSObject* userData);
		
typedef void(^ListGroupApplicationsCallback)(ListGroupApplicationsResponse* result, NSObject* userData);
		
typedef void(^ListGroupBlocksCallback)(ListGroupBlocksResponse* result, NSObject* userData);
		
typedef void(^ListGroupInvitationsCallback)(ListGroupInvitationsResponse* result, NSObject* userData);
		
typedef void(^ListGroupMembersCallback)(ListGroupMembersResponse* result, NSObject* userData);
		
typedef void(^ListMembershipCallback)(ListMembershipResponse* result, NSObject* userData);
		
typedef void(^ListMembershipOpportunitiesCallback)(ListMembershipOpportunitiesResponse* result, NSObject* userData);
		
typedef void(^RemoveGroupApplicationCallback)(EmptyResult* result, NSObject* userData);
		
typedef void(^RemoveGroupInvitationCallback)(EmptyResult* result, NSObject* userData);
		
typedef void(^RemoveMembersCallback)(EmptyResult* result, NSObject* userData);
		
typedef void(^UnblockEntityCallback)(EmptyResult* result, NSObject* userData);
		
typedef void(^UpdateGroupCallback)(UpdateGroupResponse* result, NSObject* userData);
		
typedef void(^UpdateRoleCallback)(UpdateGroupRoleResponse* result, NSObject* userData);
		

+ (PlayFabClientAPI*) GetInstance;

		


        // ------------ Generated API calls
		
-(void) AcceptGroupApplication:(AcceptGroupApplicationRequest*)request success:(AcceptGroupApplicationCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) AcceptGroupInvitation:(AcceptGroupInvitationRequest*)request success:(AcceptGroupInvitationCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) AddMembers:(AddMembersRequest*)request success:(AddMembersCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ApplyToGroup:(ApplyToGroupRequest*)request success:(ApplyToGroupCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) BlockEntity:(BlockEntityRequest*)request success:(BlockEntityCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ChangeMemberRole:(ChangeMemberRoleRequest*)request success:(ChangeMemberRoleCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateGroup:(CreateGroupRequest*)request success:(CreateGroupCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) CreateRole:(CreateGroupRoleRequest*)request success:(CreateRoleCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteGroup:(DeleteGroupRequest*)request success:(DeleteGroupCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) DeleteRole:(DeleteRoleRequest*)request success:(DeleteRoleCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) GetGroup:(GetGroupRequest*)request success:(GetGroupCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) InviteToGroup:(InviteToGroupRequest*)request success:(InviteToGroupCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) IsMember:(IsMemberRequest*)request success:(IsMemberCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListGroupApplications:(ListGroupApplicationsRequest*)request success:(ListGroupApplicationsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListGroupBlocks:(ListGroupBlocksRequest*)request success:(ListGroupBlocksCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListGroupInvitations:(ListGroupInvitationsRequest*)request success:(ListGroupInvitationsCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListGroupMembers:(ListGroupMembersRequest*)request success:(ListGroupMembersCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListMembership:(ListMembershipRequest*)request success:(ListMembershipCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) ListMembershipOpportunities:(ListMembershipOpportunitiesRequest*)request success:(ListMembershipOpportunitiesCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) RemoveGroupApplication:(RemoveGroupApplicationRequest*)request success:(RemoveGroupApplicationCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) RemoveGroupInvitation:(RemoveGroupInvitationRequest*)request success:(RemoveGroupInvitationCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) RemoveMembers:(RemoveMembersRequest*)request success:(RemoveMembersCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UnblockEntity:(UnblockEntityRequest*)request success:(UnblockEntityCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UpdateGroup:(UpdateGroupRequest*)request success:(UpdateGroupCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		
-(void) UpdateRole:(UpdateGroupRoleRequest*)request success:(UpdateRoleCallback)callback failure:(ErrorCallback)errorCallback withUserData:(NSObject*)userData;
		

    //private:
/*
        // ------------ Generated result handlers
		
+ (void) OnAcceptGroupApplicationResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnAcceptGroupInvitationResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnAddMembersResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnApplyToGroupResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnBlockEntityResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnChangeMemberRoleResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnCreateGroupResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnCreateRoleResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnDeleteGroupResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnDeleteRoleResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnGetGroupResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnInviteToGroupResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnIsMemberResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnListGroupApplicationsResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnListGroupBlocksResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnListGroupInvitationsResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnListGroupMembersResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnListMembershipResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnListMembershipOpportunitiesResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnRemoveGroupApplicationResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnRemoveGroupInvitationResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnRemoveMembersResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnUnblockEntityResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnUpdateGroupResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
+ (void) OnUpdateRoleResult:(int)httpStatus withRequest:(HttpRequest*) request withUserData:(void*) userData;
		
 */

        //@property bool mOwnsRequester;
        //@property AFHTTPClient* mHttpRequester;


@end
