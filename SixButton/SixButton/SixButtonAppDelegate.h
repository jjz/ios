//
//  SixButtonAppDelegate.h
//  SixButton
//
//  Created by MagicStudio on 12-4-19.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SixButtonViewController;

@interface SixButtonAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SixButtonViewController *viewController;

@end
