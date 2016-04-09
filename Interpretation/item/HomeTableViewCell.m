//
//  HomeTableViewCell.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-15.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "HomeTableViewCell.h"

@implementation HomeTableViewCell
@synthesize leftImage = _leftImage;
@synthesize rightImage = _rightImage;
@synthesize title = _title;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

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
