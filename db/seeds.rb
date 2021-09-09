require "open-uri"
Booking.destroy_all
Event.destroy_all
User.destroy_all
FeedItem.destroy_all

puts "creating seeds"

user = User.create!(email: "hubabuba.pop@gmail.com", password: "Helloooooo!", first_name: "Holly", last_name: "Wrench", committee_position: "President")
puts user

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
event = Event.new(name: "YAYOI KUSAMA - Art & Mental Health", location: "138 Kingsland Road, London", description: kusama_description, price: 4.00, date: "Fri, 10 Sep 2021", category: "seminar")
event.photo.attach(io: file, filename: 'Yayoi Kusama.png', content_type: 'image/png')
event.save!

file6 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427278/games.png') # games
games_description = "Who is excited to join us on Friday at 8pm for our first beer pong tournament! 🍻 🏓"
sixth_event = Event.new(name: "SOCIAL!!", location: "Edinburgh Castle, Edinburgh", description: games_description, price: 4.00, date: "Fri, 17 Sep 2021", category: "social")
sixth_event.photo.attach(io: file6, filename: 'games.png', content_type: 'image/png')
sixth_event.save!

file3 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427278/Chila%20Kumari%20Singh%20Burman.png') # CKSB
cksb_description = "We're heading to the Tate to see Chila Burman's incredible installation exploring Hindu mythology and colonial history."
third_event = Event.new(name: "SOCIAL!!", location: "Tate Britain, London", description: cksb_description, price: 5.00, date: "Sat, 25 Sep 2021", category: "social")
third_event.photo.attach(io: file3, filename: 'Chila Kumari Singh Burman.png', content_type: 'image/png')
third_event.save!

file7 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427268/devon.png') # devon
devon_description = "Who is excited to join us on Friday at 8pm for cocktails - good times guaranteed(; 🍹 🍸 🥃"
seventh_event = Event.new(name: "SOCIAL!!", location: "6 Chester Street, Edinburgh", description: devon_description, price: 3.00, date: "Sat, 02 Oct 2021", category: "social")
seventh_event.photo.attach(io: file7, filename: 'devon.png', content_type: 'image/png')
seventh_event.save!

file5 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427259/Touba%20Alipour.png') # TA
ta_description = "The Anti-Trump art show and more! Join us on Friday to scream & shout and see some incredible art."
fifth_event = Event.new(name: "DUMP DONALD - ART & TRUMP", location: "43 Dublin Street, Edinburgh", description: ta_description, price: 6.00, date: "Fri, 08 Oct 2021", category: "seminar")
fifth_event.photo.attach(io: file5, filename: 'Touba Alipour', content_type: 'image/png')
fifth_event.save!

file2 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427280/Rotimi%20Fani-Kayode.png') # RFK
rfk_description = "Join us to see how Nigerian photographer Rotimi Fani-Kayode defended his race, nationality and sexuality through his work."
second_event = Event.new(name: "ROTIMI FANI-KAYODE", location: "22 Rose Street, Edinburgh", description: rfk_description, price: 3.50, date: "Sat, 16 Oct 2021", category: "seminar")
second_event.photo.attach(io: file2, filename: 'Rotimi Fani-Kayode.png', content_type: 'image/png')
second_event.save!

file4 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427271/Sable%20Elyse%20Smith.png') # SES
ses_description = "Join us to to learn about the carceral state and art within prisons in the US."
fourth_event = Event.new(name: "MASS INCARCERATION IN THE US", location: "131 Warrender Park Road, Edinburgh", description: ses_description, price: 12.00, date: "Fri, 22 Oct 2021", category: "seminar")
fourth_event.photo.attach(io: file4, filename: 'Sable Elyse Smith.png', content_type: 'image/png')
fourth_event.save!

file8 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630427248/frankies.png') # frankies
frankies_description = "Who is excited to join us on Thursday at 8pm for some spooky szn fun 🎃 🕷️ 👻!"
eigth_event = Event.new(name: "SOCIAL!!", location: "14 Bellevue Terrace, Edinburgh", description: frankies_description, price: 2.00, date: "Thu, 4 Nov 2021", category: "social")
eigth_event.photo.attach(io: file8, filename: 'frankies.png', content_type: 'image/png')
eigth_event.save!

# FEED ITEM: url description

# FEED ITEMS:
file9 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491527/Yurie%20Nagashima.png')
yurie_description = "Self portrait, Yurie Nagashima.

The self-portrait means that you can take on both roles, as a model and as a photographer. It is symbolic. 'It is this very idea - the production of a truth about a sitter that is not dictated by anyone other than the sitter her or himself.'"
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

file12 = URI.open("https://res.cloudinary.com/ds2g4bsxw/image/upload/v1631183003/vdv5h078jwmhdhcr26xmn31cpnax.png")
feed_item3 = FeedItem.new(description: "‘Ice Watch’, Olafur Eliasson, 2014.

Olafur Eliasson installed this piece at the Tate Modern in London in 2014. It consisted of 30 melting blocks of ice,reminders of the dangers of global warming.

The estimated energy cost for bringing one of these blocks to London was equal to one person flying from London to the Arctic and back to witness the ice melting.")

feed_item3.photo.attach(io: file12, filename: 'vdv5h078jwmhdhcr26xmn31cpnax.png', content_type: 'image/png')
feed_item3.save!

file13 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491528/Titus%20Youtube.png')
feed_item4 = FeedItem.new(url: "https://www.youtube.com/watch?v=DDaldVHUedI")
feed_item4.photo.attach(io: file13, filename: 'Titus Youtube.png', content_type: 'image/png')

file13 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491535/Kip%20Omolade.png')
feed_item4 = FeedItem.new(description: "DioKipvadiova series, Kip Omolade.

Omolade’s use of masks in his art is inspired by bronze and gold masks from the ancient Kingdom of Ife in West Africa. These were so impressive that when they were first discovered at the turn of the 20th century, it wasn’t believed that they could have been made by Africans. Instead they were used as evidence for the existence of the lost city of Atlantis.")
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

LUAP's iconic pink bear is a symbol of self-improvement and an alter ego through which to grow and heal.

With the pink bear, Robinson has visited every continent bar Antarctica, and largely tackled his depression and social anxiety. His mental health journey is reflected in his images of the pink bear as it becomes more confident and social. ")
feed_item7.photo.attach(io: file16, filename: 'Luap_xv1oew.png', content_type: 'image/png')
feed_item7.save!

file17 = URI.open('https://res.cloudinary.com/ds2g4bsxw/image/upload/v1630491532/Titus%20Kaphar.png')
feed_item6 = FeedItem.new(description: "'Seeing Through Time', Titus Kaphar, 2018")
feed_item6.photo.attach(io: file17, filename: 'MoMA.png', content_type: 'image/png')
feed_item6.save!

booking = Booking.create!(user: User.first, event: Event.first, tickets_count: 3)
puts booking

puts "data loaded successfully"
