//
//  InfiniteThreeViewController.m
//  ScrollView
//
//  Created by Leo Jiang on 4/11/15.
//  Copyright (c) 2015 com.leohacker. All rights reserved.
//

#import "InfiniteThreeViewController.h"
#import "InfiniteHorzontalScrollView.h"

@interface InfiniteThreeViewController ()
@property (weak, nonatomic) IBOutlet InfiniteHorzontalScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation InfiniteThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // initialize the pageControl.
    
    // Set up the array to hold the views for each page
//    self.pageViews = [[NSMutableArray alloc] init];
//    for (NSInteger i = 0; i < self.pageCount; ++i) {
//        [self.pageViews addObject:[NSNull null]];
//    }
    
//    [self.scrollView setContentSize:CGSizeMake(self.scrollView.frame.size.width * 3, self.scrollView.frame.size.height)];
    self.automaticallyAdjustsScrollViewInsets = NO;
//    NSLog(@"scroll view frame:");
//    NSLog(@"%f %f %f %f",
//          self.scrollView.frame.origin.x,
//          self.scrollView.frame.origin.y,
//          self.scrollView.frame.size.width,
//          self.scrollView.frame.size.height);
}

- (void)viewDidLayoutSubviews {
    NSLog(@"viewDidLayoutSubviews scroll view frame:");
    NSLog(@"%f %f %f %f",
          self.scrollView.frame.origin.x,
          self.scrollView.frame.origin.y,
          self.scrollView.frame.size.width,
          self.scrollView.frame.size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
