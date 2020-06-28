//
//  ViewController.m
//  AutoresizingDemo
//
//  Created by yuhua.cheng on 2020/6/24.
//  Copyright © 2020 idealabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIView* v1 = [[UIView alloc] initWithFrame:CGRectMake(100, 111, 132, 194)];
    v1.backgroundColor = [UIColor colorWithRed:1 green:.4 blue:1 alpha:1];
    UIView* v2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 132, 10)];
    v2.backgroundColor = [UIColor colorWithRed:.5 green:1 blue:0 alpha:1];
    UIView* v3 = [[UIView alloc] initWithFrame:CGRectMake(v1.bounds.size.width-20, v1.bounds.size.height-20, 20, 20)];
    v3.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    
    [self.view addSubview: v1];
    [v1 addSubview: v2];
    [v1 addSubview: v3];
    v2.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    v3.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    [UIView animateWithDuration:2.0 animations:^{
        CGRect r = v1.bounds;
        r.size.width += 40;
        r.size.height -= 50;
        v1.bounds = r;
    }];
}


@end
