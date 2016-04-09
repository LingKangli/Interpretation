//
//  Two_OneViewController.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-17.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//
#ifdef _FOR_DEBUG_
-(BOOL) respondsToSelector:(SEL)aSelector {
    printf("SELECTOR: %s\n", [NSStringFromSelector(aSelector) UTF8String]);
    return [super respondsToSelector:aSelector];
}
#endif

#import "Two_OneViewController.h"
#import "JSONKit.h"

@interface Two_OneViewController ()

@end

@implementation Two_OneViewController

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
    self.title = bookMainInfo.bookMainTitle;
    NSLog(@"self.title:%@",bookMainInfo.bookMainTitle);
    [self addButton];
    [self addTitle];
    [self addContent];
    [self addSecondTitle];
    [self addSecondContent];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//delegate 
-(void)pushValue:(BookMainInfo *)value pushTitle:(NSString *)title{
    
    bookMainInfo = value;
    secondTitleInfo = title;
    
}
//添加标题
-(void)addTitle{
  
    UILabel* secondTitle = [[UILabel alloc]initWithFrame:CGRectMake(70, 64, 200, 43)];
    secondTitle.text = secondTitleInfo;
    [self.view addSubview:secondTitle];
}


//添加返回按钮
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

//添加第一个区域内容
-(void)addContent{
    NSLog(@"json:%@",bookMainInfo.bookMainContent);
    NSString* jsonStr = bookMainInfo.bookMainContent;
    NSData* jsonData = [jsonStr dataUsingEncoding:NSUTF8StringEncoding];
//    
    NSDictionary* resultDict = [jsonData objectFromJSONData];
    UILabel* firstContent = [[UILabel alloc]initWithFrame:CGRectMake(30, 100, 500, 70)];
    firstContent.text = [resultDict objectForKey:@"content"];
    
    NSLog(@"%@",firstContent.text);
    [self.view addSubview:firstContent];
}

//添加第二个区域标题
-(void)addSecondTitle{
    NSLog(@"json:%@",bookMainInfo.bookMainContent);
    NSString* jsonStr = bookMainInfo.bookMainContent;
    NSData* jsonData = [jsonStr dataUsingEncoding:NSUTF8StringEncoding];
    //
    NSDictionary* resultDict = [jsonData objectFromJSONData];
    UILabel* firstContent = [[UILabel alloc]initWithFrame:CGRectMake(30, 200, 500, 70)];
    firstContent.text = [resultDict objectForKey:@"title"];
    
    NSLog(@"%@",firstContent.text);
    [self.view addSubview:firstContent];
}

//添加第二个区域内容
-(void)addSecondContent{
    NSLog(@"json:%@",bookMainInfo.bookMainContent);
    NSString* jsonStr = bookMainInfo.bookMainContent;
    NSData* jsonData = [jsonStr dataUsingEncoding:NSUTF8StringEncoding];
    //
    NSDictionary* resultDict = [jsonData objectFromJSONData];
    UILabel* firstContent = [[UILabel alloc]initWithFrame:CGRectMake(30, 250, 500, 70)];
    firstContent.text = [resultDict objectForKey:@"title_content"];
    
    NSLog(@"%@",firstContent.text);
    [self.view addSubview:firstContent];
}

@end
