//
//  NavCViewController.h
//  BasicConcept
//
//  Created by Leo Jiang on 3/24/15.
//  Copyright (c) 2015 Leohacker Studio. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NavCDelegate <NSObject>

- (void)callback;

@end

@interface NavCViewController : UIViewController

@property id <NavCDelegate> delegate;

@end
