//
//  main.m
//  HelloButterfly
//
//  Created by MagicStudio on 12-4-18.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HelloButterflyViewController.h"
@interface HelloWorldAppDelegate:NSObject<UIApplicationDelegate>
@end
@implementation HelloWorldAppDelegate


-(void)applicationDidFinishLaunching:(UIApplication *)application{
    UIWindow *window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    HelloButterflyViewController *hbvc=[[HelloButterflyViewController alloc] init];
    [window addSubview:hbvc.view];
    [window makeKeyWindow];
}

@end
int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, @"HelloWorldAppDelegate");
    [pool release];
    return retVal;
}
