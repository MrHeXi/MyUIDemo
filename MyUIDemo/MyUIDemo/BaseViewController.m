//
//  BaseViewController.m
//  MyUITabBarController
//
//  Created by 何溪 on 16/3/30.
//  Copyright © 2016年 何溪. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseViewController.h"
@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addImageView:(NSString*) imgName{
    UIImage *img = [UIImage imageNamed:imgName];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:img];
//    [imageView setContentMode:UIViewContentModeScaleToFill];
//    [imageView setContentMode:UIViewContentModeScaleAspectFit];
    [imageView setContentMode:UIViewContentModeRedraw];
    imageView.frame = self.view.bounds;
    [self.view addSubview:imageView];
}

- (void)addWebView:(NSString*) webUrl{
//    UIWebView *webView = [[UIWebView alloc] init];
//    webView.frame = self.view.bounds;
//30~31 行代码相当于33行代码效果
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    NSURLRequest *request =[NSURLRequest requestWithURL:[NSURL URLWithString:webUrl]];
    [self.view addSubview: webView];
    [webView loadRequest:request];

}

@end
