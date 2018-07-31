//
//  main.m
//  Maths
//
//  Created by Kyla  on 2018-07-31.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (YES) {
            
            NSLog(@"MATHS!"); 
        
            AdditionQuestion *maths = [[AdditionQuestion alloc] init];
            
            char inputNumbers[255];
            //get user to input
            NSLog(@"Input your answer: ");
            fgets(inputNumbers, 255, stdin);
//            turn c into NSString
            NSString *result = [[NSString alloc] initWithCString:inputNumbers encoding:NSUTF8StringEncoding];
            //eliminate the white space
            result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"%@", result);
            if ([result isEqual:@"quit"]) {
                break;
            }
            NSLog(@"%@", [maths evaluate:[result intValue]]);
            
            
            
            
        }
    
    }
    return 0;
}
