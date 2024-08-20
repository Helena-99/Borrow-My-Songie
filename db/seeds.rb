require 'faker'

Song.destroy_all

10.times do
  Song.create!(
    title: Faker::Music::RockBand.song,           # Generates a random song title
    release_year: Faker::Number.between(from: 1950, to: 2024), # Random year between 1950 and 2024
    artist: Faker::Music.band,
    album: Faker::Music.album,                    # Generates a random album name
    price: Faker::Number.between(from: 0, to: 10), # Generates a random price between 0 and 10
    user_id: 1
  )
end
puts '10 songs have been created!'
