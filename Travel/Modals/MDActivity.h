//
//  MDActivity.h
//  Travel
//
//  Created by Chirag shah on 29/06/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MDActivity : NSObject
@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *imageName;

- (id)initWithTitle:(NSString *)title icon:(NSString *)imageName;
+ (id)activityWithTitle:(NSString *)title icon:(NSString *)imageName;
@end
