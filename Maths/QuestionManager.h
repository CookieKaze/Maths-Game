//
//  QuestionManager.h
//  Maths
//
//  Created by Erin Luu on 2016-11-02.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

@interface QuestionManager : NSObject

@property NSMutableArray * questions;


- (NSString *) timeOutput;
@end
