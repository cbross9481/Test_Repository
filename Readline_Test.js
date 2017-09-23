var rl = require('readline');

const rl = readl.createInterface(process.stdin, process.stdout);

prompts.question("How old are you?",function(experience){
var msg = "";
if (experience < 5)
	msg = "You're short of "+(5-experience)+" years experience";
else 
	msg = "Excellent, you are eligible";

console.log(experience);
process.exit();
});
