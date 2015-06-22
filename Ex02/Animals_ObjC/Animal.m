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
        
        [self setName:name_];
        [self setCarnivore:carnivore_];
        ID = [Animal generateID];
        
    }
    
    return self;
}

+ (int)generateID
{
    return ++idCounter;
}

- (BOOL)equals: (Animal*)animal_
{
    
    
    //tests only if the objects are identical, not equal
    //return self == animal_;
    
    if( ([name isEqualToString:[animal_ getName]])
       && (carnivore == [animal_ isCarnivore]) )
    {
        return YES;
    }
    else
    {
        return NO;
    }
    
    
    
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
