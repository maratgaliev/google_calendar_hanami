source 'https://rubygems.org'
ruby "2.3.1"
gem 'bundler'
gem 'rake'
gem 'hanami',       '~> 0.9'
gem 'hanami-model', '~> 0.7'
gem 'google_calendar'

group :development do
  gem 'sqlite3'
  gem 'shotgun'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
  gem 'pry-byebug'
end

group :test do
  gem 'minitest'
  gem 'capybara'
end

group :production do
  gem 'pg'
end