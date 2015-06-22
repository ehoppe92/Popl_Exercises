//
//  Penguin.m
//  Animals
//
//  Created by Elisabeth Hoppe on 22.06.15.
//  Copyright (c) 2015 Elisabeth Hoppe. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Penguin.h"

@implementation Penguin:Bird
- (id) initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_
{
    self = [super initWithParams:name_ carnivore:carnivore_];
    return self;
}

@end