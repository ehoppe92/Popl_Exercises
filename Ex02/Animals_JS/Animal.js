function Animal(name, carnivore){
	
	//private Eigenschaften
	var carnivore; //boolean
	var id; //int
	var name; //String
	
	//statischer Counter ??? ausprobieren!
	var uniqueCounter = (function(){
		if(typeof Animal.idCounter == 'undefined'){
			Animal.idCounter;
		}
	})();
	
};