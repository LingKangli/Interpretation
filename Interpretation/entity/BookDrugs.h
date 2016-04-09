//
//  BookDrugs.h
//  Interpretation
//
//  Created by zhihuiyun on 14-9-20.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookDrugs : NSObject{

    NSInteger bookDrugsId;
    NSString* bookDrugsType;
    NSString* bookDrugsName;
    NSString* bookMainDrugsId;
    NSString* bookDrugsOrder;
}

@property NSInteger bookDrugsId;
@property NSString* bookDrugsType;
@property NSString* bookDrugsName;
@property NSString* bookMainDrugsId;
@property NSString* bookDrugsOrder;

@end
