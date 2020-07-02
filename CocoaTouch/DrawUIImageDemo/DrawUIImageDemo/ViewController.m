//
//  ViewController.m
//  DrawUIImageDemo
//
//  Created by yuhua.cheng on 2020/7/2.
//  Copyright © 2020 idealabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *mars = [UIImage imageNamed:@"Mars"];
    CGSize sz = mars.size;
    
//    // draw two
//    UIGraphicsBeginImageContextWithOptions(CGSizeMake(sz.width*2, sz.height*2), NO, 0);
//    [mars drawAtPoint:CGPointMake(0, 0)];
//    [mars drawAtPoint:CGPointMake(sz.width, 0)];
//    UIImage *im = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
    
    
//
//    // draw half
//    UIGraphicsBeginImageContextWithOptions(CGSizeMake(sz.width/2.0, sz.height), NO, 0);
//    [mars drawAtPoint:CGPointMake(-sz.width/2.0, 0)];
//    UIImage* im = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
    
    UIGraphicsBeginImageContextWithOptions(
    CGSizeMake(sz.width*2, sz.height*2), NO, 0);
    [mars drawInRect:CGRectMake(0,0,sz.width*2,sz.height*2)];
    [mars drawInRect:CGRectMake(sz.width/2.0, sz.height/2.0, sz.width, sz.height)
    blendMode:kCGBlendModeMultiply alpha:1.0];
    UIImage* im = UIGraphicsGetImageFromCurrentImageContext(); UIGraphicsEndImageContext();
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:im];
    imageView.frame = self.view.bounds;
    [self.view addSubview:imageView];
    
    
    
}


@end
