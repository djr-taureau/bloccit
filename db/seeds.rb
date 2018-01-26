require 'random_data'

5.times do
  User.create!(
    name: RandomData.random_name,
    email: RandomData.random_email,
    password: RandomData.random_sentence,
  )
end
users = User.all

15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end

topics = Topic.all

50.times do
  Post.create!(
    user: users.sample,
    topic: topics.sample,
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph
  )
end

posts = Post.all

100.times do 
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

100.times do 
  Advertisement.create!(
    title: RandomData.random_sentence,
    copy: RandomData.random_paragraph,
    price: Random.rand(11)
  )
end

100.times do
  Question.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: false
  )
end

user = User.first
user = update_attributes!(
  email: 'dave.ruyle@me.com',
  password: "helloworld"
)

Post.find_or_create_by(title: "Dave has a title", body: "and a very unique body")

puts "Seed Finished!"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Advertisement.count} ads created"
puts "#{Question.count} questions created"