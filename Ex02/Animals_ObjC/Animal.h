//static int idCounter;

@interface Animal:NSObject
{
    //Instanzvariablen
    @private
    BOOL carnivore;
    int id;
    NSMutableString* name;

}
//+ (void) initialize;
- (void)initWithParams: (NSMutableString*)name_ carnivore:(bool)carnivore_;
- (bool)equals: (Animal)animal_;
- (NSMutableString*)getName;
- (bool)isCarnivore;
- (void)setCarnivore: (bool)carnivore_;
- (void)setName: (NSMutableString*)name_;
- (void)toString;
@end