//
//  UIView+iOS_7_Style_RoundedRect.m
//  VIIIcon
//
//  Created by cyan on 15/11/24.
//  Copyright © 2015年 cyan. All rights reserved.
//

#import "UIView+iOS_7_Style_RoundedRect.h"
#import "PocketSVG.h"

@implementation UIView (iOS_7_Style_RoundedRect)

- (void)applyRoundedRect {
    [self applyRoundedRectWithBorderColor:nil borderWidth:0];
}

- (void)applyRoundedRectWithBorderColor:(UIColor *)color borderWidth:(CGFloat)width {
    
    CGFloat scale = MIN(self.frame.size.width, self.frame.size.height)/120;
    CGPathRef path = [PocketSVG pathFromSVGFileNamed:@"iOS_7_Style_RoundedRect"];
    
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.path = path;
    maskLayer.transform = CATransform3DMakeScale(scale, scale, 1);
    self.layer.mask = maskLayer;
    
    if (color && width) {
        CAShapeLayer *borderLayer = [CAShapeLayer layer];
        borderLayer.path = path;
        borderLayer.strokeColor = color.CGColor;
        borderLayer.fillColor = [[UIColor clearColor] CGColor];
        borderLayer.lineWidth = width;
        borderLayer.transform = CATransform3DMakeScale(scale, scale, 1);
        [self.layer addSublayer:borderLayer];
    }
}

@end
