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
    
    // draw image using UIKit
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100, 100), NO, 0);
    UIBezierPath *p = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
    [[UIColor blueColor] setFill];
    [p fill];
    UIImage *im1 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:im1];
    imageView1.frame = CGRectMake(200, 200, 100, 100);
    [self.view addSubview:imageView1];
    
    // draw image using Core Graphics
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(100,100), NO, 0);
    CGContextRef con = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(con, CGRectMake(0,0,100,100));
    CGContextSetFillColorWithColor(con, [UIColor blueColor].CGColor);
    CGContextFillPath(con);
    UIImage* im2 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageView *imageView2 = [[UIImageView alloc] initWithImage:im2];
    imageView2.frame = CGRectMake(200, 0, 100, 100);
    [self.view addSubview:imageView2];
    
}

- (void)drawRect: (CGRect)rect {
    
}

@end
