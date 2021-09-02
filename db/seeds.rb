require "open-uri"
Event.destroy_all
User.destroy_all
Booking.destroy_all
FeedItem.destroy_all

puts "creating seeds"

user = User.create!(email: "hubabuba.pop@gmail.com", password: "Helloooooo!", first_name: "Holly", last_name: "Wrench", committee_position: "President")
puts user
booking = Booking.create!(user_id: User.first, event_id: Event.first, capacity: 3)
puts booking

# EVENT: name location price description date
# 1. cloudinary ---------------------------------- DONE
# 2. descriptions -------------------------------- DONE
# 3. event.new() ------- names location date price DONE
# 4. photo.attach - filename???? ----------------- DONE
# 5. content_type e.g. png ----------------------- DONE
# 6. names e.g. second_event --------------------- DONE

# EVENTS:
file = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427280/Yayoi%20Kusama.png') # Kusama
kusama_description = "Join us to explore the art of Yayoi Kusama this Friday!"
event = Event.new(name: "YAYOI KUSAMA - Art & Mental Health", location: "138 Kingsland Road, London, E28DY", description: kusama_description, price: 4.00, date: "September 10th")
event.photo.attach(io: file, filename: 'Yayoi Kusama.png', content_type: 'image/png')
event.save!

file2 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427280/Rotimi%20Fani-Kayode.png') # RFK
rfk_description = "Join us to see how Nigerian photographer Rotimi Fani-Kayode defended his race, nationality and sexuality through his work."
second_event = Event.new(name: "ROTIMI FANI-KAYODE", location: "22 Rose Street, Edinburgh, EH22QA", description: rfk_description, price: 3.50, date: "October 16th")
second_event.photo.attach(io: file2, filename: 'Rotimi Fani-Kayode.png', content_type: 'image/png')
second_event.save!

file3 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427278/Chila%20Kumari%20Singh%20Burman.png') # CKSB
cksb_description = "We're heading to the Tate to see Chila Burman's incredible installation exploring Hindu mythology and colonial history."
third_event = Event.new(name: "SOCIAL!!", location: "Tate Britain, London", description: cksb_description, price: 5.00, date: "September 25th")
third_event.photo.attach(io: file3, filename: 'Chila Kumari Singh Burman.png', content_type: 'image/png')
third_event.save!

file4 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427271/Sable%20Elyse%20Smith.png') # SES
ses_description = "Join us to to learn about the carceral state and art within prisons in the US."
fourth_event = Event.new(name: "MASS INCARCERATION IN THE US", location: "131 Warrender Park Road, Edinburgh", description: ses_description, price: 12.00, date: "October 22nd")
fourth_event.photo.attach(io: file4, filename: 'Sable Elyse Smith.png', content_type: 'image/png')
fourth_event.save!

file5 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427259/Touba%20Alipour.png') # TA
ta_description = "The Anti-Trump art show and more! Join us on Friday to scream & shout and see some incredible art."
fifth_event = Event.new(name: "DUMP DONALD - ART & TRUMP", location: "43 Dublin Street, Edinburgh, EH36NL", description: ta_description, price: 6.00, date: "October 8th")
fifth_event.photo.attach(io: file5, filename: 'Touba Alipour', content_type: 'image/png')
fifth_event.save!

file6 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427278/games.png') # games
games_description = "Who is excited to join us on Friday at 8pm for our first beer pong tournament! 🍻 🏓"
sixth_event = Event.new(name: "SOCIAL!!", location: "Edinburgh Castle, Edinburgh", description: games_description, price: 4.00, date: "September 17th")
sixth_event.photo.attach(io: file6, filename: 'games.png', content_type: 'image/png')
sixth_event.save!

file7 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427268/devon.png') # devon
devon_description = "Who is excited to join us on Friday at 8pm for cocktails - good times guaranteed(; 🍹 🍸 🥃"
seventh_event = Event.new(name: "SOCIAL!!", location: "6 Chester Street, Edinburgh, Eh37RA", description: devon_description, price: 3.00, date: "October 2nd")
seventh_event.photo.attach(io: file7, filename: 'devon.png', content_type: 'image/png')
seventh_event.save!

file8 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427248/frankies.png') # frankies
frankies_description = "Who is excited to join us on Thursday at 8pm for some spooky szn fun 🎃 🕷️ 👻!"
eigth_event = Event.new(name: "SOCIAL!!", location: "14 Bellevue Terrace, Edinburgh, EH74DS", description: frankies_description, price: 2.00, date: "November 4th")
eigth_event.photo.attach(io: file8, filename: 'frankies.png', content_type: 'image/png')
eigth_event.save!

# FEED ITEM: url description

# FEED ITEMS:
file9 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491527/Yurie%20Nagashima.png')
yurie_description = "Self portrait, Yurie Nagashima.

The self-portrait means that you can take on both roles, as a model and as a photographer. When you have a camera on a tripod, you have the space in front of the camera and also the space behind the camera. It's very symbolic. It’s a way of taking action against the historical roles of the male and female in photography… It is this very idea, the production of a truth about a sitter that is not dictated by anyone other than the sitter her or himself, that should be seen as the driving force behind self-portraiture."
feed_item = FeedItem.new(description: yurie_description)
feed_item.photo.attach(io: file9, filename: 'Yurie Nagashima.png', content_type: 'image/png')
feed_item.save!

file10 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491559/Christies.png')
feed_item = FeedItem.new(url: "https://www.artnews.com/art-news/market/christies-beeple-blockchain-art-sale-1234583847/")
feed_item.photo.attach(io: file10, filename: 'Christies.png', content_type: 'image/png')
feed_item.save!

file11 = URI.open("https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491552/Diederik%20Van%20Apple.png")
feed_item2 = FeedItem.new(url: "https://www.vanappleart.com/biography")
feed_item2.photo.attach(io: file11, filename: 'Diederik Van Apple.png', content_type: 'image/png')
feed_item2.save!

file12 = URI.open("https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491557/Olafur%20E.png")
feed_item3 = FeedItem.new(description: "‘Ice Watch’, Olafur Eliasson, 2014.

Scandinavian artist Olafur Eliasson installed this piece outside the Tate Modern in London in 2014. The installation consisted of 30 melting blocks of ice brought from a fjord in Greenland. Categorised as ‘environmental art’, it stood as a reminder of the dangers of the warming of the planet.

When they were installed, each ice block weighed between 1.5 and 5 tonnes. The estimated energy cost for bringing one of these blocks to London was equal to one person flying from London to the Arctic and back to witness the ice melting.

By bringing the ice to London, and creating a temporary sculpture similar to the form of an ancient stone circle, Eliasson enabled viewers to engage with the ice directly. They could look at it, move around it and touch it.

'I think it matters for people to actually put their ear to the ice and suddenly realise that is has a very subtle cracking, hopping, crisp noise because the melting releases pressure bubbles that have been stuck in the ice for 10,000 years,' Eliasson stated.")
feed_item3.photo.attach(io: file12, filename: 'Yurie Nagashima.png', content_type: 'image/png')
feed_item3.save!

file13 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491528/Titus%20Youtube.png')
feed_item4 = FeedItem.new(url: "https://www.youtube.com/watch?v=DDaldVHUedI")
feed_item4.photo.attach(io: file13, filename: 'Titus Youtube.png', content_type: 'image/png')

file13 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491535/Kip%20Omolade.png')
feed_item4 = FeedItem.new(description: "DioKipvadiova series, Kip Omolade.

Omolade produces these exquisite, large-scale, hyper-realistic oil paintings through a labour-intensive process. He first makes a plaster mould of a model’s face, casts the mould in resin, dips it in chrome, photographs the sculpted mask, and then paints it. Omolade’s use of masks in his art is inspired by his studies of the bronze and gold masks from the ancient Kingdom of Ife in West Africa. These were so impressive that when they were first discovered by Germans at the turn of the 20th century, it wasn’t believed that they could have been made by Africans. Instead they were used as evidence for the existence of the lost city of Atlantis.")
feed_item4.photo.attach(io: file13, filename: 'Kip Omolade.png', content_type: 'image/png')
feed_item4.save!

file14 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491532/David%20LaChapelle.png')
feed_item5 = FeedItem.new(url: "https://www.widewalls.ch/magazine/david-lachapelle-exhibition-museum-of-fine-arts-mons")
feed_item5.photo.attach(io: file14, filename: 'David LaChapelle.png', content_type: 'image/png')
feed_item5.save!

file15 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491530/MoMA.png')
feed_item6 = FeedItem.new(url: "https://www.moma.org/magazine/articles/532")
feed_item6.photo.attach(io: file15, filename: 'MoMA.png', content_type: 'image/png')
feed_item6.save!

file16 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491551/Luap_xv1oew.png')
feed_item7 = FeedItem.new(description: "‘Pull Yourselves Together’ 2021.

LUAP, or Paul Robinson, is a British contemporary artist best known for his iconic Pink Bear series. He fuses painting and photography to create captivating images of a bright pink bear in environments as diverse as dingy hotel rooms and Chilean glaciers.

The pink bear was born from one of the artist’s childhood memories of a pink Care Bare, and became a symbol of self-improvement and an alter ego through which to grow and heal.

With the pink bear, Robinson has visited every continent bar Antarctica, and largely tackled his depression and social anxiety. His mental health journey is reflected in his images of the pink bear - in earlier paintings the bear appears alone, uncertain, lost, while in later paintings it appears more confident and social. ")
feed_item7.photo.attach(io: file16, filename: 'Luap_xv1oew.png', content_type: 'image/png')
feed_item7.save!

file17 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491532/Titus%20Kaphar.png')
feed_item6 = FeedItem.new(description: "'Seeing Through Time', Titus Kaphar, 2018")
feed_item6.photo.attach(io: file17, filename: 'MoMA.png', content_type: 'image/png')
feed_item6.save!

puts "data loaded successfully"
