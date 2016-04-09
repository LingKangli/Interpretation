//
//  BookMainInfo.h
//  NSIntegererpretation
//
//  Created by zhihuiyun on 14-9-19.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookMainInfo : NSObject{
    
    NSInteger bookMainId;
    NSString* bookMainTitle;
    NSInteger bookMainFatherId;
    NSInteger bookMainHasChildren;
    NSString* bookMainContent;
    NSString* bookMainImageName;
    NSString* bookMainInterpretContent;
    NSInteger bookMainTitleType;
    NSInteger bookMainTitleColor;
    NSInteger bookMainDrugId;
    NSInteger bookMainFormId;
    NSInteger bookMainOnOff;
    NSInteger bookMainAdId;
    NSInteger bookMainOrderId;
    NSString* bookMainHtmlName;
}

@property NSInteger bookMainId;
@property NSString* bookMainTitle;
@property NSInteger bookMainFatherId;
@property NSInteger bookMainHasChildren;
@property NSString* bookMainContent;
@property NSString* bookMainImageName;
@property NSString* bookMainInterpretContent;
@property NSInteger bookMainTitleType;
@property NSInteger bookMainTitleColor;
@property NSInteger bookMainDrugId;
@property NSInteger bookMainFormId;
@property NSInteger bookMainOnOff;
@property NSInteger bookMainAdId;
@property NSInteger bookMainOrderId;
@property NSString* bookMainHtmlName;

@end
