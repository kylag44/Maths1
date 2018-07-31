//
//  AdditionQuestion.h
//  Maths
//
//  Created by Kyla  on 2018-07-31.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject 

@property (nonatomic, assign) NSString *question;
@property (nonatomic, assign) NSInteger answer;

-(NSString*)evaluate:(int)inputAns; 

@end
