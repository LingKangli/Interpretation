//
//  BookFromDetailContent.h
//  Interpretation
//
//  Created by zhihuiyun on 14-9-20.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookFromDetailContent : NSObject{

    NSInteger detailContentId;
    NSInteger formDetailId;
    NSString* detailContentTitle;
    NSInteger detailContentFatherId;
    NSInteger detailContentHasChildren;
    NSString* detailContentContent;
    NSInteger detailContentAdId;
    NSInteger detailContentOrderId;
    NSInteger bookMainId;
    NSString* detailContentHtmlName;
}
@property NSInteger detailContentId;
@property NSInteger formDetailId;
@property NSString* detailContentTitle;
@property NSInteger detailContentFatherId;
@property NSInteger detailContentHasChildren;
@property NSString* detailContentContent;
@property NSInteger detailContentAdId;
@property NSInteger detailContentOrderId;
@property NSInteger bookMainId;
@property NSString* detailContentHtmlName;


@end
