class ChangePriceinSongs < ActiveRecord::Migration[7.1]
  def change
    change_column :songs, :price, :float
  end
end
