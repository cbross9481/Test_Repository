
#method to initiate the game, track 1 & track 2 will be passed along with letter "a" and letter "b" to represent the players
#returns an updated track 1 and track 2 with respective letters in the index (calculated "advance" variable) of each track
def initial_roll(track_1,track_2,player_a,player_b)
  roll_1 = rand(1..6) #gets a number between 1 and 6, to account how many "spaces" to move the player
  advance_1 = roll_1 * 2 #calculates the amount of indexes to move the player based on the dice roll
  track_1[advance_1] = player_a #places variable in the index calculated in advance variables
  track_1[track_1.index(player_a)] = " "#POSSIBLY DELETE -- removes the old letter in the previous position
  track_1
  
  #repeats the tactic for player b
  roll_2 =rand(1..6)
  advance_2 = roll_2 * 2
  track_2[advance_2] = player_b
  track_2[track_2.index(player_b)] = " "
  track_2
  
  #returns the updated tracks and the indexes of the tracks each player currently is positioned
  return [track_1, track_2,advance_1,advance_2]
end 


#method to repeat dice roll and letter positioning until a player reaches the end and is declared the winner
def continuous_roll(track_1,track_2,player_a,player_b,advance_1,advance_2, winner_a) 
  sleep(0.2)
  
  #removes the letter in the index of the track where it was previously placed
  track_1[advance_1] = " "
  track_2[advance_2] = " "
  
  #POSSIBLY DELETE -- assigns player a and player b letters to position in the track
  player_a = "a"
  player_b = "b"

  #determines the number of spaces the letter will move
  roll_1 = rand(1..6)
  roll_2 = rand(1..6)
  
  #determines the number of indexes the letter will be moved forward (accounting "|" in all odd indexes)
  spaces_1 = roll_1 * 2
  spaces_2 = roll_2 * 2
  
  #losing letter's position will be set to it's previous position at the end to prevent a string limit error
  back_1 = advance_1
  back_2 = advance_2
   
  #advance variables will be udpated, adding onto it the number of indexes the position will be moved
  advance_1 += spaces_1
  advance_2 += spaces_2
  
  #if statement that will position the letters for player_a and player_b in the no player has reached the end
  if advance_1 < 78 && advance_2 < 78
  track_1[advance_1] = player_a
  track_2[advance_2] = player_b
  
  ##if player a has reached the end of the track, another if statement will be executed to send losing player b's letter back to it's previous position
  #in the case it has exceeded the string limit. If it has not then advance the losing player's position forward
  #declare winner A the winner by assigning winner_a to be true
  elsif advance_1 >= 78
  track_1[78] = player_a
    if advance_2 >= 77
      track_2[back_2] = player_b
    else 
      track_2[advance_2] = player_b
    end 
  winner_a = true
  
  #Same if condition but in favor for player b
  #declare winner B the winner by assinging winner_a to be false
  elsif advance_2 >= 78
  track_2[78] = player_b
  if advance_1 >= 77
      track_1[back_1] = player_a
    else 
      track_1[advance_1] = player_a
    end 
  winner_a = false
  
  #if neither condition fits, returns a message stating it to be a tie
  else
    winner_a = "It's a tie"
  end 
  
  
  p "#{roll_1}:#{advance_1/2} #{track_1}"
  p "#{roll_2}:#{advance_2/2} #{track_2}"
  puts " "
  (advance_1/2)
  (advance_2/2)
  
  #returning winner_a boolean variable in the case either players have reached the end point (base statement)
  #if both player have not reached the end point, pass updated tracks, player letters, updated advance and winner_a variables
  return winner_a if (advance_1 >= 78) || (advance_2 >= 78)
  continuous_roll(track_1,track_2,player_a,player_b,advance_1,advance_2,winner_a)
end

#method to execute a message declaring the winner
def announce_winner(winner_a)
    if winner_a == true 
      puts "Player A Wins!"
    elsif winner_a == false 
      puts "Player B Wins!"
    else
      winner_a
  end 
end 



