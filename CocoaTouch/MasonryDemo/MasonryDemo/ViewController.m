//
//  ViewController.m
//  MasonryDemo
//
//  Created by yuhua.cheng on 2020/7/9.
//  Copyright © 2020 idealabs. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // add view1 to self.view
    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.center.equalTo(self.view);
        make.top.mas_equalTo(self.view.mas_topMargin).with.offset(10);
        make.centerX.mas_equalTo(self.view.mas_centerX);
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
    
    // add view2 to view1
    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor greenColor];
    [view1 addSubview:view2];
    
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(view1).width.insets(UIEdgeInsetsMake(10, 10, 10, 10));
        
        /* equal to
         make.top.equalTo(view1).with.offset(10);
         make.left.equalTo(view1).with.offset(10);
         make.bottom.equalTo(view1).with.offset(-10);
         make.right.equalTo(view1).with.offset(-10);
         */
        
        /*equal to
         make.top.left.bottom.and.right.equalTo(view1).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
         */
    }];
    
    // add view3, view4 to view2
    UIView *view3 = [[UIView alloc] init];
    view3.backgroundColor = [UIColor whiteColor];
    [view2 addSubview:view3];
    
    UIView *view4 = [[UIView alloc] init];
    view4.backgroundColor = [UIColor blackColor];
    [view2 addSubview:view4];
    
    int padding = 10;
    
    [view3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(view2.mas_centerY);
        make.left.mas_equalTo(view2.mas_left).with.offset(padding);
        make.right.mas_equalTo(view3.mas_left).with.offset(-padding);
        make.height.mas_equalTo(@150);
        make.width.equalTo(view4);
    }];
    
    [view4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(view2.mas_centerY);
        make.left.mas_equalTo(view3.mas_right).with.offset(padding);
        make.right.mas_equalTo(view2.mas_right).with.offset(-padding);
        make.height.mas_equalTo(@150);
        make.width.equalTo(view3);
    }];
    
    // add scrollView to self.view
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:scrollView];
    [scrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(400, 5, 5, 5));
//        make.top.mas_equalTo(self.view.mas_top).with.offset(400);
//        make.left.mas_equalTo(self.view.mas_left).width.offset(padding);
//        make.right.mas_equalTo(self.view.mas_right).with.offset(-padding);
//        make.bottom.mas_equalTo(self.view.mas_bottom).with.offset(-padding);
    }];
    UIView *containerView = [[UIView alloc] init];
    [scrollView addSubview:containerView];
    [containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(scrollView);
        make.width.equalTo(scrollView);
    }];
    
    int count = 10;
    UIView *lastView = nil;
    for (int i = 0; i <= count; i++) {
        UIView *subView = [[UIView alloc] init];
        [containerView addSubview:subView];
        subView.backgroundColor = [UIColor colorWithHue:(arc4random() % 256 / 256.0) saturation:(arc4random() % 256 / 256.0) brightness:(arc4random() % 256 / 256.0) alpha:1];
        [subView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.and.right.equalTo(containerView);
            make.height.mas_equalTo(@(20*i));
            if (lastView) {
                make.top.mas_equalTo(lastView.mas_bottom);
            } else {
                make.top.mas_equalTo(containerView.mas_top);
            }
        }];
        lastView = subView;
    }
    
    [containerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(lastView.mas_bottom);
    }];
}


@end
