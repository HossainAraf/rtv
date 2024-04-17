class AddYearToInfos < ActiveRecord::Migration[7.1]
  def change
    add_column :infos, :year, :integer
  end
end
