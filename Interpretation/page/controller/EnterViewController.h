//
//  EnterViewController.h
//  Interpretation
//
//  Created by zhihuiyun on 14-9-14.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EnterViewController : UIViewController{

    UITabBarController * tabBarController;
}
@property (strong, nonatomic) IBOutlet UIButton *enterButton;
- (IBAction)enterAction:(id)sender;

@end
