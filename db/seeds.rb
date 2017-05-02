# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Jampost.destroy_all
Instrument.destroy_all
Comment.destroy_all

curtis = User.create(
  email: "curtisostle@gmail.com",
  password: "password"
)
rick = User.create(
  email: "rick@rick.com",
  password: "password"
)
al = User.create(
  email: "al@al.com",
  password: "password"
)



jampost1 = Jampost.create!({
  title: "Drum Circle at the US National Arboretum",
  img_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1f/National_Capitol_Columns_-_Washington%2C_D.C..jpg/1920px-National_Capitol_Columns_-_Washington%2C_D.C..jpg",
  location: "National Arboretum",
  body: "Join us this coming Friday for an epic drum circle. All wacky drums and other instruments welcome.",
  is_drumcircle: true,
  size_limit: 25,
  skill_level: nil,
  user: curtis,
  time: "6pm"
})

jampost2 = Jampost.create!({
  title: "Rock in my garage",
  img_url:"http://assets1.ignimgs.com/2015/05/04/firstrockband021280jpg-a6e89a_1280w.jpg",
  location:"Adams Morgan",
  body:"Come Rock out Tuesday evening. Please be a somewhat experienced player at at least an intermeditate level. Looking to play some Greatful Dead, Pink Floyd, Cream, and Led Zeppelin. I have some charts, but feel free to bring or suggest new music. Thanks! -Rick",
  is_drumcircle: false,
  size_limit:nil,
  skill_level:3,
  user: rick,
  time: "7:30pm"
})

jampost3 = Jampost.create!({
  title: "Evening Guitar Hang at Fort Reno",
  img_url:"http://bandwidth.wamu.org/wp-content/uploads/2014/06/fort-reno-900x457.png",
  location:"Fort Reno near Tenleytown-AU",
  body:"Come strum some classics this Wednesday afternoon in fort Reno. All levels welcome. We'll be playing an assortment of oldies but goodies including 'Amazing Grace', 'Cripple Creek', 'you are my sunshine' 'Go tell Aunt Rodie' and lots of Blues!",
  is_drumcircle: false,
  size_limit:15,
  skill_level:2,
  user: al,
  time: "3pm"
})

arb_comment1 = Comment.create!({
  name: "Bill",
  body: "This indeed sounds Epic!! Can I bring my dog? He plays the kazoo!",
  jampost: jampost1,
  user: al
})

arb_comment2 = Comment.create!({
  name: "John",
  body: "Is this even a sanctioned event with the Park Service?",
  jampost: jampost1,
  user: al
})

rockjam_comment1 = Comment.create!({
  name: "Al",
  body: "Awesome! you know any Doors tunes?",
  jampost: jampost2,
  user: curtis
})

rockjam_comment2 = Comment.create!({
  name: "John",
  body: "I've been playing for about 5 months. Think I can hang?",
  jampost: jampost2,
  user: al
})

reno_comment1 = Comment.create!({
  name: "John",
  body: "This sounds great. Any other tunes I could check out beforehand?",
  jampost: jampost3,
  user: curtis
})

reno_comment2 = Comment.create!({
  name: "John",
  body: "Love this place. Played a gig here last year with my band, 'Full Crud'",
  jampost: jampost3,
  user: rick
})

bass = Instrument.create!({
  instrument: 'Bass',
  jampost: jampost2,
  user: curtis
})

keyboard = Instrument.create!({
  instrument: 'Keyboard',
  jampost: jampost2,
  user: al
})

drums = Instrument.create!({
  instrument: 'Drums',
  jampost: jampost2,
  user: al
})
guitar = Instrument.create!({
  instrument: 'Guitar',
  jampost: jampost2,
  user: rick
})
saxophone = Instrument.create!({
  instrument: 'Saxophone',
  jampost: jampost2,
  user: rick
})
