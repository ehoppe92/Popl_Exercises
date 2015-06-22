//
//  Animal.m
//  
//
//  Created by Elisabeth Hoppe on 25.05.15.
//
//

#import "Animal.h"
#import <objc/runtime.h>

@implementation Animal

static int idCounter = 0;
/*+ (void) initialize
{
    idCounter = 0;
}*/

- (id)initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_
{
    self = [super init];
    
    if(self)
    {
        
        [self setName:name_];
        [self setCarnivore:carnivore_];
        ID = [Animal generateID];
        
    }
    
    return self;
}

+ (int)generateID
{
    return ++idCounter;
}

- (BOOL)equals: (Animal*)animal_
{
    
    
    //tests only if the objects are identical, not equal
    //return self == animal_;
    
    if( ([name isEqualToString:[animal_ getName]])
       && (carnivore == [animal_ isCarnivore]) )
    {
        return YES;
    }
    else
    {
        return NO;
    }
    
    
    
}

- (NSMutableString*)getName
{
    return name;
}

- (BOOL)isCarnivore
{
    return carnivore;
}

- (void)setCarnivore: (BOOL)carnivore_
{
    carnivore = carnivore_;
}

- (void)setName: (NSMutableString*)name_
{
    name = name_;
}

- (void)toString
{
    //TODO does not work so far
    
    //get all instance variables of self
    //sort them and print them
    
    unsigned int varCount = 0;
    Ivar *vars = class_copyIvarList([self class], &varCount);
    unsigned int leftElem = 0;
    unsigned int min = 0;
    
    //sort the array
    for(int i=0; i<varCount; i++)
    {
        min = leftElem;
        for(int j = leftElem+1; j<varCount; j++)
        {
            //get
            Ivar currentVar = vars[min];
            Ivar var = vars[j];
            const char* currentName = ivar_getName(currentVar);
            const char* varName = ivar_getName(var);
            
            int asciiOne = (int)currentName[0];
            int asciiTwo = (int)varName[0];
            
            if(asciiTwo < asciiOne)
            {
                min = j;
            }
    
        }
        
        //vertausche a[min] und a[leftElem]
        Ivar temp = vars[min];
        vars[min] = vars[leftElem];
        vars[leftElem] = temp;
        leftElem++;
        
    }
    
    //now print the array
    for(int z=0; z<varCount; z++)
    {
        Ivar cVar = vars[z];
       const char* dname = ivar_getName(cVar);
        NSLog(@"Property name: %s", dname );
    }
    
}


@end
