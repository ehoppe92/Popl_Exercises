Animal.Bird = function(name, carnivore, wingSpan){
	//calling super constructor
	Animal.Bird.call(this);
	//da abstrakte Klasse
	if(this.constructor === Bird){
		throw new Error ("Cannot instatiate abstract class");
	}
	
	//double; oeffentliche EIgenschaft
	this.mWingSpan = this.setWingSpan(wingSpan);
	
	
	
};

//Elternklasse-Methoden

Bird.prototype.setWingSpan = function(wingSpan){
	
	this.mWingSpan = wingSpan;
	
}

Bird.prototype.getWingSpan = function(){
	
	return this.mWingSpan;
}
