//
//  AdditionQuestion.m
//  Maths
//
//  Created by Kyla  on 2018-07-31.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "KHGQuestion.h"

@implementation KHGQuestion


- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //set up time to now with convenience initializer 
        _startTime = [NSDate date];
        
        //generate random numbers and addition question
        _rightValue = (arc4random_uniform(91) + 10);
        _leftValue = (arc4random_uniform(91) + 10);
//        _question = [NSString stringWithFormat:@"%@ + %@ = ?", @(_rightValue), @(_leftValue)];
        NSLog(@"%@", _question);
//                     _answer = _rightValue + _leftValue;

        
        
    }
    return self;
}

//overiding asswer
- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

//answering input
-(NSString *)evaluate:(int)inputAns {
    if (inputAns == self.answer) {
        _endTime = [NSDate date];
        return @"RIGHT!";
    }else{
        _endTime = [NSDate date];
        return @"WRONG!";
    }
}

//time method
-(float)answerTime {
    NSTimeInterval answerTime = [_endTime timeIntervalSinceDate:_startTime];
//    NSLog(@"%f", answerTime);
    return answerTime;



    
}

@end
