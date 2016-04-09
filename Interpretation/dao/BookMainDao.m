//
//  BookMainDao.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-19.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "BookMainDao.h"
#import "DBManager.h"
#import "BookMainInfo.h"

@implementation BookMainDao

#pragma mark book_main opera

//book_main selectAll
-(NSMutableArray *)findAllBookMainInfo{
    NSString *selectSql = @"select * from book_main";
    NSLog(@"qqqqq %@",selectSql);
    if ([database open]) {
        FMResultSet *resultSet = [database executeQuery:selectSql];
        return [self callBookMainWithResultSet:resultSet];
    }else{
        NSLog(@"no open");
        return NULL;
    }
 
}

//book_main select by fatherID
-(NSMutableArray *)findAllBookMainInfoByFatherID:(NSInteger)fatherId{
    NSString *selectSql =@"select * from book_main where ";
    selectSql = [selectSql stringByAppendingFormat:@"book_main_father_id=%i order by book_main_id asc",fatherId];
    
    NSLog(@"qqqqq %@",selectSql);
    if ([database open]) {
        FMResultSet *resultSet = [database executeQuery:selectSql];
        return [self callBookMainWithResultSet:resultSet];
    }else{
        NSLog(@"no open");
        return NULL;
    }
    
}

////book_main result set to array
-(NSMutableArray *)callBookMainWithResultSet:(FMResultSet *)resultSet{
    NSMutableArray * bookMainInfos = [[NSMutableArray alloc] init];

    while ([resultSet next]) {
        BookMainInfo * bookMainInfo = [[BookMainInfo alloc]init];
        [bookMainInfo setBookMainId:[resultSet intForColumn:@"book_main_id"]];
        [bookMainInfo setBookMainTitle:[resultSet stringForColumn:@"book_main_title"]];
        [bookMainInfo setBookMainFatherId:[resultSet intForColumn:@"book_main_father_id"]];
        [bookMainInfo setBookMainHasChildren:[resultSet intForColumn:@"book_main_has_children"]];
        [bookMainInfo setBookMainContent:[resultSet stringForColumn:@"book_main_content"]];
        [bookMainInfo setBookMainImageName:[resultSet stringForColumn:@"book_main_image_name"]];
        [bookMainInfo setBookMainInterpretContent:@"book_main_interpret_content"];
        [bookMainInfo setBookMainTitleType:[resultSet intForColumn:@"book_main_title_type"]];
        [bookMainInfo setBookMainTitleColor:[resultSet intForColumn:@"book_main_title_color"]];
        [bookMainInfo setBookMainDrugId:[resultSet intForColumn:@"book_main_drugs_id"]];
        [bookMainInfo setBookMainFormId:[resultSet intForColumn:@"book_main_form_id"]];
        [bookMainInfo setBookMainOnOff:[resultSet intForColumn:@"book_main_on_off"]];
        [bookMainInfo setBookMainAdId:[resultSet intForColumn:@"book_main_ad_id"]];
        [bookMainInfo setBookMainOrderId:[resultSet intForColumn:@"book_main_order_id"]];
        [bookMainInfo setBookMainHtmlName:[resultSet stringForColumn:@"book_main_html_name"]];

        [bookMainInfos addObject:bookMainInfo];

    }
    return bookMainInfos;
}



@end
