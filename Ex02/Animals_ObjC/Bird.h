//
//  Bird.h
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import "Animal.h"

#ifndef _Bird_h
#define _Bird_h
@interface Bird:Animal
{
    @public
    double wingSpan;
}
- (id)initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_ wingSpan:(double) wingSpan_;
- (double)getWingSpan;
- (void)setWingSpan: (double)wingSpan_;


@end

#endif
