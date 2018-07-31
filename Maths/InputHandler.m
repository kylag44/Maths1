//
//  InputHandler.m
//  Maths
//
//  Created by Kyla  on 2018-07-31.
//  Copyright © 2018 Kyla . All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *)getInput {
    char inputNumbers[255];
    NSLog(@"Input your answer: ");
    fgets(inputNumbers, 255, stdin);
    //            turn c into NSString
    NSString *result = [[NSString alloc] initWithCString:inputNumbers encoding:NSUTF8StringEncoding];
    //eliminate the white space
    result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return result; 
}




@end
