//
//  NavBViewController.m
//  BasicConcept
//
//  Created by Leo Jiang on 3/24/15.
//  Copyright (c) 2015 Leohacker Studio. All rights reserved.
//

#import "NavBViewController.h"
#import "LoggingMacro.h"

@interface NavBViewController ()

@end

@implementation NavBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NavLog();
    NavLog(@"TopViewController %@", NSStringFromClass([self.navigationController.topViewController class]));
    NavLog(@"VisibleViewController %@", NSStringFromClass([self.navigationController.visibleViewController class]));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NavLog();
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NavLog();
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NavLog();
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NavLog();
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NavLog();
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NavLog();
}

// Unwind segue
- (void)callback {
    NavLog();
    if (self.navigationController) {
        // topViewController != visibleViewController when present a viewController in navigation view controller.
        NavLog(@"TopViewController %@", NSStringFromClass([self.navigationController.topViewController class]));
        NavLog(@"VisibleViewController %@", NSStringFromClass([self.navigationController.visibleViewController class]));
        NSArray* vcs = self.navigationController.viewControllers;
        for (UIViewController* vc in vcs) {
            NavLog(@"%@", vc);
        }
    }
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    ((NavCViewController*)segue.destinationViewController).delegate = self;
}


- (IBAction)exitToNavStack:(UIStoryboardSegue *)sender
{
    NavLog();
}

@end
