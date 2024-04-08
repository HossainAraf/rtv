class AddZipToInfos < ActiveRecord::Migration[7.1]
  def change
    add_column :infos, :zip, :integer
  end
end
