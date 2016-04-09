//
//  Util.h
//  Interpretation
//
//  Created by zhihuiyun on 14-9-19.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BookMainInfo.h"

//自定义数据。
#define RootFather 0 
#define RootChildOne 1
#define RootChildTwo 2
#define RootChildThree 3
#define RootChildFour 4
#define RootChildFive 5
#define RootChildSix 6
#define RootChildSeven 7
#define RootChildEight 8
#define RootChildNine 9


#define RootTwoOneZeroZero 1  //mode1
#define RootTwoTwoZeroZero 3  //mode2
#define RootTwoThreeZeroZero 3  //mode3
#define RootTwoFourZeroZero 4  //mode4
#define RootTwoFiveZeroZero 5  //mode5
#define RootTwoSixZeroZero 6  //mode6



#define PageRoot @"内分泌科"

//页面间传值。－－－－Delegate
@protocol pushValueDelegate <NSObject>
-(void)pushValue:(BookMainInfo*)value pushTitle:(NSString*)title;
@end


@interface Utill : NSObject

//添加返回按钮
+(UIButton*)addReturnButton;


@end
