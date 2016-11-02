//
//  QuestionFactory.m
//  Maths
//
//  Created by Erin Luu on 2016-11-02.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "QuestionFactory.h"
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"
#import "Question.h"

@implementation QuestionFactory

-(Question *) generateRandomQuestion{
    NSArray * questionSubclassName = @[@"AdditionQuestion", @"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
    NSInteger index = arc4random_uniform(3);
    
    return [[NSClassFromString(questionSubclassName[index]) alloc]init];
}

@end
