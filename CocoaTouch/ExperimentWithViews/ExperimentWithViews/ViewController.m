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
    
    // frame
    UIView* v1 = [[UIView alloc] initWithFrame:CGRectMake(113, 111, 132, 194)];
    v1.backgroundColor = [UIColor colorWithRed:1 green:.4 blue:1 alpha:.1];
    // frame relative to v1
    UIView* v2 = [[UIView alloc] initWithFrame:CGRectMake(41, 56, 132, 194)];
    v2.backgroundColor = [UIColor colorWithRed:.5 green:1 blue:0 alpha:1];
    UIView* v3 = [[UIView alloc] initWithFrame:CGRectMake(43, 197, 160, 230)];
    v3.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    [self.view addSubview: v1];
    [v1 addSubview: v2];
    [self.view addSubview: v3];
    
    // bounds and center
    UIView* v4 = [[UIView alloc] initWithFrame:CGRectMake(113, 111, 132, 194)];
    v4.backgroundColor = [UIColor colorWithRed:1 green:.4 blue:1 alpha:1];
    UIView* v5 = [[UIView alloc] initWithFrame:CGRectInset(v1.bounds, 10, 10)];
    v5.backgroundColor = [UIColor colorWithRed:.5 green:1 blue:0 alpha:1];
    [self.view addSubview: v4];
    [v4 addSubview: v5];
    
    // change origin of bounds
    UIView* v6 = [[UIView alloc] initWithFrame:CGRectMake(113, 111, 132, 194)];
    v6.backgroundColor = [UIColor colorWithRed:1 green:.4 blue:1 alpha:1];
    UIView* v7 = [[UIView alloc] initWithFrame:CGRectInset(v6.bounds, 10, 10)];
    v7.backgroundColor = [UIColor colorWithRed:.5 green:1 blue:0 alpha:1];
    [self.view addSubview: v6];
    [v6 addSubview:v7];
    [UIView animateWithDuration:2.0 animations:^{
        CGRect r = v6.bounds;
        r.origin.x += 10;
        r.origin.y += 10;
        v6.bounds = r;
    }];
}

- (void)tapScreen:(UITapGestureRecognizer *)tapRecognizer {
    CGAffineTransform transform = CGAffineTransformTranslate(_subview.transform, 50, 50);
    [UIView animateWithDuration:1.0 animations:^{
        _subview.transform = transform;
    }];
}


@end
