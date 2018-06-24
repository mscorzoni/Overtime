@user = User.create(email: "test@test.com", 
                    password: "111111", 
                    password_confirmation: "111111", 
                    first_name: "Jon", 
                    last_name: "Snow",
                    phone: '1494372947')
puts 'user just created'

AdminUser.create(email: "admin@admin.com",
                 password: "111111",
                 password_confirmation: "111111",
                 first_name: "Admin",
                 last_name: "Admin",
                 phone: '1494372947')

puts 'admin just created'

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5) 
end
puts '100 Posts have been created'

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days)) 
end 

puts '100 Audit Logs have been created'