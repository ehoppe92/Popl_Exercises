//
//  Test.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import <Foundation/Foundation.h>
#import "Penguin.h"

#import "Snake.h"


int main (int argc, const char * argv[])
{
    /*NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    NSLog (@"hello world");
    [pool drain];*/
    
    
    @autoreleasepool {
        
        Penguin* p1;
        p1 = [[Penguin alloc] init];
        //create string for the name
        NSMutableString* animalname ;
        animalname = [[NSMutableString alloc] initWithString:@"Testanimal1"];
        p1 = [p1 initWithParams:animalname carnivore: YES wingSpan:12.5];
        [p1 toString];
        
        Penguin* p2;
        p2 = [[Penguin alloc] init];
        NSMutableString* animalname2;
        animalname2 = [[NSMutableString alloc] initWithString:@"Testanimal2"];
        p2 = [p2 initWithParams:animalname2 carnivore: YES wingSpan:12.5];
        [p2 toString];
        
        NSLog(@"p1 and p2 equal? %d", [p1 equals:p2]);
        
        NSLog(@"change name of animal 2 ");
        [animalname2 setString:@"Testanimal1"];
        [p2 setName:animalname2];
        NSLog(@"Now they should be equal: %d", [p1 equals: p2]);
        
        Penguin* p3;
        p3 = [[Penguin alloc] init];
        //create string for the name
        NSMutableString* animalname3 ;
        animalname3 = [[NSMutableString alloc] initWithString:@"Testanimal3"];
        p3 = [p3 initWithParams:animalname3 carnivore: YES ];
        [p3 toString];
        
        Snake* s1;
        s1 = [[Snake alloc] init];
        NSMutableString* animalname4 ;
        animalname4 = [[NSMutableString alloc] initWithString:@"Testanimal4"];
        double temp = 23.4;
        double length = 25.5;
        s1 = [s1 initWithParams:animalname4 carnivore:YES bodyLength:length];
        [s1 setBodyTemperature:temp];
        [s1 toString];
        
        
        Snake* s2;
        s2 = [[Snake alloc] init];
        NSMutableString* animalname5 ;
        animalname5 = [[NSMutableString alloc] initWithString:@"Testanimal5"];
        double temp2 = 234.4;
        double length2 = 252.5;
        s2 = [s2 initWithParams:animalname5 carnivore:NO bodyLength:length2];
        [s2 setBodyTemperature:temp2];
        [s2 toString];
        
        Animal* a;
        a = [[Animal alloc] init];
        NSMutableString* animalname6 ;
        animalname6 = [[NSMutableString alloc] initWithString:@"Testanimal5"];
                a = [a initWithParams:animalname5 carnivore:NO];
                [a toString];

        

    }
    
    
    
    return 0;
}