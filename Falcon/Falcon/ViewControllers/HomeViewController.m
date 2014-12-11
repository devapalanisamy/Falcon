//
//  HomeViewController.m
//  Falcon
//
//  Created by Deva Palanisamy on 10/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import "HomeViewController.h"
#import "CountryViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        UITabBarItem *barItem = [[UITabBarItem alloc]initWithTitle:@"Home" image:[UIImage imageNamed:@"home"] tag:0];
        [self setTabBarItem:barItem];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTableData];
    self.view.backgroundColor = [UIColor whiteColor];
    tableview = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableview.frame = CGRectMake(self.view.frame.origin.x, self.view.frame.origin.y+50, self.view.bounds.size.width, self.view.bounds.size.height-70);
    tableview.dataSource = self;
    tableview.delegate = self;
    tableview.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:tableview];
    self.navigationController.navigationBar.hidden = YES;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return countries.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyIdentifier"];

     if (cell == nil)
     {
         cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"MyIdentifier"];
         cell.selectionStyle = UITableViewCellSelectionStyleNone;
     }

    cell.textLabel.text = [countries objectAtIndex:indexPath.row];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    CountryViewController *countryViewController = [[CountryViewController alloc]init];
    [self.navigationController pushViewController:countryViewController animated:YES];
}

- (void)setTableData
{
    countries = [NSArray arrayWithObjects:@"United Kingdom",@"France",@"Germany",@"Spain",@"Japan",@"China",@"India",@"United Kingdom",@"France",@"Germany",@"Spain", nil];
}
@end
