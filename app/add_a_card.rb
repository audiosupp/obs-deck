def add_a_card
  path = './decks/user_deck.txt'

  puts "Add your card or press Ctrl+C if you reconsider."
  prompt = gets
  File.open(path, 'a') { |f| f << prompt }
end
