def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  number = rand(1..11)
  number
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  card_total
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card1 = deal_card
  card2 = deal_card
  sum = display_card_total(card1+card2)
  sum
end

def hit?(current_card_total)
  # code hit? here
  prompt_user
  answer = get_user_input
 # if answer != 'h' || answer != 's'
  #  invalid_command
  if answer == 'h'
      newCard = deal_card
      newTotal = newCard+current_card_total
      return newTotal
  end
    current_card_total
  
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round
  sum = hit?(sum)
  display_card_total(sum)
  while sum < 21
    sum = hit?(sum)
  end 
end_game(sum)
end
    
