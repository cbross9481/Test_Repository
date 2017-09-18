//Calorie count for grocery items
var sum = 0;

calories = {};
calories.burgers =354;
calories.lettuce = 5;
calories.beans = 648;
calories.cereal = 307;
calories.chicken = 335;
calories.chips = 152;
calories.eggs = 78;
calories.fish = 366;
calories.fries = 365;
calories.hotdogs = 151;
calories.milk = 103;
calories.oj = 39
calories.rice = 216;
calories.bread = 79;

var add;
var select;
var element;
var checkbox_yes;
var checkbox_no;
var para;
var text;
var item_calorie;
var calc;
var calorie;
var form;
var rename;
var sum;


function calorie_count() {
	var total = [];

	//following section is used to create a p element, retrieve the input value, push value to array
	//create text node and append node to p element
	para = document.createElement("p");
	add = document.getElementById("item_add").value;
	if (add == "orange juice"){
		add = "oj"
	}
	item_calorie = document.getElementById("item_add").value +" - "+ calories[add] + "cal.";
	text = document.createTextNode(item_calorie);
	para.appendChild(text);

	//append p element to calorie calculator section in HTML
	calc = document.getElementById("calorie_calculator");
	calc.appendChild(para);

	//ask if user would like to add to list with checkbox
	var text2 = "would you like to add this item to the list? " ;
	document.getElementById("question").innerHTML = text2.italics();
	console.log(text2);

	//code to label yes to checkbox
	var label_yes = document.createElement("label");
	label_yes.for = "yes_box"
	var text = document.createTextNode("Yes");
	label_yes.appendChild(text);
	var box_position = document.getElementById("question");
	box_position.appendChild(label_yes);

	//code to add yes checkbox to question
	checkbox_yes = document.createElement("input");
	checkbox_yes.type = "checkbox";
	checkbox_yes.id = "yes_box"
	box_position.appendChild(checkbox_yes);

	//code to label no to checkbox
	var label_no = document.createElement("label");
	label_no.for = "yes_box"
	var text = document.createTextNode("No");
	label_no.appendChild(text);
	var box_position = document.getElementById("question");
	box_position.appendChild(label_no);

	//code to add no checkbox to question
	checkbox_no = document.createElement("input");
	checkbox_no.type = "checkbox";
	checkbox_no.value = "no";
	checkbox_no.id = "no_box"
	box_position.appendChild(checkbox_no);

	
	//find the total number of calories
	total.push(calories[add]);
	for(i=0; i<total.length; i++){
		sum += total[i]
	}
	console.log(sum);
	

	//submit sum as new calorie count
	document.getElementById("total").innerHTML = sum;
	//var
}


function add_to_list() {

	var list = document.createElement("li");
	var element = document.getElementById("ordered_list");
	if(add == "oj"){
		add = "orange juice";
	}
	element.appendChild(list).innerHTML = add;
}

function change_header() {
	document.getElementById("header").style.color = "magenta";
}

function add_photo(){
	var food_image = document.createElement("img");
	var food_section = document.getElementById("food_images");
	//condition that decides which image to display
	if (add == "burgers"){
	food_image.src = "photos/burgers.jpg"
	}
	else if (add == "beans"){
	food_image.src = "photos/beans.jpg"
	}
	else if (add == "cereal"){
	food_image.src = "photos/cereal.jpg"
	}
	else if (add == "chips"){
	food_image.src = "photos/chips.jpg"
	}
	else if (add == "eggs"){
	food_image.src = "photos/eggs.jpg"
	}
	else if (add == "fries"){
	food_image.src = "photos/fries.jpg"
	}
	else if (add == "milk"){
	food_image.src = "photos/milk.jpg"
	}
	else if (add == "oj"){
	food_image.src = "photos/orange_juice.jpg"
	}
	else if (add == "lettuce"){
	food_image.src = "photos/lettuce.jpg"
	}
	else if (add == "hotdogs"){
	food_image.src = "photos/hotdogs.jpg"
	}
	else if (add == "rice"){
	food_image.src = "photos/rice.jpg"
	}
	else if (add == "chicken"){
	food_image.src = "photos/chicken.jpg"
	}
	else if (add == "fish"){
	food_image.src = "photos/fish.jpg"
	}
	else if (add == "bread"){
	food_image.src = "photos/bread.jpg"
	}
	food_section.appendChild(food_image);
}

function color_change() {
	if (color_count == 0){
	document.getElementById("header").style.color = "red";
	}
	else if (color_count == 1){
		document.getElementById("header").style.color = "orange";
	}
	else if (color_count == 2){
		document.getElementById("header").style.color = "yellow";
	}
	else if (color_count == 3){
		document.getElementById("header").style.color = "green";
	}
	else if (color_count == 4){
		document.getElementById("header").style.color = "purple";
	}
	else if (color_count == 5){
		document.getElementById("header").style.color = "blue";
	}
	else {
		document.getElementById("header").style.color = "black";
	}
	color_count=color_count+1;
	if (color_count > 5){
		color_count = 0;
	}
	return color_count;
}

//add a select button function
function add_select() {
	select = document.createElement("button");
	select.id="select";
	//select.onclick=click_select();
	var text3 = document.createTextNode("select")
	select.appendChild(text3);
	element = document.getElementById("check_box");
	element.appendChild(select); 
	document.getElementById("select").addEventListener("click", click_enter);
}

//function to delete select button (to remove repitition)
function delete_select(){
	element.removeChild(select);
}

color_count = 0;
var enter = document.getElementById("enter");
//enter.addEventListener("click",color_change);
add = add_to_list;

function click_enter(){
	if (checkbox_yes.checked == true) {
		add_photo();
		add_to_list();
		element.removeChild(select);
		}
	if (checkbox_no.checked == true) {
		element.removeChild(select);
		calc.removeChild(para);
		sum = sum - calories[add];
		document.getElementById("total").innerHTML = sum;
	}
	
	//document.getElementById("select").addEventListener("click", add_photo);
	//document.getElementById("select").addEventListener("click", delete_select);
}

function calorie_insert() {
		document.getElementById("insert_calorie").innerHTML = "Your Calorie Limit: ";
		calorie = document.getElementById("calorie_input").value;
		calorie_entry = document.createElement("p");
		calorie_entry.id = "calorie_id"
		text4 = document.createTextNode(calorie);
		calorie_entry.appendChild(text4);
		document.getElementById("insert_calorie").appendChild(calorie_entry);
		form = document.getElementById("form");
		document.getElementById("item_input").removeChild(form);		
}

function over_amount(){
	if (sum > calorie){
		alert("Adding this item will exceed your calorie limit");
	}
}