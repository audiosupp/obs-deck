module MyMethods
  def self.create_card(card_sample, max_width = 60)

    if card_sample == "Pae White's non-blank graphic metacard"
      card =
      <<~HEREDOC
      –––––––––––––––––––––––––––––––––––––––––––––––––––
      |                                                 |
      |                                                 |
      |                                                 |
      |                                                 |
      |                                                 |
      |                                                 |
      –––––––––––––––––––––––––––––––––––––––––––––––––––
      Pae White's non-blank graphic metacard
    HEREDOC
    else

      # Split the card sample into words
      words = card_sample.split(' ')
      lines = []
      current_line = ""

      # Build lines based on max width
      words.each do |word|
        if (current_line + word).length <= max_width
          current_line += "#{word} "
        else
          lines << current_line.strip
          current_line = "#{word} "
        end
      end
      lines << current_line.strip unless current_line.empty?

      # Determine the width of the card based on the longest line
      # Kinda unnecessary
      #card_width = [max_width, lines.map(&:length).max].max
      card_width = max_width

      # Create the card with dynamic borders
      border = "–" * (card_width + 4)
      card = "#{border}\n"
      card += "| #{' ' * card_width} |\n"

      lines.each do |line|
        # Calculate padding for centering
        padding = (card_width - line.length) / 2
        # Centered line with spaces on both sides
        centered_line = ' ' * padding + line

        # Add centered line to card
        card += "| #{centered_line.ljust(card_width)} |\n"

        # Add blank line after each text line
        card += "| #{' ' * card_width} |\n"
      end

      card += border

      card
    end
  end
end
