//
//  AdditionQuestion.m
//  Maths
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        //Set Date
        _startTime = [NSDate date];
        
        //Set Answer
        _leftValue = arc4random_uniform(90)+10;
        _rightValue = arc4random_uniform(90)+10;
       
    }
    return self;
}

- (void) generateQuestion {
}

- (NSInteger) getAnswer {
    self.endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval) answerTime {
    NSTimeInterval timeDifference = [self.endTime timeIntervalSinceDate:self.startTime];
    return timeDifference;
}

@end
