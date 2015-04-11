//
//  InfiniteHorzontalScrollView.m
//  ScrollView
//
//  Created by Leo Jiang on 4/11/15.
//  Copyright (c) 2015 com.leohacker. All rights reserved.
//

#import "InfiniteHorzontalScrollView.h"

@interface InfiniteHorzontalScrollView ()

@property (nonatomic, strong) NSArray * pageImages;
@property (nonatomic) NSUInteger currentPage;

@end

@implementation InfiniteHorzontalScrollView {
    NSUInteger pageCount;
    NSMutableArray* pageViews;
    UIView* contentView;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        self.pagingEnabled = YES;
        self.scrollEnabled = YES;
        pageCount = self.pageImages.count;
        
        pageViews = [[NSMutableArray alloc] init];
        for (NSInteger i = 0; i < pageCount; ++i) {
            [pageViews addObject:[NSNull null]];
        }

        self.currentPage = 0;
        contentView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width * 3, self.frame.size.height)];
        [self addSubview:contentView];
        [self setContentOffset:CGPointMake(0, 0)];
    }
    return self;
}

- (NSArray *)pageImages {
    return [NSArray arrayWithObjects:
            [UIImage imageNamed:@"photo1.png"],
            [UIImage imageNamed:@"photo2.png"],
            [UIImage imageNamed:@"photo3.png"],
            [UIImage imageNamed:@"photo4.png"],
            [UIImage imageNamed:@"photo5.png"],
            nil];
}

- (void)loadPages:(NSUInteger)page {
    // remove all subviews first.
    for (UIView* view in pageViews) {
        if ((NSNull*)view != [NSNull null]) {
            [view removeFromSuperview];
        }
    }
    // then load the visible views.
    [self loadPage:((page - 1 + pageCount) % pageCount)  atIndex:0];
    [self loadPage:page atIndex:1];
    [self loadPage:(page + 1) % pageCount atIndex:2];
}

- (void)loadPage:(NSUInteger)page atIndex:(NSUInteger)index {
    UIImageView* newPageView = [pageViews objectAtIndex:page];
    if ( (NSNull*)newPageView == [NSNull null]) {
        newPageView = [[UIImageView alloc] initWithImage:[self.pageImages objectAtIndex:page]];
        newPageView.contentMode = UIViewContentModeScaleAspectFit;
        [pageViews replaceObjectAtIndex:page withObject:newPageView];
    }
    CGRect frame = self.bounds;
    frame.origin.x = index * self.frame.size.width;
    [newPageView setFrame:frame];
    [contentView addSubview:newPageView];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self setContentSize:CGSizeMake(self.frame.size.width * 3, self.frame.size.height)];
    CGRect rect = contentView.frame;
    rect.size.height = self.frame.size.height;
    [contentView setFrame:rect];
    
    CGFloat contentOffsetX = self.contentOffset.x;
    CGFloat width = self.frame.size.width;
    // 目前这个还不是最好的方案。如果这里的设置不是 contentOffsetX >= width * 2的话，在滚动过程中，会正好停在这个边界上。
    // 原因未明。可能是因为subview是重新添加的缘故。
    if ( contentOffsetX >= width * 2) {
        self.currentPage = (self.currentPage + 1) % pageCount;
        [self loadPages:self.currentPage];
        [self setContentOffset:CGPointMake(self.contentOffset.x - width, self.contentOffset.y) animated:NO];

    } else if (contentOffsetX < width * 1 ) {
        self.currentPage = (self.currentPage - 1 + pageCount) % pageCount;
        [self loadPages:self.currentPage];
        [self setContentOffset:CGPointMake(self.contentOffset.x + width, self.contentOffset.y) animated:NO];
    }
}

@end
