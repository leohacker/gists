//
//  UIView+LoadNib.m
//  CustomViewSample
//
//  Created by Leo Jiang on 4/14/15.
//  Copyright (c) 2015 Leohacker Studio. All rights reserved.
//

#import "UIView+LoadNib.h"

@implementation UIView (LoadNib)

- (void)loadNib {
    [self loadNibNamed:NSStringFromClass([self class])];
}

- (void)loadNibNamed:(NSString *)nibName {
    UIView* topLevelView = [[[NSBundle mainBundle] loadNibNamed:nibName owner:self options:nil] firstObject];
    [self addSubview:topLevelView];
    topLevelView.translatesAutoresizingMaskIntoConstraints = NO;
    [self layoutNibContainerSubview:topLevelView];
}

- (void)layoutNibContainerSubview:(UIView *)view {
    void (^pinToBorder)(NSLayoutAttribute) = ^(NSLayoutAttribute attr) {
        [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                         attribute:attr
                                                         relatedBy:NSLayoutRelationEqual
                                                            toItem:view
                                                         attribute:attr
                                                        multiplier:1.0 constant:0.0]];
    };
    
    pinToBorder(NSLayoutAttributeTop);
    pinToBorder(NSLayoutAttributeLeft);
    pinToBorder(NSLayoutAttributeBottom);
    pinToBorder(NSLayoutAttributeRight);
}

@end
