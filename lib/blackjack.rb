def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  Random.new.rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  sum = card1+card2
  display_card_total(sum)
  sum
end

def hit?(card_total)
  # code hit? here
  prompt_user
  input = get_user_input
  if input == "h"
    card3 = deal_card
    card_total = card_total + card3
  elsif input == "s"
    card_total
  end
end

def invalid_command
  # code invalid_command here
  input = get_user_input
  if(input != "s" && input != "h")
    puts "Invalid input"
  end
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  deal_card
  card_total = initial_round
  #display_card_total(card_total)

  until card_total > 21
  #  prompt_user
  #  get_user_input
    card_total = hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
end
