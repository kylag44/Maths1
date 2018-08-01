//
//  AdditionQuestion.h
//  Maths
//
//  Created by Kyla  on 2018-07-31.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KHGQuestion : NSObject 

@property (nonatomic, assign) NSString *question;
@property (nonatomic, assign) NSInteger answer;

//time properties 
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

//for other classes
@property (nonatomic) int rightValue;
@property (nonatomic) int leftValue;

- (void)genterateQuestion; 

-(NSString*)evaluate:(int)inputAns; 

//time method
-(float)answerTime;

@end
