//
//  BookFormDetail.h
//  Interpretation
//
//  Created by zhihuiyun on 14-9-20.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookFormDetail : NSObject{

    NSInteger formDetailId;
    NSInteger bookFormId;
    NSString* formDetailTitle;
    NSInteger formDetailFatherId;
    NSInteger formDetailHasChildren;
    NSString* formDetailContent;
    NSInteger bookMainId;
    NSInteger formDetailAdId;
    NSInteger formDetailOrderId;
    NSString* formDetailHtmlName;
}

@property NSInteger formDetailId;
@property NSInteger bookFormId;
@property NSString* formDetailTitle;
@property NSInteger formDetailFatherId;
@property NSInteger formDetailHasChildren;
@property NSString* formDetailContent;
@property NSInteger bookMainId;
@property NSInteger formDetailAdId;
@property NSInteger formDetailOrderId;
@property NSString* formDetailHtmlName;

@end
