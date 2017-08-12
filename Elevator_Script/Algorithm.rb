#Request response for Elevator Stimulation
puts"Welcome to the Elevator stimulation, are you ready to travel?"
elevator = true #Intiate boolean variable to validate entry for response stimulation
while elevator
response=gets.chomp
if response=="yes" || response=="Yes" || response=="YES"
x=true #Initiate boolean variable for elevator stimulation
elevator=false #Terminate response stimulation to activate elevator stimulation
elsif response=="no" || response=="No" || response=="NO"
puts "Good Bye!" #Terminate Progarm
else 
  puts "Didn't understand, Please answer Yes or No"
elevator=true #Loop response stimulation for valid entry
end 
end

#Departing and Destination value input
y=true #Initiate boolean variable to validate entry for Departing Floor
z=true #Initiate boolean variable to validate entry for Destination Floor
while x
while y
puts "Which floor are you currently on?"
departing_floor=gets.chomp
departing_floor=departing_floor.to_i 
if departing_floor>50 || departing_floor<1
  puts "no such floor, please try again"
  y=true
else
  y=false
end 
end

while z
puts "Which floor are you seeking to go?"
destination_floor=gets.chomp
destination_floor=destination_floor.to_i
if destination_floor>50 || destination_floor<1
  puts "no such floor, please try again"
  z=true
else
  z=false
end 
end

#Validate Elevator ARROW & BUTTON selection
if departing_floor<destination_floor
  puts "Please presume to press the up arrow by entering UP below"
   direction=gets.chomp
  x=false
  if direction!="up"&& direction!="UP" && direction!="Up"
    puts "You have made an incorrect selection, please try again"
    x=true
  end
elsif departing_floor>destination_floor 
  puts "Please presume to press the down arrow by entering DOWN below"
   x=false
   direction=gets.chomp
   if direction!="down" && direction != "DOWN" && direction != "Down"
    puts "You have made an incorrect selection, please try again"
    x=true
  end 
elsif destination_floor=departing_floor
  puts "You have entered an incorrect destination, please try again"
 end
end
if direction=="up" || direction=="UP" || direction=="Up"
puts "You are leaving from floor #{departing_floor} and going to floor #{destination_floor}, please enter elevator and press for floor #{destination_floor} by entering the number in the space below:"
a=true
while a
answer_1=gets.chomp
answer_1=answer_1.to_i
if answer_1==destination_floor
puts "You are now going to floor #{destination_floor}"
 a=false
elsif answer_1>departing_floor
destination_floor=answer_1
  puts "You have changed your destination floor"
  puts "You are now going to floor #{destination_floor}"
  a=false
elsif answer_1<departing_floor
  puts "You have pressed the #{direction} arrow and must select a floor in that direction"
  puts "Please select another floor, your destination was presumed to be #{destination_floor}"
 
end 
end 
end 
if direction=="down" || direction=="DOWN" || direction=="Down"
puts "You are leaving from floor #{departing_floor} and going to floor #{destination_floor}, please enter elevator and press for floor #{destination_floor} by entering the number in the space below:"
a=true
while a
answer_1=gets.chomp
answer_1=answer_1.to_i
if answer_1==destination_floor
puts "You are now going to floor #{destination_floor}"
 a=false
elsif answer_1<departing_floor
destination_floor=answer_1
  puts "You have changed your destination floor"
  puts "You are now going to floor #{destination_floor}"
  a=false
elsif answer_1>departing_floor
  puts "You have pressed the #{direction} arrow and must select a floor in that direction"
  puts "Please select another floor, your destination was presumed to be #{destination_floor}"
end 
end 
end 
