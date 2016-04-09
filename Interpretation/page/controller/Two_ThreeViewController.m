//
//  Two_ThreeViewController.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-17.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "Two_ThreeViewController.h"
#import "TwoThreeTableViewCell.h"
#import "Two_TwoViewController.h"
#import "Two_Three_FourViewController.h"
#import "Two_Three_SixViewController.h"
#import "Two_Three_SevenViewController.h"

@interface Two_ThreeViewController ()

@end

@implementation Two_ThreeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self.navigationItem setHidesBackButton:YES];
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


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //tableView 设置
    tableView.layer.borderWidth = 1;
    tableView.layer.borderColor = [[UIColor blueColor] CGColor];
    tableView.separatorColor = [UIColor redColor];
    //    [UIColor colorWithRed:255 green:100 blue:100 alpha:0];
    
    static NSString *simpleTableIdentifier = @"twoThreeTableViewCell";
    
    TwoThreeTableViewCell *cell = (TwoThreeTableViewCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"TwoThreeTableViewCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.rightImage.image = [UIImage imageNamed:@"book_right_close"];
    cell.titleLabel.text = @"title";
    cell.backgroundColor = [UIColor clearColor];
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 46;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    TwoThreeTableViewCell* cell = (TwoThreeTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
    cell.rightImage.image = [UIImage imageNamed:@"book_right_open"];
    //    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
#pragma mark goToNextPage ---- navigationController
    if (indexPath.row == 0) {//0,1,2,3,5,8,9
        Two_TwoViewController* modeController = [[Two_TwoViewController alloc]initWithNibName:@"Two_TwoViewController" bundle:nil];
        [self.navigationController pushViewController:modeController animated:NO];
    }else if(indexPath.row == 1){//4
        Two_Three_FourViewController* modeController = [[Two_Three_FourViewController alloc]initWithNibName:@"Two_Three_FourViewController" bundle:nil];
        [self.navigationController pushViewController:modeController animated:NO];
    } else if(indexPath.row == 2){//6
        Two_Three_SixViewController* modeController = [[Two_Three_SixViewController alloc]initWithNibName:@"Two_Three_SixViewController" bundle:nil];
        [self.navigationController pushViewController:modeController animated:NO];
    }else if(indexPath.row == 3){//7
        Two_Three_SevenViewController* modeController = [[Two_Three_SevenViewController alloc]initWithNibName:@"Two_Three_SevenViewController" bundle:nil];
        [self.navigationController pushViewController:modeController animated:NO];
    }else {
        
        NSLog(@"oooooo===%i",indexPath.row);
    }

    
}

@end
