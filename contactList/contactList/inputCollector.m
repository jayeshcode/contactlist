//
//  inputCollector.m
//  contactList
//
//  Created by Jayesh Wadhwani on 2016-05-03.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import "inputCollector.h"

@implementation inputCollector

-(NSString *)inputForPrompt:(NSString *)promptString;
{

   
     char inputchar[255];
    
    NSLog(@"%@",promptString);
    fgets(inputchar, 255, stdin);
    
    
    NSString* inputstring =[NSString stringWithUTF8String:inputchar];
    inputstring = [inputstring stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    return inputstring;
}




@end
