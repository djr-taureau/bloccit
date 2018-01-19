require 'random_data'

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
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

Post.find_or_create_by(title: "Dave has a title", body: "and a very unique body")


puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Advertisement.count} ads created"