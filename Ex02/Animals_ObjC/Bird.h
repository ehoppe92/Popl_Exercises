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
//toString must exist here also, because a bird has more properties than the animal
- (void)toString;
//extends the equals method with the wingSpan property
- (BOOL) equals:(Bird*) bird;


@end

#endif
