//
//  main.m
//  contactList
//
//  Created by Jayesh Wadhwani on 2016-05-03.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "inputCollector.h"
#import "contact.h"
#import "ContactList.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        
        ContactList *mylist = [[ContactList alloc]init];
        inputCollector *obj = [[inputCollector alloc]init];
        
        while (TRUE) {
            
            
            NSString *input=   [obj inputForPrompt:@"\nWhat would you like do next? \nnew -  Create a new contact  \nlist - List all contacts  \n quit - Exit Application > _"];
            
            if ([input isEqualToString:@"quit"]) {
                
                NSLog(@"\n SEE YOU -:) ");
                return 0;
            }
            
            else if ([input isEqualToString:@"new"]){
            
                NSString *name = [obj inputForPrompt:@"Enter the full name of the contact: "];
                
                NSString *email = [obj inputForPrompt:@"Enter the email of the contact"];
                
                contact *objc = [[contact alloc] init];
                objc.fullname = name;
                objc.email = email;
                [mylist addContact:objc];
            
           
              
           
        }
        
        else if ([input isEqualToString:@"list"])
                  
        {
            
            [mylist list];
            
        }
        
        
        
    }
    
    }
    return 0;
    
}