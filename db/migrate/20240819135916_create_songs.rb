class CreateSongs < ActiveRecord::Migration[7.1]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :image_url
      t.integer :release_year
      t.string :album
      t.string :artist
      t.integer :price
      t.boolean :available
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
