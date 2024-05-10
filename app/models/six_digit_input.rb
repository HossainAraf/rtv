class SixDigitInput < ApplicationRecord

  # add info.card value to the card column in the six_digit_inputs table
  def self.add_card_value
    Info.all.each do |info|
      six_digit_input = SixDigitInput.find_by(value: info.card)
      six_digit_input.update(card: info.card) if six_digit_input
    end
  end


end
