//
//  HomeViewController.h
//  Interpretation
//
//  Created by zhihuiyun on 14-9-14.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Utill.h"
#import "ModeFromHomeViewController.h"

@interface HomeViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{

    NSMutableArray* mainInfoRoot;

}
@property(nonatomic,assign)id<pushValueDelegate> delegate;


@end
