//
//  MagazinesViewController.m
//  Falcon
//
//  Created by Deva Palanisamy on 11/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import "MagazinesViewController.h"

@interface MagazinesViewController ()

@end

@implementation MagazinesViewController

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        UITabBarItem *barItem = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"magazines"] tag:0];
        [self setTabBarItem:barItem];
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc]init];
    label.text = @"Magazines";
    [label sizeToFit];
    label.center = self.view.center;
    label.font=[UIFont fontWithName:@"GillSans" size:15];
    [self.view addSubview:label];
}



@end
