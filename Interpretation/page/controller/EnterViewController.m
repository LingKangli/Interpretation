//
//  EnterViewController.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-14.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "EnterViewController.h"
#import "HomeViewController.h"
#import "ModeFromHomeViewController.h"
#import "TabBarViewController.h"
#import "SearchBarViewController.h"
#import "ShareBarViewController.h"
#import "AddBarViewController.h"
#import "MoreBarViewController.h"

@interface EnterViewController ()

@end

@implementation EnterViewController

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

- (IBAction)enterAction:(id)sender {
    
#pragma mark goToNextPage ---- tab Bar
    
    NSMutableArray * items = [[NSMutableArray alloc]init];
    
    //每个标签下的第一个controller
    HomeViewController* testOne = [[HomeViewController alloc]init];
    ShareBarViewController* shareBar = [[ShareBarViewController alloc]init];
    AddBarViewController* addBar = [[AddBarViewController alloc]init];
    SearchBarViewController* searchBar = [[SearchBarViewController alloc]init];
    MoreBarViewController* moreBar = [[MoreBarViewController alloc]init];
    
    //每个标签对应的导航
    UINavigationController* nav1 = [[UINavigationController alloc] initWithRootViewController:testOne] ;//每个导航中加入了其对应的第一个controller
    UINavigationController* nav2 = [[UINavigationController alloc] initWithRootViewController:shareBar] ;
    UINavigationController* nav3 = [[UINavigationController alloc] initWithRootViewController:addBar] ;
    UINavigationController* nav4 = [[UINavigationController alloc] initWithRootViewController:searchBar] ;
    UINavigationController* nav5 = [[UINavigationController alloc] initWithRootViewController:moreBar] ;

    //    [self.navigationController setNavigationBarHidden:NO animated:YES];
    
    //将导航添加到数组中
    [items addObject:nav1];
     [items addObject:nav2];
     [items addObject:nav4];
    [items addObject:nav3];
     [items addObject:nav5];
    
//
    //新建TabBar,并且将数组中的导航根加入其中。
    TabBarViewController* tabBar = [[TabBarViewController alloc]init];
    [tabBar setTitle:@"TabBarController"];
    [tabBar setViewControllers:items];
    
    [self presentModalViewController:tabBar animated:NO];
    
}


@end
