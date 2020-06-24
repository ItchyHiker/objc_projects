//
//  ViewController.m
//  ExperimentWithViews
//
//  Created by yuhua.cheng on 2020/6/24.
//  Copyright © 2020 idealabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong) UIView *subview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _subview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    _subview.backgroundColor = [UIColor redColor];
    [self.view addSubview:_subview];
    
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapScreen:)];
    [self.view addGestureRecognizer:tapRecognizer];
}

- (void)tapScreen:(UITapGestureRecognizer *)tapRecognizer {
    CGAffineTransform transform = CGAffineTransformTranslate(_subview.transform, 50, 50);
    [UIView animateWithDuration:1.0 animations:^{
        _subview.transform = transform;
    }];
}


@end
