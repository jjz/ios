//
//  TabBarAppDelegate.h
//  TabBar
//
//  Created by MagicStudio on 12-4-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TabBarViewController;

@interface TabBarAppDelegate : NSObject <UIApplicationDelegate,UITabBarControllerDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TabBarViewController *viewController;

@end
