//
//  SettingsViewController.m
//  Falcon
//
//  Created by Deva Palanisamy on 11/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        UITabBarItem *barItem = [[UITabBarItem alloc]initWithTitle:@"Settings" image:[UIImage imageNamed:@"settings"] tag:0];
        [self setTabBarItem:barItem];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];

}

@end
