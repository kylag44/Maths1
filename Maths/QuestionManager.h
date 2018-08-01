//
//  QuestionManager.h
//  Maths
//
//  Created by Kyla  on 2018-08-01.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KHGQuestion.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions; 

//logging time method
-(NSString *)timeOutput; 

@end
