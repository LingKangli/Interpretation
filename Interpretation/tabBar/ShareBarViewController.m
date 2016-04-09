//
//  ShareBarViewController.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-16.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "ShareBarViewController.h"

@interface ShareBarViewController ()

@end

@implementation ShareBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
//        UITabBarItem *item = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemMostRecent tag:1];
        UITabBarItem* item = [[UITabBarItem alloc]initWithTitle:nil image:[UIImage imageNamed:@"book_menu_share"] selectedImage:[UIImage imageNamed: @"book_menu_share_on"]];

        
        self.tabBarItem = item;
//        self.tabBarItem.badgeValue = [NSString stringWithFormat:@"%d",1];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
