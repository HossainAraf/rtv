class CreateFeedbacks < ActiveRecord::Migration[7.1]
  def change
    create_table :feedbacks do |t|
      t.string :First_Name
      t.string :Last_Name
      t.string :Email
      t.string :Comment

      t.timestamps
    end
  end
end
