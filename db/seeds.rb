@employee = Employee.create(email: "test@test.com", 
                    password: "111111", 
                    password_confirmation: "111111", 
                    first_name: "Jon", 
                    last_name: "Snow",
                    phone: '1494372947',
                    ssn: 1234,
                    company: 'Acme')
puts 'employee just created'

AdminUser.create(email: "admin@admin.com",
                 password: "111111",
                 password_confirmation: "111111",
                 first_name: "Admin",
                 last_name: "Admin",
                 phone: '1494372947',
                 ssn: 1234,
                 company: 'Acme')

puts 'admin just created'


AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))


puts '3 Audit Logs have been created'

100.times do |post|
  Post.create!(date: Date.today, work_performed: "#{post} work_performed content", user_id: @employee.id, daily_hours: 2.5) 
end
puts '100 Posts have been created'

