//
//  Mammal.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import <Foundation/Foundation.h>

@implementation Mammal
- (void) initWithParams: (NSString* name)name_ carnivore(bool)carnivore_;
{
    self = [super init:name_,carnivore_];
    return self;
}

@end