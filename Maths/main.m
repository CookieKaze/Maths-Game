//
//  main.m
//  Maths
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        int x = 1;
        while (x == 1) {
            printf("What is the answer? \nAnswer: ");
            char str [255];
            fgets(str, 255, stdin);
            
            NSString *userAnswer = [NSString stringWithCString:str encoding:(NSUTF8StringEncoding)];
            NSCharacterSet *dontWantChar = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *trimmedString = [userAnswer stringByTrimmingCharactersInSet:dontWantChar];
            
            
            AdditionQuestion * newQuestion = [[AdditionQuestion alloc] init];
            
            
            printf("%s", [newQuestion.question UTF8String]);
        }
        
        
    }
    return 0;
}
