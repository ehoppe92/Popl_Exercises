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
    
    if(self){
        
        self.bodyTemperature = bodyTemperature_;
    }

    return self;
}

-(void)setBodyTemperature: (double)bodyTemperature_{
    self.bodyTemperature = bodyTemperature_;
}

-(double)getBodyTemperature{
    return bodyTemperature;
}

@end
