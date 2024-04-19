class AddYeaToInfos < ActiveRecord::Migration[7.1]
  def change
    add_column :infos, :yea, :integer
  end
end
