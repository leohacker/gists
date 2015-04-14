//
//  ConcreteView.m
//  CustomViewSample
//
//  Created by Leo Jiang on 3/16/15.
//  Copyright (c) 2015 Leohacker Studio. All rights reserved.
//

#import "ConcreteView.h"
#import "UIView+LoadNib.h"

@implementation ConcreteView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self loadNib];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self loadNib];
    }
    return self;
}

@end
