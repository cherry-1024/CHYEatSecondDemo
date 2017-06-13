//
//  AppDelegate.m
//  CHYEatSecondDemo
//
//  Created by csdc on 2017/6/5.
//  Copyright © 2017年 csdc. All rights reserved.
//

#import "AppDelegate.h"
#import "CHYHomeViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //创建导航控制器，设置为根视图
//    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
//    self.window.backgroundColor = [UIColor whiteColor];
    UINavigationController *homenNav= [[UINavigationController alloc] initWithRootViewController:[CHYHomeViewController new]];
    self.window.rootViewController = homenNav;
    [self.window makeKeyAndVisible];
    return YES;
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    
}


- (void)applicationDidEnterBackground:(UIApplication *)application {

}


- (void)applicationWillEnterForeground:(UIApplication *)application {

}


- (void)applicationDidBecomeActive:(UIApplication *)application {

}

- (void)applicationWillTerminate:(UIApplication *)application {

}

@end
