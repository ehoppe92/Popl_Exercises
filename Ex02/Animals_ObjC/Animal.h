static int idCounter;

@interface Animal:NSObject
{
    //Instanzvariablen
    @private
    bool carnivore;
    int id;
    NSString* name;

}
+ (void) initialize;
- (void)initWithParams: (NSString*)name_ carnivore:(bool)carnivore_;
- (bool)equals: (Animal)animal_;
- (NSString*)getName;
- (bool)isCarnivore;
- (void)setCarnivore: (bool)carnivore_;
- (void)setName: (NSString*)name_;
- (void)toString;
@end