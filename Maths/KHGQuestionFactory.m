//
//  KHGQuestionFactory.m
//  Maths
//
//  Created by Kyla  on 2018-08-01.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "KHGQuestionFactory.h"

@implementation KHGQuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _subclassNames = @[@"KHGAdditionQuestion", @"KHGSubtractionQuestion", @"KHGMultiplicationQuestion", @"KHGDivisionQuestion"];
    }
    return self;
}

-(KHGQuestion *)generateRandomQuestion {
    
    NSString *randomString = [self.subclassNames objectAtIndex:arc4random_uniform(4)];
    
    return [[NSClassFromString(randomString) alloc] init]; 

}


@end
