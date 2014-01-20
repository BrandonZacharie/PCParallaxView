//
//  UIView+PCParallaxView.m
//  UIView+PCParallaxView
//
//  Created by Brandon Zacharie on 1/19/14.
//  Copyright (c) 2014 Pilcrow. All rights reserved.
//

#import "UIView+PCParallaxView.h"

@implementation UIView (PCParallaxView)

+ (UIImageView *)addParallaxEffectWithImage:(UIImage *)image toView:(UIView *)view
{
    CGFloat xMax = (image.size.width - view.frame.size.width) / 2;
    CGFloat xMin = -xMax;
    CGFloat yMax = (image.size.height - view.frame.size.height) / 2;
    CGFloat yMin = -yMax;
    UIImageView *backgroundView = [[UIImageView alloc]
                                   initWithFrame:CGRectMake(-xMax,
                                                            -yMax,
                                                            image.size.width,
                                                            image.size.height)];
    backgroundView.image = image;

    UIInterpolatingMotionEffect * xEffect = [[UIInterpolatingMotionEffect alloc]
                                             initWithKeyPath:@"center.x"
                                             type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];

    xEffect.minimumRelativeValue = @(xMin);
    xEffect.maximumRelativeValue = @(xMax);

    UIInterpolatingMotionEffect * yEffect = [[UIInterpolatingMotionEffect alloc]
                                             initWithKeyPath:@"center.y"
                                             type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];

    yEffect.minimumRelativeValue = @(yMin);
    yEffect.maximumRelativeValue = @(yMax);

    UIMotionEffectGroup *motionEffectGroup = [UIMotionEffectGroup new];

    motionEffectGroup.motionEffects = @[xEffect, yEffect];

    [view addSubview:backgroundView];
    [backgroundView addMotionEffect:motionEffectGroup];

    return backgroundView;
}

- (UIImageView *)addParallaxEffectWithImage:(UIImage *)image
{
    return [UIView addParallaxEffectWithImage:image toView:self];
}

@end
