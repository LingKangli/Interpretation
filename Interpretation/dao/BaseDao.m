//
//  BaseDao.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-19.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "BaseDao.h"
#import "DBManager.h"
@implementation BaseDao

@synthesize database = _database;

-(id)init{
    if (self=[super init]) {
        //========== 首先查看有没有建立message的数据库，如果未建立，则建立数据库=========
        database = [DBManager defaultDBManager].dataBase;
        
    }
    return self;
}

//-(NSString *)SQL:(NSString *)sql inTable:(NSString *)table{
//    return [NSString stringWithFormat:sql,table];
//}

//-(void)dealloc{
//    [super dealloc];
//    [database release];
//}

@end
