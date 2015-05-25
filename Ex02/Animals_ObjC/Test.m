//
//  Test.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import <Foundation/Foundation.h>


int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSLog (@"hello world");
    [pool drain];
    return 0;
}