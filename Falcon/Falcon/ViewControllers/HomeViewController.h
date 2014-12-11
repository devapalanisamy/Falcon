//
//  HomeViewController.h
//  Falcon
//
//  Created by Deva Palanisamy on 10/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *countries;
    UITableView *tableview;
}

@end
