//
//  HomeViewController.m
//  Falcon
//
//  Created by Deva Palanisamy on 10/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import "HomeViewController.h"
#import "TaskDetailViewController.h"
#import "FalconJsonParser.h"
#import "CustomTableViewCell.h"

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
    [tableview registerNib:[UINib nibWithNibName:@"CustomTableViewCell" bundle:nil ] forCellReuseIdentifier:@"MyIdentifier"];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return taskList.count;
}



- (CustomTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyIdentifier"];

     if (cell == nil)
     {
         cell = [[CustomTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MyIdentifier"];
         cell.selectionStyle = UITableViewCellSelectionStyleNone;
     }

    NSDictionary *dictionary = [taskList objectAtIndex:indexPath.row];
    cell.title.text = [[dictionary valueForKey:@"data"]valueForKey:@"title"];
    cell.status.text = [[dictionary valueForKey:@"data"]valueForKey:@"status"];
    cell.location.text = [[dictionary valueForKey:@"data"]valueForKey:@"location"];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 93;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TaskDetailViewController *countryViewController = [[TaskDetailViewController alloc]init];
    NSDictionary *dictionary = [taskList objectAtIndex:indexPath.row];
    countryViewController.label.text = [NSString stringWithFormat:@"You have selected : %@ ",[[dictionary valueForKey:@"data"]valueForKey:@"title"]];
    [self.navigationController pushViewController:countryViewController animated:YES];
}

- (void)setTableData
{
    taskList = [FalconJsonParser getJsonArray:[FalconJsonParser getJsonData]];
}
@end
