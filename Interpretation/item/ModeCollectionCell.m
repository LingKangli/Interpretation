//
//  ModeCollectionCell.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-22.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "ModeCollectionCell.h"

@implementation ModeCollectionCell

@synthesize modeImage = _modeImage;
@synthesize modeTitle = _modeTitle;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"ModeCollectionCell" owner:self options: nil];
        if(arrayOfViews.count < 1){return nil;}
        if(![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]){
            return nil;
        }
        self = [arrayOfViews objectAtIndex:0];
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
