User.destroy_all
Tweet.destroy_all

user = User.create!(
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password'
)

tweet_content = [
  "Exploring the world, one code at a time.",
  "Just another day solving bugs and solvable pieces is an art.",
  "Committing my life to git. that problem is unmatched",
  "In search of the perfect code and that problem is unmatched",
  "Breaking down complex problems into solvable pieces is an art.",
  "The joy of finally solving that problem is unmatched.",
  "Learning never stops in the world of programming.",
  "Code, coffee, repeat. In the world of programming.",
]

dummy_image_urls = [
  "https://d27jswm5an3efw.cloudfront.net/app/uploads/2019/08/image-url-3.jpg",
  "https://d27jswm5an3efw.cloudfront.net/app/uploads/2019/08/image-url-2-768x512.jpg",
  "https://d27jswm5an3efw.cloudfront.net/app/uploads/2019/09/image-url-15-768x513.jpg",
  "https://d27jswm5an3efw.cloudfront.net/app/uploads/2018/11/image-copyrighting-10.jpg",
  "https://d27jswm5an3efw.cloudfront.net/app/uploads/2018/11/image-copyrighting-12-768x512.jpg",
  "https://d27jswm5an3efw.cloudfront.net/app/uploads/2018/11/image-copyrighting-13-768x431.jpg",
  "https://d27jswm5an3efw.cloudfront.net/app/uploads/2019/02/psd-image-file-13.jpg",
  "https://d27jswm5an3efw.cloudfront.net/app/uploads/2019/02/psd-image-file-12.jpg"
]

8.times do |i|
  tweet = user.tweets.create!(
    content: tweet_content.sample
  )
  tweet.image.attach(io: URI.open(dummy_image_urls.sample), filename: "dummy_image_#{i}.jpg")
end
