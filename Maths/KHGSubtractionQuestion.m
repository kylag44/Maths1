//
//  KHGSubtractionQuestion.m
//  Maths
//
//  Created by Kyla  on 2018-08-01.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "KHGSubtractionQuestion.h"

@implementation KHGSubtractionQuestion




- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

- (void)generateQuestion {
   self.answer = self.leftValue - self.rightValue;
    self.question = [NSString stringWithFormat:@"%i - %i", self.leftValue, self.rightValue];
}


@end
