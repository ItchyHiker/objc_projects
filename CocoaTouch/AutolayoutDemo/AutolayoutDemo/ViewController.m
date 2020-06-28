//
//  ViewController.m
//  AutolayoutDemo
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
    UIView* v2 = [UIView new];
    v2.backgroundColor = [UIColor colorWithRed:.5 green:1 blue:0 alpha:1];
    UIView* v3 = [UIView new];
    v3.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    [self.view addSubview: v1];
    [v1 addSubview: v2];
    [v1 addSubview: v3];
    v2.translatesAutoresizingMaskIntoConstraints = NO;
    v3.translatesAutoresizingMaskIntoConstraints = NO;
    
    // v1 leadning == v2 leadning
    [v1 addConstraint:
     [NSLayoutConstraint
      constraintWithItem:v2 attribute:NSLayoutAttributeLeading
      relatedBy:0 toItem:v1 attribute:NSLayoutAttributeLeading
      multiplier:1 constant:0]];
    
    // v1 trailing == v2 trailing
    [v1 addConstraint:
     [NSLayoutConstraint
      constraintWithItem:v2 attribute:NSLayoutAttributeRight
      relatedBy:0 toItem:v1 attribute:NSLayoutAttributeRight
      multiplier:1 constant:0]];
    
    // v1 top == v2 top
    [v1 addConstraint:
     [NSLayoutConstraint
      constraintWithItem:v2 attribute:NSLayoutAttributeTop
      relatedBy:0 toItem:v1 attribute:NSLayoutAttributeTop
      multiplier:1 constant:0]];
    
    // v2 height = 10
    [v2 addConstraint:
     [NSLayoutConstraint
      constraintWithItem:v2 attribute:NSLayoutAttributeHeight
      relatedBy:0 toItem:nil attribute:0
      multiplier:1 constant:10]];
    
    // v3 width = 20
    [v3 addConstraint:
     [NSLayoutConstraint
      constraintWithItem:v3 attribute:NSLayoutAttributeWidth
      relatedBy:0 toItem:nil attribute:0
      multiplier:1 constant:20]];
    
    // v3 height = 20
    [v3 addConstraint:
     [NSLayoutConstraint
      constraintWithItem:v3 attribute:NSLayoutAttributeHeight
      relatedBy:0 toItem:nil attribute:0
      multiplier:1 constant:20]];
    
    // v1 trailing = v3 trailing
    [v1 addConstraint:
     [NSLayoutConstraint
      constraintWithItem:v3 attribute:NSLayoutAttributeRight
      relatedBy:0 toItem:v1 attribute:NSLayoutAttributeRight
      multiplier:1 constant:0]];
    
    // v1 bottom = v3 bottom
    [v1 addConstraint:
     [NSLayoutConstraint
      constraintWithItem:v3 attribute:NSLayoutAttributeBottom
      relatedBy:0 toItem:v1 attribute:NSLayoutAttributeBottom
      multiplier:1 constant:0]];
    
    
    [UIView animateWithDuration:5.0 animations:^{
        CGRect r = v1.bounds;
        r.size.width += 50;
        r.size.height += 50;
        v1.bounds = r;
    }];
}


@end
