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

- (void)initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_
{
    self = [super init];
    
    if(self)
    {
        
        self.name = name_;
        self.carnivore = carnivore_;
        
    }
    
    idCounter++;
    
    return self;
}

- (bool)equals: (Animal)animal_
{
    
    //evtl mit isEqual message??
    return self == animal_;
    
    
}

- (NSMutableString*)getName
{
    return self.name;
}

- (bool)isCarnivore
{
    return self.carnivore;
}

- (void)setCarnivore: (bool)carnivore_
{
    self.carnivore = carnivore_;
}

- (void)setName: (NSMutableString*)name_
{
    self.name = name_;
}

- (void)toString
{
    ; //TODO
}


@end
