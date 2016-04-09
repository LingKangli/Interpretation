//
//  DBManager.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-20.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "DBManager.h"
#import "FMDatabase.h"

#define kDefaultDBName @"medical_books.sqlite"

@interface DBManager ()

@end

@implementation DBManager

static DBManager * _sharedDBManager;

+ (DBManager *) defaultDBManager {
	if (!_sharedDBManager) {
		_sharedDBManager = [[DBManager alloc] init];
	}
	return _sharedDBManager;
}

- (void) dealloc {
    [self close];
}

- (id) init {
    self = [super init];
    if (self) {
        int state = [self initializeDBWithName:kDefaultDBName];
        if (state == -1) {
            NSLog(@"数据库初始化失败");
        } else {
            NSLog(@"数据库初始化成功");
        }
    }
    return self;
}

/**
 * @brief 初始化数据库操作
 * @param name 数据库名称
 * @return 返回数据库初始化状态， 0 为 已经存在，1 为创建成功，-1 为创建失败
 */
- (int) initializeDBWithName : (NSString *) name {
    if (!name) {
		return -1;  // 返回数据库创建失败
	}
    // 沙盒Docu目录
    NSString * docp = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES) objectAtIndex:0];
	_name = [docp stringByAppendingString:[NSString stringWithFormat:@"/%@",name]];
	NSFileManager * fileManager = [NSFileManager defaultManager];
    
//    _name = @"medical_books.sqlite";
    BOOL exist = [fileManager fileExistsAtPath:_name];
    NSLog(@"==%@",_name);
    
    
    [self connect];
    if (!exist) {
        NSLog(@"no have it .");
        return 0;
    } else {
        NSLog(@"have it.");
        return 1;          // 返回 数据库已经存在
    }
    
}

/// 连接数据库
- (void) connect {
	if (!_dataBase) {
		_dataBase = [[FMDatabase alloc] initWithPath: _name];
        
	}
	if (![_dataBase open]) {
		NSLog(@"不能打开数据库");
	}else{
        NSLog(@"open yes");
    }
    
}
/// 关闭连接
- (void) close {
	[_dataBase close];
    _sharedDBManager = nil;
}

@end
