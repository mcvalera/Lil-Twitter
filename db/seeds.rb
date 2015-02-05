5.times do
  User.create(username: Faker::Internet.user_name, password: Faker::Internet.password, email: Faker::Internet.email )
end

User.all.each do |user|
  5.times do
    Tweet.create(user_id: user.id, content: Faker::Company.catch_phrase )
  end
end
