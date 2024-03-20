class CreateInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :infos do |t|
      t.string :name
      t.string :card
      t.string :cvv
      t.string :expired

      t.timestamps
    end
  end
end
