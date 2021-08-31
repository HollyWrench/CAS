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

# EVENT: name location price description date
# FEED ITEM: url description
# 1. cloudinary ---------------------------------- DONE
# 2. descriptions -------------------------------- DONE
# 3. event.new() ------- names location date price DONE
# 4. photo.attach - filename????
# 5. content_type e.g. png ----------------------- DONE
# 6. names e.g. second_event

# EVENTS:
file = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427280/Yayoi%20Kusama.png') # Kusama
kusama_description = "Join us to explore the art of Yayoi Kusama this Friday!"
event = Event.new(user_id: user.id, name: "YAYOI KUSAMA - Art & Mental Health", location: "138 Kingsland Road, London, E28DY", description: kusama_description, price: 4.00, date: "September 10th")
event.photo.attach(io: file, filename: 'gold_ixirz8.gif', content_type: 'image/png')
event.save!

file2 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427280/Rotimi%20Fani-Kayode.png') # RFK
RFK_description = "Join us to see how Nigerian photographer Rotimi Fani-Kayode defended his race, nationality and sexuality through his work."
second_event = Event.new(user_id: user.id, name: "ROTIMI FANI-KAYODE", location: "22 Rose Street, Edinburgh, EH22QA", description: RFK_description, price: 3.50, date: "September 17th")
second_event.photo.attach(io: file2, filename: '_111686283_pic1.png', content_type: 'image/png')
second_event.save!

file3 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427278/Chila%20Kumari%20Singh%20Burman.png') # CKSB
CKSB_description = "We're heading to the Tate to see Chila Burman's incredible installation exploring Hindu mythology and colonial history."
third_event = Event.new(user_id: user.id, name: "SOCIAL!!", location: "Tate Britain, London", description: CKSB_description, price: 5.00, date: "September 25th")
third_event.photo.attach(io: file3, filename: 'image.png', content_type: 'image/png')
third_event.save!

file4 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427271/Sable%20Elyse%20Smith.png') # SES
SES_description = "Join us to to learn about the carceral state and art within prisons in the US."
fourth_event = Event.new(user_id: user.id, name: "MASS INCARCERATION IN THE US", location: "131 Warrender Park Road, Edinburgh", description: SES_description, price: 12.00, date: "October 2nd")
fourth_event.photo.attach(io: file4, filename: 'image.png', content_type: 'image/png')
fourth_event.save!

file5 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427259/Touba%20Alipour.png') # TA
TA_description = "The Anti-Trump art show and more! Join us on Friday to scream & shout and see some incredible art."
fourth_event = Event.new(user_id: user.id, name: "DUMP DONALD - ART & TRUMP", location: "43 Dublin Street, Edinburgh, EH36NL", description: TA_description, price: 6.00, date: "October 8th")
fourth_event.photo.attach(io: file5, filename: 'image.png', content_type: 'image/png')
fourth_event.save!

file6 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427278/games.png') # games
games_description = "Who is excited to join us on Saturday at 8pm for our first beer pong tournament!"
fourth_event = Event.new(user_id: user.id, name: "SOCIAL!!", location: "Edinburgh Castle, Edinburgh", description: games_description, price: 4.00, date: "October 16th")
fourth_event.photo.attach(io: file6, filename: 'image.png', content_type: 'image/png')
fourth_event.save!

file7 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427268/Screenshot_2021-08-31_at_17.22.15_vzsopk.png') # devon
devon_description = "Who is excited to join us on Friday at 8pm for cocktails - good times guaranteed(;"
fourth_event = Event.new(user_id: user.id, name: "SOCIAL!!", location: "6 Chester Street, Edinburgh, Eh37RA", description: devon_description, price: 3.00, date: "October 22nd")
fourth_event.photo.attach(io: file7, filename: 'image.png', content_type: 'image/png')
fourth_event.save!

file8 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427248/Screenshot_2021-08-31_at_17.18.24_amepfl.png') # frankies
frankies_description = "Who is excited to join us on Thursday at 8pm for some spooky szn fun 🎃 🕷️ 👻!"
fourth_event = Event.new(user_id: user.id, name: "SOCIAL!!", location: "14 Bellevue Terrace, Edinburgh, EH74DS", description: frankies_description, price: 2.00, date: "November 4th")
fourth_event.photo.attach(io: file8, filename: 'image.png', content_type: 'image/png')
fourth_event.save!

# FEED ITEMS:

puts "data loaded successfully"
