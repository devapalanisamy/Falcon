//
//  TabControllerHelper.m
//  Falcon
//
//  Created by Deva Palanisamy on 11/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import "TabControllerHelper.h"
#import "HomeViewController.h"
#import "BooksViewController.h"
#import "MagazinesViewController.h"
#import "VideosViewController.h"
#import "SettingsViewController.h"



@implementation TabControllerHelper

+ (TabControllerHelper*)sharedInstance
{

    static TabControllerHelper *_sharedInstance = nil;

    static dispatch_once_t oncePredicate;

    dispatch_once(&oncePredicate, ^{
        _sharedInstance = [[TabControllerHelper alloc] init];
    });
    return _sharedInstance;
}

- (NSArray*)getViewControllers
{
    HomeViewController *homeViewController = [[HomeViewController alloc]init];
    BooksViewController *booksViewController = [[BooksViewController alloc]init];
    MagazinesViewController *magazinesViewController = [[MagazinesViewController alloc]init];
    VideosViewController *videosViewController = [[VideosViewController alloc]init];
    SettingsViewController *settingsViewController = [[SettingsViewController alloc]init];

    NSArray *viewControllers = [NSArray arrayWithObjects:homeViewController,
                                                         booksViewController,
                                                         magazinesViewController,
                                                         videosViewController,
                                                         settingsViewController,nil];
    return viewControllers;
}
@end
