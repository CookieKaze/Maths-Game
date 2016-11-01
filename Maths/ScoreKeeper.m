//
//  ScoreKeeper.m
//  Maths
//
//  Created by Erin Luu on 2016-11-01.
//  Copyright © 2016 Erin Luu. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString *) getScore {
    
    NSString *message;
    if ((long)_right + (long)_wrong != 0) {
        NSInteger total = (long)_right + (long)_wrong;
        CGFloat percent = ((float)_right/total) * 100;
        message = [NSString stringWithFormat:@"Your score is: %ld right and %ld wrong ==> %f%%", (long)_right, (long)_wrong, percent];
    }
    return message;
}

@end
