//
//  UIView+PCParallaxView.h
//  UIView+PCParallaxView
//
//  Created by Brandon Zacharie on 1/19/14.
//  Copyright (c) 2014 Pilcrow. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (PCParallaxView)

+ (UIImageView *)addParallaxEffectWithImage:(UIImage *)image toView:(UIView *)view;
- (UIImageView *)addParallaxEffectWithImage:(UIImage *)image;

@end
