//
//  Person.h
//  helloios
//
//  Created by Nguyen Ngoc Vu Anh on 3/23/17.
//  Copyright © 2017 Nguyen Ngoc Vu Anh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString* name;
    int age;
}
@property (strong, nonatomic) NSString* name;
@property int age;

- (id) initialize: (NSString*) name andAge: (int) age;
// static
+ (int) totalCount;
+ (void) totalCount: (int) c;
@end
