require_relative "ruby_runner"


#Race tracks for both player A and player B created here
track_1 = " | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | "
track_2 = " | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | "
#assign letter "a" and letter "b" to represent the letters that will be passed through the tracks
player_a = "a"
player_b = "b"

#initiate a boolean that will be used as a condition in the announce_winner method to declare the winner
winner_a = false

#assign the initial_roll method to a variable to access the index of the return (returns 4 objects)
first_time = initial_roll(track_1,track_2,player_a,player_b)

#passes index 2 & 3 of inital_roll method/first_time variable to represent the amount of spaces the letter will advanced
#calculated by multiplying the dice_roll by 2 to account "|" representing all odd indexes in track
advance_1 = first_time[2]
advance_2 = first_time[3]

#assign the return of continuous_roll method to winner_a (which will pass true if winner_a wins and false if winner_a doesn't win)
winner_a = continuous_roll(track_1,track_2,player_a,player_b,advance_1,advance_2,winner_a) 

#If winner_a returns true, message will execute declaring winner A the winner
#If winner_a returns false, messsage will execute declaring winner B the winner 
announce_winner(winner_a)