var Bird = function(name, carnivore, wingSpan){
	//calling super constructor
	Animal.call(this, name, carnivore);
	
	//double; oeffentliche EIgenschaft
	this.mWingSpan = wingSpan;
	
	
	//da abstrakte Klasse
	if(this.constructor === Bird){
		throw new Error ("Bird: Cannot instatiate abstract class");
		// console.log("Bird: Cannot instatiate abstract class");
	}
	
	
};
Bird.prototype = Object.create(Animal.prototype);
Bird.prototype.constructor = Bird;

//Elternklasse-Methoden

Bird.prototype.setWingSpan = function(wingSpan){
	
		this.mWingSpan = wingSpan;
	
}

Bird.prototype.getWingSpan = function(){
	
		return this.mWingSpan;
}
	
	
function createBird() {
	try{

		console.log("creating bird...");
		var m = new Bird ("Test" , "true");

		return m;
	}
	catch(e){
	
		console.log("Exception:" + e);
		return e;
	}
};
