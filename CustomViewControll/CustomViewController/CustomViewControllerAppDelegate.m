//
//  CustomViewControllerAppDelegate.m
//  CustomViewController
//
//  Created by MagicStudio on 12-4-10.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "CustomViewControllerAppDelegate.h"



@implementation CustomViewControllerAppDelegate

@synthesize window = _window;
@synthesize viewController=_viewController;
-(void)applicationDidFinishLaunching:(UIApplication *)application{
    UIWindow *window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    CustomViewController *cusVc=[[CustomViewController alloc] init];
    [window addSubview:cusVc.view];
    [window makeKeyAndVisible];
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

@end


@implementation CustomViewController
-(void) loadView{
    UIView *contentView=[[UIView alloc] initWithFrame:[[UIScreen mainScreen ] applicationFrame]];
    contentView.backgroundColor=[UIColor lightGrayColor];
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 30.0f)];
    label.text=@"customViewController";
    label.center=contentView.center;
    label.textAlignment=UITextAlignmentCenter;
    label.backgroundColor=[UIColor redColor];
    [contentView addSubview:label];
    [label release];
    self.view=contentView;
    [contentView release];
    
}
-(void)viewDidLoad{
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blueColor];
   // view=_view;
}

@end

