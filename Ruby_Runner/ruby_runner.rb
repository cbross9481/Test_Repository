track_1 = " | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | "
track_2 = " | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | "
player_a = "a"
player_b = "b"

winner_a = false


track_1[0] = player_a 
track_2[0] = player_b

def initial_roll(track_1,track_2,player_a,player_b)
  roll_1 = rand(1..6)
  advance_1 = roll_1 * 2
  track_1[advance_1] = player_a
  track_1[track_1.index(player_a)] = " "
  track_1
  
  roll_2 =rand(1..6)
  advance_2 = roll_2 * 2
  track_2[advance_2] = player_b
  track_2[track_2.index(player_b)] = " "
  track_2
  
  return [track_1, track_2,advance_1,advance_2]
end 


def continuous_roll(track_1,track_2,player_a,player_b,advance_1,advance_2, winner_a) 
  sleep(0.2)
  
  track_1[advance_1] = " "
  track_2[advance_2] = " "
  
  
  player_a = "a"
  player_b = "b"

  roll_1 = rand(1..6)
  roll_2 = rand(1..6)
  
  spaces_1 = roll_1 * 2
  spaces_2 = roll_2 * 2
  
  back_1 = advance_1
  back_2 = advance_2
   
  advance_1 += spaces_1
  advance_2 += spaces_2
  
  if advance_1 < 78 && advance_2 < 78
  track_1[advance_1] = player_a
  track_2[advance_2] = player_b
  
  elsif advance_1 >= 78
  track_1[78] = player_a
    if advance_2 >= 77
      track_2[back_2] = player_b
    else 
      track_2[advance_2] = player_b
    end 
  winner_a = true
  
  elsif advance_2 >= 78
  track_2[78] = player_b
  if advance_1 >= 77
      track_1[back_1] = player_a
    else 
      track_1[advance_1] = player_a
    end 
  winner_a = false
  
  else
    winner_a = "It's a tie"
  end 
  
  
  p "#{roll_1}:#{advance_1/2} #{track_1}"
  p "#{roll_2}:#{advance_2/2} #{track_2}"
  puts " "
  (advance_1/2)
  (advance_2/2)
  
  
  
  return winner_a if (advance_1 >= 78) || (advance_2 >= 78)
 
  continuous_roll(track_1,track_2,player_a,player_b,advance_1,advance_2,winner_a)
end

def announce_winner(winner_a)
    if winner_a == true 
      puts "Player A Wins!"
    elsif winner_a == false 
      puts "Player B Wins!"
    else
      winner_a
  end 
end 

# def reset_screen
#   clear_screen
#   move_to_home
# end

# # Clears the content on the terminal.
# def clear_screen
#   print "\e[2J"
# end

# # Moves the insert point in the terminal to the upper left.
# def move_to_home
#   print "\e[H"
# end


