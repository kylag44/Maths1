//
//  ScoreKeeper.h
//  Maths
//
//  Created by Kyla  on 2018-07-31.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) float right;
@property (nonatomic, assign) float wrong;

-(NSString *)yourScore:(NSString *)result;

@end
