# iOS_7_Style_RoundedRect
Create an iOS 7 Style Rounded Rect to UIView with a Simple Objective-C Category

1. Use [PocketSVG](https://github.com/arielelkin/PocketSVG) to parse svg file to CGPath
2. Use a svg file from [Dribbble](https://dribbble.com/shots/1127699-iOS-7-icon-shape-PSD)

# Usage

```
#import "UIView+iOS_7_Style_RoundedRect.h"

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

```

# Screenshot
![Screenshot](http://ac-ptqy4wm7.clouddn.com/92083278a7bdcf18.png)
