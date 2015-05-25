//
//  Reptile.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import <Foundation/Foundation.h>

@implementation Reptile

-(void)initWithParams: (NSString*)name_ carnivore:(bool)carnivore_ bodyTemperature:(double)bodyTemperature_
{
    self=[super init: name_, carnivore_];
    
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
