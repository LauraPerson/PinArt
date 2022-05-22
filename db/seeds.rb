3.times do |n|
  user = User.create!(
    email: "test#{n}@pinart.com",
    password: '123456'
  )
  p "Create #{user.id} users"
end

3.times do |n|
  user = User.first
  event = Event.create!(
    name: "event#{n}",
    city: "city#{n}",
    institution: "institution #{n}",
    type: "type#{n}", 
    date: DateTime.strptime("09/14/2009 8:00", "%m/%d/%Y %H:%M"),
    user_id: user.id
  )

  p "Create #{event.id} Events"
end