namespace :notification do
  desc "Send SMS notification to employees ask them wether they had overtime or not"
  task sms: :environment do
    if Time.now.sunday?
      employees = Employee.all?
      notification_message = "Please login into the overtime dashboard:"

      employee.each do |employee|
        AuditLog.create!(user_id: employee.id)
        SmsTool.send_sms(number: employee.phone, message: notification_message)
      end
    end 
  end

  desc "Send mail to managers (admin users) each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Posts.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each do |admin|
        ManagerMailer.email(admin).deliver_later
      end
    end
  end
end
