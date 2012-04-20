//
//  InfoNavAppDelegate.h
//  InfoNav
//
//  Created by MagicStudio on 12-4-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class InfoNavViewController;

@interface InfoNavAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet InfoNavViewController *viewController;

@end
