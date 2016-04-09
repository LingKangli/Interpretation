//
//  HomeTableViewCell.h
//  Interpretation
//
//  Created by zhihuiyun on 14-9-15.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *leftImage;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *rightImage;

@end
