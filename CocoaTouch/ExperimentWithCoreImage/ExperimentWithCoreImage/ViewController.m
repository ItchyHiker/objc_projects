//
//  ViewController.m
//  ExperimentWithCoreImage
//
//  Created by yuhua.cheng on 2020/7/2.
//  Copyright © 2020 idealabs. All rights reserved.
//

#import "ViewController.h"
#import "MyVignetteFilter.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *image1 = [UIImage imageNamed:@"moi.png"];
    CIImage *image2 = [[CIImage alloc] initWithCGImage:image1.CGImage];
    CGRect extent = image2.extent;
    CIFilter *grad = [CIFilter filterWithName:@"CIRadialGradient"];
    CIVector *center = [CIVector vectorWithX:extent.size.width/2 Y:extent.size.height/2];
    
    [grad setValue:center forKey:@"inputCenter"];
    [grad setValue:@85 forKey:@"inputRadius0"];
    [grad setValue:@100 forKey:@"inputRadius1"];
    CIImage *gradImage = [grad valueForKey:@"outputImage"];
    
    CIFilter *blend = [CIFilter filterWithName:@"CIBlendWithMask"];
    [blend setValue:image2 forKey:@"inputImage"];
    [blend setValue:gradImage forKey:@"inputMaskImage"];
    
    // extract a bitmap
    CGImageRef image3 = [[CIContext contextWithOptions:nil] createCGImage:blend.outputImage fromRect:extent];
    UIImage *image4 = [UIImage imageWithCGImage:image3];
    CGImageRelease(image3);
    
    
    UIImageView *imageView = [[UIImageView alloc]  initWithImage:image4];
    imageView.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height/2);
    [self.view addSubview:imageView];
    
    
    CIFilter *vig = [[MyVignetteFilter alloc] init];
    CIImage *im = [CIImage imageWithCGImage:[UIImage imageNamed:@"moi.png"].CGImage];
    [vig setValue:im forKey:@"inputImage"];
    UIGraphicsBeginImageContextWithOptions(extent.size, NO, 0);
    [[UIImage imageWithCIImage:vig.outputImage] drawInRect:extent];
    UIImage* image5 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    UIImageView *imageView2 = [[UIImageView alloc]  initWithImage:image5];
    imageView2.frame = CGRectMake(0, self.view.bounds.size.height/2, self.view.bounds.size.width, self.view.bounds.size.height/2);
    [self.view addSubview:imageView2];
    
}
@end
