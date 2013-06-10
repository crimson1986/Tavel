//
//  AppDelegate.h
//  Travel
//
//  Created by Chirag shah on 24/05/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MenuViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UITabBarController *tabbarController;

@property (strong, nonatomic) MenuViewController *viewController;

@end
