//
//  ViewController.m
//  ExperitmentWithPathDrawing
//
//  Created by yuhua.cheng on 2020/7/2.
//  Copyright © 2020 idealabs. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MyView *myView = [[MyView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:myView];
}


@end
