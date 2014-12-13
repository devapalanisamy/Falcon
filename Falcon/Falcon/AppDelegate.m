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
    [[UITabBar appearance] setBarTintColor:[UIColor blackColor]];
    [[UITabBar appearance] setTintColor:[UIColor yellowColor]];
    self.tabBarController.tabBar.frame = CGRectMake(0, 20, self.window.bounds.size.width, 50);
    self.tabBarController.delegate = self;
    [self addTabBarArrow];
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

- (void)tabBarController:(UITabBarController *)theTabBarController didSelectViewController:(UIViewController *)viewController
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.2];
    CGRect frame = self.tabBarArrow.frame;
    frame.origin.x = [self horizontalLocationFor:self.tabBarController.selectedIndex];
    self.tabBarArrow.frame = frame;
    [UIView commitAnimations];
}

- (void) addTabBarArrow
{
    UIImage* tabBarArrowImage = [UIImage imageNamed:@"TabBarNipple"];
    self.tabBarArrow = [[UIImageView alloc] initWithImage:tabBarArrowImage] ;

    CGFloat verticalLocation = 68;
    self.tabBarArrow.frame = CGRectMake([self horizontalLocationFor:0], verticalLocation, tabBarArrowImage.size.width, tabBarArrowImage.size.height);

    [self.tabBarController.view addSubview:self.tabBarArrow];
}

- (CGFloat) horizontalLocationFor:(NSUInteger)tabIndex
{

    CGFloat tabItemWidth = self.tabBarController.tabBar.frame.size.width / self.tabBarController.tabBar.items.count;

    CGFloat halfTabItemWidth = (tabItemWidth / 2.0) - (self.tabBarArrow.frame.size.width / 2.0);


    return (tabIndex * tabItemWidth) + halfTabItemWidth;
}

@end
