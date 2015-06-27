var Penguin = function(name, carnivore, wingSpan){
	//calling super constructor
	Bird.call(this, name, carnivore, wingSpan);
	//no other subclass properties to set
	
};
Penguin.prototype = Object.create(Bird.prototype);
Penguin.prototype.constructor = Penguin;

////// IMPLEMENTATION OF ABSTRACT METHODS
Penguin.prototype.toString = function (){

	//TODO: nachfragen nach was alphabetisch ordnen (Member Name wie z.B. carnivore oder Wert z.B. true bei carnivore)
	console.log(this.getName()+"   "+ this.isCarnivore() + " "+ this.getWingSpan() );
	
}

Penguin.prototype.equals = function(PenguinObj) {
	return Object.getPrototypeOf(Penguin.prototype).equals(PenguinObj);
}

function createPenguin() {
	try{
		console.log("creating penguin...");
		var m = new Penguin ("Penguin_1" , "true", 42.7);
		
		m.toString();
		var n = new Penguin("Penguin_2", "true", 42.7);
		
		n.toString();
		
	}
	catch(e){
		console.log("Exception:" + e);
		return e;
	}
};
