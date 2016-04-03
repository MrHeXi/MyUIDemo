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
    BaseViewController *view1 = [[BaseViewController alloc]init];
    [view1 addImageView:@"girl.jpg"];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:self.title image:[UIImage imageNamed:IMG_Tam_Tab1] selectedImage:[UIImage imageNamed:IMG_Tam_Tab1_P]];
    view1.tabBarItem.selectedImage = [self.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    view1.tabBarItem.image = [self.tabBarItem.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    view1.tabBarItem.title = @"首页";
    
    BaseViewController *view2 = [[BaseViewController alloc]init];
    [view2 addWebView:@"https://www.baidu.com"];
    self.tabBarItem = [[UITabBarItem alloc] initWithTitle:self.title image:[UIImage imageNamed:IMG_Tam_Tab2] selectedImage:[UIImage imageNamed:IMG_Tam_Tab2_P]];
    view2.tabBarItem.selectedImage = [self.tabBarItem.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    view2.tabBarItem.image = [self.tabBarItem.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    view2.tabBarItem.title = @"首页2";
    
    self.viewControllers = @[[[UINavigationController alloc] initWithRootViewController:view1],
                             [[UINavigationController alloc] initWithRootViewController:view2]];
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
