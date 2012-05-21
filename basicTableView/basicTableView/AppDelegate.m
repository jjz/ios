//
//  AppDelegate.m
//  basicTableView
//
//  Created by 家志 姜 on 12-5-18.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#define COOKBOOK_PURPLE_COLOR [UIColor colorWithRed:0.20392f green:0.19607f blue:0.61176f alpha:1.0f]

@interface TestBedViewController:UITableViewController{
    NSArray * items;
}
@end
@implementation TestBedViewController
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return items.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell=[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    NSString * title=[NSString stringWithFormat:@"cell %@",[items objectAtIndex:indexPath.row]];
    cell.textLabel.text=title;
    return cell;
//    UITableViewCellStyle style=UITableViewCellStyleDefault;
//    UITableViewCell * cell=[tableView dequeueReusableCellWithIdentifier:@"BaseCell"];
//    if (!cell) {
//        cell=[[UITableViewCell alloc] initWithStyle:style reuseIdentifier:@"BaseCell"];
//    }
//    cell.textLabel.text=[items objectAtIndex:indexPath.row];
//    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    self.title=[items objectAtIndex:indexPath.row];
}
-(void)loadView{
    [super loadView];
    items=[@"A*B*C*D*E*F*G*H*I*J*K*L" componentsSeparatedByString:@"*"];
    [self.tableView registerNib:[UINib nibWithNibName:@"Cell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"Cell"];
    self.tableView.backgroundColor=[UIColor clearColor];
}
-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation{
    return YES;
}
@end
@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [application setStatusBarHidden:YES];
    [[UINavigationBar appearance]setTintColor:COOKBOOK_PURPLE_COLOR];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    TestBedViewController * tbvc=[[TestBedViewController alloc] init];
    UINavigationController *nav=[[UINavigationController alloc] initWithRootViewController:tbvc];
    // Override point for customization after application launch.
    self.window.rootViewController=nav;
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
