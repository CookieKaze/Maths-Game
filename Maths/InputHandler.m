//
//  InputHandler.m
//  Maths
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler


- (NSString *) getUserAnswer {
    
    char str [255];
    fgets(str, 255, stdin);
    NSString *userAnswer = [NSString stringWithCString:str encoding:(NSUTF8StringEncoding)];
    NSCharacterSet *dontWantChar = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedString = [userAnswer stringByTrimmingCharactersInSet:dontWantChar];
    return trimmedString;
}

@end
