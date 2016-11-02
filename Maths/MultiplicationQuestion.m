//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Erin Luu on 2016-11-02.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    NSString * question = [NSString stringWithFormat:@"%ld * %ld\n", self.leftValue, self.rightValue];
    self.question = question;
    self.answer = self.leftValue * self.rightValue;
}

@end
