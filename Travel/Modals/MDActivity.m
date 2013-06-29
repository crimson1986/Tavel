//
//  MDActivity.m
//  Travel
//
//  Created by Chirag shah on 29/06/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import "MDActivity.h"

@implementation MDActivity

- (id)initWithTitle:(NSString *)title icon:(NSString *)imageName {
    self = [super init];
    if (self) {
        self.title = title;
        self.imageName = imageName;
    }
    return self;
}

+ (id)activityWithTitle:(NSString *)title icon:(NSString *)imageName {
    return [[MDActivity alloc] initWithTitle:title icon:imageName];
}

- (NSString *)imageName {
    return [NSString stringWithFormat:@"%@.jpg",_imageName];
}
@end
