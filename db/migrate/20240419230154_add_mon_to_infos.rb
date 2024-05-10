class AddMonToInfos < ActiveRecord::Migration[7.1]
  def change
    add_column :infos, :mon, :integer
  end
end
