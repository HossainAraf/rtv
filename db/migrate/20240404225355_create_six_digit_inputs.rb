class CreateSixDigitInputs < ActiveRecord::Migration[7.1]
  def change
    create_table :six_digit_inputs do |t|
      t.integer :value, limit: 6

      t.timestamps
    end
  end
end
