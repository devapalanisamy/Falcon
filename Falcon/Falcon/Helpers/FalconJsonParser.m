//
//  FalconJsonParser.m
//  Falcon
//
//  Created by Deva Palanisamy on 12/12/2014.
//  Copyright (c) 2014 Sales-i. All rights reserved.
//

#import "FalconJsonParser.h"

@implementation FalconJsonParser

+ (NSData*)getJsonData
{
    NSString *myFile = [[NSBundle mainBundle] pathForResource: @"Information" ofType: @"json"];
    NSData *data = [NSData dataWithContentsOfFile:myFile];
    return data;
}

+ (NSArray*)getJsonArray:(NSData*)data
{
    NSError *error = nil;
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];

    if (error)
    {
        NSLog(@"Json parsing error: %@",[error localizedDescription]);
    }

    return jsonArray;
}

@end
