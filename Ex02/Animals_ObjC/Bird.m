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
        self.wingSpan = wingSpan_;
    }
    return self;
}

- (void)setWingSpan: (double)wingSpan_{
    self.wingSpan = wingSpan_;
}

- (double)getWingSpan{
    return wingSpan;
}
@end
