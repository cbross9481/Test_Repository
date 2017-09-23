require_relative "ruby_runner"



track_1 = " | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | "
track_2 = " | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | "
player_a = "a"
player_b = "b"

winner_a = false

first_time = initial_roll(track_1,track_2,player_a,player_b)

advance_1 = first_time[2]
advance_2 = first_time[3]


winner_a = continuous_roll(track_1,track_2,player_a,player_b,advance_1,advance_2,winner_a) 

announce_winner(winner_a)