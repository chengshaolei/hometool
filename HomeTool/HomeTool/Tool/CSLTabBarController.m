//
//  CSLTabBarController.m
//  HomeTool
//
//  Created by csl on 15/12/7.
//  Copyright © 2015年 csl. All rights reserved.
//

#import "CSLTabBarController.h"
@interface CSLTabBarController()
@end

@implementation CSLTabBarController
{
    NSMutableArray * _controllers;
}
//初始化
-(instancetype)init{
    if (self=[super init]) {
        _controllers = [[NSMutableArray alloc] init];
    }
    return self;
}

//创建tabbaritem
-(void) addItem:(NSString*)title normalImage:(UIImage*)normal highLightImage:(UIImage*)highLight controller:(NSString*)controllerName {
    
    //创建tabBarItem
    UITabBarItem * item = [[UITabBarItem alloc] initWithTitle:title image:normal selectedImage:highLight];
    
    //得到控制器类
    Class controllerClass = NSClassFromString(controllerName);
    //创建控制器
    UIViewController *  controller = [[controllerClass alloc] init];
    //设置item
    controller.tabBarItem = item;
    
    [_controllers addObject:controller];
    
}
@end
