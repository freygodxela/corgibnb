require 'open-uri'
require 'json'

puts "Cleaning up database..."
Corgi.destroy_all
User.destroy_all
puts "Database cleaned"


corgi_names = ["lola", "macha", "bubba"]
corgi_descriptions = [
  "Full of energy and cuddles!",
  "Sassy, smart, and sweet!",
  "Loves to play ball, great with other dogs"
]
corgi_address = ["6 kochstraße, Berlin", "20 jagowstraße, Berlin", "60 potsdamer straße, Berlin"]

photo = [
  "https://res.cloudinary.com/le-wagon1234/image/upload/v1572331601/tom-hills-zoF_dgsldlY-unsplash_tjcegs.jpg",
  "https://res.cloudinary.com/le-wagon1234/image/upload/v1572355540/roi-dimor-4Tx3p2DT4F4-unsplash_bymuqh.jpg",
  "https://res.cloudinary.com/le-wagon1234/image/upload/v1572331333/zachary-casler-99Qi-fLC3hs-unsplash_jadihq.jpg",
  "https://res.cloudinary.com/le-wagon1234/image/upload/v1572331328/jairo-alzate-sssxyuZape8-unsplash_qkwpqx.jpg",
  "https://res.cloudinary.com/le-wagon1234/image/upload/v1572331332/hanny-naibaho--Go4DH2pZbc-unsplash_n5brwi.jpg"
]

puts 'creating corgis'


user = User.new(
  email: "email@email.com",
  password: "123456"
)
user.save!


corgi1 = Corgi.new(
  name: corgi_names.sample,
  description: corgi_descriptions.sample,
  user_id: user.id,
  address: corgi_address.sample
)

file = URI.open(photo.sample)

corgi1.photo.attach(io: file, filename: file, content_type: "image/jpg")
corgi1.save!

corgi2 = Corgi.create(
  name: corgi_names.sample,
  description: corgi_descriptions.sample,
  user_id: user.id,
  address: corgi_address.sample
)

file = URI.open(photo.sample)

corgi2.photo.attach(io: file, filename: file, content_type: "image/jpg")
corgi2.save!

corgi3 = Corgi.create(
  name: corgi_names.sample,
  description: corgi_descriptions.sample,
  user_id: user.id,
  address: corgi_address.sample
)

file = URI.open(photo.sample)

corgi3.photo.attach(io: file, filename: file, content_type: "image/jpg")
corgi3.save!

corgi4 = Corgi.create(
  name: corgi_names.sample,
  description: corgi_descriptions.sample,
  user_id: user.id,
  address: corgi_address.sample
)

file = URI.open(photo.sample)

corgi4.photo.attach(io: file, filename: file, content_type: "image/jpg")
corgi4.save!

corgi5 = Corgi.create(
  name: corgi_names.sample,
  description: corgi_descriptions.sample,
  user_id: user.id,
  address: corgi_address.sample
)

file = URI.open(photo.sample)

corgi5.photo.attach(io: file, filename: file, content_type: "image/jpg")
corgi5.save!
