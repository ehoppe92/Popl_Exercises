//
//  Reptile.h
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#ifndef _Reptile_h
#define _Reptile_h

#import "Animal.h"



@interface Reptile:Animal
{
    @private
    double bodyTemperature;
}
- (id)initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_ bodyTemperature:(double)bodyTemperature_;

- (double)getBodyTemperature;
- (void)setBodyTemperature: (double)bodyTemperature_;
//- (void)toString;
- (BOOL) equals: (Reptile*)reptile;

@end

#endif
