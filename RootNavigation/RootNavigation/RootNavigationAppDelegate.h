//
//  RootNavigationAppDelegate.h
//  RootNavigation
//
//  Created by MagicStudio on 12-4-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RootNavigationViewController;

@interface RootNavigationAppDelegate : NSObject <UIApplicationDelegate>


@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet RootNavigationViewController *viewController;

@end
