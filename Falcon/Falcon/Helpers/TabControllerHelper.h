//
//  TabControllerHelper.h
//  Falcon
//
//  Created by Deva Palanisamy on 11/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TabControllerHelper : NSObject

+ (TabControllerHelper*)sharedInstance;

- (NSArray*)getViewControllers;

@end
