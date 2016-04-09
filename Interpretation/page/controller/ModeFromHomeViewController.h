//
//  ModeFromHomeViewController.h
//  Interpretation
//
//  Created by zhihuiyun on 14-9-16.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Utill.h"
#import "BookMainInfo.h"
//@protocol pushValueDelegate <NSObject>
//-(void)pushValue:(BookMainInfo*)value;
//@end

@interface ModeFromHomeViewController : UIViewController<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,pushValueDelegate>{
    
    BookMainInfo* bookInfo;
    NSString* secondTitleInfo;
    NSMutableArray* bookInfos;
    
    
}
@property (weak, nonatomic) IBOutlet UILabel *secondTitle;
@property (weak, nonatomic) IBOutlet UICollectionView *modeCollectionView;
@property(nonatomic,assign)id<pushValueDelegate> delegate;

@end
