//
//  AdditionQuestion.h
//  Maths
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

// Question and Answer
@property NSInteger leftValue;
@property NSInteger rightValue;
@property NSString * question;
@property NSInteger answer;

- (void) generateQuestion;
- (NSInteger) getAnswer;

// Time
@property NSDate * startTime;
@property NSDate * endTime;
- (NSTimeInterval) answerTime;

@end
