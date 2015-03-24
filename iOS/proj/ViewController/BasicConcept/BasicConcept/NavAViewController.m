//
//  NavAViewController.m
//  BasicConcept
//
//  Created by Leo Jiang on 3/24/15.
//  Copyright (c) 2015 Leohacker Studio. All rights reserved.
//

#import "NavAViewController.h"
#import "LoggingMacro.h"

@interface NavAViewController ()

@end

@implementation NavAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NavLog();
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
