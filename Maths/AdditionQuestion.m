//
//  AdditionQuestion.m
//  Maths
//
//  Created by Erin Luu on 2016-11-02.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion {
    NSString * question = [NSString stringWithFormat:@"%ld + %ld\n", super.leftValue, super.rightValue];
    super.question = question;
    super.answer = super.leftValue + super.rightValue;
}
@end
