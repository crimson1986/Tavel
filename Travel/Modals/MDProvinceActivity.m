//
//  MDProvinceActivity.m
//  Travel
//
//  Created by Chirag shah on 29/06/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import "MDProvinceActivity.h"

@interface MDProvinceActivity ()
@property (nonatomic, strong) NSMutableArray *cities;
@end

@implementation MDProvinceActivity

- (id)initWithTitle:(NSString *)title icon:(NSString *)imageName {
    self = [super initWithTitle:title icon:imageName];
    if (self) {
//        [self addProvicesInMenu:nil];
    }
    return self;
}

+ (MDProvinceActivity *)activityWithTitle:(NSString *)title icon:(NSString *)imageName {
    return [[MDProvinceActivity alloc] initWithTitle:title icon:imageName];
}


- (NSMutableArray *)cities {
    if (!_cities) {
        _cities = [[NSMutableArray alloc] initWithCapacity:0];
    }
    return _cities;
}

- (NSMutableArray *)getcities {
    return self.cities;
}
@end
