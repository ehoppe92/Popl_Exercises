var Animal = function(name, carnivore){
	
	//Priviledged methods -> access the private properties
	this.getName = function(){
		return this.pName;
	}

	this.isCarnivore = function(){
		return this.pCarnivore;
	}
	
	this.setCarnivore = function(carnivore){
		this.pCarnivore = carnivore;
	}

	this.setName = function(name){
		this.pName = name;
	}
	
	
	//unique, protected counter
	Animal.generateID = function(){
			if(typeof Animal.idCounter === 'undefined'){
				Animal.idCounter = 0;
			}	
			 console.log("ID: " + Animal.idCounter);
			 return Animal.idCounter++;
		}

	// //private eigenschaften
	var pCarnivore = this.setCarnivore(carnivore); //boolean
	var pID = Animal.generateID(); //int
	var pName = this.setName(name); //string
	
	
	// //da abstrakte Klasse
	if(this.constructor === Animal){
		throw new Error ("animal: cannot instatiate abstract class");
		
	}
	
	
	
// //	//statischer Counter ??? ausprobieren!
// //	var uniqueCounter = (function(){
// //		if(typeof Animal.idCounter == 'undefined'){
// //			Animal.idCounter = 0;
// //		}
// //	})();
	
	
}



//METHODEN DER ELTERNKLASSE

Animal.prototype.equals = function(animalOb){
	if(animalOb === this){
		return true;
	}
	return false;
 }

Animal.prototype.toString = function(){
	// //not implemented - abstract 
	throw new Error ("animal: Absract method!");
}

//
function createAnimal(){
	try{
		
		console.log("creating animal...");
		var m = new Animal ("Test" , "true");
	
		return m;
	}
	catch(e){
	
		console.log("Exception:" + e);
		return e;
	}
};



// /////////////// REPTILE 

// Animal.Reptile = function(name, carnivore, bodyTemperature){
	// //calling super constructor
	// Animal.Reptile.call(this);
	// //da abstrakte Klasse
	// if(this.constructor === Reptile){
		// throw new Error ("Cannot instatiate abstract class");
	// }
	
	// //bodyTemperature ist privat
	
	// var pBodyTemperature = this.setBodyTemperature(bodyTemperature);
	
// };

// //Elternklasse-Methoden
// Animal.Reptile.prototype.setBodyTemperature = function(bodyTemperature){
	
	// pBodyTemperature = bodyTemperature;
// }

// Animal.Reptile.prototype.getBodyTemperature = function(){
	// return pBodyTemperature;
	
// }

// function createReptile() {
	// try{

		// console.log("creating reptile...");
		// var m = new Reptile ("Test" , "true");

		// return m;
	// }
	// catch(e){
	
		// console.log("Exception:" + e);
		// return e;
	// }
// };

// ////////////////////// BIRD

// Animal.Bird = function(name, carnivore, wingSpan){
	// //calling super constructor
	// Animal.Bird.call(this);
	// //da abstrakte Klasse
	// if(this.constructor === Bird){
		// throw new Error ("Cannot instatiate abstract class");
	// }
	
	// //double; oeffentliche EIgenschaft
	// this.mWingSpan = this.setWingSpan(wingSpan);
	
	
	
// };

// //Elternklasse-Methoden

// Animal.Bird.prototype.setWingSpan = function(wingSpan){
	
	// this.mWingSpan = wingSpan;
	
// }

// Animal.Bird.prototype.getWingSpan = function(){
	
	// return this.mWingSpan;
// }

// function createBird() {
	// try{

		// console.log("creating bird...");
		// var m = new Bird ("Test" , "true");

		// return m;
	// }
	// catch(e){
	
		// console.log("Exception:" + e);
		// return e;
	// }
// };

// //////////////// MAMMAL

// Animal.Mammal = function(name, carnivore){
	// //calling super constructor
	// Animal.Mammal.call(this);
	// //da abstrakte Klasse
	// if(this.constructor === Mammal){
		// throw new Error ("Cannot instatiate abstract class");
	// }
	
// };

// function createMammal() {
	// try{

		// console.log("creating mammal...");
		// var m = new Mammal ("Test" , "true");

		// return m;
	// }
	// catch(e){
	
		// console.log("Exception:" + e);
		// return e;
	// }
// };