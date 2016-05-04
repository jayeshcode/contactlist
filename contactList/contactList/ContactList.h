//
//  ContactList.h
//  contactList
//
//  Created by Jayesh Wadhwani on 2016-05-03.
//  Copyright © 2016 Jayesh Wadhwani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "contact.h"
@interface ContactList : NSObject
@property (strong, nonatomic) NSMutableArray *contacts;

-(void)addContact:(contact *)newContact;

-(void)list;

@end
