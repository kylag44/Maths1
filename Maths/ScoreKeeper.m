//
//  ScoreKeeper.m
//  Maths
//
//  Created by Kyla  on 2018-07-31.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString *)yourScore:(NSString *)result {
    if ([result isEqualTo:@"RIGHT!"]) {
         self.right = self.right +1;
         } else {
             self.wrong = self.wrong +1;
    
    
}
    NSString *scoreString = [NSString stringWithFormat:@"score: %@ right, %@ wrong --- %.1f%%\n", @(self.right), @(self.wrong), self.right/(self.right + self.wrong)*100];
    return scoreString;
    
    
    
    
}
@end
