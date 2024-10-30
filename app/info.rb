def info
  obs_deck_path = './decks/unique_phrases_deck.txt'
  user_deck_path = './decks/user_deck.txt'

  obs_deck_card_count = File.readlines(obs_deck_path).size
  user_deck_card_count = File.readlines(user_deck_path).size
  puts "Total number of cards in the deck: #{obs_deck_card_count + user_deck_card_count}"
end
