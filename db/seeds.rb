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

IMAGES = ["https://upload.wikimedia.org/wikipedia/en/4/42/Beatles_-_Abbey_Road.jpg", "https://www.udiscovermusic.com/wp-content/uploads/2019/03/Queen-II-album-cover-820.jpg",
"https://www.billboard.com/wp-content/uploads/2022/06/beyonce-I-Am...-Sasha-Fierce-album-art-billboard-1240.jpg?w=600", "https://upload.wikimedia.org/wikipedia/en/0/03/Listen_The_Kooks_cover.png",
"https://vinyl-records.nl/prog-rock/david-bowie/aladdin-italy/aladdin-sane-10large.jpg", "https://m.media-amazon.com/images/I/71eXc8kVcQL._AC_UF894,1000_QL80_.jpg", "https://www.udiscovermusic.com/wp-content/uploads/2019/06/The-Killers-Hot-Fuss-album-cover-820.jpg",
"https://pbs.twimg.com/media/D8-LieAWsAAaiTS.jpg:large", "https://cdns-images.dzcdn.net/images/cover/e38e706586ff79d1c6e17aa3c9f39420/1900x1900-000000-80-0-0.jpg", "https://media.pitchfork.com/photos/6321de751dccce609e415e53/master/pass/Fred-Again-2022.jpg","https://upload.wikimedia.org/wikipedia/en/b/bb/Ramones_-_Ramones_cover.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUP1MSr4r8a9FyoNnWVlUIucs54RF7HGryIA&s", "https://upload.wikimedia.org/wikipedia/en/f/fb/FMacRumours.PNG",
"https://m.media-amazon.com/images/I/71Y55FU5VGL._UF894,1000_QL80_.jpg", "https://audioxide.com/api/images/album-artwork/the-college-dropout-kanye-west-medium-square.jpg"
]
10.times do
  Song.create!(
    title: Faker::Music::RockBand.unique.song,           # Generates a random song title
    release_year: Faker::Number.between(from: 1950, to: 2024), # Random year between 1950 and 2024
    artist: Faker::Music.band,
    album: Faker::Music.album,                    # Generates a random album name
    price: Faker::Number.between(from: 0, to: 10), # Generates a random price between 0 and 10
    user: oliver,
    available: [ "true", "false" ].sample,
    image_url: IMAGES.sample
  )
end

puts '10 songs for oliver have been created!'

20.times do
  Song.create!(
    title: Faker::Music::RockBand.unique.song,           # Generates a random song title
    release_year: Faker::Number.between(from: 1950, to: 2024), # Random year between 1950 and 2024
    artist: Faker::Music.band,
    album: Faker::Music.album,                    # Generates a random album name
    price: Faker::Number.between(from: 0, to: 10), # Generates a random price between 0 and 10
    user: ines,
    available: [ "true", "false" ].sample,
    image_url: IMAGES.sample
  )
end

puts '20 songs for ines have been created!'
