User.destroy_all
Event.destroy_all
Artwork.destroy_all

  User.create!(
    email: "laura@pinart.com",
    password: '123456'
  )
  p "Created Laura User"

user = User.first
event = Event.create!(
  name: "Paris Photo",
  city: "Paris",
  category: "Festival", 
  date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"),
  user_id: user.id
)
p "Created Paris Photo Event"

event = Event.create!(
  name: "Festival de Photographie d'Arles",
  city: "Arles",
  category: "Festival", 
  date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"),
  user_id: user.id
)
p "Created Arles Event"

event = Event.create!(
  name: "Vivian Meyer expo",
  city: "Paris",
  category: "Centre Pompidou", 
  date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"),
  user_id: user.id
)
p "Created Vivian Meyer Event"

3.times do |n|
  event = Event.first
  user = User.first
  artwork = Artwork.create!(
    name: "name#{n}",
    artist: "artist#{n}",
    category: "category#{n}", 
    user_id: user.id,
    event_id: event.id
  )
  p "Create #{artwork.id} Artworks"
end