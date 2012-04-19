//
//  HelloButterflyAppDelegate.h
//  HelloButterfly
//
//  Created by MagicStudio on 12-4-18.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloButterflyViewController;

@interface HelloButterflyAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet HelloButterflyViewController *viewController;

@end
