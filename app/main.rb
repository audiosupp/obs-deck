require "tty-prompt"

# files
require_relative 'add_a_card'
path = './decks/unique_phrases_deck.txt'
path = './decks/user_deck.txt'

# logic
prompt = TTY::Prompt.new

prompt.select("menu") do |menu|
  menu.choice 'deck', -> { puts File.readlines(path).sample }
  menu.choice 'add a card', -> { add_a_card }
  menu.choice 'info', -> { info }
  menu.choice 'exit', -> { exit }
end
