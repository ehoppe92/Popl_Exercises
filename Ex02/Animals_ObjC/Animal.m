//
//  Animal.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import "Animal.h"

@implementation Animal

static int idCounter = 0;
/*+ (void) initialize
{
    idCounter = 0;
}*/

- (id)initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_
{
    self = [super init];
    
    if(self)
    {
        
        name = name_;
        carnivore = carnivore_;
        
    }
    
    idCounter++;
    
    return self;
}

- (BOOL)equals: (Animal*)animal_
{
    
    //evtl mit isEqual message??
    return self == animal_;
    
    
}

- (NSMutableString*)getName
{
    return name;
}

- (BOOL)isCarnivore
{
    return carnivore;
}

- (void)setCarnivore: (BOOL)carnivore_
{
    carnivore = carnivore_;
}

- (void)setName: (NSMutableString*)name_
{
    name = name_;
}

- (void)toString
{
    ; //TODO
}


@end
