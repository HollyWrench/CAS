# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"
Event.destroy_all
User.destroy_all
Booking.destroy_all
FeedItem.destroy_all

puts "creating seeds"

user = User.create!(email: "hubabuba.pop@gmail.com", password: "Helloooooo!", first_name: "Holly", last_name: "Wrench", committee_position: "President")
puts user

# EVENT: name location price description
# FEED ITEM: url description

5.times do
  # EVENTS:
  file = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427280/Yayoi%20Kusama.png') # Kusama
  kusama_description = ""
  event = Event.new(user_id: user.id, name: "SEBSAN", location: "138 Kingsland Road, London, E2 8DY", description: kusama_description, category: "Surprise", capacity: 84, price: 25.00, date: "23rd Jan")
  event.photo.attach(io: file, filename: 'gold_ixirz8.gif', content_type: 'image/gif')
  event.save!

  file2 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427280/Rotimi%20Fani-Kayode.png') # RFK
  RFK_description = ""
  second_event = Event.new(user_id: user.id, name: "BOPAP", location: "Tate Modern, London, SE1 9TG", description: RFK_description, category: "Nightmare", capacity: 133, price: 25.00, date: "1st May")
  second_event.photo.attach(io: file2, filename: '_111686283_pic1.png', content_type: 'image/png')
  second_event.save!

  file3 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427278/Chila%20Kumari%20Singh%20Burman.png') # CKSB
  CKSB_description = ""
  third_event = Event.new(user_id: user.id, name: "MADONNA", location: "Sky Tower, 9 Hamilton Ave, Surfers Paradise QLD 4217, Australia", description: CKSB_description, category: "Dream", capacity: 23, price: 25.00, date: "4th Jul")
  third_event.photo.attach(io: file3, filename: 'image.png', content_type: 'image/png')
  third_event.save!

  file4 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427271/Sable%20Elyse%20Smith.png') # SES
  SES_description = ""
  fourth_event = Event.new(user_id: user.id, name: "ZORRO", location: "Los Angeles, CA 90068, United States", description: SES_description, category: "Nightmare", capacity: 666, price: 25.00, date: "30th Sep")
  fourth_event.photo.attach(io: file4, filename: 'image.png', content_type: 'image/png')
  fourth_event.save!

  file4 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427259/Touba%20Alipour.png') # STA
  STA_description = ""
  fourth_event = Event.new(user_id: user.id, name: "STA", location: "Los Angeles, CA 90068, United States", description: STA_description, category: "Nightmare", capacity: 666, price: 25.00, date: "30th Sep")
  fourth_event.photo.attach(io: file4, filename: 'image.png', content_type: 'image/png')
  fourth_event.save!

  file4 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427278/games.png') # games
  games_description = ""
  fourth_event = Event.new(user_id: user.id, name: "games", location: "Los Angeles, CA 90068, United States", description: games_description, category: "Nightmare", capacity: 666, price: 25.00, date: "30th Sep")
  fourth_event.photo.attach(io: file4, filename: 'image.png', content_type: 'image/png')
  fourth_event.save!

  file4 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427268/Screenshot_2021-08-31_at_17.22.15_vzsopk.png') # devon
  devon_description = ""
  fourth_event = Event.new(user_id: user.id, name: "devon", location: "Los Angeles, CA 90068, United States", description: devon_description, category: "Nightmare", capacity: 666, price: 25.00, date: "30th Sep")
  fourth_event.photo.attach(io: file4, filename: 'image.png', content_type: 'image/png')
  fourth_event.save!

  file4 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427248/Screenshot_2021-08-31_at_17.18.24_amepfl.png') # frankies
  frankies_description = ""
  fourth_event = Event.new(user_id: user.id, name: "frankies", location: "Los Angeles, CA 90068, United States", description: frankies_description, category: "Nightmare", capacity: 666, price: 25.00, date: "30th Sep")
  fourth_event.photo.attach(io: file4, filename: 'image.png', content_type: 'image/png')
  fourth_event.save!

end

puts "data loaded successfully"
