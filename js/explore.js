//split string to array. Use reverse which works on arrays in js but not on strings//
//join them back with a space to avoid the default comma separation from the #split//

var reverse = function (word) {
	var wordTwo = word.split("");
	wordTwo.reverse();
	wordTwo = wordTwo.join("");
	console.log(wordTwo);
	
}
reverse("hello")

if (100 % 9 != 0) {
	reverse("palindrome")
}
else
{
	console.log("Fail!")
}