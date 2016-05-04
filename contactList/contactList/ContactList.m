//
//  ContactList.m
//  contactList
//
//  Created by Jayesh Wadhwani on 2016-05-03.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import "ContactList.h"
#import "contact.h"
@implementation ContactList



-(instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        _contacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(contact *)newContact {
    
    [self.contacts addObject:newContact];
}

-(void) list {
    
    int i = 0;
    
    for (contact *elements in self.contacts) {
        
        NSLog(@"%d: %@", i, elements.fullname);
        i++;
    }
    
}

@end
