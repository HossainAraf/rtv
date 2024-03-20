class CreateFormEntries < ActiveRecord::Migration[7.1]
  def change
    create_table :form_entries do |t|
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
