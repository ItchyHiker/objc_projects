//
//  ViewController.m
//  DrawCGImageDemo
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
    
    UIImage *mars = [UIImage imageNamed:@"Mars.png"];
    CGSize sz = mars.size;
    CGImageRef marsLeft = CGImageCreateWithImageInRect([mars CGImage], CGRectMake(0, 0, sz.width/2, sz.height));
    CGImageRef marsRight = CGImageCreateWithImageInRect([mars CGImage], CGRectMake(sz.width/2, 0, sz.width/2, sz.height));
    
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(sz.width*1.5, sz.height), NO, 0);
    CGContextRef con = UIGraphicsGetCurrentContext();
    CGContextDrawImage(con, CGRectMake(0, 0, sz.width/2, sz.height), flip(marsLeft));
    CGContextDrawImage(con, CGRectMake(sz.width, 0, sz.width/2, sz.height), flip(marsRight));
    UIImage *im = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    CGImageRelease(marsLeft);
    CGImageRelease(marsRight);
    // this image is upside down
    UIImageView *imageView = [[UIImageView alloc] initWithImage:im];
    imageView.frame = self.view.bounds;
    [self.view addSubview:imageView];
    
    
    
}

CGImageRef flip (CGImageRef im) {
    CGSize sz = CGSizeMake(CGImageGetWidth(im), CGImageGetHeight(im));
    UIGraphicsBeginImageContextWithOptions(sz, NO, 0);
    CGContextDrawImage(UIGraphicsGetCurrentContext(), CGRectMake(0, 0, sz.width, sz.height), im);
    CGImageRef result = [UIGraphicsGetImageFromCurrentImageContext() CGImage];
    UIGraphicsEndImageContext();
    return result;
}


@end
