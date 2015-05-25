var Mammal = function(name, carnivore){
	//calling super constructor
	Animal.call(this, name, carnivore);
	//da abstrakte Klasse
	if(this.constructor === Mammal){
		throw new Error ("mammal: Cannot instatiate abstract class");
		// console.log("mammal: Cannot instatiate abstract class");
	}
	
};

Mammal.prototype = Object.create(Animal.prototype);
Mammal.prototype.constructor = Mammal;


function createMammal() {
	try{

		console.log("creating mammal...");
		var m = new Mammal ("Test" , "true");

		return m;
	}
	catch(e){
	
		console.log("Exception:" + e);
		return e;
	}
};