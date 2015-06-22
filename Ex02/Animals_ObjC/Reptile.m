//
//  Reptile.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import "Reptile.h"
@implementation Reptile:Animal

-(id)initWithParams:(NSMutableString*)name_ carnivore:(BOOL)carnivore_ bodyTemperature:(double)bodyTemperature_
{
    self=[super initWithParams: name_ carnivore:carnivore_];
    
    if(self)
    {
        
        [self setBodyTemperature:bodyTemperature_];
    }

    return self;
}

-(void)setBodyTemperature: (double)bodyTemperature_{
    bodyTemperature = bodyTemperature_;
}

-(double)getBodyTemperature{
    return bodyTemperature;
}

-(void)toString
{
    //TODO
}

-(BOOL)equals:(Reptile*)reptile
{
    
    //check the super class equality
    BOOL animalEqualiy = [super equals:self];
    
    if(animalEqualiy == YES)
    {
        //check for equality in own class
        if(bodyTemperature == [reptile getBodyTemperature])
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
