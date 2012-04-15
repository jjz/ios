//
//  CustomViewControllerAppDelegate.h
//  CustomViewController
//
//  Created by MagicStudio on 12-4-10.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomViewController;

@interface CustomViewControllerAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CustomViewController *viewController;

@end

@interface CustomViewController:UIViewController

@end