require 'open-uri'
require 'json'

puts "Cleaning up database..."
User.destroy_all
Booking.destroy_all
Corgi.destroy_all
puts "Database cleaned"


#corgi_names = ["lola", "macha", "bubba"]
corgi_descriptions = [
  "Full of energy and cuddles!",
  "Sassy, smart, and sweet!",
  "Loves to play ball, great with other dogs"
]
corgi_address = ["6 kochstraße, Berlin", "20 jagowstraße, Berlin", "60 potsdamer straße, Berlin"]

#photo = [
  #"https://images.unsplash.com/photo-1589965716319-4a041b58fa8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29yZ2l8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
  #"https://images.unsplash.com/photo-1546975490-a79abdd54533?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
  #"https://images.unsplash.com/photo-1557973557-ddfa9ee8c5bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2874&q=80",
#]

puts 'creating corgis'


user = User.new(
  email: "email@email.com",
  password: "123456"
)
user.save!


corgi1 = Corgi.new(
  name: "Yani",
  description: corgi_descriptions.sample,
  user_id: user.id,
  address: corgi_address.sample
)

file = URI.open("https://images.unsplash.com/photo-1550609531-57c783bb03e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80")

corgi1.photo.attach(io: file, filename: file, content_type: "image/jpg")
corgi1.save!

corgi2 = Corgi.create(
  name: "Mary",
  description: corgi_descriptions.sample,
  user_id: user.id,
  address: corgi_address.sample
)

file = URI.open("https://images.unsplash.com/photo-1612536057832-2ff7ead58194?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2787&q=80waG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2744&q=80")

corgi2.photo.attach(io: file, filename: file, content_type: "image/jpg")
corgi2.save!

corgi3 = Corgi.create(
  name: "Benedict",
  description: corgi_descriptions.sample,
  user_id: user.id,
  address: corgi_address.sample
)

file = URI.open("https://images.unsplash.com/photo-1589965716319-4a041b58fa8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y29yZ2l8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")

corgi3.photo.attach(io: file, filename: file, content_type: "image/jpg")
corgi3.save!

corgi4 = Corgi.create(
  name: "Sparky",
  description: corgi_descriptions.sample,
  user_id: user.id,
  address: corgi_address.sample
)

file = URI.open("https://images.unsplash.com/photo-1628558917600-13c89decd56d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2786&q=80")

corgi4.photo.attach(io: file, filename: file, content_type: "image/jpg")
corgi4.save!

corgi5 = Corgi.create(
  name: "Bolt",
  description: corgi_descriptions.sample,
  user_id: user.id,
  address: corgi_address.sample
)

file = URI.open("https://images.unsplash.com/photo-1594713110068-373988a737e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2325&q=80")

corgi5.photo.attach(io: file, filename: file, content_type: "image/jpg")
corgi5.save!
