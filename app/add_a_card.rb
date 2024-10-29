require "tty-prompt"

def add_a_card
  path = './decks/user_deck.txt'

  puts "add you card or press ctr+c if you reconsider"
  prompt = gets
  p prompt
  File.open(path, 'a') { |f| f << prompt }
end
