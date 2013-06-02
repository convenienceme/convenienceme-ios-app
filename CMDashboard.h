//
//  CMDashboard.h
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMDashboard : NSObject

@property (nonatomic, strong) NSArray * products;
@property (nonatomic, strong) NSMutableDictionary *userProfile;

- (id) initWithJSON:(NSDictionary*) json;

@end
