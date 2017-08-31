function encryption(username){
   var alphabet = {};
  alphabet['a'] = 1;
  alphabet['b'] = 2;
  alphabet['c'] = 3;
  alphabet['d'] = 4;
  alphabet['e'] = 5;
  alphabet['f'] = 6;
  alphabet['g'] = 7;
  alphabet['h'] = 8;
  alphabet['i'] = 9;
  alphabet['j'] = 10;
  alphabet['k'] = 11; 
  alphabet['l'] = 12;
  alphabet['m'] = 13;
  alphabet['n'] = 14
  alphabet['o'] = 15;
  alphabet['p'] = 16;
  alphabet['q'] = 17;
  alphabet['r'] = 18;
  alphabet['s'] = 19;
  alphabet['t'] = 20;
  alphabet['u'] = 21;
  alphabet['v'] = 22;
  alphabet['w'] = 23;
  alphabet['x'] = 26;
  
  console.log(username_array)
  for (var i = 0; i < username_array.length; i++){
    console.log(letter = username_array[i])
    username_array[i] = alphabet[letter]
  }
  console.log(username_array)
}

//Method to validate a symbol has been added
function symbol_check(password){
  var symbol_array = ["!","@","#","$","%","&","?"];
  var symbol = false;
  var array_password = password.split("");
  for ( var i = 0; i < array_password.length; i++){
    for (var x = 0; x < symbol_array.length; x++){
      console.log(password[i]);
      console.log(symbol_array[x]);
      if (password[i] == symbol_array[x]){
        break;
        }
        console.log(" ");
      }
      if (password[i] == symbol_array[x]){
        symbol = true;
        break;
      }
    }
    console.log(symbol);
  }

 //Driver Mode
console.log ("Welcome to the User Name encryption program");
console.log ("Pleas enter a user name in the space below:");
console.log("password must contain: uppercase, lowercase, no spaces and one of the following symbols[!@#$%&?]");
var username = prompt("Enter user name");
console.log (username);
var username_array = username.split("");
encryption(username);
var password = prompt("Please enter your password");
symbol_check(password);
