//
//  Reptile.h
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#ifndef _Reptile_h
#define _Reptile_h
@interface Reptile:Animal
{
    @private
    double bodyTemperature;
}
- (void)initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_ bodyTemperature:(double)bodyTemperature_;

- (double)getBodyTemperature;
- (void)setBodyTemperature: (double)bodyTemperature_;

@end

#endif
