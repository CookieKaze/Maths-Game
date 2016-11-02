//
//  AdditionQuestion.h
//  Maths
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

// Question and Answer
@property NSString * question;
@property NSInteger answer;
- (NSInteger) getAnswer;

// Time
@property NSDate * startTime;
@property NSDate * endTime;
- (NSTimeInterval) answerTime;

@end
