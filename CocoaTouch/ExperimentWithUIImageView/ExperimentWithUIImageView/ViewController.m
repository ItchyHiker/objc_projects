//
//  ViewController.m
//  ExperimentWithUIImageView
//
//  Created by Yuhua Cheng on 6/26/20.
//  Copyright © 2020 idealabs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Slicex3.png"]];
    [self.view addSubview:imageView];
    
    UIImage *image = [UIImage imageNamed:@"Slicex2.png"];
    NSLog(@"UIImageView intrinsicContentSize: %f, %f", imageView.intrinsicContentSize.width, imageView.intrinsicContentSize.height);
    [UIView animateWithDuration:2.0 animations:^{
        imageView.center = CGPointMake(CGRectGetMidX(imageView.superview.bounds), CGRectGetMidY(imageView.superview.bounds));
        imageView.image = image;
    }];
    NSLog(@"UIImageView intrinsicContentSize: %f, %f", imageView.intrinsicContentSize.width, imageView.intrinsicContentSize.height);
    
    [UIView animateWithDuration:2.0 animations:^{
        UIImage* imageTiled =
        [image resizableImageWithCapInsets: UIEdgeInsetsZero resizingMode: UIImageResizingModeTile];
        imageView.image = imageTiled;
    }];
    
    [UIView animateWithDuration:2.0 animations:^{
        UIImage* imageTiled =
        [image resizableImageWithCapInsets: UIEdgeInsetsMake(image.size.height/2-1,image.size.width/2-1, image.size.height/2-1, image.size.width/2-1) resizingMode: UIImageResizingModeTile];
        imageView.image = imageTiled;
    }];
    
    
    
    
}


@end
