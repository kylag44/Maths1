//
//  AdditionQuestion.m
//  Maths
//
//  Created by Kyla  on 2018-07-31.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion


- (instancetype)init
{
    self = [super init];
    if (self) {
        int n1 = (arc4random_uniform(91) + 10);
        int n2 = (arc4random_uniform(91) + 10);
        _question = [NSString stringWithFormat:@"%@ + %@ = ?", @(n1), @(n2)];
        NSLog(@"%@", _question);
                     _answer = n1 + n2;

    }
    return self;
}

-(NSString *)evaluate:(int)inputAns {
    if (inputAns == self.answer) {
        return @"RIGHT!";
    }else{
        return @"WRONG!";
    }
}

@end
