//
//  AdditionQuestion.m
//  Maths
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        //Set Date
        _startTime = [NSDate date];
        
        //Set Answer
        NSInteger randomNumber1 = arc4random_uniform(90)+10;
        NSInteger randomNumber2 = arc4random_uniform(90)+10;
        _answer = randomNumber1 + randomNumber2;

        //Set Question
        NSString * combinedNumbers = [NSString stringWithFormat:@"%ld + %ld\n", randomNumber1, randomNumber2];
        _question = combinedNumbers;
    }
    return self;
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
