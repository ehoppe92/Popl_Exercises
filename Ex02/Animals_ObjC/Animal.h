//static int idCounter;

#import <Foundation/Foundation.h>

@interface Animal:NSObject
{
    //Instanzvariablen
    @private
    BOOL carnivore;
    int id;
    NSMutableString* name;

}
//+ (void) initialize;
- (id)initWithParams: (NSMutableString*)name_ carnivore:(BOOL)carnivore_;
- (BOOL)equals: (Animal*)animal_;
- (NSMutableString*)getName;
- (BOOL)isCarnivore;
- (void)setCarnivore: (BOOL)carnivore_;
- (void)setName: (NSMutableString*)name_;
- (void)toString;
@end