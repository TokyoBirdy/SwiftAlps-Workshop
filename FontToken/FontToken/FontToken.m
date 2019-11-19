//
//  FontToken.m
//  FontToken
//
//  Created by ceciliah on 2019-11-19.
//  Copyright © 2019 Humlan. All rights reserved.
//

#import "FontToken.h"

@implementation FontToken
+(CTFontRef)heartFont
{
    CFStringRef strRef = (CFStringRef)@"dongrinuanxin";
    CTFontRef ref = CTFontCreateWithName(strRef, 20, NULL);
    return ref;
}

+(CTFontRef)catFont
{
    CFStringRef strRef = (CFStringRef)@"MaoMeiMei";
    CTFontRef ref = CTFontCreateWithName(strRef, 20, NULL);
    return ref;
}

@end
