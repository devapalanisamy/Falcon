//
//  CustomTableViewCell.h
//  Falcon
//
//  Created by Deva Palanisamy on 12/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UILabel *status;

@end
