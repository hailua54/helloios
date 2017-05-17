//
//  Person.m
//  helloios
//
//  Created by Nguyen Ngoc Vu Anh on 3/23/17.
//  Copyright © 2017 Nguyen Ngoc Vu Anh. All rights reserved.
//

#import "Person.h"
static int object_count = 0;
@implementation Person
@synthesize name;
@synthesize age;

- (id) initialize: (NSString*) pName andAge: (int) pAge
{
    name = pName;
    age = pAge;

    //[Person totalCount: [Person totalCount] + 1];
    object_count++;
    return self;
}

+ (int) totalCount
{
    return object_count;
}

+ (void) totalCount: (int) c
{
    object_count = c;
}
@end
