@user = User.create(email: "test@test.com", password: "111111", password_confirmation: "111111", first_name: "Jon", last_name: "Snow")
puts 'user just created'
puts 'We are about to create 100 posts'
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id) 
end
puts '100 Posts have been created'