namespace :notification do
  desc "Send SMS notification to employees ask them wether they had overtime or not"
  task sms: :environment do
    puts "I'm in rake task!"
  end
end
