//
//  TabBarViewController.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-16.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    
    if(item.tag == 1){
        NSLog(@"TestOneController");
    }else if(item.tag == 2){
        NSLog(@"TestTwoController");
    }else {
        NSLog(@"TestThirdController");
    }
}

@end
