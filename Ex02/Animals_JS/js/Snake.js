var Snake = function(name, carnivore, bodyTemperature){
	//calling super constructor
	Reptile.call(this, name, carnivore, bodyTemperature);
	
	//own (subclass) attributes
	this.setBodyLength = function(bodyLength){
		this.pBodyLength = bodyLength;
	};
	
	this.getBodyLength = function(){
		return this.pBodyLength;
	};
	
};

Snake.prototype = Object.create(Reptile.prototype);
Snake.prototype.constructor = Snake;

////// IMPLEMENTATION OF ABSTRACT METHODS
Snake.prototype.toString = function (){
	
	//TODO: nachfragen nach was alphabetisch ordnen (Member Name wie z.B. carnivore oder Wert z.B. true bei carnivore)
	console.log(this.getName()+"   "+ this.isCarnivore() + " "+ this.getBodyTemperature() 
		+ " " + this.getBodyLength());
	
}

Snake.prototype.equals = function(snakeOb){
	
	var reptileEqality = Object.getPrototypeOf(Snake.prototype).equals(snakeOb);
	
	if(reptileEquality == true)
	{
		if( (this.getBodyLength() == snakeOb.getBodyLength()) )
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
		var snake1 = new Snake ("Snake_1" , "true", 23.4);
		snake1.setBodyLength(24.5);
		snake1.toString();
		var snake2 = new Snake("Snake_2", "true", 24.6);
		snake2.setBodyLength(42.7);
		snake2.toString();
	}
	catch(e){
		console.log("Exception:" + e);
		return e;
	}
};
