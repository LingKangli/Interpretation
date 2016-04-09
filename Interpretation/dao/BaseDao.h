//
//  BaseDao.h
//  Interpretation
//
//  Created by zhihuiyun on 14-9-19.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import <Foundation/Foundation.h>
@class FMDatabase;

@interface BaseDao : NSObject{
    FMDatabase *database;
}
@property (nonatomic, retain) FMDatabase *database;

//-(NSString *)SQL:(NSString *)sql inTable:(NSString *)table;

@end
