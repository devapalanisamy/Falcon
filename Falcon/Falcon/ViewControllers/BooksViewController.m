//
//  BooksViewController.m
//  Falcon
//
//  Created by Deva Palanisamy on 11/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import "BooksViewController.h"

@interface BooksViewController ()

@end

@implementation BooksViewController

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        UITabBarItem *barItem = [[UITabBarItem alloc]initWithTitle:@"" image:[UIImage imageNamed:@"books"] tag:0];
        [self setTabBarItem:barItem];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    UIView *view = [[UIView alloc]init];
    view.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y+50, self.view.bounds.size.width, self.view.bounds.size.height-50);
    UILabel *label = [[UILabel alloc]init];
    label.text = @"Books";
    [label sizeToFit];
    label.center = self.view.center;
    label.font=[UIFont fontWithName:@"GillSans" size:15];
    view.backgroundColor = [UIColor yellowColor];
    [view addSubview:label];
    [self.view addSubview:view];
}

@end
