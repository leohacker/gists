//
//  ViewController.m
//  CustomViewSample
//
//  Created by Leo Jiang on 3/14/15.
//  Copyright (c) 2015 Leohacker Studio. All rights reserved.
//

#import "CSViewController.h"
#import "CustomView.h"

@interface CSViewController ()
@property (weak, nonatomic) IBOutlet UIView *frameView;

@end

@implementation CSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        CustomView* view = [[CustomView alloc] initWithFrame:self.frameView.frame];
        if (!view) {
            NSLog(@"Can't load the custom view by initWithFrame");
        }
        CGPoint origin = self.frameView.frame.origin;
        CGSize frame = self.frameView.frame.size;
        NSLog(@"frameview frame: %f %f %f %f", origin.x, origin.y, frame.width, frame.height);
        [self.frameView addSubview:view];
        return self;
    }
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
