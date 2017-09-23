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

function Generate_Number_2(Order_list){
store = [];
var push = true;
for (i = 0; i < 5; i++){
  x = (Math.floor(Math.random() * Order_list.length));
}
for (i = 0; i < 10; i++){
  x = (Math.floor(Math.random() * Order_list.length));
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
function Order_Processing(Order_list){
var num_select = Generate_Number_2(Order_list);
Orders_Processing = [];
  for (i = 0; i < 10; i++){
    x = (Order_list[num_select[i]]);
   Orders_Processing.push(x);
  }
  return Orders_Processing;
}

//Function that removes Orders being processed from list
function List_Removal(){
  for (i=0; i<Orders.length; i++){
    Order_list.splice(Order_list.indexOf(Orders[i]),1);
  }
  return Order_list;
}


//DRIVER MODE

var Order_list = (Order_List());
//Order list before processing
console.log("List of 30 Generated Orders")
console.log(Order_list);
console.log(" ");

//Processing Orders
var Orders = Order_Processing(Order_list);
console.log("List of 10 randomly selected Order number")
console.log(Orders);
console.log(" ");

//Update new List with processed orders removed
console.log("List of remaining 20 Generated Orders")
var Orders_list = List_Removal();
console.log(Orders_list);
console.log(" ");

//Processing second round of Orders
var Orders = Order_Processing(Order_list);
console.log("List of 10 randomly selected Order number")
console.log(Orders);
console.log(" ");

//Update new list with processed orders removed
var Orders_list = List_Removal();
console.log("List of remaining 10 Generated Orders")
console.log(Orders_list);
console.log(" ");
