//
//  ScrollContainerView.m
//  ScrollView
//
//  Created by Leo Jiang on 3/13/15.
//  Copyright (c) 2015 com.leohacker. All rights reserved.
//

#import "ScrollContainerView.h"

@implementation ScrollContainerView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView* view = [super hitTest:point withEvent:event];
    if (view == self) {
        return _scrollView;
    }
    return view;
}

@end
