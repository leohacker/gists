//
//  CustomView.m
//  CustomViewSample
//
//  Created by Leo Jiang on 3/14/15.
//  Copyright (c) 2015 Leohacker Studio. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self loadViewFromNib];
        return self;
    }
    return nil;
    
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self loadViewFromNib];
        return self;
    }
    return nil;
}

- (void)loadViewFromNib {
    NSBundle* mainBundle = [NSBundle mainBundle];
    NSArray* views = [mainBundle loadNibNamed:NSStringFromClass([self class])
                                        owner:self
                                      options:nil];
    UIView* topView = views[0];
    [self addSubview:topView];
    topView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self addConstraint:[self getConstraintAttachTo:topView withAttribute:NSLayoutAttributeTop]];
    [self addConstraint:[self getConstraintAttachTo:topView withAttribute:NSLayoutAttributeLeft]];
    [self addConstraint:[self getConstraintAttachTo:topView withAttribute:NSLayoutAttributeBottom]];
    [self addConstraint:[self getConstraintAttachTo:topView withAttribute:NSLayoutAttributeRight]];
}

- (NSLayoutConstraint *)getConstraintAttachTo:(id)item withAttribute:(NSLayoutAttribute)attribute {
    return [NSLayoutConstraint constraintWithItem:self
                                        attribute:attribute
                                        relatedBy:NSLayoutRelationEqual
                                           toItem:item
                                        attribute:attribute
                                       multiplier:1.0
                                         constant:0.0];
}

@end
