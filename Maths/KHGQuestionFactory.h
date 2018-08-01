//
//  KHGQuestionFactory.h
//  Maths
//
//  Created by Kyla  on 2018-08-01.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KHGQuestion.h"

@interface KHGQuestionFactory : NSObject

@property (nonatomic, strong)NSArray *subclassNames; 

-(KHGQuestion *)generateRandomQuestion;


@end
