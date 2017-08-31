class Guess_Game
  attr_reader :word, :guess_index, :word_array, :hidden_array, :wrong_letter, :more
  def initialize
    puts "Starting new game"
    @word_array
    @hidden_array = []
    @more = true
  end 
  
  def array(word)
    @word = word 
    @word_array = word.split('')
  end 
  
  def empty_array
    @word_array.count do 
    @hidden_array << "-"
    end 
  end 
  
  def index_finder(guess)
    
    #Add space to hidden array
    space = word_array.index(' ')
    @hidden_array[space] = " "
    
    count = 0 
    @wrong_letter = 0
    while count < word.count(word)
     if guess == word[count]
        @hidden_array[count] = guess
     else 
       @wrong_letter += 1 
     end 
      count += 1
    end 
   
  end
  
  def word_check
    @hidden_array.each do |x| 
      if x == "-"
      @more = true
      break
      elsif x != "-" 
      @more = false
      end 
    end 
  end 
    
  
end 


#Driver Mode

#Asking for User Input
puts "Welcome to Word Guess Game"
game = Guess_Game.new
puts "Please enter a word for Word Guessing Game!"
word = gets.chomp 
game.array(word)

#Limit guesses to 10
game.empty_array
if word.count(word)>10 
  guess_amount = 10 
else 
  guess_amount = word.count(word)
end 

#Loop to output results of letter guess
while guess_amount > 0 do 
game.word_check
  if game.more == false
   puts "Congratulation, You Win!"
    break 
  end 
  puts "You have #{guess_amount} guesses remaining"
  puts "Please guess a letter of the word"
  letter = gets.chomp
  game.index_finder(letter)
  p game.hidden_array.join
  if game.wrong_letter == word.count(word)
    guess_amount-=1 
  end
  if guess_amount == 0  
  puts "Sorry, You Lose!"
  puts "Word was #{word}"
  end 
end 