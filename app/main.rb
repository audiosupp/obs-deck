require "tty-prompt"

require_relative 'add_a_card'
require_relative 'info'
require_relative 'my_methods'

# files
obs_deck_path = './decks/unique_phrases_deck.txt'
user_deck_path = './decks/user_deck.txt'


# logic
obs_deck = File.readlines(obs_deck_path)
user_deck = File.readlines(user_deck_path)
whole_deck = obs_deck + user_deck
card_sample = whole_deck.sample


if card_sample.chomp == "Pae White's non-blank graphic metacard"
  card_sample = <<~HEREDOC
  –––––––––––––––––––––––––––––––––––––––––––––––––––
  |                                                 |
  |                                                 |
  |                                                 |
  |                                                 |
  |                                                 |
  –––––––––––––––––––––––––––––––––––––––––––––––––––
  Pae White's non-blank graphic metacard
HEREDOC
end


prompt = TTY::Prompt.new
prompt.select("menu") do |menu|
  menu.choice 'deck', -> { puts MyMethods.create_card(card_sample) }
  menu.choice 'add a card', -> { add_a_card }
  menu.choice 'info', -> { info }
  menu.choice 'exit', -> { exit }
end
