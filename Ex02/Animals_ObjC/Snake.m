//
//  Snake.m
//  Animals
//
//  Created by Elisabeth Hoppe on 22.06.15.
//  Copyright (c) 2015 Elisabeth Hoppe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Snake.h"

@implementation Snake:Reptile
- (id) initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_ bodyLength:(int)bodyLength_
{
    self = [super initWithParams:name_ carnivore:carnivore_];
    [self setBodyLength:bodyLength_];
    return self;
}

-(void) setBodyLength:(int)bodyLength_
{
    bodyLength = bodyLength_;
}

-(int)getBodyLength
{
    return bodyLength;
}

-(void)toString
{
    //TODO;
}

-(BOOL)equals:(Snake *)snake
{
    
    
    //check the super class equality
    BOOL reptileEqualiy = [super equals:self];
    
    if(reptileEqualiy == YES)
    {
        //check for equality in own class
        if(bodyLength == [snake getBodyLength])
        {
            return YES;
        }
        else
        {
            return NO;
        }
    }
    else
    {
        return NO;
    }
    
    return NO;
}

@end