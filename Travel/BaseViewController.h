//
//  BaseViewController.h
//  Travel
//
//  Created by Chirag shah on 25/05/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomNavigationBar.h"

@interface BaseViewController : UIViewController
@property (nonatomic, strong) CustomNavigationBar *navigationBar;
@property (nonatomic, strong) NSString *navigationTitle;

- (void)setBackButtonWithTitle:(NSString *)title;
@end
