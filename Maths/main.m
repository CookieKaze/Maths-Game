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
            AdditionQuestion * newQuestion = [[AdditionQuestion alloc] init];
            NSLog(@"%@", newQuestion.question);
            
            
            
            
            NSLog(@"What is the answer? ");
            char str [255];
            fgets(str, 255, stdin);
            
            NSString *userAnswer = [NSString stringWithCString:str encoding:(NSUTF8StringEncoding)];
            NSCharacterSet *dontWantChar = [NSCharacterSet whitespaceAndNewlineCharacterSet];
            NSString *trimmedString = [userAnswer stringByTrimmingCharactersInSet:dontWantChar];
            NSInteger intAnswer = [trimmedString intValue];
            
            if (intAnswer == newQuestion.answer) {
                NSLog(@"Right!");
            } else {
                NSLog(@"Wrong!");
            }
            
        }
        
        
    }
    return 0;
}
