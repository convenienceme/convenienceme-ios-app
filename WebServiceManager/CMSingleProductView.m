//
//  CMSingleProductView.m
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import "CMSingleProductView.h"
#import "UIImageView+AFNetworking.h"
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

- (void) setProductDetails:(NSDictionary *) productDetails
{
    
    NSString * productImage = [productDetails valueForKey:@"imageURL"];
    NSString * productText = [productDetails valueForKey:@"description"];
    NSString * productTitleText = [productDetails valueForKey:@"name"];
    NSNumber * numberSlider = [productDetails valueForKey:@"status"];
    
    [self.productImage setImageWithURL:[NSURL URLWithString:productImage] placeholderImage:[UIImage imageNamed:@"placeholder-avatar"]];
    float percent = [numberSlider intValue]/100.0;
    
    if (percent < 0.3) {
        [self.percentSlider setMaximumTrackTintColor:[UIColor redColor]];
        [self.percentSlider setMinimumTrackTintColor:[UIColor redColor]];
    }else{
        [self.percentSlider setMaximumTrackTintColor:[UIColor greenColor]];
        [self.percentSlider setMinimumTrackTintColor:[UIColor greenColor]];
    }
    
    self.percentSlider.value = percent;
    [self.productDescription setText:productText];
    [self.productTitle setText:productTitleText];
    
}


- (IBAction)sliderValueChanged:(id)sender {
    [self.delegate sliderValueChanged:self];
}
@end
