//
//  CMSingleProductView.m
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import "CMSingleProductView.h"
#import <QuartzCore/QuartzCore.h>

@implementation CMSingleProductView


- (id) initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [[NSBundle mainBundle] loadNibNamed:@"CMSingleProductView" owner:self options:nil];
        [self addSubview:self.topLevelSubview];

        //self.layer.masksToBounds = YES;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    if ((self = [super initWithCoder:aDecoder])) {
        [[NSBundle mainBundle] loadNibNamed:@"CMSingleProductView" owner:self options:nil];
        [self addSubview:self.topLevelSubview];
    }
    return self;
}

- (IBAction)sendMoreTapped:(id)sender {


}

- (IBAction)sliderValueChanged:(id)sender {
}
@end
