//
//  ViewController.m
//  UIBazierPathDemo
//
//  Created by yuhua.cheng on 2020/7/2.
//  Copyright © 2020 idealabs. All rights reserved.
//

#import "ViewController.h"
#import "View1.h"
#import "View2.h"
#import "View3.h"
#import "View4.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    View1 *view1 = [[View1 alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [self.view addSubview:view1];
    View2 *view2 = [[View2 alloc] initWithFrame:CGRectMake(100, 0, 100, 100)];
    [self.view addSubview:view2];
    View3 *view3 = [[View3 alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:view3];
    View4 *view4 = [[View4 alloc] initWithFrame:CGRectMake(0, 100, 100, 100)];
    [self.view addSubview:view4];
    // Do any additional setup after loading the view.
}

- (void)drawRect: (CGRect)rect {
    
}

@end
