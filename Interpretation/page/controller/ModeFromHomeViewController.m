//
//  ModeFromHomeViewController.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-16.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "ModeFromHomeViewController.h"
//#import "ModeFromHomeTableViewCell.h"
#import "Two_OneViewController.h"
#import "Two_TwoViewController.h"
#import "Two_ThreeViewController.h"
#import "Two_FiveViewController.h"
#import "Two_SixViewController.h"
#import "ModeCollectionCell.h"
#import "BookMainDao.h"

//#import "Utill.h"

@interface ModeFromHomeViewController ()

@end

@implementation ModeFromHomeViewController
@synthesize secondTitle = _secondTitle;
@synthesize modeCollectionView = _modeCollectionView;
@synthesize delegate;

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
    //设置题目
//    NSLog(@"clickItem.bookMainId:%i",clickItem.bookMainId);
#pragma mark setTitle
//    self.title = @"hello.";
    
    BookMainDao* bmd = [[BookMainDao alloc]init];
    bookInfos = [bmd findAllBookMainInfoByFatherID:bookInfo.bookMainId];
    
    [self.navigationItem setHidesBackButton:YES];
    ;

    //add return button
    [self addButton];

    //set second titles
    _secondTitle.text = secondTitleInfo;
    self.title = bookInfo.bookMainTitle;
    CGRect rect = [_secondTitle frame];
    NSLog(@"x:%f y:%f w:%f h:%f",rect.origin.x,rect.origin.y,rect.size.width,rect.size.height);
    
    //set collectionCell
    [self.modeCollectionView registerClass:[ModeCollectionCell class] forCellWithReuseIdentifier:@"collectionCell"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

////返回按钮
- (void)addButton {
    //动态添加一个按钮
    CGRect frame = CGRectMake(10, 64, 43, 43);
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = frame;
    [button setImage:[UIImage imageNamed:@"book_left_open"] forState:UIControlStateNormal];
//    [button setImage:[UIImage imageNamed:@"book_left_open"] forState:UIControlStateHighlighted];
    button.tag = 2000;
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
 
    [self.view addSubview:button];
}

//这个是新按钮的响应函数
-(void) buttonClicked {

    [self.navigationController popViewControllerAnimated:true];
}

#pragma mark -- UICollectionViewDataSource
//定义展示的UICollectionViewCell的个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return bookInfos.count;
}

//定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

//每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * CellIdentifier = @"collectionCell";
    ModeCollectionCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.modeTitle.text = ((BookMainInfo*)[bookInfos objectAtIndex:indexPath.row]).bookMainTitle;
    
    cell.modeTitle.backgroundColor = [UIColor whiteColor];
    cell.modeImage.image = [UIImage imageNamed:((BookMainInfo*)[bookInfos objectAtIndex:indexPath.row]).bookMainImageName];
    cell.modeImage.backgroundColor = [UIColor whiteColor];

//    cell.backgroundColor = [UIColor colorWithRed:((10 * indexPath.row) / 255.0) green:((20 * indexPath.row)/255.0) blue:((30 * indexPath.row)/255.0) alpha:1.0f];
    return cell;
}

#pragma mark --UICollectionViewDelegateFlowLayout
//定义每个UICollectionView 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
//    ModeCollectionCell* mCell = [[ModeCollectionCell alloc]init];
//    UIImage* image = [UIImage imageNamed:@"1"];
//
//    return CGSizeMake(image.size.width, image.size.height);
    
    
    return CGSizeMake(140, 200);
}
//定义每个UICollectionView 的 margin
-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(10, 10, 3, 10);
}

#pragma mark --UICollectionViewDelegate
//UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
//    UICollectionViewCell * cell = (UICollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
//    cell.backgroundColor = [UIColor whiteColor];
    if (((BookMainInfo*)[bookInfos objectAtIndex:indexPath.row+1]).bookMainHasChildren == RootTwoOneZeroZero) {
        Two_OneViewController* twoOneController = [[Two_OneViewController alloc]init];
        self.delegate = twoOneController;
        [delegate pushValue:(BookMainInfo*)[bookInfos objectAtIndex:indexPath.row] pushTitle:self.title];

        [self.navigationController pushViewController:twoOneController animated:NO];
    }else if(((BookMainInfo*)[bookInfos objectAtIndex:indexPath.row+1]).bookMainHasChildren == RootTwoTwoZeroZero) {
        Two_TwoViewController* twoTwoController = [[Two_TwoViewController alloc]init];
        self.delegate = twoTwoController;
        [delegate pushValue:(BookMainInfo*)[bookInfos objectAtIndex:indexPath.row] pushTitle:self.title];
        [self.navigationController pushViewController:twoTwoController animated:NO];
    }
    NSLog(@"wwwww%i",((BookMainInfo*)[bookInfos objectAtIndex:indexPath.row+1]).bookMainHasChildren);
}
//返回这个UICollectionView是否可以被选择
-(BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

//
-(void)pushValue:(BookMainInfo *)value pushTitle:(NSString *)title{

    bookInfo = value;
    secondTitleInfo = title;
    
    NSLog(@"----book %@",self.secondTitle.text);
}

@end
