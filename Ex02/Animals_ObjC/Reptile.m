//
//  Reptile.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import "Reptile.h"
@implementation Reptile

-(void)initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_ bodyTemperature:(double)bodyTemperature_
{
    self=[super init: name_ carnivore:carnivore_];
    
    if(self){
        
        self.bodyTemperature = bodyTemperature_;
    }

    return self;
}

-(void)setBodyTemperature: bodyTemperature(double)bodyTemperature_{
    self.bodyTemperature = bodyTemperature_;
}

-(double)getBodyTemperature{
    return self.bodyTemperature;
}

@end
