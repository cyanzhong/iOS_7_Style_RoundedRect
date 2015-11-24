//
//  UIView+iOS_7_Style_RoundedRect.h
//  VIIIcon
//
//  Created by cyan on 15/11/24.
//  Copyright © 2015年 cyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (iOS_7_Style_RoundedRect)

/**
 *  create a rounded rect without border
 */
- (void)applyRoundedRect;

/**
 *  create a rounded rect with border color and width
 *
 *  @param color border color
 *  @param width border width
 */
- (void)applyRoundedRectWithBorderColor:(UIColor *)color borderWidth:(CGFloat)width;

@end
