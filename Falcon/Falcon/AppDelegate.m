//
//  AppDelegate.m
//  Falcon
//
//  Created by Deva Palanisamy on 10/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import "AppDelegate.h"
#import "TabControllerHelper.h"
#import "FalconJsonParser.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [self setTabBarController];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"GillSans" size:10.0f], NSFontAttributeName, nil] forState:UIControlStateNormal];
    self.tabBarController.tabBar.frame = CGRectMake(0, 20, self.window.bounds.size.width, 50);
    self.navigationController = [[UINavigationController alloc]initWithRootViewController:self.tabBarController];
    self.navigationController.navigationBar.hidden = YES;
    self.window.rootViewController = self.navigationController;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}

- (void)applicationWillTerminate:(UIApplication *)application
{

}

- (void)setTabBarController
{
    self.tabBarController = [[UITabBarController alloc]init];
    self.tabBarController.viewControllers = [[TabControllerHelper sharedInstance]getViewControllers];
    self.tabBarController.selectedIndex = 0;
}

@end
