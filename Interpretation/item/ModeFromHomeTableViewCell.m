//
//  ModeFromHomeTableViewCell.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-16.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "ModeFromHomeTableViewCell.h"

@implementation ModeFromHomeTableViewCell
@synthesize leftImage = _leftImage;
@synthesize leftLabel = _leftLabel;
@synthesize rightImage = _rightImage;
@synthesize rightLabel = _rightLabel;

@synthesize collectionImage = _collectionImage;
@synthesize collectionTitle = _collectionTitle;

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
//    [super setSelected:selected animated:animated];
//
//    // Configure the view for the selected state
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
//    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
//    if (self) {
//        // Initialization code
//    }
    return self;
}
@end
