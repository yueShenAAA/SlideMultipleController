//
//  MainViewController.m
//  SlideMultipleController
//
//  Created by l on 2018/5/17.
//  Copyright © 2018年 l. All rights reserved.
//

#import "MainViewController.h"
#import "ViewControllerOne.h"
#import "ViewControllerTwo.h"
#import "ViewControllerThree.h"
#import "YZDisplayViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.hidden = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**
     只适用于固定的title,故title的数量和内容可配置性不高。使用时需要主Controller继承YZDisplayViewController
     */
    
    //1. 添加所有子控制器
    [self addAllViewControllers];
    //2. 设置
    [self setUpAttribute];
    
}

- (void)setUpAttribute{
    
    
    
    //设置标题属性
    [self setUpTitleEffect:^(UIColor *__autoreleasing *titleScrollViewColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIFont *__autoreleasing *titleFont, CGFloat *titleHeight, CGFloat *titleWidth) {
        *norColor = [UIColor lightGrayColor];
        *selColor = [UIColor redColor];
        *titleWidth = [UIScreen mainScreen].bounds.size.width / 3;
        *titleFont = [UIFont systemFontOfSize:16];
    }];
    
    
    [self setUpUnderLineEffect:^(BOOL *isUnderLineDelayScroll, CGFloat *underLineH, UIColor *__autoreleasing *underLineColor,BOOL *isUnderLineEqualTitleWidth) {
        *isUnderLineEqualTitleWidth = YES;
        *underLineColor = [UIColor redColor];
    }];
    
    
    //设置标题渐变
//    [self setUpTitleGradient:^(YZTitleColorGradientStyle *titleColorGradientStyle, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor) {
//        *titleColorGradientStyle = YZTitleColorGradientStyleFill;
//        *norColor = [UIColor lightGrayColor];
//        *selColor = [UIColor redColor];
//    }];
    
    self.topMargin = 0;
}

- (void)addAllViewControllers{
    ViewControllerOne *oneVC = [ViewControllerOne new];
    oneVC.title = @"第一个视图";
    [self addChildViewController:oneVC];
    
    ViewControllerTwo *twoVC = [ViewControllerTwo new];
    twoVC.title = @"第二个视图";
    [self addChildViewController:twoVC];
    
    ViewControllerThree *threeVC = [ViewControllerThree new];
    threeVC.title = @"第三个视图";
    [self addChildViewController:threeVC];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
