//
//  interpretation_of_clinical_pathway_and_therapeutic_drugsAppDelegate.m
//  Interpretation
//
//  Created by zhihuiyun on 14-9-14.
//  Copyright (c) 2014年 zhiHuiYun. All rights reserved.
//

#import "interpretation_of_clinical_pathway_and_therapeutic_drugsAppDelegate.h"
#import "EnterViewController.h"

@implementation interpretation_of_clinical_pathway_and_therapeutic_drugsAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    /**标签控制
//    EnterViewController * enterController = [[EnterViewController alloc]initWithNibName:@"EnterViewController" bundle:nil];
//    tabBarController = [[UITabBarController alloc]init];
//    tabBarController.viewControllers = [NSArray arrayWithObjects:tabBarController,enterController,nil];
//    [self.window addSubview:tabBarController.view];
    **/
   
#pragma mark goToNextPage ---- rootViewController
    
    //直接进入
    EnterViewController * enterController = [[EnterViewController alloc]initWithNibName:@"EnterViewController" bundle:nil];
    self.window.rootViewController = enterController;
    
    [self readyDatabase:@"medical_books.sqlite"];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark tabBarDelegate
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    if(item.tag == 1){
        NSLog(@"TestOneController");
    }else if(item.tag == 2){
        NSLog(@"TestTwoController");
    }else {
        NSLog(@"TestThirdController");
    }
}

#pragma mark write DB to shahe
- (NSString*) readyDatabase:(NSString*)dbName{
    BOOL sucess;
    NSFileManager* fileManager = [NSFileManager defaultManager];
    NSError* error;
    NSArray* paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString* documentsDirectory = [paths objectAtIndex:0];
    NSString* writableDBPath = [documentsDirectory stringByAppendingPathComponent:dbName];
    sucess = [fileManager fileExistsAtPath:writableDBPath];
    NSLog(@"write path:%@",writableDBPath);
    if (!sucess) {
        NSString* defaultDBPath = [[[NSBundle mainBundle]resourcePath]stringByAppendingPathComponent:dbName];
        sucess = [fileManager copyItemAtPath:defaultDBPath toPath:writableDBPath error:&error];
        if (!sucess) {
            NSAssert1(0, @"Failed to create writable database file with message '%@'",[error localizedDescription]);
        }
    }
    
    return NULL;
}
@end
