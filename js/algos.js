
//ASSIGNMENT - write code to return longest word in arrat without using #sort function
//PSEUDOCODE
//write a function to iterate through array and compare of one array item to 
//next and delete lower value until only longest is returned.
//This would obv be more effective with #sort but instruction implied not to use sort, even though I still had to use other built-ins?

 var words = ["sun", "moon", "centerfold", "ocean", "sunshine"];
 var colors = ["red", "yellow", "blue", "rainbow"]

 var sort_func = function(array) {
 	for (var i = 0; i < array.length; i++) {
 		
 		if (array[i].length < array[i + 1].length) {
 			array[i].shift;
 		}
 		else {
 			console.log(array[i]); 
 		}
 	}
 };

//compare to objects to find mathcing key-value pairs
//declare two objects
 var height = {"Bill": 60, "Bob": 70,  "Mark": 68, "Sam": 65, "Jon": 65};
 var height2 = {"Rick": 60, "Bob": 70, "Patrick": 69, "Sam": 71, "Brandon": 62};
 			
 //declare function and feed keys from each object into new variable	
 var compare =  function (obj1, obj2) {
	var keys1 = Object.keys(obj1); 
	var keys2 = Object.keys(obj2);
//loop through and look for matching keys
	for (i=0; i < keys1.length; i++) { 
		//if keys match begin new if statement to check if values match
		if (keys1[i] == keys2[i]) {
			val1 = obj1[keys1[i]]; 
			val2 = obj2[keys2[i]];  
		//if key match and values match return true
			if (val1 == val2) { 
				console.log ("TRUE!!");
			} 
		//if keys match but values do not
			else {
				console.log(keys1[i] + " and " + keys2[i] + " match but values do not");
			}
		} 
		//if keys do not match
		else {
			console.log("false");
		}
	}
}

 			
console.log("---------------")


function randString(number) {
	
	var newArray = [];
	for (count = 0; count < number; count++) {
		var newString = "";
		for (var i = 0; i < Math.floor(Math.random() * 10) + 1; i++) {
			var alphabet = "abcefghijklmnopqrstuvwxyz";
			var randLetter = alphabet[Math.floor(Math.random() * 25) + 0];
			newString += randLetter; 
		}
	newArray.push(newString);
	}
	console.log(newArray);
	return newArray;
}
//DRIVER CODE//
//randString(10)
// function runItTen() {
// 	for (var i = 0; i <10; i++) {
// 		randString(Math.floor(Math.random() * 10) + 1);
		
// 		sort_func();
// 	}
// }
//compare(height, height2)
sort_func(words);
//


// sort_func(words);
// sort_func(colors);