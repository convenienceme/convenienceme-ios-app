//
//  CMMiniAlertView.m
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import "CMMiniAlertView.h"
#import  <QuartzCore/QuartzCore.h>

@implementation CMMiniAlertView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [[NSBundle mainBundle] loadNibNamed:@"CMMiniAlertView" owner:self options:nil];
        [self addSubview:self.topLevelSubview];
        
        self.layer.cornerRadius = 5.f;
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowOpacity = 1.0f;
        self.layer.shadowRadius = 3.0f;
        self.layer.backgroundColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.70 alpha:1.0].CGColor;
        //self.layer.masksToBounds = YES;
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
