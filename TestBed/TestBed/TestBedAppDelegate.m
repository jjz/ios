//
//  TestBedAppDelegate.m
//  TestBed
//
//  Created by MagicStudio on 12-4-18.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "TestBedAppDelegate.h"

#import "TestBedViewController.h"

@implementation TestBedAppDelegate
-(void)applicationDidFinishLaunching:(UIApplication *)application{
UIWindow *window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    UINavigationController *nav=[[UINavigationController alloc] initWithRootViewController:[[TestBedViewController alloc] init]];
    //TestBedViewController *tbvc=[[TestBedViewController alloc] init];
    [window addSubview:nav.view];
    [window makeKeyAndVisible];
}

@end
