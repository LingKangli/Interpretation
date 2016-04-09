//
//  Two_TwoViewController.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-17.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "Two_TwoViewController.h"

@interface Two_TwoViewController ()

@end

@implementation Two_TwoViewController

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
    self.navigationItem.hidesBackButton = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pushValue:(BookMainInfo *)value pushTitle:(NSString *)title{

    bookMainInfo = value;
    
}
@end
