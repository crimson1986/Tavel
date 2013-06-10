//
//  NSString+Extends.m
//  RegistrationModule
//
//  Created by iPhone Developer on 28/11/12.
//  Copyright (c) 2012 mycompany. All rights reserved.
//

#import "NSString+Extends.h"

@implementation NSString (Extends)

- (NSString *)trimString {
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)appendStringWith:(NSString *)string {
    return [NSString stringWithFormat:@"%@%@",self,string];
}
@end
