var Reptile = function(name, carnivore, bodyTemperature){
	//calling super constructor
	Animal.call(this, name, carnivore);
	
	this.setBodyTemperature = function(bodyTemperature){
	
		pBodyTemperature = bodyTemperature;
	}

	this.getBodyTemperature = function(){
		return pBodyTemperature;
	
	}
	
	//bodyTemperature ist privat
	
	var pBodyTemperature = this.setBodyTemperature(bodyTemperature);
	
	
	//da abstrakte Klasse
	if(this.constructor === Reptile){
		throw new Error ("Reptile: Cannot instatiate abstract class");
		// console.log("Reptile: Cannot instatiate abstract class");
	}
	
	
};

Reptile.prototype = Object.create(Animal.prototype);
Reptile.prototype.constructor = Reptile;

//Elternklasse-Methoden

function createReptile() {
	try{

		console.log("creating reptile...");
		var m = new Reptile ("Test" , "true");
		return m;
	}
	catch(e){
	
		console.log("Exception:" + e);
		return e;
	}
};