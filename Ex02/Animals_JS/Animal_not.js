var Animal = function(name, carnivore){
	
	//da abstrakte Klasse
	if(this.constructor === Animal){
		throw new Error ("Cannot instatiate abstract class");
	}
	
	//private Eigenschaften
	var pCarnivore = this.setCarnivore(carnivore); //boolean
	var pId = Animal.generateID(); //int
	var pName = this.setName(name); //String
	
	
	Animal.generateID = function(){
		if(typeof Animal.idCounter == 'undefined'){
			Animal.idCounter = 0;
		}
		
		return Animal.idCounter++;
	}

	
//	//statischer Counter ??? ausprobieren!
//	var uniqueCounter = (function(){
//		if(typeof Animal.idCounter == 'undefined'){
//			Animal.idCounter = 0;
//		}
//	})();
	
	
};

//METHODEN DER ELTERNKLASSE

Animal.prototype.equals = function(Animal){
	//not implemented - abstract 
	throw new Error ("Absract method!");
}

Animal.prototype.getName = function(){
	return pName;
}

Animal.prototype.isCarnivore = function(){
	return pCarnivore;
}

Animal.prototype.toString = function(){
	//not implemented - abstract 
	throw new Error ("Absract method!");
}

Animal.prototype.setCarnivore = function(carnivore){
	pCarnivore = carnivore;
	
}

Animal.prototype.setName = function(name){
	pName = name;
}






//
function create() {
		try{

	
	var m = new Animal ("bla" , "true");
	return m;
}
catch(e){
	
	return e;
}
};