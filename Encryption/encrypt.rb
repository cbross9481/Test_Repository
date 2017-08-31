#Method to encrypt username
def encryption(username)
  alphabet = {}
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
    alphabet['x'] = 24;
    alphabet['y'] = 25;
    alphabet['z'] = 26;
  
  username_array = username.split('')
  p username_array
  
  x=0 
  while x<username_array.length 
  p letter = username_array[x]
  username_array[x] = alphabet[letter]
  
  x+=1
  end 
  
  p username_array
end 

#Method to validate a symbol has been added
def symbol_check(password)
symbol_array = ["!","@","#","$","%","&","?"]
symbol = false
array_password = password.split('')
y=0 
while y<password.length 
  x=0 
  while x<symbol_array.length
  p password[y]
  p symbol_array[x]
    if password[y] == symbol_array[x]
      break
    end 
    x+=1 
    puts " "
    end 
    if password[y] == symbol_array[x]
      symbol = true
      break 
    end 
    y+=1 
    end 
    p symbol 
end 

#Method to remove symbols from password for case verification
def symbol_remover(password)
  symbol_array = ["!","@","#","$","%","&","?"]
  password = password.split('')
  x=0 
    while x<password.length 
    y=0 
     while y<symbol_array.length 
      p password[x]
      p symbol_array[y]
      if password[x] == symbol_array[y]
        puts "found you"
        password.delete_at(x)
      end 
      puts " "
      y+=1
      end 
      x+=1 
    end 
    p password.join()
end 


#Method to validate case
def case_check(password)
  array_password = password.split('')
 downcase = false
  x=0 
  while x<array_password.length 
    if array_password[x] == array_password[x].downcase
      p array_password[x]
      p array_password[x].downcase
      downcase = true
      break 
    end
    x+=1 
  end 
  p downcase 

upcase = false 
x=0 
  while x<array_password.length 
    if array_password[x] == array_password[x].upcase
      p array_password[x]
      p array_password[x].upcase
      upcase = true
      break 
    end
    x+=1 
  end 
  p upcase
  
  if upcase && downcase == true
    return true
  else 
    return false
  end 
end  

#Enter a username and execute encryption method
puts "Please enter a user name in the space below:"
check = true
username = gets.chomp
encryption(username)

#Enter a password and execute password check
puts "Please enter a password in the space below"
puts "password must contain: uppercase, lowercase, no spaces and one of the following symbols[!@#$%&?]"
password = gets.chomp

if symbol_check(password) == false
  check = false
end 
new_password = symbol_remover(password)

if case_check(new_password) == false
  check = false 
  puts "It's false"
end 







if check == false 
  puts "sorry, please try again"
else 
  puts "That password works!"
end 