require 'open-uri'
require 'json'

# puts "Cleaning up database..."
# Corgi.destroy_all
# User.destroy_all
# puts "Database cleaned"


corgi_names = ["lola", "macha", "bubba"]
corgi_descriptions = [
  "Full of energy and cuddles!",
  "Sassy, smart, and sweet!",
  "Loves to play ball, great with other dogs"
]
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

5.times do
  corgi = Corgi.new(
    name: corgi_names.sample,
    description: corgi_descriptions.sample,
    user_id: user.id
  )

  corgi.save!
end
