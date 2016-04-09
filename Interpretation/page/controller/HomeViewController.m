//
//  HomeViewController.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-14.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTableViewCell.h"
#import "ModeFromHomeViewController.h"
#import "BookMainDao.h"

@interface HomeViewController ()

@end

@implementation HomeViewController
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UITabBarItem* item2 = [[UITabBarItem alloc]initWithTitle:nil image:[UIImage imageNamed:@"book_menu_home"] selectedImage:[UIImage imageNamed: @"book_menu_home_on"]];
        self.tabBarItem = item2;
        [self.navigationItem setHidesBackButton:YES];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"内分泌科";
    
//    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
//                                                    [UIColor colorWithRed:0 green:0.7 blue:0.8 alpha:1], UITextAttributeTextColor,
//                                                                     [UIColor colorWithRed:0 green:0.7 blue:0.8 alpha:1], UITextAttributeTextShadowColor,
//                                                                     [NSValue valueWithUIOffset:UIOffsetMake(0, 0)], UITextAttributeTextShadowOffset,
//                                                                     [UIFont fontWithName:@"Arial-Bold" size:0.0], UITextAttributeFont,
//                                                                     nil]];
    
    [self.navigationController.navigationBar setBackgroundColor:[UIColor blueColor]];
    [self.navigationController.navigationBar setBounds:(CGRectMake(0, -20, 400, 7))];
//    NSLog(@"aaa---%",ScreenWidth);
//    NSLog(@"aaa---%f",ScreenHeight);
    
    BookMainDao* bmd = [[BookMainDao alloc]init];
    mainInfoRoot = [bmd findAllBookMainInfoByFatherID:RootFather];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //tableView 设置
    tableView.layer.borderWidth = 1;
    tableView.layer.borderColor = [[UIColor blueColor] CGColor];
//    tableView.separatorColor = [UIColor redColor];
    
    static NSString *simpleTableIdentifier = @"myCell";
    
    HomeTableViewCell *cell = (HomeTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"HomeTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.leftImage.image = [UIImage imageNamed:@"app_icon.png"];
    cell.rightImage.image = [UIImage imageNamed:@"book_right_close"];
//    cell.title.text = @"title";
    NSLog(@"indexPath.row:%i",indexPath.row);
    cell.title.text = ((BookMainInfo*)[mainInfoRoot objectAtIndex:indexPath.row]).bookMainTitle ;

    cell.backgroundColor = [UIColor clearColor];
//    cell.textLabel
//    cell.nameLabel.text = [tableData objectAtIndex:indexPath.row];
//    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
//    cell.prepTimeLabel.text = [prepTime objectAtIndex:indexPath.row];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return [mainInfoRoot count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 46;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    HomeTableViewCell* cell = (HomeTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
//    cell.rightImage.image = [UIImage imageNamed:@"book_right_open"];

//    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
#pragma mark goToNextPage ---- navigationController

    ModeFromHomeViewController* modeController = [[ModeFromHomeViewController alloc]initWithNibName:@"ModeFromHomeViewController" bundle:nil];
    self.delegate = modeController;
//    NSLog(@"((BookMainInfo*)[mainInfoRoot objectAtIndex:indexPath.row]).bookMainTitle::::%@",((BookMainInfo*)[mainInfoRoot objectAtIndex:indexPath.row]).bookMainTitle);
    [self.navigationController pushViewController:modeController animated:NO];
    [delegate pushValue:(BookMainInfo*)[mainInfoRoot objectAtIndex:indexPath.row] pushTitle:PageRoot];


}


@end
