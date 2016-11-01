//
//  main.m
//  Maths
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL quit = NO;
        while (quit == NO) {
            //Ask the question
                AdditionQuestion * newQuestion = [[AdditionQuestion alloc] init];
                NSLog(@"%@", newQuestion.question);
            
            //Get the answer
                NSLog(@"What is the answer? ");
                InputHandler *userInput = [[InputHandler alloc] init];
                NSString * answer = [userInput getUserAnswer];
            
            //Quit command
                if ([answer  isEqual: @"quit"]) {
                    NSLog(@"Thank you for playing.");
                    break;
                }
            
            //Check answer
                NSInteger intAnswer = [answer intValue];
                if (intAnswer == newQuestion.answer) {
                    NSLog(@"Right!");
                } else {
                    NSLog(@"Wrong!");
                }
            
        }
        
        
    }
    return 0;
}
