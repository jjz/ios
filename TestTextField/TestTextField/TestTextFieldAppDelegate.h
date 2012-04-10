//
//  TestTextFieldAppDelegate.h
//  TestTextField
//
//  Created by MagicStudio on 12-4-9.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TestTextFieldViewController;

@interface TestTextFieldAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet TestTextFieldViewController *viewController;

@end
