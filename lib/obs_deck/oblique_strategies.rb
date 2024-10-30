class ObliqueStrategies
  class Error < StandardError; end

  STRATEGY_DIR = File.join(File.absolute_path(__dir__), '..', 'decks')
  USER_DECK = File.join(File.absolute_path(__dir__), '..', 'decks', 'user_deck.txt')

  def initialize(path: STRATEGY_DIR)
    @deck = load_decks
  end

  def load_decks
    Dir.glob(File.join(STRATEGY_DIR, '*.txt')).flat_map do |file|
      File.readlines(file).map(&:chomp).map(&:strip)
    end
  end

  def info
    puts "Total number of cards in the deck: #{load_decks.size}"
  end

  def add_a_card(path: USER_DECK)
    puts "Add your card or press Ctrl+C if you reconsider."
    prompt = gets.chomp
    File.open(path, 'a') { |f| f << "#{prompt}\n" }
  end

  def card
    @deck.sample
  end

  private

  def self.add_a_card(path: USER_DECK)
    new.add_a_card(path: path)
  end

  def self.card
    new.card
  end

  def self.info
    new.info
  end
end
