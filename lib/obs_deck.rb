# frozen_string_literal: true

require_relative "obs_deck/version"

module ObsDeck
  class Error < StandardError; end
  require "tty-prompt"

  require_relative 'obs_deck/modules/my_methods'
  require_relative 'obs_deck/oblique_strategies'

  def self.start_menu
    prompt = TTY::Prompt.new
    prompt.select("menu") do |menu|
      menu.choice 'deck', -> { puts MyMethods.create_card(ObliqueStrategies.card) }
      menu.choice 'add a card', -> { ObliqueStrategies.add_a_card }
      menu.choice 'info', -> { ObliqueStrategies.info }
      menu.choice 'exit', -> { exit }
    end
  end
end
