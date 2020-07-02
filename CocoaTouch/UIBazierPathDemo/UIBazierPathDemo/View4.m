//
//  View4.m
//  UIBazierPathDemo
//
//  Created by yuhua.cheng on 2020/7/2.
//  Copyright © 2020 idealabs. All rights reserved.
//

#import "View4.h"

@implementation View4

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect
{
    // Drawing code
}

- (void)drawLayer:(CALayer*)lay inContext:(CGContextRef)con {
    CGContextAddEllipseInRect(con, CGRectMake(0,0,100,100));
    CGContextSetFillColorWithColor(con, [UIColor blueColor].CGColor);
    CGContextFillPath(con);
}

@end
