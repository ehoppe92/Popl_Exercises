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
        
        //create string for the name
        //NSMutableString* animalname  = [[NSMutableString alloc] initWithString:@"Testanimal1"];
       
        //animal = [animal initWithParams:animalname carnivore: YES ];
        
        [animal setCarnivore:YES];

        printf("Animal:  carnivore:%d", [animal isCarnivore]);

    }
    
    
    
    return 0;
}