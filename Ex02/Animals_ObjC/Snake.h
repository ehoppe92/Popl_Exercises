//
//  Snake.h
//  Animals
//
//  Created by Elisabeth Hoppe on 22.06.15.
//  Copyright (c) 2015 Elisabeth Hoppe. All rights reserved.
//

#import "Reptile.h"
#ifndef Animals_Snake_h
#define Animals_Snake_h


@interface Snake:Reptile
{
    @private
    int bodyLength;
}
- (id) initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_ bodyLength:(int)bodyLength_;
- (void) setBodyLength: (int)bodyLength_;
- (int) getBodyLength;
- (void) toString;
- (BOOL) equals:(Snake*)snake;
@end


#endif
