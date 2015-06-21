//
//  Test.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import <Foundation/Foundation.h>
#import "Animal.h"


int main (int argc, const char * argv[])
{
    /*NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSLog (@"hello world");
    [pool drain];*/
    
    
    @autoreleasepool {
        
        Animal* animal;
        animal = [Animal new];
        
        animal = [animal initWithParams:"TestAnimal1" carnivore: YES ];
        
        printf("Animal: name: %@,  carnivore:%d", [animal getName], [animal isCarnivore]);

    }
    
    
    
    return 0;
}