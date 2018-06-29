source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.6'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0', '>= 5.0.7'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer', platforms: :ruby
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'jquery-rails'
gem 'devise'
gem 'gritter', '~> 1.2'
gem 'administrate', '~> 0.10.0'
gem 'bourbon', '~> 5.0', '>= 5.0.1'
gem 'pundit', '~> 1.1'
gem 'twilio-ruby', '~> 5.10', '>= 5.10.4'
gem 'kaminari', '~> 1.1', '>= 1.1.1'
gem 'rails_12factor', '~> 0.0.3'
gem 'dotenv-rails', '~> 2.4', :groups => [:development, :test]


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'factory_girl_rails', '~> 4.9'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap-sass'
