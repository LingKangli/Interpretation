//
//  TwoThreeTableViewCell.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-17.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "TwoThreeTableViewCell.h"

@implementation TwoThreeTableViewCell
@synthesize titleLabel = _titleLabel;
@synthesize rightImage = _rightImage;

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
