//
//  Mammal.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import "Mammal.h"

@implementation Mammal:Animal
- (id) initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_
{
    self = [super initWithParams:name_ carnivore:carnivore_];
    return self;
}

@end