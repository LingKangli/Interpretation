//
//  BookMainDao.h
//  Interpretation
//
//  Created by zhihuiyun on 14-9-19.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDao.h"

#define kUserTableName @"book_form"

@interface BookMainDao : BaseDao{

}

#pragma query
-(NSMutableArray *)findAllBookMainInfo;
-(NSMutableArray *)findAllBookMainInfoByFatherID:(NSInteger)fatherId;

//-(NSMutableArray *)findUniqueCallHistoriesWithSipid:(NSString *)sipid;
//-(NSMutableArray *)findUniqueCallHistoriesWithCallFlag:(NSInteger )aCallFlag;
//#pragma insert
//-(BOOL)saveCallHistory:(CallHistory *)aCallHistory;
//#pragma update
//-(BOOL)edit:(CallHistory *)aCallHistory;
//#pragma delete
//-(BOOL)deleteAllCallHistories;

@end
