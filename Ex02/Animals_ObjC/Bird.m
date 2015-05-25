//
//  Bird.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import <Foundation/Foundation.h>
@implementation Bird

- (void)initWithParams: (NSString*)name_ carnivore:(bool)carnivore_ wingSpan(double)wingSpan_
{
    self=[super initWithParams: name_, carnivore_];
    if(self){
        self.wingSpan = wingSpan_;
    }
    return self;
}

- (double)getWingSpan{
    return self.wingSpan;
}

- (void)setWingSpan: (double)wingSpan_{
    self.wingSpan = wingSpan_;
}