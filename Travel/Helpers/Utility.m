//
//  Utility.m
//  Travel
//
//  Created by Chirag shah on 26/05/13.
//  Copyright (c) 2013 Chirag shah. All rights reserved.
//

#import "Utility.h"
#import <MobileCoreServices/MobileCoreServices.h>
/* pass file name with extension it will return mime type for you */

NSString *MIMEType (NSString *path)
{
    if (!path) {
        return nil;
    }
    CFStringRef UTI = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, (__bridge CFStringRef)[path pathExtension], NULL);
    CFStringRef mimeType = UTTypeCopyPreferredTagWithClass (UTI, kUTTagClassMIMEType);
    CFRelease(UTI);
    if (!mimeType) {
        return @"application/octet-stream";
    }
    return (__bridge_transfer NSString *)mimeType;
}

/* return localized string */
NSString *localizedString (NSString *str) {
    return NSLocalizedStringFromTable(str, @"Localized",@"");//NSLocalizedString(str, @"");
}

@implementation Utility

@end
