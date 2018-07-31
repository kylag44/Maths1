//
//  main.m
//  Maths
//
//  Created by Kyla  on 2018-07-31.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        
        while (YES) {
            
            NSLog(@"MATHS!"); 
        
            AdditionQuestion *maths = [[AdditionQuestion alloc] init];
            InputHandler *iH = [[InputHandler alloc] init];
            NSString *input = [iH getInput];


            
            
            if ([input isEqual:@"quit"]) {
                break;
            }
            NSLog(@"%@", [maths evaluate:[input intValue]]);
            NSLog(@"%@", [score yourScore:[maths evaluate:[input intValue]]]); 
           
            
        }
    
    }
    return 0;
}
