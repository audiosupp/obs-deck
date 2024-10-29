def info
  obs_deck = './decks/unique_phrases_deck.txt'
  user_deck = './decks/user_deck.txt'

  card_count_obs_deck = File.readlines(obs_deck).size
  card_count_user_deck = File.readlines(user_deck).size
  puts "Total number of cards in deck: #{card_count_obs_deck + card_count_user_deck}"
end
