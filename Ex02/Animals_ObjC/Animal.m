//
//  Animal.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import <Foundation/Foundation.h>

@implementation Animal

+ (void) initialize
{
    idCounter = 0;
}

- (void)initWithParams: (NSString*)name_ carnivore:(bool)carnivore_
{
    self = [super init];
    
    if(self)
    {
        
        self.name = name_;
        self.carnivore = carnivore_;
        
    }
    return self;
}

- (bool)equals: (Animal)animal_
{
    
    //evtl mit isEqual message??
    return self == animal_;
    
    
}

- (NSString*)getName
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

- (void)setName: (NSString*)name_
{
    self.name = name_;
}

- (void)toString
{
    ; //TODO
}


@end
