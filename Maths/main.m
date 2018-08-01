//
//  main.m
//  Maths
//
//  Created by Kyla  on 2018-07-31.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KHGQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "KHGQuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        QuestionManager *qM = [[QuestionManager alloc] init];
        KHGQuestionFactory *qf = [[KHGQuestionFactory alloc] init];
        
        while (YES) {
            
            
            NSLog(@"MATHS!"); 
        
            KHGQuestion *maths = [qf generateRandomQuestion];
            NSLog(@"%@", maths.question);
            //adding right and wrong to the array 
            [qM.questions addObject:maths];
            
            
            InputHandler *iH = [[InputHandler alloc] init];
            NSString *input = [iH getInput];
            
            //adding time score
            
            
            
            if ([input isEqual:@"quit"]) {
                break;
            }
            
            
            NSLog(@"%@", [maths evaluate:[input intValue]]);
            
 
            NSLog(@"%@", [score yourScore:[maths evaluate:[input intValue]]]);
           
            double timedAnswer = [maths answerTime];
//            NSLog(@"%fseconds", timedAnswer);
            NSLog(@"%@", [qM timeOutput]);
            
            
        }
    
    }
    return 0;
}
