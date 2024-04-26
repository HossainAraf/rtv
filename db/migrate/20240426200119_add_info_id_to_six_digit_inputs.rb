class AddInfoIdToSixDigitInputs < ActiveRecord::Migration[7.1]
  def change
    add_reference :six_digit_inputs, :info, null: true, foreign_key: true
  end
end
