Animal.Mammal = function(name, carnivore){
	//calling super constructor
	Animal.Mammal.call(this);
	//da abstrakte Klasse
	if(this.constructor === Mammal){
		throw new Error ("Cannot instatiate abstract class");
	}
	
};