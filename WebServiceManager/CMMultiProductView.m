//
//  CMMultiProductView.m
//  ConvenienceMe
//
//  Created by Suvarshi Bhadra on 6/1/13.
//  Copyright (c) 2013 Suvarshi Bhadra. All rights reserved.
//

#import "CMMultiProductView.h"
#import "CMSingleProductView.h"
#import <QuartzCore/QuartzCore.h>

@implementation CMMultiProductView

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
        [[NSBundle mainBundle] loadNibNamed:@"CMMultiProductView" owner:self options:nil];
        [self addSubview:self.topLevelSubview];
        [self.carousel setType:iCarouselTypeCoverFlow];

        self.layer.cornerRadius = 5.f;
        self.layer.shadowColor = [UIColor blackColor].CGColor;
        self.layer.shadowOpacity = 1.0f;
        self.layer.shadowRadius = 5.0f;
        self.layer.masksToBounds = YES;
    }
    return self;
}

- (void) setProducts:(NSMutableArray *)products
{
    self.productList = products;
    [self setNeedsLayout];
}

- (void) layoutSubviews
{
    [super layoutSubviews];
    [self.carousel reloadData];
}


#pragma mark - iCarousel Datasource

- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    //return the total number of items in the carousel
    return [self.productList count];
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index reusingView:(UIView *)view
{
    UILabel *label = nil;
    
    
    //create new view if no view is available for recycling
    if (view == nil)
    {
        //don't do anything specific to the index within
        //this `if (view == nil) {...}` statement because the view will be
        //recycled and used with other index values later
        view = [[CMSingleProductView alloc] initWithFrame:CGRectMake(0.0, 0.0, 272.0f, 211.0f)];
        view.contentMode = UIViewContentModeCenter;
    }
    else
    {
     
    }
    
    CMSingleProductView * productView = (CMSingleProductView *) view;
    return view;
}

- (CGFloat)carousel:(iCarousel *)carousel valueForOption:(iCarouselOption)option withDefault:(CGFloat)value
{
    if (option == iCarouselOptionSpacing)
    {
        return value * 1.1f;
    }
    return value;
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
