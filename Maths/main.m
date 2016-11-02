//
//  main.m
//  Maths
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //Instantiate score
        ScoreKeeper * score = [[ScoreKeeper alloc] init];
        
        //Instantiate QuesitonManager
        QuestionManager * questionManager = [[QuestionManager alloc] init];
        
        BOOL quit = NO;
        while (quit == NO) {
            
            //Ask the question
                Question * newQuestion = [[Question alloc] init];
                [questionManager.questions addObject:newQuestion];
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
                NSInteger correctAnswer = [newQuestion getAnswer];
                NSInteger intAnswer = [answer intValue];
                if (intAnswer == correctAnswer) {
                    score.right = score.right+1;
                    NSLog(@"Right!");
                    
                } else {
                    score.wrong = score.wrong+1;
                    NSLog(@"Wrong!");
                }
            
            NSLog(@"%@", [score getScore]);
            NSLog(@"%@", [questionManager timeOutput]);
            
        }
        
        
    }
    return 0;
}
