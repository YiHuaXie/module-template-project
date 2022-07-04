//
//  CPDAppDelegate.m
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//

#import "CPDAppDelegate.h"
#import <CustomApplication/CustomApplication.h>

@implementation CPDAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    CustomApplication *instance = CustomApplication.sharedInstance;
    BOOL result = [instance application:application didFinishLaunchingWithOptions:launchOptions];
    if (instance.window) self.window = instance.window;

    return result;
}

#pragma mark - Forward

- (id)forwardingTargetForSelector:(SEL)aSelector {
    id instance = CustomApplication.sharedInstance;
    if ([instance respondsToSelector:aSelector]) return instance;

    return nil;
}

- (BOOL)respondsToSelector:(SEL)aSelector {
    return [super respondsToSelector:aSelector] || [CustomApplication.sharedInstance respondsToSelector:aSelector];
}


@end
