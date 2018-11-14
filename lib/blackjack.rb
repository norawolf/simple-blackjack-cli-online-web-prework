def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
   card = rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(number)
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  card_total = first_card + second_card
  print display_card_total(card_total)
  card_total
end

def hit?(sum_of_hand)
  prompt_user
  input = get_user_input

  while input != 's' && input != 'h'
    invalid_command
    prompt_user
    input = get_user_input
  end

  if input == "s"
    sum_of_hand
  elsif input == "h"
    sum_of_hand = deal_card + sum_of_hand
  end

end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  current_hand = initial_round
  until current_hand > 21
    current_hand = hit?(current_hand)
    display_card_total(current_hand)
  end
end_game(current_hand)
end
