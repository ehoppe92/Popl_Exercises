//
//  Bird.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import "Animal.h"
#import "Bird.h"

@implementation Bird:Animal

- (id)initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_ wingSpan:(double)wingSpan_
{
    self=[super initWithParams:name_  carnivore:carnivore_];
    if(self){
        [self setWingSpan:wingSpan_];
    }
    return self;
}

- (void)setWingSpan: (double)wingSpan_
{
    wingSpan = wingSpan_;
}

- (double)getWingSpan
{
    return wingSpan;
}

- (void)toString
{
    //TODO sort
    NSLog(@"ID: %d Name: %@ Carnivore: %d Wingspan: %f", [self getID], [self getName], [self isCarnivore], [self getWingSpan] );
}

-(BOOL) equals:(Bird *)bird
{
    //check the super class equality
    BOOL animalEqualiy = [super equals:bird];
    
    if(animalEqualiy == YES)
    {
        //check for equality in own class
        if(wingSpan == [bird getWingSpan])
        {
            return YES;
        }
        else
        {
            return NO;
        }
    }
    else
    {
        return NO;
    }
    
    return NO;
    
}
@end
