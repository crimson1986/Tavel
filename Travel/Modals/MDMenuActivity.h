//
//  MDMenuActivity.h
//  Travel
//
//  Created by Chirag shah on 29/06/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MDActivity.h"

@interface MDMenuActivity : MDActivity
//@property (nonatomic, strong) NSString *title;
//@property (nonatomic, strong) NSString *profileImageName;

@property (nonatomic) NSUInteger menuID;

+ (MDMenuActivity *)activityWithTitle:(NSString *)title icon:(NSString *)imageName;

- (void)addProvicesInMenu:(NSArray *)province;

- (NSMutableArray *)getProvince;
@end
