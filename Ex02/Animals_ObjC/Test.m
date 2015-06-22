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
        animal = [[Animal alloc] init];
        //animal = [Animal new];
        
        //create string for the name
        NSMutableString* animalname ;
        animalname = [[NSMutableString alloc] initWithString:@"Testanimal1"];
       
        animal = [animal initWithParams:animalname carnivore: YES ];
        
        //[animal setCarnivore:YES];

        NSLog(@"Animal one: name:%@ carnivore:%d", [animal getName],[animal isCarnivore]);
        
        Animal* animal2;
        animal2 = [[Animal alloc] init];
        //animal = [Animal new];
        
        //create string for the name
        NSMutableString* animalname2;
        animalname2 = [[NSMutableString alloc] initWithString:@"Testanimal2"];
        
        animal2 = [animal2 initWithParams:animalname2 carnivore: YES ];
        
        NSLog(@"Animal two:  name:%@ carnivore:%d", [animal2 getName],[animal2 isCarnivore]);
        
        NSLog(@"Equal? %d", [animal equals: animal2]);
        
        NSLog(@"change name of animal 2 ");
        [animalname2 setString:@"Testanimal1"];
        [animal2 setName:animalname2];
        
        NSLog(@"Now they should be equal: %d", [animal2 equals: animal]);

    }
    
    
    
    return 0;
}