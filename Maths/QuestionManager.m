//
//  QuestionManager.m
//  Maths
//
//  Created by Erin Luu on 2016-11-02.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager


- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
        
    }
    return self;
}

- (NSString *) timeOutput {
    NSTimeInterval totalTime = 0.0;
    NSTimeInterval averageTime = 0.0;
    for (AdditionQuestion *item in self.questions){
        totalTime = item.answerTime + totalTime;
        averageTime = totalTime/[self.questions count];
    }
    NSString * message = [NSString stringWithFormat:@"Total time: %fs, average time: %fs.", totalTime, averageTime];
    return message;
}


@end
