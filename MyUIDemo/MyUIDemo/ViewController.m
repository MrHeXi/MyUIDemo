//
//  ViewController.m
//  MyUITabBarController
//
//  Created by 何溪 on 16/3/30.
//  Copyright © 2016年 何溪. All rights reserved.
//

#import "ViewController.h"
#import "BaseViewController.h"
#import "GlobalDefine.h"

#define Tam_UITabBarItemTitleHighlightedColor [UIColor colorWithRed:86.0/255.0 green:82.0/255.0 blue:78.0/255.0 alpha:1]

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    BaseViewController *homeView = [[BaseViewController alloc]init];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:self.title image:[UIImage imageNamed:IMG_Tam_Tab1] selectedImage:[UIImage imageNamed:IMG_Tam_Tab1_P]];
    homeView.tabBarItem.selectedImage = [self.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    homeView.tabBarItem.image = [self.tabBarItem.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    homeView.tabBarItem.title = @"首页";
    
    BaseViewController *msgView = [[BaseViewController alloc]init];
    [msgView addImageView:@"girl.jpg"];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:self.title image:[UIImage imageNamed:IMG_Tam_Tab2] selectedImage:[UIImage imageNamed:IMG_Tam_Tab2_P]];
    msgView.tabBarItem.selectedImage = [self.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    msgView.tabBarItem.image = [self.tabBarItem.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    msgView.tabBarItem.title = @"消息";
    
    BaseViewController *activityView = [[BaseViewController alloc]init];
    [activityView addWebView:@"https://www.baidu.com"];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:self.title image:[UIImage imageNamed:IMG_Tam_Tab3] selectedImage:[UIImage imageNamed:IMG_Tam_Tab3_P]];
    activityView.tabBarItem.selectedImage = [self.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    activityView.tabBarItem.image = [self.tabBarItem.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    activityView.tabBarItem.title = @"web";
    
    BaseViewController *myInfoView = [[BaseViewController alloc]init];
    [myInfoView addWebView:@"https://www.baidu.com"];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:self.title image:[UIImage imageNamed:IMG_Tam_Tab4] selectedImage:[UIImage imageNamed:IMG_Tam_Tab4_P]];
    myInfoView.tabBarItem.selectedImage = [self.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    myInfoView.tabBarItem.image = [self.tabBarItem.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    myInfoView.tabBarItem.title = @"web";
    
    self.viewControllers = @[[[UINavigationController alloc] initWithRootViewController:homeView],
                             [[UINavigationController alloc] initWithRootViewController:msgView],
                             [[UINavigationController alloc] initWithRootViewController:activityView],
                             [[UINavigationController alloc] initWithRootViewController:myInfoView]];
    UIColor *titleHighlightedColor = Tam_UITabBarItemTitleHighlightedColor;
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       titleHighlightedColor, UITextAttributeTextColor,
                                                       nil] forState:UIControlStateSelected];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
