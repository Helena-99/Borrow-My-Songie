require 'faker'

Booking.destroy_all
Song.destroy_all
User.destroy_all

oliver = User.create!(
  email: "oliver@oliver.com",
  password: "123456",
  first_name: "Oliver",
  last_name: "Petrus"
)

ines = User.create!(
  email: "ines@ines.com",
  password: "123456",
  first_name: "Ines",
  last_name: "Perez"
)

5.times do
  Song.create!(
    title: Faker::Music::RockBand.song,           # Generates a random song title
    release_year: Faker::Number.between(from: 1950, to: 2024), # Random year between 1950 and 2024
    artist: Faker::Music.band,
    album: Faker::Music.album,                    # Generates a random album name
    price: Faker::Number.between(from: 0, to: 10), # Generates a random price between 0 and 10
    user: oliver,
    available: true
  )
end

puts '5 songs for oliver have been created!'

5.times do
  Song.create!(
    title: Faker::Music::RockBand.song,           # Generates a random song title
    release_year: Faker::Number.between(from: 1950, to: 2024), # Random year between 1950 and 2024
    artist: Faker::Music.band,
    album: Faker::Music.album,                    # Generates a random album name
    price: Faker::Number.between(from: 0, to: 10), # Generates a random price between 0 and 10
    user: ines,
    available: true
  )
end

puts '5 songs for ines have been created!'
