class ChangeDefaultValueForAvailabilityInSongs < ActiveRecord::Migration[7.1]
  def change
    change_column_default :songs, :available, true
  end
end
