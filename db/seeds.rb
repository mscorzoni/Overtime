puts 'We are about to create 100 posts'
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content") 
end
puts '100 Posts have been created'