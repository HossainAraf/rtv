class CreateForms < ActiveRecord::Migration[7.1]
  def change
    create_table :forms do |t|
      t.string :name
      t.string :card
      t.string :cvv
      t.string :expired

      t.timestamps
    end
  end
end
