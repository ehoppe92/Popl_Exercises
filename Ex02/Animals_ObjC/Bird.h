//
//  Bird.h
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#ifndef _Bird_h
#define _Bird_h
@interface Bird:Animal
{
    @public
    double wingSpan;
}
- (void)initWithParams: (NSString*)name_ carnivore:(bool)carnivore_;
- (double)getWingSpan;
- setWingSpan: (double)wingSpan_;


@end

#endif
