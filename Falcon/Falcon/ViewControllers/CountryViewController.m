//
//  CountryViewController.m
//  Falcon
//
//  Created by Deva Palanisamy on 11/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import "CountryViewController.h"

@interface CountryViewController ()

@end

@implementation CountryViewController

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.title = @"Country";
        self.label = [[UILabel alloc]init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.navigationController.navigationBar.hidden = NO;

    [self.label sizeToFit];
    self.label.center = self.view.center;
    self.label.font=[UIFont fontWithName:@"GillSans" size:15];
    [self.view addSubview:self.label];
}

- (void)viewWillDisappear:(BOOL)animated
{
    self.navigationController.navigationBar.hidden = YES;
}

@end
