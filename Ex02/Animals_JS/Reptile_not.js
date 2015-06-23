Animal.Reptile = function(name, carnivore, bodyTemperature){
	//calling super constructor
	Animal.Reptile.call(this);
	//da abstrakte Klasse
	if(this.constructor === Reptile){
		throw new Error ("Cannot instatiate abstract class");
	}
	
	//bodyTemperature ist privat
	
	var pBodyTemperature = this.setBodyTemperature(bodyTemperature);
	
};

//Elternklasse-Methoden
Reptile.prototype.setBodyTemperature = function(bodyTemperature){
	
	pBodyTemperature = bodyTemperature;
}

Reptile.prototype.getBodyTemperature = function(){
	return pBodyTemperature;
	
}