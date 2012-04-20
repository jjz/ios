//
//  TabBarAppDelegate.m
//  TabBar
//
//  Created by MagicStudio on 12-4-20.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "TabBarAppDelegate.h"

#import "TabBarViewController.h"

@implementation TabBarAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;
-(void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed{
    NSMutableArray *titles=[NSMutableArray array];
    for(UIViewController *vc in viewControllers) [titles addObject:vc.title];
    [[NSUserDefaults  standardUserDefaults] setObject:titles forKey:@"tabOrder"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
    NSNumber *tabBumber=[NSNumber numberWithInt:[tabBarController selectedIndex]];
    [[NSUserDefaults standardUserDefaults] setObject:tabBumber forKey:@"selectedTab"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
-(void)applicationDidFinishLaunching:(UIApplication *)application{
    NSMutableArray *controllers=[NSMutableArray array];
    NSArray *titles=[[NSUserDefaults standardUserDefaults] objectForKey:@"tabOrder"];
    if(!titles){
        for(int i=0;i<=10;i++){
            TabBarViewController *tvc=[[TabBarViewController alloc] initWithBrightness:i];
            UINavigationController *nav=[[UINavigationController alloc] initWithRootViewController:tvc];
            nav.navigationBar.barStyle=UIBarStyleBlackTranslucent;
            [tvc release];
            [controllers addObject:nav];
            [nav release];
        }
        
    }else{
        for(NSString *theTitle in titles){
            TabBarViewController *tvc=[[TabBarViewController alloc]initWithBrightness:([theTitle intValue])];
            UINavigationController *nav=[[UINavigationController alloc] initWithRootViewController:tvc];
            nav.navigationBar.barStyle=UIBarStyleBlackTranslucent;
            [tvc release];
            [controllers addObject:nav];
            [nav release];
        }
    }
    UITabBarController *tabController=[[UITabBarController alloc] init];
    tabController.viewControllers=controllers;
    tabController.customizableViewControllers=controllers;
    tabController.delegate=self;
    NSNumber *tabNumber=[[NSUserDefaults standardUserDefaults] objectForKey:@"selectedTab"];
    if(tabNumber)
        tabController.selectedIndex=[tabNumber intValue];
   // TabBarViewController *tvc=[[TabBarViewController alloc] init];
    UIWindow *window=[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [window addSubview:tabController.view];
    [window makeKeyAndVisible];
}
//- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
//{
//    // Override point for customization after application launch.
//     
//    self.window.rootViewController = self.viewController;
//    [self.window makeKeyAndVisible];
//    return YES;
//}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

@end
