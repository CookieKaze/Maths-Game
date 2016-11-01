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
        int randomNumber1 = arc4random_uniform(90)+10;
        int randomNumber2 = arc4random_uniform(90)+10;
        int answer = randomNumber1 + randomNumber2;
        
        NSString * combinedNumbers = [NSString stringWithFormat:@"%d + %d\n", randomNumber1, randomNumber2];
        _question = combinedNumbers;
        _answer = answer;
    }
    return self;
}

@end