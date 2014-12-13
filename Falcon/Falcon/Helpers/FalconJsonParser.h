//
//  FalconJsonParser.h
//  Falcon
//
//  Created by Deva Palanisamy on 12/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FalconJsonParser : NSObject

+ (NSData*)getJsonData;
+ (NSArray*)getJsonArray:(NSData*)data;

@end
