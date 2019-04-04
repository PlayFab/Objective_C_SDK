//
//  AppDelegate.h
//  PFExample
//
//  Created by Todd Bello on 4/4/19.
//  Copyright © 2019 PlayFab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

