source 'https://rubygems.org'

ruby '2.1.1'

gem 'bootstrap-sass'
gem 'cancan'
gem 'devise'
gem 'faker'
gem 'haml-rails'
gem 'heroku'
gem 'jquery-rails'
gem 'masonry-rails'
gem 'pg'
gem 'rails', '3.2.17' # need to stay here until ready for rails 4 upgrade
gem 'simple_form'
gem 'unicorn', :require => false
# gem 'unicorn-worker-killer', :require => false

# will need to move out when upgraded to rails 4 as asset group
# has been deprecated
group :assets do
  gem 'coffee-rails'
  gem 'sass-rails'
  gem 'uglifier'
end

group :development do
  gem 'awesome_print'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'thin'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  # gem 'timecop'
  # gem 'webmock'

  # acceptance
  # gem 'capybara'
end

group :development, :test do
  gem 'byebug'
end
