//
//  TabBarAppDelegate.h
//  TabBar
//
//  Created by MagicStudio on 12-4-15.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TabBarViewController;

@interface TabBarAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TabBarViewController *viewController;

@end
