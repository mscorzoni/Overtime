namespace :notification do
  desc "Send SMS notification to employees ask them wether they had overtime or not"
  task sms: :environment do
    # 1.Schedule to run at Sundat at 5pm
    # 2.Iterate over all employees
    # 3.Skip AdminUsers
    # 4.Send a message that has instructions and a link to log time
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
