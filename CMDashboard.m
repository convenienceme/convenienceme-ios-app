//
//  CMDashboard.m
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import "CMDashboard.h"

@implementation CMDashboard

- (id) initWithJSON:(NSDictionary*) json
{
    self = [super init];
    if (self) {
        _userProfile = [json valueForKey:@"userProfile"];
        _products = [json valueForKey:@"products"];
    }
    return self;
}


@end
