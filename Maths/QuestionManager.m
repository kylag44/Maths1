//
//  QuestionManager.m
//  Maths
//
//  Created by Kyla  on 2018-08-01.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "QuestionManager.h"


@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

//time logging
-(NSString *)timeOutput {
    float totalTime = 0;
    
    
    for (KHGQuestion *q in self.questions) {
        totalTime += q.answerTime;
        
    }
    //if its a method thats kind of like a propery use "." notation
    //float averagetime = [self.question count] 
    float averageTime = totalTime / self.questions.count;
    return [NSString stringWithFormat:@"Total Time %fseconds Average Time %fseconds", totalTime, averageTime];
}

@end
