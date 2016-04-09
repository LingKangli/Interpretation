//
//  BookForm.h
//  Interpretation
//
//  Created by zhihuiyun on 14-9-20.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookForm : NSObject{

    NSInteger bookFormId;
    NSInteger bookMainFormId;
    NSString* bookFormTitle;
    NSString* bookFormAppliedObject;
    NSString* bookFormHospitalDay;
    NSInteger bookMainId;
    
}

@property NSInteger bookFormId;
@property NSInteger bookMainFormId;
@property NSString* bookFormTitle;
@property NSString* bookFormAppliedObject;
@property NSString* bookFormHospitalDay;
@property NSInteger bookMainId;

@end
