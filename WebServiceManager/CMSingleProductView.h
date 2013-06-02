//
//  CMSingleProductView.h
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CMSingleProductView : UIView

@property (nonatomic, strong) IBOutlet UIView * topLevelSubview;

@property (weak, nonatomic) IBOutlet UISlider *percentSlider;
@property (weak, nonatomic) IBOutlet UILabel *productTitle;
@property (weak, nonatomic) IBOutlet UIImageView *productImage;
@property (weak, nonatomic) IBOutlet UITextView *productDescription;

- (IBAction)sendMoreTapped:(id)sender;
- (IBAction)sliderValueChanged:(id)sender;

@end
