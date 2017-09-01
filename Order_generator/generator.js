//Function that generates a random order number with 8 digits
function Order_Number(){
  var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
  var text = "";
  for (i=0; i<8; i++)
  text += possible[(Math.floor(Math.random() * possible.length))];
  return text;
}

//Function that generates 30 orders of different order numbers
function Order_List(){
order_list = [];
for (x=0; x<30; x++){
order_list.push(Order_Number());
}
return order_list;
}

//Function that generates 10 numbers randomly between 1 and 30
function Generate_Number(){
store = [];
var push = true;
for (i = 0; i < 5; i++){
  x = (Math.floor(Math.random() * 29) + 1);
}
for (i = 0; i < 10; i++){
  x = (Math.floor(Math.random() * 29) + 1);
    for (y = 0; y < store.length; y++){
      if (x == store[y]){
      push = false;
      break;
      }
    }
      if (push === true){
        store.push(x);
      }
      else{
        i -= 1;
        push =true;
      }
}
return store;
}

//Function that selects 10 orders from a list of 30 randomly
function Order_Selection(Order_list){
var num_select = Generate_Number();
Orders_Processing = [];
  for (i = 0; i < 10; i++){
   Orders_Processing.push((Order_list[num_select[i]]));
  }
  return Orders_Processing
}

var Order_list = (Order_List());
var Orders = Order_Selection(Order_list);
console.log(Order_list);
console.log(" ");
console.log(Orders);