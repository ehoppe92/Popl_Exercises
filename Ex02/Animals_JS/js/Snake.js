var Snake = function(name, carnivore, bodyLength){
	//calling super constructor
	Animal.call(this, name, carnivore);
	
	//own (subclass) attributes
	this.setBodyLength = function(bodyLength){
		pBodyLength = bodyLength;
	}
	
	this.getBodyLength = function(){
		return pBodyLength;
	}
	
	var pBodyLength = this.setBodyLength(bodyLength);
	
};

Snake.prototype = Object.create(Reptile.prototype);
Snake.prototype.constructor = Snake;

////// IMPLEMENTATION OF ABSTRACT METHODS
Snake.prototype.toString = function (){
	
	//TODO: nachfragen nach was alphabetisch ordnen (Member Name wie z.B. carnivore oder Wert z.B. true bei carnivore)
	console.log(this.getName()+"   "+ this.isCarnivore() + " "+ this.getWingSpan() );
	
}

Snake.prototype.equals = function(snakeOb){
	
	var reptileEqality = Object.getPrototypeOf(Snake.prototype).equals(snakeOb);
	
	if(reptileEquality == true)
	{
		if( (this.getBodyLength() == snakeOb.getBodyLength() )
		{
			return true;
		}
		return false;
	}
	
	else
	{
		return false;
	}
	
	
 }


function createSnake() {
	try{
		console.log("creating snake...");
		var snake1 = new Snake ("Snake_1" , "true", 24.5);
		snake1.setBodyTemperature(23.4);
		
		var snake2 = new Snake("Penguin_1", "true", 42.7);
		snake2.setBodyTemperature(24.6);
		
		snake1.toString();
		snake2.toString();
	}
	catch(e){
		console.log("Exception:" + e);
		return e;
	}
};
